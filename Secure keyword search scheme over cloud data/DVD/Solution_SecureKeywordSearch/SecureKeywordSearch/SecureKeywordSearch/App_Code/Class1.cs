using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;


/// <summary>
/// Summary description for Class1
/// </summary>
public class Class1
{

    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
    string id, pbky, msky, len1, len2, idno;


	public Class1()
	{
		//
		// TODO: Add constructor logic here
		//

    }




    public int createid1()
    {
        con.Open();
        SqlCommand cmd2 = new SqlCommand("select max(uid) from registration", con);
        String var = Convert.ToString(cmd2.ExecuteScalar());
        int var1;
        if (var == null || var == "")
        {
            var1 = 1;
        }
        else
        {
            var1 = Convert.ToInt32(var) + Convert.ToInt32(1);
        }
        con.Close();
        return var1;

    }


    public int createid2()
    {
        con.Open();
        SqlCommand cmd3 = new SqlCommand("select max(fileid) from uploadfiles", con);
        String var = Convert.ToString(cmd3.ExecuteScalar());
        int var1;
        if (var == null || var == "")
        {
            var1 = 1;
        }
        else
        {
            var1 = Convert.ToInt32(var) + Convert.ToInt32(1);
        }
        con.Close();
        return var1;

   }


    public DataSet filematching(string fnam)
    {
        con.Open();
        SqlDataAdapter ad = new SqlDataAdapter("select * from uploadfiles where fname like '"  + fnam + '%' + "' ", con);
        DataSet dst = new DataSet();
        ad.Fill(dst);
        con.Close();
        return dst;
    }

   
    
    
    
    
    public DataSet filematching1(string key)
    {
        con.Open();
        SqlDataAdapter ad = new SqlDataAdapter("select * from uploadfiles where key1 like '" + '%' + key + '%' + "' or key2 like '" + '%' + key + '%' + "' ", con);
        DataSet dst = new DataSet();
        ad.Fill(dst);
        con.Close();
        return dst;
    }

   
    public void uploadfile(string fileid, string fname, string key1, string key2, byte[] fibytes)
    {
        try
        {
            con.Open();
            int n = fname.Length;
            SqlCommand cmd2 = new SqlCommand("insert into uploadfiles values('" + fileid + "','" + fname + "','" + key1 + "','" + key2 + "',@files,'NOT YET','0','" + DateTime.Now + "')", con);
            cmd2.Parameters.AddWithValue("@files", fibytes);
            cmd2.ExecuteNonQuery();
            con.Close();
        }
        catch (Exception ex)
        {
            MsgBox.Show(ex.Message);
        }
    }


    public void lockkeys(string u, string p)
    {
        con.Open();
        SqlCommand cmd1 = new SqlCommand("update registration set status='locked' where username='" + u + "' and password='" + p + "'", con);
        cmd1.ExecuteNonQuery();
        con.Close();
    }

  

    public DataSet matchingattributes1(string cc ,string aa,string bb)
    {
        con.Open();
        SqlDataAdapter ad2 = new SqlDataAdapter("select * from uploadfiles  where secret='" + cc + "' and key1='" + aa + "' and key2='" + bb + "'  ", con);
        DataSet dt2 = new DataSet();
        ad2.Fill(dt2);
        con.Close();
        return dt2;
    }

   
}

