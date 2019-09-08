<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Guestbook.aspx.vb" Inherits="Guestbook" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.OleDB" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title> GUEST BOOK </title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Monotype Corsiva"
            Font-Size="XX-Large" Height="56px" Text="MY ASP.NET GUESTBOOK" Width="400px"></asp:Label>
        &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:Repeater ID="rptGuestbook" runat="server">
        </asp:Repeater>
        <center>
        <table style="width: 608px; height: 376px">
            <tr>
                <td style="width: 68px; height: 64px">
                    <asp:Label ID="Label2" runat="server" Height="40px" Text="NAME:" Width="128px"></asp:Label></td>
                <td style="width: 100px; height: 64px">
                    <asp:TextBox ID="txtNAME" runat="server" Height="32px" Width="168px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 68px; height: 63px;">
                    <asp:Label ID="Label3" runat="server" Height="32px" Text="E-MAIL:" Width="128px"></asp:Label></td>
                <td style="width: 100px; height: 63px;">
                    <asp:TextBox ID="txtEMAIL" runat="server" Height="32px" Width="168px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 68px; height: 73px;">
                    <asp:Label ID="Label4" runat="server" Height="32px" Text="URL:" Width="128px"></asp:Label></td>
                <td style="width: 100px; height: 73px;">
                    <asp:TextBox ID="txtURL" runat="server" Height="24px" Width="168px">http://</asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 68px">
                    <asp:Label ID="Label5" runat="server" Height="48px" Text="COMMENTS:" Width="120px"></asp:Label></td>
                <td style="width: 100px">
                    <br />
                    <br />
                    <asp:TextBox ID="txtCOMMENTS" runat="server" Height="80px" Width="240px"></asp:TextBox><br />
                </td>
            </tr>
            <tr>
                <td style="width: 68px">
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 68px">
                    <asp:Button ID="Button1" runat="server" Height="40px" Text="SEND" Width="120px" /></td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 68px">
                </td>
                <td style="width: 100px">
                    <asp:Button ID="Button2" runat="server" Height="40px" Text="CLEAR" Width="112px" /></td>
            </tr>
            <tr>
                <td style="width: 68px">
                </td>
                <td style="width: 100px">
                </td>
            </tr>
        </table>
        </center>
        <br />
        <br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
    
    </div>
    </form>
</body>
</html>
