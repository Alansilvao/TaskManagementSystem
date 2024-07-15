using System.Diagnostics.CodeAnalysis;

namespace Application.Dtos
{
    [ExcludeFromCodeCoverage]
    public class AuthenticateUserDto
    {
        public string Email { get; set; }
        public string Password { get; set; }
    }
}
