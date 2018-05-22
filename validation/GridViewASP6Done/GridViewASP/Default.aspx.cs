using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GridViewASP
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView4_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                // Получаем дату рождения
                DateTime birthDate = (DateTime)DataBinder.Eval(e.Row.DataItem, "birth_date");

                // Форматирование строк на основе даты рождения персоны
                if (birthDate.Year <= 1920)
                {
                    e.Row.BackColor = System.Drawing.Color.LightPink;
                    e.Row.ForeColor = System.Drawing.Color.Maroon;
                }
                else if (birthDate.Year > 1920 && birthDate.Year <= 1930)
                {
                    e.Row.BackColor = System.Drawing.Color.LightCyan;
                    e.Row.ForeColor = System.Drawing.Color.DarkBlue;
                }
                else
                {
                    e.Row.BackColor = System.Drawing.Color.LimeGreen;
                    e.Row.ForeColor = System.Drawing.Color.White;
                }
            }
        }

        protected void GridView4_SelectedIndexChanged(object sender, EventArgs e)
        {
            int id = (int)GridView4.SelectedDataKey.Values["id"];
            Label1.Text = id.ToString();

            Dictionary<string, string> itemData = new Dictionary<string,string>();
            itemData.Add("id", GridView4.SelectedDataKey.Values["id"].ToString());
            itemData.Add("first_name", (GridView4.SelectedRow.Cells[2].Text).ToString());
            itemData.Add("last_name", (GridView4.SelectedRow.Cells[3].Text).ToString());
            itemData.Add("birth_date", (GridView4.SelectedRow.Cells[4].Text).ToString());
            Application.Lock();
            Application["ItemsData" + id] = itemData;
            Application.UnLock();

            Response.Redirect("Details.aspx?item_data=" + id);
        }
    }
}