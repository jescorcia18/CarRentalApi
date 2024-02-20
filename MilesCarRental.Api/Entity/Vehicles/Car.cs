using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entity.Vehicles
{
    public class Car
    {
        public string LicensePlate {  get; set; }=string.Empty;
        public string Model { get; set; }= string.Empty;
        public string Make {  get; set; }= string.Empty;
        public string Color {  get; set; }= string.Empty;
        public string LocationPickup {  get; set; }= string.Empty;
        public string LocationReturn {  get; set; }= string.Empty;
    }
}
