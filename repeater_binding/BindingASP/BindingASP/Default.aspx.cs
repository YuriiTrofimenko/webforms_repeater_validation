using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BindingASP
{
    public partial class Default : System.Web.UI.Page
    {
        protected string mFirstName
        {
            get { return "Vasia"; }
        }

        protected string mLastName
        {
            get { return "Pupkin"; }
        }

        protected int mSize = 20;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.DataBind();
            }

            string[] valuesForDDL = { "value1", "value2", "value3" };
            DropDownList1.DataSource = valuesForDDL;
            DropDownList1.DataBind();
        }
    }
}