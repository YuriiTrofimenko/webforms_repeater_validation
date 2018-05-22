using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RepeaterASP_1
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string[] items = new string[5];
            items[0] = "item1";
            items[1] = "item2";
            items[2] = "item3";
            Repeater1.DataSource = items;
            Repeater1.DataBind();
        }
    }
}