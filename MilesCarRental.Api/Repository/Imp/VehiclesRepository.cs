using Dapper;
using Entity;
using Entity.Availability;
using Entity.Vehicles;
using Repository.Interface;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Reflection.Metadata;
using System.Text;
using System.Threading.Tasks;

namespace Repository.Imp
{
    public class VehiclesRepository : IVehiclesRepository
    {

        #region Global Variables
        private readonly IConnection _connection;
        #endregion

        #region Constructor
        public VehiclesRepository(IConnection connection)
        {
            _connection = connection;
        }
        #endregion

        #region Public Methods
        public async Task<List<Car>> GetAvailableCars(Location location)
        {
            try
            {
                var conn = await _connection.GetConnection();
                var query = Constants.StoredProcedures.GetAvailableCars;
                var parameters = new DynamicParameters();
                parameters.Add("@LocationUser", location.LocationUser, DbType.Int32, ParameterDirection.Input);
                parameters.Add("@LocPickup", location.LocationPickUp, DbType.Int32, ParameterDirection.Input);
                var response = await SqlMapper.QueryMultipleAsync(conn, query, param: parameters, commandType: CommandType.StoredProcedure);

                var car = response.Read<Car>().ToList();

                return car;
            }
            catch (Exception ex)
            {
                throw new("Error Get Available Cars. " + ex.Message);
            }

        }
        #endregion
    }
}
