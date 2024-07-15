using System.Diagnostics.CodeAnalysis;

namespace Domain.Entities
{
    [ExcludeFromCodeCoverage]
    public class Category
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public ICollection<Tasks> Tasks { get; set; }
    }
}
