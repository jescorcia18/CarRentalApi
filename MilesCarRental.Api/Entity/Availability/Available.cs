using Entity.Vehicles;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entity.Availability
{
    public class Available 
    {
        public int Stock { get; set; }
        public List<Car> Cars { get; set; } = new List<Car>();    

    }
}
