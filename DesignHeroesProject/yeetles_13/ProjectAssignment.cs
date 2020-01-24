using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace yeetles_13
{
    public class ProjectAssignment 
    {
        public int Id { get; }
        public string Title { get; }
        public string Description { get; }
        public bool IsCompleted { get; }
        public DateTime Deadline { get; }

        public ProjectAssignment(int id, string title, string description, bool isCompleted, DateTime deadline)
        {
            Id = id;
            Title = title;
            Description = description;
            IsCompleted = isCompleted;
            Deadline = deadline;
        }

    }
}