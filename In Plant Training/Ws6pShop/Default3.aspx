<%@ Page Language="VB" AutoEventWireup="false" MasterPageFile="Default9.master" CodeFile="Default3.aspx.vb" Inherits="Default3" title="Products"%>


   <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server"> 
        <center><asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Sno" DataSourceID="AccessDataSource1" Height="664px" Width="832px">
            <RowStyle ForeColor="#8080FF" />
            <Columns>
                <asp:BoundField DataField="Sno" HeaderText="Sno" ReadOnly="True" SortExpression="Sno" />
                <asp:TemplateField HeaderText="Products">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" NavigateUrl= '<%# Bind("prod_url") %>' Text='<%# Bind("Products") %>' runat="server"></asp:HyperLink>
                    </ItemTemplate>
                
                
                </asp:TemplateField>
                
               
                <asp:BoundField DataField="Warranty" HeaderText="Warranty" SortExpression="Warranty" />
            </Columns>
        </asp:GridView>
            <asp:Button ID="Button1" runat="server" Height="64px" Text="Back" Width="200px" />
    </center>
    
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="shop.mdb" SelectCommand="SELECT * FROM [shop]"></asp:AccessDataSource>
   
</asp:Content>
