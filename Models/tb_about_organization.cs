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
    
    public partial class tb_about_organization
    {
        public int Id { get; set; }
        public string address { get; set; }
        public string full_name { get; set; }
        public string short_name { get; set; }
        public string code { get; set; }
        public string site { get; set; }
        public string phone { get; set; }
        public string email { get; set; }
        public bool is_active { get; set; }
    
        public virtual tb_organization tb_organization { get; set; }
        public virtual tb_lang tb_lang { get; set; }
    }
}
