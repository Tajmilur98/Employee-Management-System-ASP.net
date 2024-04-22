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
    public partial class pageAdminClient : System.Web.UI.Page
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
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into Client values ('" + cid.Text + "','" + name.Text + "','" + pid.Text + "','" + ptitle.Text + "','" + damount.Text + "','" + ramount.Text + "')";
            cmd.ExecuteNonQuery();

            cid.Text = "";
            name.Text = "";
            pid.Text = "";
            ptitle.Text = "";
            damount.Text = "";
            ramount.Text = "";
            show();
        }
        public void show()
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from Client";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "delete from Client where Phone = " + Convert.ToInt32(idd.Text) + "";
            cmd.ExecuteNonQuery();
            idd.Text = "";
            show();
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "update Client set Name = '" + name.Text + "', project_id  = '" + pid.Text + "', project_title  = '" + ptitle.Text + "', deal_amount= '" + damount.Text + "',received_amount = '" + ramount.Text + "' where Phone = " + Convert.ToInt32(idd.Text) + "";
            cmd.ExecuteNonQuery();
            cid.Text = "";
            name.Text = "";
            pid.Text = "";
            ptitle.Text = "";
            damount.Text = "";
            ramount.Text = "";
            show();
        }

        protected void B_logout_Click(object sender, EventArgs e)
        {
            Session["New"] = null;
            Response.Redirect("Login.aspx");
        }
    }
}