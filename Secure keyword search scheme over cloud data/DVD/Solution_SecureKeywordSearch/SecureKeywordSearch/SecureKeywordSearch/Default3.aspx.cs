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

public partial class Default3 : System.Web.UI.Page
{
    int h = 0;
    Class1 obj = new Class1();
    public static RSACryptoServiceProvider rsa;

    StringBuilder sb = new StringBuilder();
    StringBuilder sb1 = new StringBuilder();

    protected void Page_Load(object sender, EventArgs e)
    {
        //Label4.Text = (string)Session["uid"];
        Label5.Text = (string)Session["name"];
        if (!IsPostBack)
        {
            //Panel1.Visible = false;
            //Panel2.Visible = false;
            Label1.Visible = false;
            //Label2.Visible = false;
            //TextBox1.Visible = false;
        }


        Session["data"] = TextBox1.Text;
        string text = TextBox1.Text;
        string splitby = " ";
        Regex rg = new Regex(splitby);
        string[] st = rg.Split(text);
        int m = st.Count();
        for (int k = 0; k < m; k++)
        {
            if (st[k].ToString() != "")
            {
                DataSet da = new DataSet();
                da = obj.filematching(st[k].ToString());

                if (da.Tables[0].Rows.Count > 0)
                {
                    for (int f = 0; f < da.Tables[0].Rows.Count; f++)
                    {


                        // creation of linkbutton

                        LinkButton linkbutton = new LinkButton();
                        linkbutton.Text = da.Tables[0].Rows[f]["fname"].ToString() + "<br><br>";
                        linkbutton.Visible = true;
                        linkbutton.CommandName = da.Tables[0].Rows[f]["fname"].ToString();
                        linkbutton.Command += new CommandEventHandler(this.link_click);
                        linkbutton.ID = h.ToString();
                        this.downloadfiles.Controls.Add(linkbutton);
                        linkbutton.Visible = true;
                        Label3.Visible = true;
                        //Panel4.Visible = true;
                        //Panel6.Visible = true;
                        h++;

                    }
                }
                else if (st[k].ToString() != "")

                //MsgBox.Show("No files found");
                {
                    //DataSet da = new DataSet();
                    da = obj.filematching1(st[k].ToString());

                    if (da.Tables[0].Rows.Count > 0)
                    {
                        for (int f = 0; f < da.Tables[0].Rows.Count; f++)
                        {


                            // creation of linkbutton

                            LinkButton linkbutton = new LinkButton();
                            linkbutton.Text = da.Tables[0].Rows[f]["fname"].ToString() + "<br><br>";
                            linkbutton.Visible = true;
                            linkbutton.CommandName = da.Tables[0].Rows[f]["fname"].ToString();
                            linkbutton.Command += new CommandEventHandler(this.link_click);
                            linkbutton.ID = h.ToString();
                            this.downloadfiles.Controls.Add(linkbutton);
                            linkbutton.Visible = true;
                            Label3.Visible = true;
                          //  Panel4.Visible = true;
                            //Panel6.Visible = true;
                            h++;

                        }
                    }

                    else
                    {
                        //MsgBox.Show("No files found");
                    }

                }
            }

            else if (st[k].ToString() != "")

            //MsgBox.Show("No files found");
            {
                DataSet da = new DataSet();
                da = obj.filematching1(st[k].ToString());

                if (da.Tables[0].Rows.Count > 0)
                {
                    for (int f = 0; f < da.Tables[0].Rows.Count; f++)
                    {
                        // creation of linkbutton

                        LinkButton linkbutton = new LinkButton();
                        linkbutton.Text = da.Tables[0].Rows[f]["fname"].ToString() + "<br><br>";
                        linkbutton.Visible = true;
                        linkbutton.CommandName = da.Tables[0].Rows[f]["fname"].ToString();
                        linkbutton.Command += new CommandEventHandler(this.link_click);
                        linkbutton.ID = h.ToString();
                        this.downloadfiles.Controls.Add(linkbutton);
                        linkbutton.Visible = true;
                        Label3.Visible = true;
                       // Panel4.Visible = true;
                        //Panel6.Visible = true;
                        h++;

                    }
                }

                else
                {
                    //MsgBox.Show("No files found");
                }
            }

        }

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        try
        {


            lblMsg.Text = "";
            if (RadioButton1.Checked == true)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);

                try
                {
                    //SqlDataAdapter da = new SqlDataAdapter("select filerequest.max(count), uploadfiles.fname from filerequest inner join uploadfiles on filerequest.fname=uploadfiles.fname where fname='" + TextBox1.Text + "'", con);

                    //SqlDataAdapter da = new SqlDataAdapter("SELECT uploadfiles.secret, filerequest.max(count) from uploadfiles inner join filerequest on uploadfiles.fname=filerequest.fname where fname='" + TextBox1.Text + "'", con);

                    // SqlDataAdapter da = new SqlDataAdapter("SELECT filerequest.max(count),filerequest.fname,uploadfiles.fname FROM filerequest uploadfiles where filerequest.fname=uploadfiles.fname and where fname='" + TextBox1.Text + "'", con);

                    SqlDataAdapter da = new SqlDataAdapter("select * from uploadfiles where fname like '" + TextBox1.Text + "%'", con);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    if (ds.Tables[0].Rows.Count <= 0)
                    {
                        GridView1.Visible = false;
                        lblMsg.Visible = true;
                        lblMsg.Text = "NO FILE NAME AVAILABLE!";
                        Panel4.Visible = false;
                        Panel5.Visible = false;
                        //Panel6.Visible = false;
                        Image1.Visible = true;
                        Image2.Visible = false;

                    }
                    //Panel1.Visible = true;
                    else
                    {
                        GridView1.Visible = false;
                        Panel2.Visible = true;
                       // Panel4.Visible = true;
                        Panel5.Visible = true;
                        //Panel6.Visible = true;
                        Image1.Visible = true;
                        Image2.Visible = false;

                        Session["message"] = TextBox1.Text;

                        // create secret key

                        AssignParameter();
                        //provide public and private RSA params
                        StreamWriter writer = new StreamWriter(@"C:\Users\Gal\Desktop\Secure keyword search scheme over cloud data\DVD\Solution_SecureKeywordSearch\SecureKeywordSearch\SecureKeywordSearch\privatekey.xml");
                        string publicPrivateKeyXML = rsa.ToXmlString(true);
                        writer.Write(publicPrivateKeyXML);
                        writer.Close();
                        //provide public only RSA params	
                        writer = new StreamWriter(@"C:\Users\Gal\Desktop\Secure keyword search scheme over cloud data\DVD\Solution_SecureKeywordSearch\SecureKeywordSearch\SecureKeywordSearch\publickey.xml");
                        string publicOnlyKeyXML1 = rsa.ToXmlString(false);
                        writer.Write(publicOnlyKeyXML1);
                        writer.Close();

                        // Label1.Text=Cryptography.EncryptData(txt_keyword.Text);

                        // Encryption

                        AssignParameter();
                        StreamReader reader = new StreamReader(@"C:\Users\Gal\Desktop\Secure keyword search scheme over cloud data\DVD\Solution_SecureKeywordSearch\SecureKeywordSearch\SecureKeywordSearch\publickey.xml");
                        string publicOnlyKeyXML = reader.ReadToEnd();
                        rsa.FromXmlString(publicOnlyKeyXML);
                        reader.Close();
                        //read plaintext, encrypt it to ciphertext	
                        byte[] plainbytes = System.Text.Encoding.UTF8.GetBytes(TextBox1.Text);
                        byte[] cipherbytes = rsa.Encrypt(plainbytes, false);
                        for (int x = 0; x < cipherbytes.Length; x++)
                        {
                            sb.Append(cipherbytes[x].ToString() + "<br>");
                        }
                        Label1.Text = Convert.ToBase64String(cipherbytes);
                        sb.Append(Label1.Text);
                        Literal1.Text = Convert.ToString(sb);
                        AssignParameter();
                        byte[] getpassword = Convert.FromBase64String(Label1.Text);
                        StreamReader reader1 = new StreamReader(@"C:\Users\Gal\Desktop\Secure keyword search scheme over cloud data\DVD\Solution_SecureKeywordSearch\SecureKeywordSearch\SecureKeywordSearch\privatekey.xml");
                        string publicPrivateKeyXML2 = reader1.ReadToEnd();
                        rsa.FromXmlString(publicPrivateKeyXML2);
                        reader1.Close();

                        byte[] plain = rsa.Decrypt(getpassword, false);
                        for (int y = 0; y < plain.Length; y++)
                        {
                            sb1.Append(plain[y].ToString() + "<br>");
                        }
                        Label2.Text = System.Text.Encoding.UTF8.GetString(plain);
                        sb1.Append(Label2.Text);
                        Literal2.Text = Convert.ToString(sb1);

                        //obj.storesearchdatas((string)Session["userid"],Label1.Text, Label2.Text);
                    }
                }
                catch (Exception ex)
                {
                    lblMsg.Visible = true;
                    lblMsg.Text = "Error --> " + ex.Message;
                }
                finally
                {
                    con.Close();
                }

            }




