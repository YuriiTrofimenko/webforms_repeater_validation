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
        }
    }
}