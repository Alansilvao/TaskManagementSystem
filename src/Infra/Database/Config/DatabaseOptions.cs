using System.Diagnostics.CodeAnalysis;

namespace Infra.Database.Config;

[ExcludeFromCodeCoverage]
public class DatabaseOptions
{
	public string MySqlConnection { get; init; } = null!;
}
