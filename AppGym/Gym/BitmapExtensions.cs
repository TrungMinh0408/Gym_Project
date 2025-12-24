#if ANDROID
using Android.Graphics;
using SkiaSharp;
using System.IO;

namespace Gym // dùng cùng namespace với MainPage_Onnx
{
    public static class BitmapExtensions
    {
        public static SKBitmap ToSKBitmap(this Bitmap bitmap)
        {
            using var ms = new MemoryStream();
            bitmap.Compress(Bitmap.CompressFormat.Png, 100, ms);
            ms.Position = 0;
            return SKBitmap.Decode(ms);
        }
    }
}
#endif
