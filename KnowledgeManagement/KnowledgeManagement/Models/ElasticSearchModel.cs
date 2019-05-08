﻿using System.Collections.Generic;

namespace KnowledgeManagement.Models
{
    public class ElasticSearchModel
    {
        public int PostId { get; set; }
        public string Title { get; set; }
        public List<string> Tags { get; set; }
        public string Image { get; set; }
        public override string ToString()
        {
            return string.Format("PostId: '{0}', Title: '{1}', Tags: '{2}'", PostId, Title, Tags);
        }

    }
}