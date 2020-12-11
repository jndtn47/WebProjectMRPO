using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebMRPO.resources.Class;

namespace WebMRPO.TheoryPages
{
    public partial class PropertiesDeterminant : System.Web.UI.Page
    {
        public string htmlArrayList = "";
        ReadXmlAndResponceWrite createList = new ReadXmlAndResponceWrite();
        protected void Page_Load(object sender, EventArgs e)
        {
            htmlArrayList = createList.ReadXml();
        }
    }
}