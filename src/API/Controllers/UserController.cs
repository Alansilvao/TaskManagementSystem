using Application.Dtos;
using Application.Services;
using Microsoft.AspNetCore.Mvc;

namespace API.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class UserController : ControllerBase
    {
        private readonly UserService _userService;

        public UserController(UserService userService)
        {
            _userService = userService;
        }

        [HttpPost("register")]
        public async Task<IActionResult> Register([FromBody] RegisterUserDto dto)
        {
            var user = await _userService.RegisterUserAsync(dto.Name, dto.Email, dto.Password);
            return Ok(user);
        }

        [HttpPost("authenticate")]
        public async Task<IActionResult> Authenticate([FromBody] AuthenticateUserDto dto)
        {
            var user = await _userService.AuthenticateUserAsync(dto.Email, dto.Password);
            if (user == null)
                return Unauthorized();

            return Ok(user);
        }
    }
}
