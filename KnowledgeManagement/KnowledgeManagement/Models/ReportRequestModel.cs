using System;

namespace KnowledgeManagement.Models
{
    public class ReportRequestModel
    {
        public int PostId { get; set; }
        public string Comment { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public DateTime PostDate { get; set; }
        public string Image { get; set; }
        public string Name { get; set; }

    }
}