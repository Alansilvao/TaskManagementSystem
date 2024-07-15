using Application.Interface;
using Domain.Entities;
using Domain.Service;
using Moq;

namespace UnitTests.Application.Services
{
    public class TaskServiceTests
    {
        private readonly Mock<ITaskRepository> _taskRepositoryMock;
        private readonly TaskService _taskService;

        public TaskServiceTests()
        {
            _taskRepositoryMock = new Mock<ITaskRepository>();
            _taskService = new TaskService(_taskRepositoryMock.Object);
        }

        [Fact]
        public async Task GetTasksByUserId_ShouldReturnTasks()
        {
            // Arrange
            var taskRepositoryMock = new Mock<ITaskRepository>();
            taskRepositoryMock.Setup(repo => repo.GetTasksByUserIdAsync(It.IsAny<int>()))
                              .ReturnsAsync(new List<Tasks> { new Tasks { UserId = 1, Title = "Test Task" } });

            var taskService = new TaskService(taskRepositoryMock.Object);

            // Act
            var result = await taskService.GetTasksByUserIdAsync(1);

            // Assert
            Assert.NotNull(result);
            Assert.Single(result);
            Assert.Equal("Test Task", result.First().Title);
        }

        [Fact]
        public async Task GetTasksByUserIdAsync_ShouldReturnTasks_WhenTasksExist()
        {
            // Arrange
            int userId = 1;
            var tasks = new List<Tasks> { new Tasks { UserId = userId, Title = "Test Task" } };
            _taskRepositoryMock.Setup(repo => repo.GetTasksByUserIdAsync(userId)).ReturnsAsync(tasks);

            // Act
            var result = await _taskService.GetTasksByUserIdAsync(userId);

            // Assert
            Assert.Equal(tasks, result);
            _taskRepositoryMock.Verify(repo => repo.GetTasksByUserIdAsync(userId), Times.Once);
        }

        [Fact]
        public async Task CreateTaskAsync_ShouldCallAddTaskAsync()
        {
            // Arrange
            var task = new Tasks { Title = "New Task", Description = "New Task Description", UserId = 1 };

            // Act
            await _taskService.CreateTaskAsync(task);

            // Assert
            _taskRepositoryMock.Verify(repo => repo.AddTaskAsync(task), Times.Once);
        }

        [Fact]
        public async Task UpdateTaskAsync_ShouldCallUpdateTaskAsync()
        {
            // Arrange
            var task = new Tasks { Id = 1, Title = "Updated Task", Description = "Updated Task Description", UserId = 1 };

            // Act
            await _taskService.UpdateTaskAsync(task);

            // Assert
            _taskRepositoryMock.Verify(repo => repo.UpdateTaskAsync(task), Times.Once);
        }

        [Fact]
        public async Task DeleteTaskAsync_ShouldCallDeleteTaskAsync()
        {
            // Arrange
            int taskId = 1;

            // Act
            await _taskService.DeleteTaskAsync(taskId);

            // Assert
            _taskRepositoryMock.Verify(repo => repo.DeleteTaskAsync(taskId), Times.Once);
        }
    }
}

