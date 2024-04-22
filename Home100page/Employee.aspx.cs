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
    public partial class Employee : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {
                if (Session["New"] != null)
                {

                    Label1.Text = "Welcome " + Session["New"].ToString();

                }
                else
                {

                }
            }
            catch { }


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
            cmd.CommandText = "select id from Registration where UserName = '" + Session["new"] + "' ";
            pid.Text = cmd.ExecuteScalar().ToString();
            

            SqlCommand cmd1 = con.CreateCommand();
            cmd1.CommandType = CommandType.Text;
            cmd1.CommandText = "select * from Profile where id = " + Convert.ToInt32(pid.Text) + " ";
            SqlDataReader sdr1 = cmd1.ExecuteReader();
            sdr1.Read();

            try
            {
                pname.Text = (string)sdr1[1];
                pdept.Text = (string)sdr1[2];
                padd.Text = sdr1[3].ToString();
                pedu.Text = sdr1[4].ToString();
                proage.Text = sdr1[5].ToString();


               
            } catch { }
            sdr1.Close();
        }


        protected void btnAssign_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert leave values ('" + lempid.Text + "', '" + lname.Text + "', '" + post.Text + "', '" + from.Text + "', '" + to.Text + "','" + reason.Text + "','" + "Pending" + "')";
            cmd.ExecuteNonQuery();

            lempid.Text = "";
            lname.Text = "";
            post.Text = "";
            from.Text = "";
            to.Text = "";
            reason.Text = "";

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["new"] = null;
            Response.Redirect("pageHome.aspx");
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "update profile set name = '" + pname.Text + "',Department = '" + pdept.Text + "',Address = '" + padd.Text + "',Education = '" + pedu.Text + "',age = '" + proage.Text + "' where id = " + Convert.ToInt32(pid.Text) + " ";
            cmd.ExecuteNonQuery();
        }

        protected void btnStat_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select status from leave where id = '" + pid.Text + "' ";
            try
            {
                stat.Text = cmd.ExecuteScalar().ToString();
            }
            catch
            {
                stat.Text = "No request yet";
            }
        }
    }
}