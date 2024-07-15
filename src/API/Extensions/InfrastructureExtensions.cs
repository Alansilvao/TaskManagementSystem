using System.Diagnostics.CodeAnalysis;
using Application.Interface;
using Infra.Database.Context;
using Infra.Database.Repositories;
using Microsoft.EntityFrameworkCore;

namespace API.Extensions;

[ExcludeFromCodeCoverage]
public static class InfrastructureExtensions
{
	public static void AddInfrastructure
		(this IServiceCollection services, IConfiguration configuration)
	{
		services.AddMySql(configuration);
		services.AddRepositories();
	}

	private static void AddMySql(this IServiceCollection services, IConfiguration configuration)
	{
		var connectionString = configuration.GetConnectionString("MySqlLocal");

        services.AddDbContext<ApplicationDbContext>(options => options.UseSqlServer(connectionString));
    }
    private static void AddRepositories(this IServiceCollection services)
	{
		services
			.AddScoped<ICategoryRepository, CategoryRepository>()
			.AddScoped<ITaskRepository, TaskRepository>()
			.AddScoped<IUserRepository, UserRepository>();
    }
}
