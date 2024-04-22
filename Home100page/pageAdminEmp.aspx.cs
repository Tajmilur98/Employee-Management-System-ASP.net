using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Home100page
{
    public partial class pageAdminEmp : System.Web.UI.Page
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
            cmd.CommandText = "insert into employee values ('" + e_id.Text + "', '" + E_name.Text + "', '" + post.Text + "', '" + S_month.Text + "', '" + R_date.Text + "','" + salary.Text + "','" + bonus.Text + "')";
            cmd.ExecuteNonQuery();

            e_id.Text = "";
            E_name.Text = "";
            post.Text = "";
            S_month.Text = "";
            salary.Text = "";
            R_date.Text = "";
            bonus.Text = "";
            show();
        }
        public void show()
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from employee";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

            SqlCommand cmd2 = con.CreateCommand();
            cmd2.CommandType = CommandType.Text;
            cmd2.CommandText = "select * from Leave";
            cmd2.ExecuteNonQuery();
            DataTable dt2 = new DataTable();
            SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
            da2.Fill(dt2);
            GridView2.DataSource = dt2;
            GridView2.DataBind();

            SqlCommand cmd3 = con.CreateCommand();
            cmd3.CommandType = CommandType.Text;
            cmd3.CommandText = "select * from Job";
            cmd3.ExecuteNonQuery();
            DataTable dt3 = new DataTable();
            SqlDataAdapter da3 = new SqlDataAdapter(cmd3);
            da3.Fill(dt3);
            GridView3.DataSource = dt3;
            GridView3.DataBind();
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (idd.Text == "")
            {
                idd.Text = "You have to enter an Id!!";
            }
            else
            {
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "delete from employee where id = " + Convert.ToInt32(idd.Text) + " ";
                cmd.ExecuteNonQuery();

                show();
            }
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "update employee set Name = '" + E_name.Text + "', Post  = '" + post.Text + "', Salary_month = '" + S_month.Text + "', Receiving_Date  = '" + R_date.Text + "', Salary= '" + salary.Text + "',Bonus = '" + bonus.Text + "' where id = " + Convert.ToInt32(idd.Text) + "";
            cmd.ExecuteNonQuery();
            E_name.Text = "";
            post.Text = "";
            S_month.Text = "";
            salary.Text = "";
            R_date.Text = "";
            bonus.Text = "";
            show();
        }
        protected void B_logout_Click(object sender, EventArgs e)
        {
            Session["New"] = null;
            Response.Redirect("Login.aspx");
        }

        protected void btnIssue_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from leave where id = " + Convert.ToInt32(issueid.Text) + "  ";
            SqlDataReader sdr = cmd.ExecuteReader();
            sdr.Read();
            
           
                lempid.Text = issueid.Text;
                lname.Text =  (string)sdr["Name"];
                lpost.Text = (string)sdr["Post"];
                from.Text = sdr[3].ToString();
                to.Text = sdr[4].ToString();
                reason.Text = (string)sdr["Reason"];
            
        }

        protected void btnConf_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            String app = "Approved";
            cmd.CommandText = "update leave set status = '" + app +"' where id = " + Convert.ToInt32(issueid.Text) + "";
            cmd.ExecuteNonQuery();

            lempid.Text = "";
            lname.Text = "";
            lpost.Text = "";
            from.Text = "";
            to.Text = "";
            reason.Text = "";
            issueid.Text = "";
            show();

        }
        protected void btnRej_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            String rej = "Rejected";
            cmd.CommandText = "update leave set status = '" + rej + "' where id = " + Convert.ToInt32(issueid.Text) + "";
            cmd.ExecuteNonQuery();

            lempid.Text = "";
            lname.Text = "";
            lpost.Text = "";
            from.Text = "";
            to.Text = "";
            reason.Text = "";
            issueid.Text = "";
            show();

        }

        protected void btnAssign_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into job values ('" + jempid.Text + "', '" + dept.Text + "', '" + jobtitle.Text + "', '" + proId.Text + "', '" + asdate.Text + "','" + fndate.Text + "','" + status.Text + "')";
            cmd.ExecuteNonQuery();

            jempid.Text = "";
            dept.Text = "";
            jobtitle.Text = "";
            proId.Text = "";
            asdate.Text = "";
            fndate.Text = "";
            status.Text = "";
            show();

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "update job set dept = '" + dept.Text + "', job_Ttl = '" + jobtitle.Text + "', Pro_id = '" + proId.Text + "', Asgn_Date = '" + asdate.Text + "',DeadLine = '" + fndate.Text + "', Status = '"+ status.Text + "' where id = " + Convert.ToInt32(jempid.Text) + "";
            cmd.ExecuteNonQuery();

            jempid.Text = "";
            dept.Text = "";
            jobtitle.Text = "";
            proId.Text = "";
            asdate.Text = "";
            fndate.Text = "";
            status.Text = "";
            show();

        }

        protected void btnDelJob_Click(object sender, EventArgs e)
        {
            if (jempid.Text == "")
            {
                jempid.Text = "You have to enter an Id!!";
            }
            else
            {
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "delete from job where id = " + Convert.ToInt32(jempid.Text) + " ";
                cmd.ExecuteNonQuery();

                show();
            }
        }

        protected void btnSrc_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            if (attendance.Text!="")
            {
                cmd.CommandText = "select id,attendance,rating from performance where attendance > = '" + attendance.Text + "' ";
            }
            else if(overtime.Text!="")
            {
                cmd.CommandText = "select id,overhours,rating from performance where overhours > = '" + overtime.Text + "' ";
            }
            else if (experience.Text != "")
            {
                cmd.CommandText = "select id,Experience_Year,rating from performance where Experience_Year > = '" + experience.Text + "' ";
            }
            else if (doneproject.Text != "")
            {
                cmd.CommandText = "select id,Project_Completed,rating from performance where Project_Completed > = '" + doneproject.Text + "' ";
            }
            else if (totleaves.Text != "")
            {
                cmd.CommandText = "select id,Total_Leaves,rating from performance where Total_Leaves > = '" + totleaves.Text + "' ";
            }


            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            GridView4.DataSource = dt;
            GridView4.DataBind();
        }

        
    }
}