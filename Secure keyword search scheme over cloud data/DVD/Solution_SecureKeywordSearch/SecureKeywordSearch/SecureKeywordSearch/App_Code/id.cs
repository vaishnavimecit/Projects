using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

/// <summary>
/// Summary description for id
/// </summary>
public class id
{
    string id1;//id2,id3,id4,id5,id6;
    int eid;//eid1,eid2,eid3,eid4,eid5;
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
	public id()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int idgeneration()
    {
        con.Open();
        SqlCommand c1 = new SqlCommand("select max(uid) from registration", con);
        id1 = Convert.ToString(c1.ExecuteScalar());
        if (id1 == "")
        {
            eid = 1;
        }
        else
        {
            eid = Convert.ToInt16(id1);
            eid = eid + 1;
        }
        con.Close();
        return eid;
    }
    //public int idgeneration1()
    //{
    //  con.Open();
    //    SqlCommand c2 = new SqlCommand("select max(aid) from Account_Open", con);
    //    id2 = Convert.ToString(c2.ExecuteScalar());
    //    if (id2 == "")
    //    {
    //        eid1 = 1;
    //   }
    //    else
    //    {
    //        eid1 = Convert.ToInt16(id2);
    //        eid1 = eid1 + 1;
    //    }
    //   con.Close();
    //    return eid1;
   // }
   // public int idgeneration2()
    //{
     //   con.Open();
     //   SqlCommand c3 = new SqlCommand("select max(dno) from deposits", con);
     //   id3 = Convert.ToString(c3.ExecuteScalar());
      //  if (id3 == "")
      //  {
       //     eid2 = 1;
       // }
        //else
        //{
         //   eid2 = Convert.ToInt16(id3);
          //  eid2 = eid2 + 1;
        //}
        //con.Close();
        //return eid2;
    //}
    //public int idgeneration3()
   // {
    //    con.Open();
    //    SqlCommand c4 = new SqlCommand("select max(tno) from foundtransfer", con);
    //    id4 = Convert.ToString(c4.ExecuteScalar());
    //    if (id4 == "")
    //    {
     //       eid3 = 1;
     //   }
     //   else
     //   {
      //      eid3 = Convert.ToInt16(id4);
      //      eid3 = eid3 + 1;
      //  }
      //  con.Close();
      //  return eid3;
   // }
   // public int idgeneration4()
    //{
     //   con.Open();
    //    SqlCommand c5 = new SqlCommand("select max(rid) from requests", con);
    //    id5 = Convert.ToString(c5.ExecuteScalar());
    //    if (id5 == "")
    //    {
    //        eid4 = 1;
    //    }
    //    else
    //    {
   //         eid4 = Convert.ToInt16(id5);
   //         eid4 = eid4 + 1;
   //     }
  //      con.Close();
  //      return eid4;
  //  }
  //  public int idgeneration5()
  //  {
  //      con.Open();
  //      SqlCommand c6 = new SqlCommand("select max(lid) from loanrequest", con);
  //      id6 = Convert.ToString(c6.ExecuteScalar());
  //      if (id6 == "")
  //      {
  //          eid5 = 1;
  //      }
  //      else
   //     {
   //         eid5 = Convert.ToInt16(id6);
   //         eid5 = eid5 + 1;
    //    }
     //   con.Close();
       // return eid5;
   // }
}
