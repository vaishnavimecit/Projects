<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="userviewkey.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table  style="width: 100%; color: #CCCCCC; font-size: medium; height: 204px" 
            border="0">
        <tr>
            <td style="width: 51px">
                <img src="images/view1.png" 
                    style="height: 221px; width: 308px; position:absolute; top: 300px; left: 965px;" /><img 
                    src="images/img5.png" 
                    style="position:absolute; top: 220px; left: -20px; height: 404px; width: 261px;" /></td>
            <td>
                &nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
                    CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical" 
                    Width="706px" Font-Names="Centaur" Font-Size="Large" 
                    style="text-align: center" ForeColor="Black" Height="138px">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:BoundField DataField="fileid" HeaderText="File ID" 
                            SortExpression="fileid" />
                        <asp:BoundField DataField="fname" HeaderText="File Name" SortExpression="fname" />
                        <asp:BoundField DataField="key1" HeaderText="Cluster Index" SortExpression="key1" />
                        <asp:BoundField DataField="key2" HeaderText="Leaf Index" SortExpression="key2" />
                        
                        <asp:BoundField DataField="fdatetime" HeaderText="Date" 
                            SortExpression="fdatetime" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:securedynamicConnectionString %>" 
                    SelectCommand="SELECT * FROM [uploadfiles]"></asp:SqlDataSource>
                &nbsp;</td>
        </tr>
    </table>
    <br />
  </br>

</asp:Content>

