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
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //check for soldier validity for range

          
            SqlConnection con2 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            try
            {
                con2.Open();
                SqlCommand cmd2 = new SqlCommand("select * from uploadfiles where fname='" + DropDownList1.SelectedItem.Text + "' and secret='" + TextBox1.Text + "'", con2);
                SqlDataReader dr2 = cmd2.ExecuteReader();
                if (dr2.Read())
                {
                    //string check;
                    //check =ds.Tables["emp"].Rows[0]["Type"].ToString();
                    Session["fname"] = DropDownList1.SelectedItem.Text;

                    Response.Redirect("downloadfiles1.aspx");
                }
                else
                {

                    string myStringVariable1 = string.Empty;
                    myStringVariable1 = "Password Mis-match! or the File Might have been Revoked! Request the file again....";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable1 + "');", true);
                }

            }
            catch (Exception ex)
            {
                string myStringVariable1 = string.Empty;
                myStringVariable1 = ex.ToString();
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable1 + "');", true);
            }
            con2.Close();
        }
    
}