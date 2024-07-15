using System.Diagnostics.CodeAnalysis;

namespace Application.Dtos
{
    [ExcludeFromCodeCoverage]
    public class TaskGenerateDto
    {
        public bool GetTasks { get; set; }
        public bool CreateTask { get; set; }
        public bool UpdateTask { get; set; }
        public bool DeleteTask { get; set; }
        public TaskCreateDto Task { get; set; }
    }
}
