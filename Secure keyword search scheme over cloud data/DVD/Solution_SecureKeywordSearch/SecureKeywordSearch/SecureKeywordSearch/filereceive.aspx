<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="filereceive.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; color: #CCCCCC; font-size: medium; height: 204px" 
            border="25">
        <tr>
            <td class="style14" style="width: 477px">
                <table align="center" style="width: 682px">
                    <tr>
                        <td style="text-align: center; height: 63px;" colspan="3">
                            <h1 style="color: #999966; font-family: Cambria;">
                                Welcome To File Receive</h1>
                            <p>
                                &nbsp;</p>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: left; color: #999966; width: 434px; font-size: medium; font-family: Cambria;" 
                            class="style17">
                            Select the File To Receive</td>
                        <td style="text-align: left; width: 272px;" class="style18">
                            <asp:DropDownList ID="DropDownList1" runat="server" Height="24px" Width="130px" 
                                DataSourceID="SqlDataSource1" DataTextField="fname" 
                                DataValueField="fname">
                                <asp:ListItem>Select</asp:ListItem>
                                <asp:ListItem>Central Authority</asp:ListItem>
                                <asp:ListItem>Local Authority</asp:ListItem>
                                <asp:ListItem>Commander</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td style="text-align: left; width: 341px;" class="style16" rowspan="4">
                            <img alt="img" src="images/LOG.jpg" style="width: 208px; height: 220px" /></td>
                    </tr>
                    <tr>
                        <td style="text-align: left; color: #999966; width: 434px; font-size: medium; font-family: Cambria;" 
                            class="style17">
                            Insert the Secret Key</td>
                        <td style="text-align: left; width: 272px;" class="style18">
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style13" style="width: 434px">
                            &nbsp;</td>
                        <td style="text-align: left; width: 272px;" class="style12">
                            <asp:Button ID="Button1" runat="server" Text="Receive" 
                        style="text-align: left; font-weight: 700;" onclick="Button1_Click" />
                            <br />
                            <br />
                            <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="style13" style="width: 434px; height: 67px;">
                            <asp:DropDownList ID="DropDownList2" runat="server" 
                                DataSourceID="SqlDataSource1" DataTextField="uid" 
                                DataValueField="uid" Visible="False">
                            </asp:DropDownList>
                        </td>
                        <td style="text-align: left; width: 272px; height: 67px;" class="style12">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:SecuredynamicConnectionString %>" 
                                SelectCommand="SELECT [fname], [uid] FROM [filerequest]"></asp:SqlDataSource>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

