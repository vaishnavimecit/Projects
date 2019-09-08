
Partial Class Default2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim user As String
        user = Request.QueryString("usrname")

        Response.Write("Hi" & user)


    End Sub
End Class
