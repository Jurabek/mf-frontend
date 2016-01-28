using System;
using System.Collections.Generic;
using System.Data.Entity.Validation;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace mf_frontend.Models
{
    public class SubdomainHelper
    {
        static mfEntities entities = new mfEntities();
        public static void Read()
        {
            string[] lines = File.ReadAllLines("C:\\data\\domens.csv");
            var region = entities.tb_region.FirstOrDefault();
            var lang = entities.tb_lang.Where(l => l.id == 1).FirstOrDefault();
            entities.tb_organization.Add(new tb_organization { index = "moliya", name = "Main", link = "moliya.tj", tb_region = region, tb_lang = lang });
            foreach (string line in lines)
            {
                string[] args = line.Split(',');
                int result = 0;
                int.TryParse(args[0], out result);
                if (result == 0)
                {
                    if (args[0] == "Душанбе (Dushanbe)")
                    {
                        region = entities.tb_region.Where(r => r.Id == 1).FirstOrDefault();
                    }
                    else if (args[0] == "Горно-Бадахшанская область (Gorno-Badakhshan Autonomous Province)")
                    {
                        region = entities.tb_region.Where(r => r.Id == 5).FirstOrDefault();
                    }
                    else if (args[0] == "Хатлонская область (Khatlon Province)")
                    {
                        region = entities.tb_region.Where(r => r.Id == 6).FirstOrDefault();
                    }
                    else if (args[0] == "Согдийская область (Sughd Province)")
                    {
                        region = entities.tb_region.Where(r => r.Id == 7).FirstOrDefault();
                    }
                    continue;
                }
                if (result != 0)
                {
                    entities.tb_organization.Add(new tb_organization { index = args[2].Split('.')[0], name = args[1], link = args[2], tb_region = region, tb_lang = lang });
                }
            }
            try
            {
                // Your code...
                // Could also be before try if you know the exception occurs in SaveChanges

                entities.SaveChanges();
            }
            catch (DbEntityValidationException e)
            {
                foreach (var eve in e.EntityValidationErrors)
                {
                    Console.WriteLine("Entity of type \"{0}\" in state \"{1}\" has the following validation errors:",
                        eve.Entry.Entity.GetType().Name, eve.Entry.State);
                    foreach (var ve in eve.ValidationErrors)
                    {
                        Console.WriteLine("- Property: \"{0}\", Error: \"{1}\"",
                            ve.PropertyName, ve.ErrorMessage);
                    }
                }
                throw;
            }

        }

    }

    public class Test
    {
        public Test(string name, string link)
        {
            this.Link = link;
            this.Name = name;
        }
        public string Name { get; set; }

        public string Link { get; set; }
    }


}
