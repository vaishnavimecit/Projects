
Partial Class Guestlog
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Server.Transfer("Guestbook.aspx", False)
    End Sub
End Class
