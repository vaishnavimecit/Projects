
Partial Class frm1
    Inherits System.Web.UI.Page


    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        If TextBox2.Text = TextBox1.Text Then
            Server.Transfer("frm2.aspx", False)
        Else
            MsgBox("Pls enter the correct pin number")
        End If
    End Sub


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
End Class
