using System.Diagnostics.CodeAnalysis;
using System.Text;
using Application.Services;
using Domain.Service;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.IdentityModel.Tokens;

namespace API.Extensions;

[ExcludeFromCodeCoverage]
public static class ServiceCollectionExtensions
{
	public static void AddUseCases(this IServiceCollection services)
	{
		
	}

	public static void AddServices(this IServiceCollection services)
	{
        services.AddScoped<UserService>();
        services.AddScoped<CategoryService>();
        services.AddScoped<TaskService>();
    }

	public static void AddJwtAuthentication
		(this IServiceCollection services, IConfiguration configuration)
	{
		services
			.AddAuthentication(JwtBearerDefaults.AuthenticationScheme)
			.AddJwtBearer
			(
				x =>
					x.TokenValidationParameters = new TokenValidationParameters
					{
						ValidIssuer = configuration["JwtSettings:Issuer"],
						ValidAudience = configuration["JwtSettings:Audience"],
						IssuerSigningKey = new SymmetricSecurityKey
							(Encoding.UTF8.GetBytes(configuration["JwtSettings:SecretKey"]!)),
						ValidateIssuer = true,
						ValidateAudience = true,
						ValidateLifetime = true,
						ValidateIssuerSigningKey = true
					}
			);
	}
}
