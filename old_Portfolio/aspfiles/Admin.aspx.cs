using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed3_Click(object sender, EventArgs e)
        {

        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            string enteredId = TextBox1.Text.Trim();


            if (enteredId == "admin")
            {
                // Redirect to admin.aspx
                Response.Redirect("WebForm1.aspx");
            }
            else
            {
                // Display "wrong password" message
                label3.Text = "Wrong information";
            }
        }
    }
}