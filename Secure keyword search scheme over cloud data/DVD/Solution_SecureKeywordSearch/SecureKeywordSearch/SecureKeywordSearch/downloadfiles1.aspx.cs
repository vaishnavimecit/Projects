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
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);


    Class1 p = new Class1();

    StringBuilder sb = new StringBuilder();
    public static RSACryptoServiceProvider rsa;

    string fid;



    protected void Page_Load(object sender, EventArgs e)
    {
        string na = Session["username"].ToString();
        TextBox3.Text = na;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Image1.Visible = false;
       // Panel4.Visible = true;
        
        fid = Request.Params["fileid"];
        Session["fname"] = fid;        
        con.Open();
        SqlCommand cmd2 = new SqlCommand("select * from uploadfiles where fname='" + DropDownList1.SelectedItem.Text + "' and secret='" + TextBox5.Text + "'", con);
         SqlDataReader dr2 = cmd2.ExecuteReader();
          if (dr2.Read())
              {
                        //string check;
                        //check =ds.Tables["emp"].Rows[0]["Type"].ToString();
                  Session["sol_fname"] = DropDownList1.SelectedItem.Text;

                        Response.Redirect("openfile.aspx");
                    }
        
        
        
        
        //DataSet set = new DataSet();
        //set = p.matchingattributes1(TextBox5.Text, TextBox1.Text, TextBox2.Text);
        //if (set.Tables[0].Rows.Count > 0)
        //{
        //    Response.Redirect("openfile.aspx");
        //}
        else
        {
            SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            con1.Open();
            SqlCommand cmd = new SqlCommand("insert into hacker(username,fname,secret,key1,key2) values('" + TextBox3.Text + "','" + DropDownList1.SelectedItem.Text + "','" + TextBox5.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "')", con1);

            cmd.ExecuteNonQuery();
            string myStringVariable1 = string.Empty;
            myStringVariable1 = "You are a Hacker!!! Please Enter correct Secret Key or File Name ";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable1 + "');", true);




           // Panel4.Visible = true;


           // AssignParameter();
            // StreamReader reader = new StreamReader(@"C:\Vishaalakshi\SRM\Secure\Search\publickey.xml");
           // string publicOnlyKeyXML = reader.ReadToEnd();
          //  rsa.FromXmlString(publicOnlyKeyXML);
           // reader.Close();

           // byte[] plainbytes = System.Text.Encoding.UTF8.GetBytes((string)Session["message"]);
           // byte[] cipherbytes = rsa.Encrypt(plainbytes, false);
           // for (int x = 0; x < cipherbytes.Length; x++)
//{
             //   sb.Append(cipherbytes[x].ToString() + "<br>");
          //  }
           // Label3.Text = Convert.ToBase64String(cipherbytes);
          //  Label3.Height = 641;
          //  Label3.Width = 420;
          //  Label3.Visible = false;
            //Label6.Visible = true;
           // sb.Append(Label3.Text);
           // Literal1.Text = Convert.ToString(sb);
            ////p.lockkeys1(TextBox2.Text);
        }
    }


    public static void AssignParameter()
    {
        const int PROVIDER_RSA_FULL = 1;
        const string CONTAINER_NAME = "SpiderContainer1";
        CspParameters cspParams;
        cspParams = new CspParameters(PROVIDER_RSA_FULL);
        cspParams.KeyContainerName = CONTAINER_NAME;
        cspParams.Flags = CspProviderFlags.UseMachineKeyStore;
        cspParams.ProviderName = "Microsoft Strong Cryptographic Provider";
        rsa = new RSACryptoServiceProvider(cspParams);
    }



    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
}