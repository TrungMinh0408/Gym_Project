using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Gym.Models
{
    public class Post
    {
        public int Id { get; set; }
        public int? UserId { get; set; }
        public string? UserName { get; set; }
        public string? Title { get; set; }
        public string? Content { get; set; }
        public DateTime? CreatedAt { get; set; }

        public List<PostMedia> Media { get; set; } = new();

        public bool IsOwned { get; set; }

        public bool HasMedia => Media != null && Media.Count > 0;

        public List<PostMedia> Images { get; set; } = new();
        public List<PostMedia> Videos { get; set; } = new();

        public List<PostMedia> AllMedia => Images.Concat(Videos).ToList();

        public bool HasMultipleMedia => AllMedia.Count > 1;

    }

}

