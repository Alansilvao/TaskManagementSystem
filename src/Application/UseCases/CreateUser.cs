using Application.Dtos;
using Application.Interfaces.UseCases;
using Application.Services;
using Domain.Entities;
using System.Diagnostics.CodeAnalysis;


namespace Application.UseCases
{
    [ExcludeFromCodeCoverage]
    public class CreateUser :  ICreateUser
    {
        private readonly UserService _userService;

        public CreateUser(UserService userService)
        {
            _userService = userService;
        }
        public async Task<User> ExecuteAsync(RegisterUserDto request, CancellationToken cancellationToken = default)
        {
            var user = await _userService.RegisterUserAsync(request.Name, request.Email, request.Password);

            return user;

        }
    }
}
