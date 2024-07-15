using Application.Dtos;
using Domain.Entities;

namespace Application.Interfaces.UseCases
{
    public interface ICreateUser : IUseCase<RegisterUserDto, User>
    {
    }
}
