using System;
using System.Collections;
using System.Configuration;

using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Data;

public partial class Default2 : System.Web.UI.Page
{
    string Id;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            con.Open();
            Id = (string)Session["filename"];
            SqlCommand cmd = new SqlCommand("select * from uploadfiles where fname = " + Id + " ", con);

            DataTable dt = GetData(cmd);
            if (dt != null)
            {
                download(dt);
            }
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