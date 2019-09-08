Imports System.Data
Imports System.Data.OleDb


Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim strConn As String = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source='c:\db1.mdb';"
        Dim MySQL As String = "INSERT INTO gbook values (@name,@email,@url,@comments)"
        '   "(NAME, E-MAIL, URL, COMMENTS) VALUES " & _
        '   "('" & txtNAME.Text & "','" & txtEMAIL.Text & "','" _
        '   & txtURL.Text & "','" & txtCOMMENTS.Text & "')"

        'Dim name_col As OleDbParameter = New OleDbParameter("@name", OleDbType.VarChar)

        'Dim email_col As OleDbParameter = New OleDbParameter("@email", OleDbType.VarChar)
        'Dim url_col As OleDbParameter = New OleDbParameter("@url", OleDbType.VarChar)

        'Dim comments_col As OleDbParameter = New OleDbParameter("@comments", OleDbType.VarChar)

        Dim MyConn As New OleDbConnection(strConn)
        Dim cmd As New OleDbCommand(MySQL, MyConn)


        cmd.Parameters.AddWithValue("@name", txtNAME.Text)


        cmd.Parameters.AddWithValue("@email", txtEMAIL.Text)

        cmd.Parameters.AddWithValue("@url", txtURL.Text)

        cmd.Parameters.AddWithValue("@comments", txtCOMMENTS.Text)

        If MyConn.State = ConnectionState.Closed Then MyConn.Open()
        Try
            cmd.ExecuteNonQuery()
            Response.Write("Successfully updated!")

        Catch exp As Exception
            If InStr(1, exp.ToString(), "primary key", CompareMethod.Text) > 0 Then
                Response.Write("Record already exits!")
                Exit Sub
            End If
            Response.Write(exp.ToString)

        End Try
        If MyConn.State = ConnectionState.Open Then MyConn.Close()
        Response.Redirect("Guestlog.aspx")
        Server.Transfer("Guestlog.aspx", False)
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        txtNAME.Text = " "
        txtEMAIL.Text = " "
        txtURL.Text = " "
        txtCOMMENTS.Text = " "
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
  

        'Dim strConn As String = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=c:\Guestbook.mdb;"
        'Dim MySQL As String = "SELECT Name, EMail, URL, Comment FROM Guestbook"
        'Dim MyConn As New OleDbConnection(strConn)
        'Dim Cmd As New OleDbCommand(MySQL, MyConn)
        'MyConn.Open()
        'rptGuestbook.DataSource = Cmd.ExecuteReader(System.Data.CommandBehavior.CloseConnection)
        'rptGuestbook.DataBind()

    End Sub
End Class
