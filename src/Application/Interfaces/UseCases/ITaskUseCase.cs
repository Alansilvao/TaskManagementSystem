using Application.Dtos;
using Domain.Entities;

namespace Application.Interfaces.UseCases
{
    public interface ITaskUseCase : IUseCase<TaskGenerateDto, IEnumerable<Tasks>>
    {
    }
}
