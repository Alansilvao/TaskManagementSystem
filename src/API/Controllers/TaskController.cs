using Application.Dtos;
using Domain.Entities;
using Domain.Service;
using Microsoft.AspNetCore.Mvc;

namespace API.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class TaskController : ControllerBase
    {
        private readonly TaskService _taskService;

        public TaskController(TaskService taskService)
        {
            _taskService = taskService;
        }

        [HttpGet("{userId}")]
        public async Task<IActionResult> GetTasks(int userId)
        {
            var tasks = await _taskService.GetTasksByUserIdAsync(userId);
            return Ok(tasks);
        }

        [HttpPost]
        public async Task<IActionResult> CreateTask([FromBody] TaskCreateDto taskDto)
        {
            var task = new Tasks
            {
                Title = taskDto.Title,
                Description = taskDto.Description,
                DueDate = taskDto.DueDate,
                IsCompleted = taskDto.IsCompleted,
                CategoryId = taskDto.CategoryId,
                UserId = taskDto.UserId
            };

            await _taskService.CreateTaskAsync(task);
            return CreatedAtAction(nameof(GetTasks), new { userId = task.UserId }, task);
        }

        [HttpPut("{id}")]
        public async Task<IActionResult> UpdateTask(int id, [FromBody] TaskCreateDto taskDto)
        {
            var task = new Tasks
            {
                Id = id,
                Title = taskDto.Title,
                Description = taskDto.Description,
                DueDate = taskDto.DueDate,
                IsCompleted = taskDto.IsCompleted,
                CategoryId = taskDto.CategoryId,
                UserId = taskDto.UserId
            };

            await _taskService.UpdateTaskAsync(task);
            return NoContent();
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteTask(int id)
        {
            await _taskService.DeleteTaskAsync(id);
            return NoContent();
        }
    }
}
