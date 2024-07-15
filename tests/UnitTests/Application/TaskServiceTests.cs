using Application.Interface;
using Domain.Entities;
using Domain.Service;
using Moq;

namespace UnitTests.Application
{
    public class TaskServiceTests
    {
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
    }
}
