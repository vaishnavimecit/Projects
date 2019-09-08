<%@ Page Language="VB" MasterPageFile="Default9.master" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="login" title="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server"> 
<center> <asp:Login ID="Login1" runat="server" BackColor="#F7F7DE" BorderColor="#CCCC99"
            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="10pt" Width="512px" Height="408px">
            <TitleTextStyle BackColor="#6B696B" Font-Bold="True" ForeColor="#FFFFFF" />
    <LayoutTemplate>
        <table border="0" cellpadding="1" cellspacing="0" style="border-collapse: collapse">
            <tr>
                <td>
                    <table border="0" cellpadding="0" style="width: 560px; height: 288px">
                        <tr>
                            <td align="center" colspan="2" style="font-weight: bold; color: white; background-color: #6b696b">
                                Log In</td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label></td>
                            <td>
                                <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName"
                                    ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label></td>
                            <td>
                                <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password"
                                    ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2" style="color: red">
                                &nbsp;<asp:Button ID="LoginButton" runat="server" CommandName="Login" OnClick="LoginButton_Click"
                                    Text="Log In" ValidationGroup="Login1" /></td>
                        </tr>
                        <tr>
                            <td align="right" colspan="2">
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </LayoutTemplate>
        </asp:Login></center>
</asp:Content>

