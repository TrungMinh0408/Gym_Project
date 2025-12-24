using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Gym.Models
{
    public class PostMedia
    {
        public int Id { get; set; }
        public int PostId { get; set; }
        public string MediaType { get; set; } = "";
        public string Url { get; set; } = "";

        public bool IsImage => MediaType.Equals("image", StringComparison.OrdinalIgnoreCase);
        public bool IsVideo => MediaType.Equals("video", StringComparison.OrdinalIgnoreCase);
    }
}
