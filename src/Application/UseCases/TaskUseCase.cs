using Application.Dtos;
using Application.Interfaces.UseCases;
using Domain.Entities;
using Domain.Service;
using System.Diagnostics.CodeAnalysis;

namespace Application.UseCases
{
    [ExcludeFromCodeCoverage]
    public class TaskUseCase : ITaskUseCase
    {
        private readonly TaskService _service;

        public TaskUseCase(TaskService service)
        {
            _service = service;
        }

        public async Task<IEnumerable<Tasks>> ExecuteAsync(TaskGenerateDto request, CancellationToken cancellationToken = default)
        {
            if (request.GetTasks)
            {
                return await _service.GetTasksByUserIdAsync(request.Task.UserId);
            }
            if (request.CreateTask)
            {
                var task = new Tasks
                {
                    Title = request.Task.Title,
                    Description = request.Task.Description,
                    DueDate = request.Task.DueDate,
                    IsCompleted = request.Task.IsCompleted,
                    CategoryId = request.Task.CategoryId,
                    UserId = request.Task.UserId
                };
                await _service.CreateTaskAsync(task);
                var listTask = new List<Tasks>();
                listTask.Add(task);

                return listTask;
            }
            if (request.UpdateTask)
            {
                var task = new Tasks
                {
                    Id = request.Task.UserId,
                    Title = request.Task.Title,
                    Description = request.Task.Description,
                    DueDate = request.Task.DueDate,
                    IsCompleted = request.Task.IsCompleted,
                    CategoryId = request.Task.CategoryId,
                    UserId = request.Task.UserId
                };

                await _service.UpdateTaskAsync(task);
                var listTask = new List<Tasks>();
                listTask.Add(task);

                return listTask;

            }
            if (request.DeleteTask)
            {
                await _service.DeleteTaskAsync(request.Task.UserId);

                var listTask = new List<Tasks>();

                return listTask;

            }

            return new List<Tasks>();
        }
    }
}
