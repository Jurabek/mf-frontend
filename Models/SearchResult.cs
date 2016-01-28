using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace mf_frontend.Models
{
    public enum SearchResultType
    {
        News,
        File
    }

    public class SearchResult
    {
        public int Id { get; set; }

        public string Title { get; set; }

        public string Descreption { get; set; }

        public SearchResultType SearchResultType { get; set; }
        
        public string FileName { get; set; }
    }
}
