using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class UserPanel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection connection = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\Salik\Desktop\WebApplication1\WebApplication1\App_Data\Database1.mdf; Integrated Security = True"))
            {
                string query = "INSERT INTO [TableUser] (Place, Contact) VALUES (@Place, @Contact)";
                SqlCommand cmd = new SqlCommand(query, connection);
                cmd.Parameters.AddWithValue("@Place", TextBox1.Text);
                cmd.Parameters.AddWithValue("@Contact", TextBox2.Text);
                connection.Open();
                cmd.ExecuteNonQuery();
                
               
            }
        }
      }
 }
