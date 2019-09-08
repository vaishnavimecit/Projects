Imports System.Data
Imports System.Data.OleDb
Partial Class stud
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        txtTotal.Text = Val(txtMark1.Text) + Val(txtMark2.Text) + Val(txtMark3.Text)
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        txtAverage.Text = Val(txtTotal.Text) / 3
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        Dim strConn As String = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source='c:\db2.mdb';"
        Dim MySQL As String = "INSERT INTO stud values (@name,@m1,@m2,@m3,@tot,@avg)"

        Dim MyConn As New OleDbConnection(strConn)
        Dim cmd As New OleDbCommand(MySQL, MyConn)


        cmd.Parameters.AddWithValue("@name", txtName.Text)


        cmd.Parameters.AddWithValue("@m1", txtMark1.Text)

        cmd.Parameters.AddWithValue("@m2", txtMark2.Text)

        cmd.Parameters.AddWithValue("@m3", txtMark3.Text)

        cmd.Parameters.AddWithValue("@tot", txtTotal.Text)

        cmd.Parameters.AddWithValue("@avg", txtAverage.Text)

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

        Server.Transfer("stud1.aspx", False)
    End Sub

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        txtName.Text = " "
        txtMark1.Text = " "
        txtMark2.Text = " "
        txtMark3.Text = " "
        txtTotal.Text = " "
        txtAverage.Text = " "
    End Sub
End Class
