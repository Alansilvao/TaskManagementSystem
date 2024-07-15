using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Design;
using System.Diagnostics.CodeAnalysis;

namespace Infra.Database.Context;

[ExcludeFromCodeCoverage]
public class ApplicationDbContextFactory : IDesignTimeDbContextFactory<ApplicationDbContext>
{
	public ApplicationDbContext CreateDbContext(string[] args)
	{
		var optionsBuilder = new DbContextOptionsBuilder<ApplicationDbContext>();
		
		var connectionString = "Server=localhost; Database=Investments; Uid=root; Pwd=passwd;";

		optionsBuilder.UseMySql
		(
			connectionString,
			new MySqlServerVersion
			(
				ServerVersion.AutoDetect(connectionString)
			),
			options => options.MigrationsAssembly("Infra")
		);

		return new ApplicationDbContext(optionsBuilder.Options);
	}
}
