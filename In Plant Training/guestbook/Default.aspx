<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp;
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Monotype Corsiva"
            Font-Size="XX-Large" Height="56px" Text="MY ASP.NET GUESTBOOK" Width="400px"></asp:Label>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <center>
            <table style="width: 608px; height: 376px">
                <tr>
                    <td style="width: 68px; height: 64px">
                        <asp:Label ID="Label2" runat="server" Height="40px" Text="NAME:" Width="128px"></asp:Label></td>
                    <td style="width: 100px; height: 64px">
                        <asp:TextBox ID="txtNAME" runat="server" Height="32px" Width="168px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 68px; height: 63px">
                        <asp:Label ID="Label3" runat="server" Height="32px" Text="E-MAIL:" Width="128px"></asp:Label></td>
                    <td style="width: 100px; height: 63px">
                        <asp:TextBox ID="txtEMAIL" runat="server" Height="32px" Width="168px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 68px; height: 73px">
                        <asp:Label ID="Label4" runat="server" Height="32px" Text="URL:" Width="128px"></asp:Label></td>
                    <td style="width: 100px; height: 73px">
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
    
    </div>
       <asp:Repeater ID="rptGuestbook" Runat="Server">
	<HeaderTemplate>
		<table border=0 cellpadding=5 cellspacing=0 width=50%>
	</HeaderTemplate>

	<ItemTemplate>
		<tr bgcolor=RGB(51,102,204) height=25><td colspan="2"><font face=Tahoma size=4><%# Container.DataItem ("Name") %></font></td>
    </tr>
		<tr>		
			<td width=20%><b><font face=Tahoma size=2>E-mail:</font></b></td> 
				<td><font face=Tahoma size=2><%# Container.DataItem ("EMail") %></td></tr>		
		<tr>
			<td width=20%><b><font face=Tahoma size=2>Website:</td> 
				<td><font face=Tahoma size=2><asp:hyperlink id="HyperLink" 
													runat="server" 
													font-names="Tahoma" 
													font-size="X-Small"
													navigateurl=<%# Container.DataItem ("URL") %>>
													<%# Container.DataItem ("URL") %>
													</asp:hyperlink></font></td></tr>				
		<tr>
			<td width=20%><b><font face=Tahoma size=2>Comment:</td> 
				<td><font face=Tahoma size=2><%# Container.DataItem ("Comment") %></td></tr>		
	</ItemTemplate>
		
	<SeparatorTemplate>
		<tr height=25><td></td></tr>
	</SeparatorTemplate>
	
	<FooterTemplate>
		</table>
	</FooterTemplate>

</asp:Repeater>
    </form>
</body>
</html>
