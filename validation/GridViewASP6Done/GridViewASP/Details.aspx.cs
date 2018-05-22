using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GridViewASP
{
    public partial class Details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //int id = Convert.ToInt16(Request.QueryString["item_data"]);
            //label1.Text = id.ToString();
            string id = Request.QueryString["item_data"];
            Dictionary<string, string> itemData =
                (Dictionary<string, string>)Application["ItemsData" + id];
            label1.Text = itemData["first_name"];
        }
    }
}