using Application.Interface;
using Application.Services;
using Domain.Entities;
using Moq;

namespace UnitTests.Application.Services
{
    public class UserServiceTests
    {
        private readonly Mock<IUserRepository> _userRepositoryMock;
        private readonly UserService _userService;

        public UserServiceTests()
        {
            _userRepositoryMock = new Mock<IUserRepository>();
            _userService = new UserService(_userRepositoryMock.Object);
        }

        [Fact]
        public async Task RegisterUserAsync_ShouldRegisterUser()
        {
            var user = new User { Name = "Test", Email = "test@example.com", Password = "password" };
            _userRepositoryMock.Setup(repo => repo.AddUserAsync(It.IsAny<User>())).Returns(Task.CompletedTask);

            var result = await _userService.RegisterUserAsync(user.Name, user.Email, user.Password);

            Assert.Equal(user.Name, result.Name);
            Assert.Equal(user.Email, result.Email);
        }

        [Fact]
        public async Task AuthenticateUserAsync_ShouldReturnUser_WhenCredentialsAreValid()
        {
            var user = new User { Email = "test@example.com", Password = "password" };
            _userRepositoryMock.Setup(repo => repo.GetUserByEmailAsync(It.IsAny<string>())).ReturnsAsync(user);

            var result = await _userService.AuthenticateUserAsync(user.Email, user.Password);

            Assert.NotNull(result);
        }

        [Fact]
        public async Task AuthenticateUserAsync_ShouldReturnNull_WhenCredentialsAreInvalid()
        {
            _userRepositoryMock.Setup(repo => repo.GetUserByEmailAsync(It.IsAny<string>())).ReturnsAsync((User)null);

            var result = await _userService.AuthenticateUserAsync("invalid@example.com", "invalid");

            Assert.Null(result);
        }
    }
}
