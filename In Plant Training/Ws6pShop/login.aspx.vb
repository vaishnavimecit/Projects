Imports System.Data
Imports System.Data.OleDb

Partial Class login
    Inherits System.Web.UI.Page



    Protected Sub LoginButton_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim strcon As New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source='" & Server.MapPath("cust.mdb") & "';")
        Dim cmd As OleDbCommand = New OleDbCommand("select count(*) from login where login = @login and pwd = @pwd", strcon)
        cmd.Parameters.Add(New OleDbParameter("@login", OleDbType.VarChar)).Value = Login1.UserName.ToString
        cmd.Parameters.Add(New OleDbParameter("@pwd", OleDbType.VarChar)).Value = Login1.Password.ToString
        Dim x As Integer
        Try
            If strcon.State = ConnectionState.Closed Then strcon.Open()

            x = cmd.ExecuteScalar
            If x > 0 Then

                Session("user") = Login1.UserName.ToString
                Response.Redirect("default2.aspx")
            Else
                MsgBox("Invalid user/password")
                Exit Sub
            End If
            If strcon.State = ConnectionState.Open Then strcon.Close()
        Catch exp As Exception
            Response.Write(exp.ToString)
        End Try
    End Sub
End Class


