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
using System.Text.RegularExpressions;
using System.IO;
using System.Text;
using System.Security.Cryptography;
using System.Data.SqlClient;


public partial class Default2 : System.Web.UI.Page
{
    int ino_int;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        // string key1 = Session["key1"].ToString(); '" + key1 + "','" + key2 + "',
        // string key2 = Session["key2"].ToString();
        string un = Session["uid"].ToString();
        string na = Session["username"].ToString();
        string email = Session["email"].ToString();

        try
        {
            con.Open();
            ino_int = 1;
            SqlCommand cmd = new SqlCommand("insert into filerequest(fname ,uid,name,email,count,RequestedDate) values('" + DropDownList1.SelectedItem.Text + "','" + un + "','" + na + "','" + email + "','" + ino_int + "','" + DateTime.Now + "')", con);

            cmd.ExecuteNonQuery();
            string myStringVariable1 = string.Empty;
            myStringVariable1 = "File Request Send !";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable1 + "');", true);

        }
        catch (Exception ex)
        {
            string myStringVariable1 = string.Empty;
            myStringVariable1 = "File req Error !";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable1 + "');", true);
        }






        try
        {
            // Label3.Text = Label3.Text + " in 2";
            SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            conn.Open();
            SqlCommand cmd4 = new SqlCommand("select * from filerequest where fname='" + DropDownList1.SelectedItem.Text + "' ", conn);
            SqlDataReader dr = cmd4.ExecuteReader();
            if (dr.Read())
            {
                //UPDATE
                SqlConnection con11 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
                ino_int = 1;
                SqlCommand cmd11 = new SqlCommand();
                SqlCommand cmd12 = new SqlCommand();
                cmd11.CommandType = CommandType.Text;
                cmd11.Connection = con11;
                con11.Open();
                cmd11.CommandText = "update filerequest set count=count+1 where fname='" + DropDownList1.SelectedItem.Text + "' ";
                cmd12.CommandType = CommandType.Text;
                cmd12.Connection = con11;
                cmd12.CommandText = "update uploadfiles set count =count+1 where fname='" + DropDownList1.SelectedItem.Text + "' ";
                int i = cmd11.ExecuteNonQuery();
                int j = cmd12.ExecuteNonQuery();
                if (i< 0 || j<0)
                {

                    Label3.Visible = true;
                    Label3.Text = "SEARCH QUERY NOT UPDATED";

                }

                else
                {
                    Label3.Visible = true;
                    Label3.Text = "SEARCH QUERY UPDATED";
                }
                con11.Close();
                
            }
        }
        catch (Exception ex)
        {
            lblMsg.Visible = true;
            lblMsg.Text = "Error con4--> " + ex.Message;
        }

        con.Close();

    }


   
}