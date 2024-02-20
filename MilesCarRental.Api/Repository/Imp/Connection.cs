using Microsoft.Extensions.Configuration;
using Repository.Interface;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Repository.Imp
{
    public class Connection: IConnection
    {
        #region Global Variables
        private readonly IConfiguration _configuration;
        #endregion

        #region Constructor
        public Connection(IConfiguration configuration)
        {
            _configuration = configuration;
        }
        #endregion
        #region Public Methods
        public async Task<IDbConnection> GetConnection()
        {
            try
            {
                var connectionString = _configuration.GetSection("ConnectionStrings").GetSection("CarRentalDb").Value ?? string.Empty;

                SqlConnection conn = new SqlConnection(connectionString);
                if (conn != null)
                {
                    if (conn.State == ConnectionState.Closed)
                        await conn.OpenAsync();
                    else
                        throw new Exception("Error Open Connection.");
                }

                return conn;

            }
            catch (Exception ex)
            {
                throw new(ex.Message);
            }
        }
        #endregion

    }
}
