using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace Mentor_Connect
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SignUp_Click(object sender, EventArgs e)
        {
            DataView dv = SqlDataSource1.Select(DataSourceSelectArguments.Empty) as DataView;
            bool Exists = false;
            bool temp = true;
            if (dv != null)
            {
                for (int i = 0; i < dv.Table.Rows.Count; i++)
                {
                    if (email.Text == dv.Table.Rows[i]["email"].ToString())
                    {
                        Exists = true;
                        break;
                    }
                }
            }
            if (Exists)
            {
                msg.Text = "Email ID already exists";
                msg.CssClass = "text-danger";
                
                FirstName.Text = "";
                LastName.Text = "";
                email.Text = "";
                DateOfBirth.Text = "";
                TypeOfMentor.Text = "";
            }
            else
            {
                SqlDataSource1.Insert();
                msg.Text = "Email Id added";
                msg.CssClass = "text-success";
                temp = false;
                FirstName.Text = "";
                LastName.Text = "";
                email.Text = "";
                MessageBox.Show("Registered Successfully");
                //Response.Redirect("Login.aspx");
            }
            if(temp == false) {
                Response.Redirect("Login.aspx");
            }
        }

        protected void Password_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Gender_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}