using Application.Dtos;
using Application.Interfaces.UseCases;
using Domain.Entities;
using Domain.Service;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics.CodeAnalysis;

namespace API.Controllers
{
    [ExcludeFromCodeCoverage]
    [ApiController]
    [Route("api/[controller]")]
    public class TaskController : ControllerBase
    {
        private readonly TaskService _taskService;

        private readonly ITaskUseCase _useCase;
        public TaskController(ITaskUseCase useCase)
        {
            _useCase = useCase;
        }

        [HttpGet("{userId}")]
        public async Task<IActionResult> GetTasks(int userId)
        {
            var task = new TaskGenerateDto
            {
                GetTasks = true,
                Task = new TaskCreateDto { UserId = userId }
            };

            var tasks = await _useCase.ExecuteAsync(task);
            return Ok(tasks);
        }

        [HttpPost]
        public async Task<IActionResult> CreateTask([FromBody] TaskCreateDto taskDto)
        {
            var task = new TaskGenerateDto
            {
                CreateTask = true,
                Task = new TaskCreateDto
                {
                    Title = taskDto.Title,
                    Description = taskDto.Description,
                    DueDate = taskDto.DueDate,
                    IsCompleted = taskDto.IsCompleted,
                    CategoryId = taskDto.CategoryId,
                    UserId = taskDto.UserId
                }
            };

            var tasks = await _useCase.ExecuteAsync(task);
            return CreatedAtAction(nameof(GetTasks), new { userId = task.Task.UserId }, task);
        }

        [HttpPut("{id}")]
        public async Task<IActionResult> UpdateTask(int id, [FromBody] TaskCreateDto taskDto)
        {
            var task = new TaskGenerateDto
            {
                UpdateTask = true,
                Task = new TaskCreateDto
                {
                    Title = taskDto.Title,
                    Description = taskDto.Description,
                    DueDate = taskDto.DueDate,
                    IsCompleted = taskDto.IsCompleted,
                    CategoryId = taskDto.CategoryId,
                    UserId = taskDto.UserId
                }
            };

            var tasks = await _useCase.ExecuteAsync(task);

            return NoContent();
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteTask(int id)
        {
            var task = new TaskGenerateDto
            {
                DeleteTask = true,
                Task = new TaskCreateDto
                {
                    UserId = id
                }
            };

            var tasks = await _useCase.ExecuteAsync(task);
            return NoContent();
        }
    }
}
