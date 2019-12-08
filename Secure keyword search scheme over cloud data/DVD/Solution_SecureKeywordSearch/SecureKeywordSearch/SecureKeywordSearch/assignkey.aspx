<%@ Page Title="" Language="C#" MasterPageFile="~/OwnerMasterPage.master" AutoEventWireup="true" CodeFile="assignkey.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table style="width: 100%; color: #CCCCCC; font-size: medium; height: 204px; margin-top: 0px;" 
            border="0">
        <tr>
            <td class="style14">
                <table  style="width: 50%; color: #FF9900; font-size: medium; height: 195px" 
            border="0" align="center">
                    <tr>
                        <td style="text-align: center; " colspan="2">
                            <h1 style="width: 395px; color: #00CC00; font-weight: bold; font-size: x-large;">
                                Key Generation </h1>
                                <br />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: left; color: #FFFFFF; height: 41px; width: 427px; font-size: larger; font-weight: bold;" 
                            class="style17">
                            Select file To Assign</td>
                        <td style="text-align: left; height: 41px; width: 439px;" class="style16">
                            <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="130px" 
                                DataSourceID="SqlDataSource1" DataTextField="fname" 
                                DataValueField="fname">
                                <asp:ListItem>Select</asp:ListItem>
                                <asp:ListItem>File List</asp:ListItem>
                                <asp:ListItem>File Request</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: left; color: #FFFFFF; height: 42px; width: 427px; font-size: larger; font-weight: bold;" 
                            class="style17">
                            Secret Key&nbsp; </td>
                        <td style="text-align: left; height: 42px; width: 439px;" class="style16">
                            <asp:TextBox ID="TextBox1" runat="server" Height="23px" Width="129px"></asp:TextBox>
&nbsp;<asp:ImageButton ID="ImageButton2" runat="server" Height="29px" 
                                ImageUrl="~/images/get.png" Width="47px" onclick="ImageButton2_Click" style="position:absolute" />
                        </td>
                    </tr>
                    <tr>
                        <td  style="text-align: left; color: #000000; width: 427px;" class="style17">
                            &nbsp;</td>
                        <td style="text-align: left; width: 439px;" class="style16">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style13" style="width: 427px">
                            <asp:ImageButton ID="ImageButton1" runat="server" 
                                ImageUrl="~/images/update.png" onclick="ImageButton1_Click" />
                        </td>
                        <td style="text-align: left; width: 439px;" class="style12">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style13" style="width: 427px">
                            &nbsp;</td>
                        <td style="text-align: left; width: 439px;" class="style12">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:SecuredynamicConnectionString %>" 
                                
                                SelectCommand="SELECT [fname] FROM [uploadfiles] ORDER BY [fdatetime]">
                            </asp:SqlDataSource>
                            <img src="images/key1.png" 
                                style="position:absolute; top: 255px; left: 919px; height: 286px; width: 238px;"/></td>
                    </tr>
                </table>
                <img src="images/line.png" style="margin-left: 72px" /></br>
                <table style="width: 100%">
                    <tr>
                        <td style="width: 157px">
                            &nbsp;</td>
                        <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label1" runat="server" Font-Names="Aharoni" Font-Size="X-Large" 
                                ForeColor="White" Text="Send Key to Requested User"></asp:Label>
                        <br />
                        <br />
                            <asp:GridView ID="gvDetails" runat="server" AutoGenerateSelectButton="True" OnSelectedIndexChanged="gvDetails_SelectedIndexChanged"
            CellPadding="3" AutoGenerateColumns="False" 
                                Width="692px" Height="116px" BorderColor="#CCCCCC" BorderStyle="None" 
                                BackColor="White" BorderWidth="1px">
            <FooterStyle BackColor="White" Font-Bold="True" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#000066" HorizontalAlign="Left" BackColor="White" />
                                <EmptyDataTemplate>
                                    FileName
                                </EmptyDataTemplate>
                                <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="#333333" />
           
                            
                             <Columns>
                            
<%--            <asp:BoundField DataField="Id" HeaderText="Id" />
--%>            
                                    <asp:BoundField DataField="fname" HeaderText="FileName" />
                                    <asp:BoundField DataField="name" HeaderText="UserName" />
                                    <asp:BoundField DataField="email" HeaderText="E-mail Id" />
                                    <asp:BoundField DataField="RequestedDate" HeaderText="RequestedDate" />
                                 
<%--            <asp:BoundField DataField="FileName" HeaderText="FileName" />
--%>            
                                   
                                </Columns>
                                
                            </asp:GridView>&nbsp;</td>
                    </tr>
                </table>
                </br>

            </td>
           
        </tr>
    </table>
   

</asp:Content>

