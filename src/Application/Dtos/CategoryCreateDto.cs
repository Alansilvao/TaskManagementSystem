using System.Diagnostics.CodeAnalysis;

namespace Application.Dtos
{
    [ExcludeFromCodeCoverage]
    public class CategoryCreateDto
    {
        public string Name { get; set; }
        public int Id { get; set; }
    }
}
