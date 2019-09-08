
Imports System.Data
Imports System.Data.oledb
Partial Class Guestbook
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'Dim strConn As String = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source='c:\Guestbook.mdb';"
        'Dim MySQL As String = "SELECT NAME, E-MAIL, URL, COMMENTS FROM Guestbook"
        'Dim MyConn As New OleDBConnection(strConn)
        'Dim Cmd As New OleDBCommand(MySQL, MyConn)
        'MyConn.Open()
        'Dim dr As OleDb.OleDbDataReader
        'dr = Cmd.ExecuteReader(CommandBehavior.CloseConnection)
        ''rptGuestbook.DataBind()
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click

        Dim strConn As String = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source='c:\Guestbook.mdb';"
        Dim MySQL As String = "INSERT INTO Guestbook " & _
           "(NAME, E-MAIL, URL, COMMENTS) VALUES " & _
           "('" & txtNAME.Text & "','" & txtEMAIL.Text & "','" _
           & txtURL.Text & "','" & txtCOMMENTS.Text & "')"
        Dim MyConn As New OleDBConnection(strConn)
        Dim cmd As New OleDBCommand(MySQL, MyConn)
        MyConn.Open()
        cmd.ExecuteNonQuery()
        MyConn.Close()
        Response.Redirect("Guestlog.aspx")
        Server.Transfer("Guestlog.aspx", False)
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        txtNAME.Text = " "
        txtEMAIL.Text = " "
        txtURL.Text = " "
        txtCOMMENTS.Text = " "
    End Sub
End Class
