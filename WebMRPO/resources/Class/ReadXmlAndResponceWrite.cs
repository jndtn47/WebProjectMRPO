using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml;

namespace WebMRPO.resources.Class{
    public class ReadXmlAndResponceWrite
    {
        public string htmlArrayList = "";

        public string ReadXml()
        {
            XmlDocument xDoc = new XmlDocument();
            xDoc.Load("C:\\WebMRPO\\WebMRPO\\resources\\ListPagesTheory.xml");
            XmlElement xRoot = xDoc.DocumentElement;
            htmlArrayList = "<dl>";
            foreach (XmlNode xnode in xRoot)
            {
                if (xnode.Attributes.Count > 0)
                {
                    XmlNode attr = xnode.Attributes.GetNamedItem("name");
                    if (attr != null)
                        writeHtmlLine(true, attr.Value, "");
                }
                foreach (XmlNode childnode in xnode.ChildNodes)
                    if (childnode.Name == "article")
                    {
                        writeHtmlLine(false, $"{childnode.InnerText}", $"{childnode.Attributes.GetNamedItem("url")}");
                    }
            }
            htmlArrayList += "</dl>";
            return htmlArrayList;
        }
        public void writeHtmlLine(bool isRoot, string _name, string _url)
        {
            if (isRoot)
            {
                htmlArrayList += "<dt>" + _name + "</dt>";
            }
            else
            {
                htmlArrayList += "<dd><a href=\"" + _url + "\" >" + _name + "</a></dd>";
            }
        }
    }
}