Imports System.Data
Imports System.Data.OleDb

Partial Class Default10
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Response.Redirect("default3.aspx")
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim strcon As New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source='" & Server.MapPath("cust.mdb") & "';")
        Dim cmd As OleDbCommand = New OleDbCommand("Delete from cust where cname = @cname", strcon)
        cmd.Parameters.Add(New OleDbParameter("@cname", OleDbType.VarChar)).Value = Session("user")
        Dim x As Integer
        Try
            If strcon.State = ConnectionState.Closed Then strcon.Open()
            x = cmd.ExecuteNonQuery
            If strcon.State = ConnectionState.Open Then strcon.Close()
        Catch exp As Exception
            Response.Write(exp.ToString)
        End Try
        Response.Write("UR CART IS EMPTY")
        DataList1.DataBind()
    End Sub
End Class
