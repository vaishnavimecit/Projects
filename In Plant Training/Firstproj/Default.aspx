<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<link href="Styles/Site.css" rel="stylesheet" type="text/css" />

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        &nbsp;
        <br />
        <br />
        <table>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label1" runat="server" Height="32px" Text="Enter your Name" Width="144px"></asp:Label></td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label CssClass="lblstyle" ID="lbl_message" runat="server"></asp:Label></td>
                <td style="width: 100px">
                    <asp:Button ID="Button1" runat="server" Text="Click here!" /></td>
            </tr>
            <tr>
            <td>
            <asp:Label ID="id_new" Text = "hahaha" runat="server" />
            </td></tr>
        </table>
    
    </div>
    </form>
</body>
</html>
