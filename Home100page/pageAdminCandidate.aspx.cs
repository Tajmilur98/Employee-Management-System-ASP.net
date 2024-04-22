using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO; // for Directory
using System.Data;//create DataTable
using System.Data.SqlClient;
using System.Configuration;

namespace Home100page
{
    public partial class pageAdminCandidate : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["New"] != null)
            {
                Label1.Text = "Welcome " + Session["New"].ToString();
            }
            //connecting database
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();


            //Showing Candidate List
            SqlCommand cmd2 = con.CreateCommand();
            cmd2.CommandType = CommandType.Text;
            cmd2.CommandText = "select * from Candidate";
            SqlDataReader sdr = cmd2.ExecuteReader();
           

            //creating dynamic table
            DataTable dt = new DataTable();
            dt.Columns.Add("name", typeof(string));
            dt.Columns.Add("post", typeof(string));
            dt.Columns.Add("edu", typeof(string));
            dt.Columns.Add("age", typeof(string));
            dt.Columns.Add("File", typeof(string));

            foreach (string strFile in Directory.GetFiles(Server.MapPath("~/Data")))
            {
                sdr.Read();
                FileInfo fi = new FileInfo(strFile);//retrive all info about file
                dt.Rows.Add(sdr[1],sdr[2],sdr[4],sdr[3],fi.Name);
            }
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        // get file extension as string
        private string GetFileTypeByExtension(string ext)
        {
            switch (ext.ToLower())
            {
                case ".docx":
                case ".doc":
                    return "Microsoft Word Document";
                case ".xlsx":
                case ".xls":
                    return "Microsoft Excel Document";
                case ".txt":
                    return "Text Document";
                case ".jpg":
                case ".png":
                    return "Image";
                default:
                    return "Unknown";
            }
        }
        // for download the upload file
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Download")
            {
                Response.Clear();
                Response.ContentType = "aplication/cotact - stream";
                Response.AppendHeader("Content-Disposition", "filename=" + e.CommandArgument);//e.commandArgument return file name 
                Response.TransmitFile(Server.MapPath("~/Data/") + e.CommandArgument);
                Response.End();
            }
        }
    }
}