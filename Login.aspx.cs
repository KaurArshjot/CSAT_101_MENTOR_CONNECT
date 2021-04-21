using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mentor_Connect
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            msg.Text = "";
            msg.CssClass = "";
            DataView dv = SqlDataSource1.Select(DataSourceSelectArguments.Empty) as DataView;
            bool Exists = false;
            if (dv != null)
            {
                for (int i = 0; i < dv.Table.Rows.Count; i++)
                {
                    if (email.Text == dv.Table.Rows[i]["email"].ToString() &&
                       Password.Text == dv.Table.Rows[i]["password"].ToString())
                    {
                        Exists = true;
                        break;
                    }
                }
                if (Exists)
                {
                    Session["email"] = email.Text;
                    Response.Redirect("Index.aspx");
                    email.Text = "";
                }
                else
                {
                    msg.Text = "Invalid Username/Password";
                    msg.CssClass = "text-danger";
                    email.Text = "";
                }
            }
        }

        protected void SignUpButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}