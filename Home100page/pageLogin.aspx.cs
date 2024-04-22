using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Home100page
{
    public partial class pageLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //----------------------------------new for cookie----------------------------

            HttpCookie cookie = Request.Cookies["UserInfo"];

            if (cookie != null)
            {

                TextBoxUserName.Text = cookie["name"];
                TextBoxPassword.Text = cookie["pass"];
                //Response.Redirect("Users.aspx");
            }
            //----------------------------------new for cookie----------------------------
        }

        protected void Button_Login_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string checkUser = "select count(*)  from Registration where UserName = '" + TextBoxUserName.Text + "'";
            SqlCommand com = new SqlCommand(checkUser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {
                conn.Open();
                string checkPasswordQuery = "select password from Registration where UserName = '" + TextBoxUserName.Text + "'";
                SqlCommand Passcomm = new SqlCommand(checkPasswordQuery, conn);
                string password = Passcomm.ExecuteScalar().ToString().Replace(" ", "");

                if (password == TextBoxPassword.Text)
                {
                    Session["New"] = TextBoxUserName.Text;
                    //----------------------------------new for cookie----------------------------
                    if (CheckBox1.Checked)
                    {
                        HttpCookie cookie = new HttpCookie("UserInfo");
                        cookie["name"] = TextBoxUserName.Text;
                        cookie["pass"] = TextBoxPassword.Text;
                        cookie.Expires = DateTime.Now.AddMinutes(1);
                        Response.Cookies.Add(cookie);

                    }
                    //----------------------------------new for cookie----------------------------
                    //-----------------------for admin log in---------------------
                    if (TextBoxUserName.Text == "Taj")
                    {
                        Response.Redirect("pageAdminHome.aspx");
                    }
                    //-----------------------for admin log in---------------------
                    Response.Redirect("Employee.aspx");
                }
                else
                {
                    //Response.Write("Password is not correct!!!");
                    Response.Write("<script LANGUAGE='JavaScript' >alert('Password is not correct!!! Please enter correct password.')</script>");
                }


            }
            else
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('User Name is not correct!!! Please enter a valid user name or Register.')</script>");
            }

            conn.Close();
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}