<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="filerequest.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;&nbsp;&nbsp;<table style="width: 100%; color: #CCCCCC; font-size: medium; height: 204px" 
            border="0">
        <tr>
            <td class="style14" style="width: 441px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<table align="center" 
                    
                    style="width: 440px; height: 232px; position:absolute; top: 318px; left: 304px;">
                    <tr>
                        <td style="text-align: center; height: 69px;" colspan="2" align="left">
                            <h1 style="color: #999966; font-family: Cambria; width: 359px;">
                                Welcome To File Request</h1>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: left; width: 231px; color: #FFFFFF;" class="style17">
                            Select the File To&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Request&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        <td style="text-align: left; width: 300px;" class="style16">
                            <asp:DropDownList ID="DropDownList1" runat="server" Height="27px" Width="130px" 
                                DataSourceID="SqlDataSource1" DataTextField="fname" 
                                DataValueField="fname">
                                <asp:ListItem>Select</asp:ListItem>
                                <asp:ListItem>Central Authority</asp:ListItem>
                                <asp:ListItem>Local Authority</asp:ListItem>
                                <asp:ListItem>Commander</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style13" style="width: 231px">
                            &nbsp;</td>
                        <td style="text-align: left; width: 300px;" class="style12">
                            <asp:ImageButton ID="ImageButton1" runat="server" Height="68px" 
                                ImageUrl="~/images/Send.png" onclick="ImageButton1_Click" Width="102px" 
                                style="position:absolute; top: 128px; left: 120px;" />
&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lblMsg" runat="server" Text="Label" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style13" style="width: 231px">
                            &nbsp;</td>
                        <td style="text-align: left; width: 300px;" class="style12">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:securedynamicConnectionString %>" 
                                SelectCommand="SELECT [fname] FROM [uploadfiles]">
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                </table>
            </td>
            <td class="style15" style="width: 234px">
                
                <asp:Image ID=img1 runat="server" src="images/reque.png" style="width: 321px; height: 289px"/>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Text="Label" Visible="False" 
                    ForeColor="Lime"></asp:Label>
            </td>
        </tr>
    </table>
    <asp:Label ID="lbl1" runat="server" Text="Label" Visible="False"></asp:Label>
</asp:Content>

