Imports system.data
Imports System.Data.oledb
Partial Class Default4
    Inherits System.Web.UI.Page

    Protected Sub DataList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DataList1.SelectedIndexChanged

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Server.Transfer("default2.aspx", False)
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        Server.Transfer("default3.aspx", False)
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim strcon As New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source='" & Server.MapPath("cust.mdb") & "';")
        Dim i As Integer, x As Integer = 0
        For i = 0 To DataList1.Items.Count - 1
            Dim chk As CheckBox
            Dim dop As Date, pid As String, quantity As Integer, price As Long, totalcost As Long
            chk = DataList1.Items(i).FindControl("checkbox1")
            If chk.Checked = True Then
                dop = Format(Now(), "MM/dd/yyyy")
                pid = CType(DataList1.Items(i).FindControl("IDlabel"), Label).Text
                price = Val(CType(DataList1.Items(i).FindControl("Pricelabel"), Label).Text)
                quantity = Val(CType(DataList1.Items(i).FindControl("textbox1"), TextBox).Text)
                totalcost = quantity * price

                If Session("user") <> "" And dop.ToString() <> "" And pid <> "" Then
                    Dim cmd As OleDbCommand = New OleDbCommand("insert into cust values(@cname,@dop,@pid,@quantity,@totalcost)", strcon)
                    cmd.Parameters.Add(New OleDbParameter("@cname", OleDbType.VarChar)).Value = Session("user")
                    cmd.Parameters.Add(New OleDbParameter("@dop", OleDbType.Date)).Value = dop
                    cmd.Parameters.Add(New OleDbParameter("@pid", OleDbType.VarChar)).Value = pid
                    cmd.Parameters.Add(New OleDbParameter("@quantity", OleDbType.Numeric)).Value = quantity
                    cmd.Parameters.Add(New OleDbParameter("@totalcost", OleDbType.Numeric)).Value = totalcost
                    x = x + 1
                    Try
                        If strcon.State = ConnectionState.Closed Then strcon.Open()

                        cmd.ExecuteNonQuery()

                        If strcon.State = ConnectionState.Open Then strcon.Close()
                    Catch exp As Exception
                        Response.Write(exp.ToString)
                    End Try

                End If
            End If
        Next
        If x > 0 Then Response.Redirect("default10.aspx")


    End Sub

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        Response.Redirect("default10.aspx")
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
End Class
