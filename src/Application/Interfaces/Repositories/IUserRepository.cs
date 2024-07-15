using Domain.Entities;

namespace Application.Interface
{
    public interface IUserRepository
    {
        Task<User> GetUserByIdAsync(int id);
        Task AddUserAsync(User user);
        Task<User> GetUserByEmailAsync(string email);
    }
}
