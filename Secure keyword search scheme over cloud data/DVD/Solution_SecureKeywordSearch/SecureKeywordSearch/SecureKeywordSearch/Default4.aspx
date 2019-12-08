<%@ Page Title="" Language="C#" MasterPageFile="~/cloud.master" AutoEventWireup="true" CodeFile="Default4.aspx.cs" Inherits="Default4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:GridView ID="GridView1" CssClass = "Grid" runat="server" 
        OnRowDeleting="OnRowDeleting" AutoGenerateColumns = "false" 
        OnRowDataBound = "OnRowDataBound" ForeColor="White">
    <Columns>
        <asp:BoundField DataField="username" HeaderText="Item" />
        <asp:BoundField DataField="fname" HeaderText="Price" />
        <asp:CommandField ShowDeleteButton="True" ButtonType="Button" />
    </Columns>
</asp:GridView>

    </asp:Content>

