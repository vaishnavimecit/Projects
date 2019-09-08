<%@ Page Language="VB" AutoEventWireup="false" CodeFile="stud.aspx.vb" Inherits="stud" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Student Marklist</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <center>        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Monotype Corsiva"
            Font-Size="XX-Large" Height="32px" Text="Student Marklist" Width="224px"></asp:Label><br /></center>

        <br />
        <center>
        <table>
            <tr>
                <td style="width: 149px; height: 80px;">
                    <asp:Label ID="Label2" runat="server" Height="48px" Text="Name:" Width="72px"></asp:Label></td>
                <td style="width: 123px; height: 80px;">
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 149px; height: 79px;">
                    <asp:Label ID="Label3" runat="server" Height="48px" Text="Mark1:" Width="72px"></asp:Label></td>
                <td style="width: 123px; height: 79px;">
                    <asp:TextBox ID="txtMark1" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 149px; height: 78px;">
                    <asp:Label ID="Label4" runat="server" Height="56px" Text="Mark2:" Width="64px"></asp:Label></td>
                <td style="width: 123px; height: 78px;">
                    <asp:TextBox ID="txtMark2" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 149px; height: 102px;">
                    <asp:Label ID="Label5" runat="server" Height="56px" Text="Mark3:" Width="56px"></asp:Label></td>
                <td style="width: 123px; height: 102px;">
                    <asp:TextBox ID="txtMark3" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 149px; height: 81px;">
                    <asp:Label ID="Label6" runat="server" Height="64px" Text="Total:" Width="56px"></asp:Label></td>
                <td style="width: 123px; height: 81px;">
                    <asp:TextBox ID="txtTotal" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 149px; height: 75px;">
                    <asp:Label ID="Label7" runat="server" Height="56px" Text="Average:" Width="64px"></asp:Label></td>
                <td style="width: 123px; height: 75px;">
                    <asp:TextBox ID="txtAverage" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 149px">
                    <asp:Button ID="Button1" runat="server" Height="48px" Text="Total" Width="96px" /></td>
                <td style="width: 123px">
                    <asp:Button ID="Button4" runat="server" Height="40px" Text="Clear" Width="88px" /></td>
            </tr>
            <tr>
                <td style="width: 149px; height: 56px;">
                    <asp:Button ID="Button2" runat="server" Height="48px" Text="Average" Width="88px" /></td>
                <td style="width: 123px; height: 56px;">
                    <asp:Button ID="Button3" runat="server" Height="48px" Text="Update" Width="88px" /></td>
            </tr>
        </table>
    </center>
    </div>
    </form>
</body>
</html>
