using Nest;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ElasticSearchTest
{


    public class BlogPost
    {
        public Guid? Id { get; set; }

        public string Title { get; set; }

        public string Body { get; set; }

        public override string ToString()
        {
            return string.Format("Id: '{0}', Title: '{1}', Body: '{2}'", Id, Title, Body);
        }

    }
}
