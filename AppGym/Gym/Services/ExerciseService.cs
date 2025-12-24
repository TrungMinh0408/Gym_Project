using Gym.Models;
using System.Collections.Generic;

namespace Gym.Resources.Images
{
    public static class ExerciseService
    {
        public static List<Exercise> GetExercises()
        {
            return new List<Exercise>
            {
                new Exercise
                {
                    Id = "squat",
                    Name = "Squat",
                    Images = new List<string>
                    {
                        "squat_1.png",
                        "squat_2.png",
                        "squat_3.png"
                    }
                },

                new Exercise
                {
                    Id = "pushup",
                    Name = "Push-up",
                    Images = new List<string>
                    {
                        "pushup_1.png",
                        "pushup_2.png",
                        "pushup_3.png"
                    }
                },

                new Exercise
                {
                    Id = "yoga1",
                    Name = "Yoga Pose",
                    Images = new List<string>
                    {
                        "yoga1_1.png",
                        "Yoga1_2.png",
                        "Yoga1_3.png",
                        "Yoga1_4.png"
                    }
                }
            };
        }

        public static List<VideoExercise> GetVideos()
        {
            return new List<VideoExercise>
            {
                new VideoExercise { Name = "Squat Video", Thumbnail = "squat_thumb.png", Video = "squat.mp4" },
                new VideoExercise { Name = "Push-up Video", Thumbnail = "pushup_thumb.png", Video = "pushup.mp4" },
                new VideoExercise { Name = "Walking Jack Video", Thumbnail = "walkingjack.png", Video = "walkingjack.mp4" },
                new VideoExercise { Name = "Down Dog Up Dog Video", Thumbnail = "downdogupdog.png", Video = "downdogupdog.mp4" },
                new VideoExercise { Name = "Forward lung Video", Thumbnail = "forwardlung.png", Video = "forwardlung.mp4" },
                new VideoExercise { Name = "Squad and Punch Video", Thumbnail = "squadandpunch.png", Video = "squadandpunch.mp4" }
            };
        }
    }
}
