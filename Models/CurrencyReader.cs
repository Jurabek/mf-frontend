using System;
using System.Collections.Generic;
using System.Linq;
using System.Xml;
using System.Xml.Linq;

namespace mf_frontend.Models
{
    public class CurrencyReader
    {
        private static string currenctRssLink = "http://nbt.tj/en/kurs/rss.php";
        public static string CurrencyRssLink { get { return currenctRssLink; } set { currenctRssLink = value; } }

        public static List<Currency> Load()
        {
            try
            {
                using (XmlReader reader = XmlReader.Create(CurrencyRssLink))
                {
                    XDocument xmlDoc = XDocument.Load(reader);
                    var feeds = from feed in xmlDoc.Descendants("item")
                                where feed.Attribute("status") == null || feed.Attribute("status").Value != "disabled"
                                select new Currency
                                {
                                    Name = feed.Element("title").Value.Split('|')[0].Split(':')[1].Trim(),
                                    CurrencyCode = feed.Element("title").Value.Split('|')[1].Split(':')[1].Trim(),
                                    Unit = feed.Element("title").Value.Split('|')[2].Split(':')[1].Trim(),
                                    Rate = feed.Element("title").Value.Split('|')[3].Split(':')[1].Trim(),
                                    Date = feed.Element("pubDate").Value.Split(':')[1].Trim()
                                };
                    return feeds.ToList();
                }
            }
            catch (Exception)
            {
                return new List<Currency>();
            }
            
        }
    }

    public class Currency
    {
        public string Name { get; set; }

        public string CurrencyCode { get; set; }

        public string Unit { get; set; }

        public string Rate { get; set; }

        public string Date { get; set; }

    }
}
