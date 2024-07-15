using Application.Interface;
using Application.Services;
using Domain.Entities;
using Moq;

namespace UnitTests.Application.Services
{
    public class CategoryServiceTests
    {
        private readonly Mock<ICategoryRepository> _categoryRepositoryMock;
        private readonly CategoryService _categoryService;

        public CategoryServiceTests()
        {
            _categoryRepositoryMock = new Mock<ICategoryRepository>();
            _categoryService = new CategoryService(_categoryRepositoryMock.Object);
        }

        [Fact]
        public async Task GetAllCategoriesAsync_ShouldReturnAllCategories()
        {
            // Arrange
            var categories = new List<Category>
            {
                new Category { Id = 1, Name = "Category1" },
                new Category { Id = 2, Name = "Category2" }
            };
            _categoryRepositoryMock.Setup(repo => repo.GetAllCategoriesAsync()).ReturnsAsync(categories);

            // Act
            var result = await _categoryService.GetAllCategoriesAsync();

            // Assert
            Assert.Equal(categories, result);
            _categoryRepositoryMock.Verify(repo => repo.GetAllCategoriesAsync(), Times.Once);
        }

        [Fact]
        public async Task GetCategoryByIdAsync_ShouldReturnCategory_WhenCategoryExists()
        {
            // Arrange
            int categoryId = 1;
            var category = new Category { Id = categoryId, Name = "Category1" };
            _categoryRepositoryMock.Setup(repo => repo.GetCategoryByIdAsync(categoryId)).ReturnsAsync(category);

            // Act
            var result = await _categoryService.GetCategoryByIdAsync(categoryId);

            // Assert
            Assert.Equal(category, result);
            _categoryRepositoryMock.Verify(repo => repo.GetCategoryByIdAsync(categoryId), Times.Once);
        }

        [Fact]
        public async Task AddCategoryAsync_ShouldCallAddCategoryAsync()
        {
            // Arrange
            var category = new Category { Name = "New Category" };

            // Act
            await _categoryService.AddCategoryAsync(category);

            // Assert
            _categoryRepositoryMock.Verify(repo => repo.AddCategoryAsync(category), Times.Once);
        }

        [Fact]
        public async Task UpdateCategoryAsync_ShouldCallUpdateCategoryAsync()
        {
            // Arrange
            var category = new Category { Id = 1, Name = "Updated Category" };

            // Act
            await _categoryService.UpdateCategoryAsync(category);

            // Assert
            _categoryRepositoryMock.Verify(repo => repo.UpdateCategoryAsync(category), Times.Once);
        }

        [Fact]
        public async Task DeleteCategoryAsync_ShouldCallDeleteCategoryAsync()
        {
            // Arrange
            int categoryId = 1;

            // Act
            await _categoryService.DeleteCategoryAsync(categoryId);

            // Assert
            _categoryRepositoryMock.Verify(repo => repo.DeleteCategoryAsync(categoryId), Times.Once);
        }
    }
}