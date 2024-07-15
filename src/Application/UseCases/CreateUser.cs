using Application.Interface;
using Domain.Entities;


namespace Application.UseCases
{
    public class CreateUser
    {
        private readonly IUserRepository _userRepository;

        public CreateUser(IUserRepository userRepository)
        {
            _userRepository = userRepository;
        }

        public async Task ExecuteAsync(string username, string password, int id)
        {
            var user = new User
            {
                Id = id,
                Name = username,
                Password = password
            };

             _userRepository.AddUserAsync(user);
        }
    }
}
