using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class openfile: System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            con.Open();
            string Id = (string)Session["sol_fname"];
            SqlCommand cmd = new SqlCommand("select * from uploadfiles where fname = '" + Id + "'", con);
            //cmd.Parameters.Add("@FileId",SqlDbType.Int).Value=1;
            DataTable dt = GetData(cmd);
            if (dt != null)
            {
                download(dt);
            }
            //DataSet data = new DataSet();
            //adp.Fill(data);
            //Label1.Text = data.Tables[0].Rows[0]["Fname"].ToString();
            //SqlCommand com = new SqlCommand("select Docu from fileuploadtable Where FileId='"+Id+"'",con);
            //com.ExecuteNonQuery();            
            //Response.ContentType = "application/octet-stream";
            //Response.AddHeader("Conetent-Disposition", "attachment;filename='" + Label1.Text + "'.zip");

            //byte[] Docu = (Byte[])com.ExecuteScalar();
            //Response.BinaryWrite(Docu);
            //Response.End();



        }
    }
    private DataTable GetData(SqlCommand cmd)
    {

        DataTable dt = new DataTable();
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlDataAdapter sda = new SqlDataAdapter();
        cmd.CommandType = CommandType.Text;
        cmd.Connection = con;
        try
        {
            con.Open();
            sda.SelectCommand = cmd;
            sda.Fill(dt);
            return dt;
        }
        catch
        {
            return null;
        }

        finally
        {
            con.Close();
            sda.Dispose();
            con.Dispose();
        }
    }
    private void download(DataTable dt)
    {
        if (dt.Rows.Count > 0)
        {
            Byte[] bytes = (Byte[])dt.Rows[0]["filee"];
            Response.Buffer = true;
            Response.Charset = "";
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            //Response.ContentType = dt.Rows[0]["Ftype"].ToString();
            Response.AddHeader("content-disposition", "attachment;filename=" + dt.Rows[0]["fname"].ToString());
            //Response.BinaryWrite("<script type='text/javascript'> <embed src='bytes' style=width:300px; height:200px;> </embed> </script> ");
            Response.ContentType = "application/msword";
            Response.BinaryWrite(bytes);
            Response.Flush();
            Response.End();
        }
    }




}
