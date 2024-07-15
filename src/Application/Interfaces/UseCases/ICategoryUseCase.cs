using Application.Dtos;
using Domain.Entities;

namespace Application.Interfaces.UseCases
{
    public interface ICategoryUseCase : IUseCase<CategoryCreateDto, Category>
    {
    }
}
