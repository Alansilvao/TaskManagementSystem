using Application.Dtos;
using Application.Interfaces.UseCases;
using Application.Services;
using Domain.Entities;
using System.Diagnostics.CodeAnalysis;

namespace Application.UseCases
{
    [ExcludeFromCodeCoverage]
    public class CategoryUseCase : ICategoryUseCase
    {
        private readonly CategoryService _service;

        public CategoryUseCase(CategoryService service)
        {
            _service = service;
        }
        public async Task<Category> ExecuteAsync(CategoryCreateDto request, CancellationToken cancellationToken = default)
        {   
            if(!request.Id.Equals(0))
            {
                return  await _service.GetCategoryByIdAsync(request.Id);
            }
            else
            {
                var category = new Category
                {
                    Name = request.Name
                };

                await _service.AddCategoryAsync(category);
                return category;
            }
        }
    }
}
