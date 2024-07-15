using System.Diagnostics.CodeAnalysis;

namespace Application.Dtos
{
    [ExcludeFromCodeCoverage]
    public class RegisterUserDto
    {
        public string Name { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
    }
}