            else if (RadioButton2.Checked == true)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);

                try
                {
                    SqlDataAdapter da = new SqlDataAdapter("select * from uploadfiles where key1='" + TextBox1.Text + "' or key2='" + TextBox1.Text + "' ", con);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    if (ds.Tables[0].Rows.Count <= 0)
                    {
                        GridView1.Visible = false;
                        lblMsg.Visible = true;
                        lblMsg.Text = "NO KEYWORD ARE AVAILABLE!";
                        Panel4.Visible = false;
                        Panel5.Visible = false;
                        //Panel6.Visible = false;
                        Image1.Visible = true;
                        Image2.Visible = false;
                    }
                    //Panel1.Visible = true;
                    else
                    {
                        GridView1.Visible = false;
                        Panel2.Visible = true;
                        //Panel4.Visible = true;
                        Panel5.Visible = true;
                        //Panel6.Visible = true;
                        Image1.Visible = true;
                        Image2.Visible = false;

                        Session["message"] = TextBox1.Text;

                        // create secret key

                        AssignParameter();
                        //provide public and private RSA params
                        StreamWriter writer = new StreamWriter(@"C:\Users\Gal\Desktop\Secure keyword search scheme over cloud data\DVD\Solution_SecureKeywordSearch\SecureKeywordSearch\SecureKeywordSearch\privatekey.xml");
                        string publicPrivateKeyXML = rsa.ToXmlString(true);
                        writer.Write(publicPrivateKeyXML);
                        writer.Close();
                        //provide public only RSA params	
                        writer = new StreamWriter(@"C:\Users\Gal\Desktop\Secure keyword search scheme over cloud data\DVD\Solution_SecureKeywordSearch\SecureKeywordSearch\SecureKeywordSearch\publickey.xml");
                        string publicOnlyKeyXML1 = rsa.ToXmlString(false);
                        writer.Write(publicOnlyKeyXML1);
                        writer.Close();

                        // Label1.Text=Cryptography.EncryptData(txt_keyword.Text);

                        // Encryption

                        AssignParameter();
                        StreamReader reader = new StreamReader(@"C:\Users\Gal\Desktop\Secure keyword search scheme over cloud data\DVD\Solution_SecureKeywordSearch\SecureKeywordSearch\SecureKeywordSearch\publickey.xml");
                        string publicOnlyKeyXML = reader.ReadToEnd();
                        rsa.FromXmlString(publicOnlyKeyXML);
                        reader.Close();
                        //read plaintext, encrypt it to ciphertext	
                        byte[] plainbytes = System.Text.Encoding.UTF8.GetBytes(TextBox1.Text);
                        byte[] cipherbytes = rsa.Encrypt(plainbytes, false);
                        for (int x = 0; x < cipherbytes.Length; x++)
                        {
                            sb.Append(cipherbytes[x].ToString() + "<br>");
                        }
                        Label1.Text = Convert.ToBase64String(cipherbytes);
                        sb.Append(Label1.Text);
                        Literal1.Text = Convert.ToString(sb);






                        AssignParameter();
                        byte[] getpassword = Convert.FromBase64String(Label1.Text);
                        StreamReader reader1 = new StreamReader(@"C:\Users\Gal\Desktop\Secure keyword search scheme over cloud data\DVD\Solution_SecureKeywordSearch\SecureKeywordSearch\SecureKeywordSearch\privatekey.xml");
                        string publicPrivateKeyXML2 = reader1.ReadToEnd();
                        rsa.FromXmlString(publicPrivateKeyXML2);
                        reader1.Close();

                        byte[] plain = rsa.Decrypt(getpassword, false);
                        for (int y = 0; y < plain.Length; y++)
                        {
                            sb1.Append(plain[y].ToString() + "<br>");
                        }
                        Label2.Text = System.Text.Encoding.UTF8.GetString(plain);
                        sb1.Append(Label2.Text);
                        Literal2.Text = Convert.ToString(sb1);

                        //obj.storesearchdatas((string)Session["userid"],Label1.Text, Label2.Text);
                    }
                }
                catch (Exception ex)
                {
                    lblMsg.Visible = true;
                    lblMsg.Text = "Error --> " + ex.Message;
                }
                finally
                {
                    con.Close();
                }


            }

            else if (RadioButton3.Checked == true)
            {
                if (TextBox1.Text == "")
                {
                    lblMsg.Visible = false;
                    //lblMsg.Text = "NO KEYWORD ARE AVAILABLE!";
                    Panel4.Visible = false;
                    Panel5.Visible = false;
                    //Panel6.Visible = false;
                    GridView1.Visible = true;
                    Image1.Visible = false;
                    Image2.Visible = true;
                    //img1.visible = false;
                }
            }
        }
        catch (Exception ex)
        {
            MsgBox.Show(ex.Message);
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

    protected void link_click(object sender, CommandEventArgs e)
    {
        //Response.Write(" <script type='text/javascript'> finaldoc=window.open('Default.aspx?id='"+e.CommandName+"'');</script>");
        Response.Redirect("filerequest.aspx?id='" + e.CommandName + "'");
    }
    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
   
}