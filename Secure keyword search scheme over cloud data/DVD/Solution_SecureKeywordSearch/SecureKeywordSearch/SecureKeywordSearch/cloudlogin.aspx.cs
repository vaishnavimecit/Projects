using System;
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
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
    int count = 0, uid;
    string username;



    protected void Page_Load(object sender, EventArgs e)
    {



    }


    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (DropDownList1.SelectedItem.Text == "Admin")
        {
            if (txt_unam.Text == "owner" && txt_pass.Text == "owner")
            {
                Response.Redirect("ownerhome.aspx");
            }
            else
                MsgBox.Show("Invalid User");
        }

        else if (DropDownList1.SelectedItem.Text == "User")
        {
            con.Open();
            string s1 = "select * from registration where username='" + txt_unam.Text + "' and password='" + txt_pass.Text + "'";
            SqlCommand cmd = new SqlCommand(s1, con);
            SqlDataReader read = cmd.ExecuteReader();
            while (read.Read())
            {
                count++;
                uid = Convert.ToInt32(read.GetValue(0).ToString());
                username = read.GetValue(4).ToString();


            }
            read.Close();
            if (count == 1)
            {
                Session["uid"] = uid;
                Session["username"] = username;
                Response.Redirect("userhome.aspx");
            }
            else
            {
                MsgBox.Show("Incorrect UserName (Or) Password");
            }

            con.Close();

        }


        //    con.Open();
        //    SqlDataAdapter sda = new SqlDataAdapter("select * from registration where username='" + txt_unam.Text + "' and password='" + txt_pass.Text + "'", con);
        //    DataSet ds = new DataSet();
        //    sda.Fill(ds);
        //    if (ds.Tables[0].Rows.Count > 0)
        //    {
        //        Session["uid"] = ds.Tables[0].Rows[0]["uid"].ToString();
        //        Session["regdate"] = ds.Tables[0].Rows[0]["regdate"].ToString();
        //        Session["name"] = ds.Tables[0].Rows[0]["name"].ToString();
        //        Session["mobile"] = ds.Tables[0].Rows[0]["mobile"].ToString();
        //        Session["email"] = ds.Tables[0].Rows[0]["email"].ToString();
        //        Session["city"] = ds.Tables[0].Rows[0]["city"].ToString();
        //        Session["username"] = ds.Tables[0].Rows[0]["username"].ToString();
        //        Session["password"] = ds.Tables[0].Rows[0]["password"].ToString();
        //        Response.Redirect("userdetails.aspx");

        //    }
        //    else
        //    {
        //        MsgBox.Show("Incorrect UserName (Or) Password");
        //    }
        //    con.Close();
        //}

        else if (DropDownList1.SelectedItem.Text == "Cloud")
        {

            if (txt_unam.Text == "cloud" && txt_pass.Text == "cloud")
            {
                Response.Redirect("cloudhome.aspx");
            }
            else
                MsgBox.Show("Invalid User");


        }
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        DropDownList1.Text = "";
        txt_unam.Text = "";
        txt_pass.Text = "";
    }
}