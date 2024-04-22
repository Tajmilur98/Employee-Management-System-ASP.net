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
    public partial class services : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

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
            SqlDataReader sdr = cmd.ExecuteReader();

            try
            {
                sdr.Read();
                Label1.Text = "PROJECT ID : " + sdr[0].ToString();
                Label2.Text = "PROJECT TITLE : " + sdr[1].ToString();
                Label3.Text = "PROJECT PRICE : " + sdr[2].ToString();

                sdr.Read();
                Label4.Text = "PROJECT ID : " + sdr[0].ToString();
                Label5.Text = "PROJECT TITLE : " + sdr[1].ToString();
                Label6.Text = "PROJECT PRICE : " + sdr[2].ToString();

                sdr.Read();
                Label9.Text = "PROJECT ID : " + sdr[0].ToString();
                Label10.Text = "PROJECT TITLE : " + sdr[1].ToString();
                Label11.Text = "PROJECT PRICE : " + sdr[2].ToString();


            }
            catch
            {

            }
            sdr.Close();
            
        }

        protected void insert_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into Client values ('" + cid.Text + "','" + name.Text + "','" + pid.Text + "','" + ptitle.Text + "','" + pamount.Text + "','" + 0 + "')";
            cmd.ExecuteNonQuery();

            cid.Text = "";
            name.Text = "";
            pid.Text = "";
            ptitle.Text = "";
            pamount.Text = "";
           
        }
    }
}