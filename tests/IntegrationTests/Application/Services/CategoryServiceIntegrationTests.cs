using Application.Services;
using Domain.Entities;
using Infra.Database.Context;
using Infra.Database.Repositories;
using IntegrationTests.Infrastructure;
using Microsoft.EntityFrameworkCore;
using Xunit;

namespace IntegrationTests.Application.Services
{
    public class CategoryServiceIntegrationTests
    {
        private readonly CategoryService _categoryService;
        private readonly ApplicationDbContextTest _context;

        public CategoryServiceIntegrationTests()
        {
            var options = new DbContextOptionsBuilder<ApplicationDbContext>()
                .UseSqlServer("Data Source=DESKTOP-QSETJ5N\\MSSQLSERVER01;Initial Catalog=INVESTIMENTO;Integrated Security=True;Encrypt=False;")
                .Options;

            _context = new ApplicationDbContextTest(options);
            var categoryRepository = new CategoryRepository(_context);
            _categoryService = new CategoryService(categoryRepository);
       
            _context.Database.EnsureCreated();
        }

        [Fact]
        public async Task AddCategoryAsync_ShouldAddCategory()
        {
            // Arrange
            var category = new Category { Name = "Test Category" };

            // Act
            await _categoryService.AddCategoryAsync(category);

            // Assert
            var result = await _context.Categories.FirstOrDefaultAsync(c => c.Name == "Test Category");
            Assert.NotNull(result);
            Assert.Equal("Test Category", result.Name);
        }
    }
}