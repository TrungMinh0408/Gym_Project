using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using Microsoft.ML.OnnxRuntime;
using Microsoft.ML.OnnxRuntime.Tensors;
using SkiaSharp;

namespace Gym
{
    public class PoseEstimatorONNX : IDisposable
    {
        private InferenceSession session;
        public const int InputWidth = 192;
        public const int InputHeight = 192;
        public const int NumKeypoints = 17;

        // Cấu trúc xương
        public static readonly int[,] Bones = new int[,]
        {
            {0,1},{0,2},{1,3},{2,4},{0,5},{0,6},
            {5,7},{7,9},{6,8},{8,10},{5,11},{6,12},
            {11,12},{11,13},{13,15},{12,14},{14,16}
        };

        public PoseEstimatorONNX(string modelPath)
        {
            if (!File.Exists(modelPath))
                throw new FileNotFoundException("ONNX model not found", modelPath);

            session = new InferenceSession(modelPath);
        }

        /// <summary>
        /// Lấy keypoints từ SKBitmap, trả về [17,3]: y,x,confidence
        /// </summary>
        public float[,] GetKeypoints(SKBitmap bmp)
        {
            if (bmp == null) return null;

            // Resize + letterbox
            SKBitmap resized = new SKBitmap(InputWidth, InputHeight);
            float scale = Math.Min((float)InputWidth / bmp.Width, (float)InputHeight / bmp.Height);
            float offsetX = (InputWidth - bmp.Width * scale) / 2f;
            float offsetY = (InputHeight - bmp.Height * scale) / 2f;

            using (var canvas = new SKCanvas(resized))
            {
                canvas.Clear(SKColors.Black);
                var dest = SKRect.Create(offsetX, offsetY, bmp.Width * scale, bmp.Height * scale);
                canvas.DrawBitmap(bmp, dest);
            }

            // Chuẩn bị input: Int32 0..255
            var inputTensor = new DenseTensor<int>(new[] { 1, InputHeight, InputWidth, 3 }); // NHWC
            for (int y = 0; y < InputHeight; y++)
            {
                for (int x = 0; x < InputWidth; x++)
                {
                    var c = resized.GetPixel(x, y);
                    inputTensor[0, y, x, 0] = c.Red;
                    inputTensor[0, y, x, 1] = c.Green;
                    inputTensor[0, y, x, 2] = c.Blue;
                }
            }

            var inputs = new List<NamedOnnxValue>
            {
                NamedOnnxValue.CreateFromTensor("input", inputTensor)
            };

            // Chạy model
            using var results = session.Run(inputs);
            var output = results.First().AsTensor<float>(); // [1,1,17,3]

            // Chuyển sang [17,3]
            float[,] keypoints = new float[NumKeypoints, 3];
            for (int i = 0; i < NumKeypoints; i++)
            {
                keypoints[i, 0] = output[0, 0, i, 0]; // y
                keypoints[i, 1] = output[0, 0, i, 1]; // x
                keypoints[i, 2] = output[0, 0, i, 2]; // confidence
            }

            // Map sang ảnh gốc
            for (int i = 0; i < NumKeypoints; i++)
            {
                float xPixel = keypoints[i, 1] * InputWidth;
                float yPixel = keypoints[i, 0] * InputHeight;

                xPixel = (xPixel - offsetX) / scale;
                yPixel = (yPixel - offsetY) / scale;

                keypoints[i, 1] = xPixel / bmp.Width;
                keypoints[i, 0] = yPixel / bmp.Height;
            }

            return keypoints;
        }

        public static int[,] GetBones() => Bones;

        public void Dispose()
        {
            session?.Dispose();
            session = null;
        }
    }
}
