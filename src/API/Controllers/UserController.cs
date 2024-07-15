using Application.Dtos;
using Application.Interfaces.UseCases;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics.CodeAnalysis;

namespace API.Controllers
{
    [ExcludeFromCodeCoverage]
    [ApiController]
    [Route("api/[controller]")]
    public class UserController : ControllerBase
    {
        private readonly ICreateUser _createUser;

        public UserController(ICreateUser createUser)
        {
            _createUser = createUser;
        }

        [HttpPost("register")]
        public async Task<IActionResult> Register([FromBody] RegisterUserDto dto)
        {
            var user = await _createUser.ExecuteAsync(dto);
            return Ok(user);
        }

        [HttpPost("authenticate")]
        public async Task<IActionResult> Authenticate([FromBody] AuthenticateUserDto dto)
        {
            var user = await _createUser.ExecuteAsync(new RegisterUserDto());
            if (user == null)
                return Unauthorized();

            return Ok(user);
        }
    }
}
