using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Home100page
{
    public partial class pageReg : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {
               
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                conn.Open();

                string insertQuery = "insert into Registration (Id, UserName, Email, Password, Country) values (@Id, @Uname, @email, @password, @country) ";
                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@Id", TextBoxId.Text);
                com.Parameters.AddWithValue("@Uname", TextBoxUN.Text);
                com.Parameters.AddWithValue("@email", TextBoxEmail.Text);
                com.Parameters.AddWithValue("@password", TextBoxPass.Text);
                com.Parameters.AddWithValue("@country", DropDownListCountry.SelectedItem.ToString());

              


                // SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);

                string checkUser = "select count(*)  from Registration where UserName = '" + TextBoxUN.Text + "'";
                SqlCommand comm = new SqlCommand(checkUser, conn);
                int temp = Convert.ToInt32(comm.ExecuteScalar());
                com.ExecuteNonQuery();
                if (temp != 0)
                {
                    Response.Write("Username Already Exists");
                }
                else
                {
                    //insert id into profile
                    string insertQuery1 = "insert into profile (Id, Name, Department, Address, Education, Age) values (@Id, null,null,null,null,null) ";
                    SqlCommand com1 = new SqlCommand(insertQuery1, conn);
                    com1.Parameters.AddWithValue("@Id", Convert.ToInt32(TextBoxId.Text));
                    com1.ExecuteNonQuery();

                    Response.Redirect("pagelogin.aspx");
                }
                conn.Close();
                //com.ExecuteNonQuery();
                //Response.Redirect("Manager.aspx");
                //Response.Write("Registration is successful");


                //conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error : " + ex.ToString());
            }
        }

        


    }
}