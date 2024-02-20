using Business.Interface;
using Entity;
using Entity.Availability;
using Repository.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Business.Imp
{
    public class VehiclesBL:IVehiclesBL
    {

        #region Global Variables
        private readonly IVehiclesRepository _vehiclesRepository;
        #endregion

        #region Constructor
        public VehiclesBL (IVehiclesRepository vehiclesRepository)
        {
            this._vehiclesRepository = vehiclesRepository;
        }
        #endregion

        #region Public Methods
        public async Task<Available> ProcessAvailableCars (Location location)
        {
            try
            {
                var result = await _vehiclesRepository.GetAvailableCars(location);
                Available available = new Available();

                if (result != null)
                {
                    available.Cars = result;
                }
                available.Stock= available.Cars.Count();

                return available;



            }catch (Exception ex)
            {
                throw new("Error Process Available Cars. " + ex.Message);
            }
        }
        #endregion
    }
}
