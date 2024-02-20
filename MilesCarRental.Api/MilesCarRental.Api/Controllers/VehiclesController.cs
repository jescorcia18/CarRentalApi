using Business.Interface;
using Entity;
using Microsoft.AspNetCore.Mvc;

namespace MilesCarRental.Api.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class VehiclesController : ControllerBase
    {
        #region Global variables

        private readonly IVehiclesBL _vehiclesBl;
        #endregion

        #region Constructor
        public VehiclesController (IVehiclesBL vehiclesBl)
        {
            _vehiclesBl = vehiclesBl;
        }
        #endregion

        [HttpGet]
        [Route ("GetAvailableCars")]
        public async Task<IActionResult> GetAvailableCars([FromQuery] Location request)
        {
            try
            {
                return Ok(await _vehiclesBl.ProcessAvailableCars(request));

            }catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }
    }
}
