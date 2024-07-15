using System.Diagnostics.CodeAnalysis;

namespace Application.Dtos
{
    [ExcludeFromCodeCoverage]
    public class TaskCreateDto
    {
        public string Title { get; set; }
        public string Description { get; set; }
        public DateTime DueDate { get; set; }
        public bool IsCompleted { get; set; }
        public int CategoryId { get; set; }
        public int UserId { get; set; }
    }
}
