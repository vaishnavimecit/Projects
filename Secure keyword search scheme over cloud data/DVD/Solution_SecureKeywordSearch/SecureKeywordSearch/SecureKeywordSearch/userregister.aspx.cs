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
using System.IO;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;

public partial class Default2 : System.Web.UI.Page
{
    int yr;

    id ids = new id();
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Label9.Text = Convert.ToString(ids.idgeneration());
            Label10.Text = DateTime.Now.ToString();
        }
        
       
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into registration values('" + Label9.Text + "','" + Label10.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')", con);
        cmd.ExecuteNonQuery();
        RegisterStartupScript("msg", "<script>alert('User Added Successfully...')</script>");
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
       
      
        Label9.Text = Convert.ToString(ids.idgeneration());
        con.Close();
    }

    

   
}