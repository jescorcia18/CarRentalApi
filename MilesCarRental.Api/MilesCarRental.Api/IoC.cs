using Business.Imp;
using Business.Interface;
using Repository.Imp;
using Repository.Interface;
using System.Runtime.CompilerServices;

namespace MilesCarRental.Api
{
    public static class IoC
    {
        public static IServiceCollection AddDependency(this IServiceCollection services)
        {
            services.AddScoped<IConnection, Connection>();
            services.AddScoped<IVehiclesRepository, VehiclesRepository>();
            services.AddScoped<IVehiclesBL, VehiclesBL>();
            services.AddCors();
            return services;
        }
    }
}
