
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        'MsgBox("welcome " & TextBox1.Text)
        lbl_message.Text = "Welcome " & TextBox1.Text
        Server.Transfer("default2.aspx?usrname=" & TextBox1.Text, True)

    End Sub
End Class
