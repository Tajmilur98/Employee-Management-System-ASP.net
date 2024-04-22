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
    public partial class pageAdminProject : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["New"] != null)
            {
                Label1.Text = "Welcome " + Session["New"].ToString();

            }
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();

            show();

        }

        public void show()
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from project";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into project values ('" + pid.Text + "','" + ptitle.Text + "','" + pprice.Text + "')";
            cmd.ExecuteNonQuery();

         
            pid.Text = "";
            ptitle.Text = "";
            pprice.Text = "";
            
            show();
        }
        
        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "delete from project where id = " + Convert.ToInt32(idd.Text) + "";
            cmd.ExecuteNonQuery();
            idd.Text = "";
            show();
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "update project set title  = '" + ptitle.Text + "', price = '" + pprice.Text + "' where id = " + Convert.ToInt32(idd.Text) + "";
            cmd.ExecuteNonQuery();
            
            pid.Text = "";
            ptitle.Text = "";
            pprice.Text = "";
           
            show();
        }

    }
}