//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace mf_frontend.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class tb_content
    {
        public tb_content()
        {
            this.tb_file_on_page = new HashSet<tb_file_on_page>();
        }
    
        public int id { get; set; }
        public int main_id { get; set; }
        public string name { get; set; }
        public string fixed_url { get; set; }
        public string page_title { get; set; }
        public string description { get; set; }
        public string page_content { get; set; }
        public Nullable<int> order_id { get; set; }
        public bool is_active { get; set; }
        public Nullable<bool> show_on_menu { get; set; }
        public int lang_id { get; set; }
    
        public virtual tb_lang tb_lang { get; set; }
        public virtual ICollection<tb_file_on_page> tb_file_on_page { get; set; }
    }
}