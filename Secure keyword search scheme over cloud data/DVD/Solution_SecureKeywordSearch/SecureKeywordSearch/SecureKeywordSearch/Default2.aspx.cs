using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class Default2 : System.Web.UI.Page
{
    string Id;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            Id = (string)Session["filename"];
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from uploadfiles where fname = " + Id + " ", con);


            DataTable dt = GetData(cmd);
            if (dt != null)
            {
                download(dt);
            }
            try
            {
                SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
                con1.Open();
                SqlCommand cmd4 = new SqlCommand("select * from uploadfiles where fname = " + Id + " ", con1);
                SqlDataReader dr = cmd4.ExecuteReader();
                if (dr.Read())
                {
                    SqlConnection con11 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
                    SqlCommand cmd11 = new SqlCommand();

                    cmd11.CommandType = CommandType.Text;
                    cmd11.Connection = con11;
                    con11.Open();
                    cmd11.CommandText = "update uploadfiles set count =count+1 where fname='" + Id + "' ";
                    int i = cmd11.ExecuteNonQuery();
                    if (i < 0)
                    {

                        //Label3.Visible = true;
                        //Label3.Text = "SEARCH QUERY NOT UPDATED";
                        MsgBox.Show("Count Not Updated");

                    }

                    else
                    {
                        MsgBox.Show("Count Updated");
                    }
                    con11.Close();

                }
            }
            catch (Exception ex)
            {

                lblMsg.Visible = true;
                lblMsg.Text = "Error con4--> " + ex.Message;
                //MsgBox.Show("Error Occur");
            }


            con.Close();

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