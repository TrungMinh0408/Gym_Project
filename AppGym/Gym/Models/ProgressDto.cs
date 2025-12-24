using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Gym.Models
{
    public class ProgressDto
    {
        public int Id { get; set; }
        public int UserId { get; set; }
        public int? PTUserId { get; set; }
        public decimal? Weight { get; set; }
        public decimal? BodyFat { get; set; }
        public decimal? MuscleMass { get; set; }
        public string? Note { get; set; }
        public DateTime CreatedAt { get; set; }

        public string Summary =>
            $"{CreatedAt:dd/MM} • " +
            (Weight.HasValue ? $"W: {Weight}kg  " : "") +
            (BodyFat.HasValue ? $"BF: {BodyFat}%  " : "") +
            (MuscleMass.HasValue ? $"M: {MuscleMass}%  " : "") +
            (string.IsNullOrEmpty(Note) ? "" : Note);
    }
}

