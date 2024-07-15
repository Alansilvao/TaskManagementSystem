using Application.Interface;
using Domain.Entities;

namespace Application.Services
{
    public class UserService
    {
        private readonly IUserRepository _userRepository;

        public UserService(IUserRepository userRepository)
        {
            _userRepository = userRepository;
        }

        public async Task<User> RegisterUserAsync(string name, string email, string password)
        {
            var existingUser = await _userRepository.GetUserByEmailAsync(email);
            if (existingUser != null)
            {
                throw new InvalidOperationException("User with this email already exists.");
            }

            var user = new User
            {
                Name = name,
                Email = email,
                Password = password // Note: In a real-world application, make sure to hash the password.
            };

            await _userRepository.AddUserAsync(user);
            return user;
        }

        public async Task<User> AuthenticateUserAsync(string email, string password)
        {
            var user = await _userRepository.GetUserByEmailAsync(email);
            if (user == null || user.Password != password) // Note: In a real-world application, use a secure password comparison method.
            {
                return null;
            }

            return user;
        }

        public async Task<User> GetUserByIdAsync(int id)
        {
            return await _userRepository.GetUserByIdAsync(id);
        }
    }
}
