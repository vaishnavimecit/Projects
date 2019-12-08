using System;
using System.IO;
using System.Net;
using System.Security.Cryptography;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Collections;
using System.Configuration;

public partial class Default2 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
   Class1 cid = new Class1();

    SqlDataAdapter da;
    DataSet ds;

    protected void Page_Load(object sender, EventArgs e)
    {
        Label8.Text = Convert.ToString(cid.createid2());
       
        

        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }

        if (Page.IsPostBack != true)
        {
            Getcustomers();
        }
    }

    private void Getcustomers()
    {
        da = new SqlDataAdapter("select fileid,fname,key1,key2,fdatetime from uploadfiles", con);
        ds = new DataSet();
        da.Fill(ds, "uploadfiles");
        GridView1.DataSource = ds.Tables["uploadfiles"].DefaultView;
        GridView1.DataBind();
    }


  
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label fileid = new Label();

        fileid = (Label)GridView1.Rows[e.RowIndex].Cells[1].FindControl("fileid");

        if (fileid.Text != "")
        {
            da = new SqlDataAdapter("delete from uploadfiles where fileid=" + Convert.ToInt32(fileid.Text) + " ", con);
            int res = da.SelectCommand.ExecuteNonQuery();
            if (res == 1)
            {
                Getcustomers();
            }
        }
    }


    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (FileUpload1.PostedFile == null || String.IsNullOrEmpty(FileUpload1.PostedFile.FileName) || FileUpload1.PostedFile.InputStream == null || TextBox2.Text == "")
        {
            lbl_msg.Text = "<br />Error - unable to upload file. Please try again.<br />";
        }
        else
        {

            SqlDataAdapter sda = new SqlDataAdapter("select * from uploadfiles where fname='" + TextBox2.Text + "' ", con);
            DataSet ds = new DataSet();
            sda.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {

                Session["fname"] = ds.Tables[0].Rows[0]["fname"].ToString();
                lbl_msg.Text = "Redundancy Occur";


            }


            else
            {

                byte[] filebytes = new byte[FileUpload1.PostedFile.InputStream.Length + 1];
                FileUpload1.PostedFile.InputStream.Read(filebytes, 0, filebytes.Length);
                cid.uploadfile(Label8.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text, filebytes);
                // Label7.Visible = true;


                lbl_msg.Text = "File successfully uploaded";

                try
                {
                    FileUpload1.SaveAs(Server.MapPath("~/File/") + FileUpload1.FileName);

                    FtpWebRequest myFtpWebRequest;
                    FtpWebResponse myFtpWebResponse;
                    StreamWriter myStreamWriter;
                    NetworkCredential myNetworkCredential;
                    StreamWriter myStream;
                    StreamReader myReadStream;

                    myFtpWebRequest = (FtpWebRequest)FtpWebRequest.Create(new Uri("ftp://ftp.drivehq.com/" + FileUpload1.FileName));
                    myNetworkCredential = new NetworkCredential();
                  
                    myNetworkCredential.UserName = "Vishaalakshi";
                    myNetworkCredential.Password = "Cloud";

                    myFtpWebRequest.Credentials = myNetworkCredential;
                    myFtpWebRequest.Method = WebRequestMethods.Ftp.UploadFile;
                    myFtpWebRequest.UseBinary = true;

                    myStream = new StreamWriter(myFtpWebRequest.GetRequestStream());// This line causes problem
                    myStreamWriter = myStream;
                    //myReadStream = new StreamReader(Server.MapPath("~/Upload/") + FileUpload1.FileName);
                    myReadStream = new StreamReader(Server.MapPath("~/File/") + FileUpload1.FileName);
                    myStreamWriter.Write(myReadStream.ReadToEnd());
                    myStreamWriter.Close();
                    myReadStream.Close();

                    myFtpWebResponse = (FtpWebResponse)myFtpWebRequest.GetResponse();
                    //Label6.Text = myFtpWebResponse.StatusDescription;
                    myFtpWebResponse.Close();
                    lbl_msg.Text = "File uploaded to cloud DRIVEHQ.COM";
                }
                catch (Exception ex)
                {
                    lbl_msg.Text = "Status : " + ex.Message;
                }
            }

        }
    }
}