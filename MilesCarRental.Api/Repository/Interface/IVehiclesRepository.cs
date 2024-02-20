using Entity;
using Entity.Availability;
using Entity.Vehicles;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Repository.Interface
{
    public interface IVehiclesRepository
    {
        Task<List<Car>> GetAvailableCars(Location location);
    }
}
