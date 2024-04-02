using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection connection = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\Salik\Desktop\WebApplication1\WebApplication1\App_Data\Database1.mdf; Integrated Security = True"))
            {
                string query = "INSERT INTO [Table] (Name, age, details) VALUES (@Name, @age, @details)";
                SqlCommand cmd = new SqlCommand(query, connection);
                cmd.Parameters.AddWithValue("@Name", TextBox1.Text);
                cmd.Parameters.AddWithValue("@age", TextBox2.Text);
                cmd.Parameters.AddWithValue("@details", TextBox3.Text);
                connection.Open();
                cmd.ExecuteNonQuery();
                GridView1.DataBind();
            }
            


        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            using (SqlConnection connection = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\Salik\Desktop\WebApplication1\WebApplication1\App_Data\Database1.mdf; Integrated Security = True"))
            {
                string query = "SELECT * FROM [Table]";
                SqlDataAdapter adapter = new SqlDataAdapter(query, connection);
                DataTable dataTable = new DataTable();
                adapter.Fill(dataTable);
                GridView1.DataSource = dataTable;
                GridView1.DataBind();
            }
        }

        protected void Unnamed1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            using (SqlConnection connection = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\Salik\Desktop\WebApplication1\WebApplication1\App_Data\Database1.mdf; Integrated Security = True"))
            { 
                string query = "UPDATE [Table] SET Name = @Name, age = @age, details = @details WHERE Name = @Name";
            SqlCommand cmd = new SqlCommand(query, connection);
            // Specify the record ID you want to update
            cmd.Parameters.AddWithValue("@Name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@age", TextBox2.Text);
            cmd.Parameters.AddWithValue("@details", TextBox3.Text);
            connection.Open();
            cmd.ExecuteNonQuery();
                GridView1.DataBind();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            using (SqlConnection connection = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\Salik\Desktop\WebApplication1\WebApplication1\App_Data\Database1.mdf; Integrated Security = True"))
            {
                string query = "DELETE FROM [Table] WHERE Name = @Name";
                SqlCommand cmd = new SqlCommand(query, connection);
                cmd.Parameters.AddWithValue("@Name", TextBox1.Text); // Specify the record ID you want to delete
                connection.Open();
                cmd.ExecuteNonQuery();
                GridView1.DataBind();
            }

        }
    }
}