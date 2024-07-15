using Application.Interface;
using Domain.Entities;
using Infra.Database.Context;
using Microsoft.EntityFrameworkCore;

namespace Infra.Database.Repositories
{
    public class TaskRepository : ITaskRepository
    {
        private readonly ApplicationDbContext _context;

        public TaskRepository(ApplicationDbContext context)
        {
            _context = context;
        }

        public async Task<IEnumerable<Tasks>> GetTasksByUserIdAsync(int userId)
        {
            return await _context.Tasks.Where(t => t.UserId == userId).ToListAsync();
        }

        public async Task AddTaskAsync(Tasks task)
        {
            await _context.Tasks.AddAsync(task);
            await _context.SaveChangesAsync();
        }

        public async Task UpdateTaskAsync(Tasks task)
        {
            _context.Tasks.Update(task);
            await _context.SaveChangesAsync();
        }


        public async Task DeleteTaskAsync(int id)
        {
            var task = await _context.Tasks.FindAsync(id);
            if (task != null)
            {
                _context.Tasks.Remove(task);
                await _context.SaveChangesAsync();
            }
        }

        public Task<Tasks> GetTaskByIdAsync(int id)
        {
            throw new NotImplementedException();
        }
    }
}
