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
using System.IO;
using System.Net;
using System.Net.Mail;

public partial class Default2 : System.Web.UI.Page
{

    string gMailAccount = "vaishnavimecit@gmail.com";// u can give ur mail id
    string password = "24192Aboys@";//password
    string to;
    string subject = "Secure & Dynamic Multikeyword Ranked Search";
    string message;

    protected void Page_Load(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]))
        {
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = "select * from filerequest order by requesteddate desc";
                cmd.Connection = con;
                con.Open();
                gvDetails.DataSource = cmd.ExecuteReader();
                gvDetails.DataBind();
                con.Close();
            }
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
         string fname = DropDownList1.SelectedItem.Text;
        SqlConnection con= new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("update uploadfiles set secret='" + TextBox1.Text + "' where fname='" + fname + "'", con);
            cmd.ExecuteNonQuery();
            string myStringVariable1 = string.Empty;
            myStringVariable1 = "Key Framed SUCCESSFULLY";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable1 + "');", true);
        }
        catch (Exception ex)
        {
            Console.WriteLine("Exception caught here" + ex.ToString());
        }

        con.Close();
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Random val = new Random();     
        SecretKeyGenerator objSecKey = new SecretKeyGenerator();
        TextBox1.Text = "" + objSecKey.GenerateSecretKey(Convert.ToUInt64(val.Next()));
       
    }



    protected void gvDetails_SelectedIndexChanged(object sender, EventArgs e)
    {
        string fname = gvDetails.SelectedRow.Cells[1].Text;
        string username = gvDetails.SelectedRow.Cells[2].Text;
        string key;
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from uploadfiles where fname='" + fname + "'", con);
            cmd.ExecuteNonQuery();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                key = dr["secret"].ToString();

                //send key to mail
                SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
                con1.Open();
                SqlCommand cmd1 = new SqlCommand("select * from registration where name='" + username + "'", con1);
                SqlDataReader dr1 = cmd1.ExecuteReader();
                if (dr1.Read())
                {
                    message = "<hr><br>Hello " + username + "<b>" + " ! </b><br><br>" + "Your File Security Key is : " + "<b>" + key + "</b>";
                    to = dr1["email"].ToString();
                    NetworkCredential loginInfo = new NetworkCredential(gMailAccount, password);
                    MailMessage msg = new MailMessage();
                    msg.From = new MailAddress(gMailAccount);
                    msg.To.Add(new MailAddress(to));
                    msg.Subject = subject;
                    msg.Body = message;
                    msg.IsBodyHtml = true;

                    try
                    {
                        SmtpClient client = new SmtpClient("smtp.gmail.com");
                        client.EnableSsl = true;
                        client.UseDefaultCredentials = false;
                        client.Credentials = loginInfo;
                        client.Send(msg);
                    }
                    catch (Exception ex)
                    {
                        string myStringVariable3 = string.Empty;
                        myStringVariable3 = "OFFLINE" + ex.ToString();
                        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable3 + "');", true);
                    }
                }
                else
                {
                    string myStringVariable3 = string.Empty;
                    myStringVariable3 = "No user Mail ID";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable3 + "');", true);
                }
                con1.Close();



            }
            else
            {
                string myStringVariable2 = string.Empty;
                myStringVariable2 = "No File";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable2 + "');", true);

            }
        }
        catch (Exception ex)
        {
            string myStringVariable1 = string.Empty;
            myStringVariable1 = "Exception caught here" + ex.ToString();
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable1 + "');", true);

            // Console.WriteLine("Exception caught here" + ex.ToString());
        }

        con.Close();


        //send key to mail
    }


   
   
}