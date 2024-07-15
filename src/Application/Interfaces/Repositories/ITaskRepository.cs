using Domain;
using Domain.Entities;

namespace Application.Interface
{
    public interface ITaskRepository
    {
        Task<Tasks> GetTaskByIdAsync(int id);
        Task AddTaskAsync(Tasks task);
        Task UpdateTaskAsync(Tasks task);
        Task DeleteTaskAsync(int id);
        Task<IEnumerable<Tasks>> GetTasksByUserIdAsync(int userId);
    }
}
