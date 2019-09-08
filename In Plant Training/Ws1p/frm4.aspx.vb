
Partial Class frm4
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        TextBox4.Text = Val(TextBox2.Text) + Val(TextBox3.Text)
        MsgBox("Ur account has been credited")
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Server.Transfer("frm2.aspx", False)
    End Sub
End Class
