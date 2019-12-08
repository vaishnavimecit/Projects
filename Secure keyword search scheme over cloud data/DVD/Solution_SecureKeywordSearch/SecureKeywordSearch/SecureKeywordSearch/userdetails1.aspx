<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="userdetails1.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
        <br />
<table  style="width: 100%; color: #CCCCCC; font-size: medium; height: 204px" 
            border="25">
    <tr>
        <td style="width: 175px">
            &nbsp;</td>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
                CellPadding="3" DataSourceID="SqlDataSource1" ForeColor="Black" 
                GridLines="Vertical" Font-Names="Cambria" Font-Size="Large">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:BoundField DataField="uid" HeaderText="User ID" SortExpression="uid" />
                    <asp:BoundField DataField="regdate" HeaderText="Reg. Date" 
                        SortExpression="regdate" />
                    <asp:BoundField DataField="name" HeaderText="User Name" SortExpression="name" />
                    <asp:BoundField DataField="mobile" HeaderText="Mobile" 
                        SortExpression="mobile" />
                    <asp:BoundField DataField="email" HeaderText="E-Mail" SortExpression="email" />
                    <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                    <asp:BoundField DataField="username" HeaderText="UserName" 
                        SortExpression="username" />
                    <asp:BoundField DataField="password" HeaderText="Password" 
                        SortExpression="password" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:securedynamicConnectionString %>" 
                SelectCommand="SELECT * FROM [registration]"></asp:SqlDataSource>
        </td>
    </tr>
</table>
<br />
  
        <br />
   
</asp:Content>

