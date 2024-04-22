using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Home100page
{
    public partial class test : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into students values ('" + id.Text + "', '" + name.Text + "', '" + dept.Text + "')";
            cmd.ExecuteNonQuery();

            id.Text = "";
            name.Text = "";
            dept.Text = "";
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into salary values ('" + sal_id.Text + "', '" + amount.Text + "', '" + stu_id.Text + "')";
            cmd.ExecuteNonQuery();

            sal_id.Text = "";
            amount.Text = "";
            stu_id.Text = "";
            
        }
    }
}