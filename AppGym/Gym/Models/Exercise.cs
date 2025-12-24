using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Gym.Models
{
    public class Exercise
    {
        public string Id { get; set; }
        public string Name { get; set; }
        public string ImageFolder { get; set; }
        public List<string> Images { get; set; }
    }
}
