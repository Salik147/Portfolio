using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
           
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            using (SqlConnection connection = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\Salik\Desktop\WebApplication1\WebApplication1\App_Data\Database1.mdf; Integrated Security = True"))
            {
                string query = "DELETE FROM [TableUser] WHERE Place = @Place";
                SqlCommand cmd = new SqlCommand(query, connection);
                cmd.Parameters.AddWithValue("@Place", TextBox.Text); // Specify the record ID you want to delete
                connection.Open();
                cmd.ExecuteNonQuery();
                GridCart.DataBind();
                label.Text = "Successfully Removed";
            }
        }
    }
}