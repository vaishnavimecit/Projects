<%@ Page Title="" Language="C#" MasterPageFile="~/cloud.master" AutoEventWireup="true" CodeFile="hacker.aspx.cs" Inherits="Default4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 style="color: #FFFFFF">Hacker's Information:</h2>
    <p style="color: #FFFFFF">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/hacker.png" 
            style="position:absolute; top: 332px; left: 210px;" />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" 
            GridLines="Horizontal" Height="192px" Width="574px" 
            style="margin-left: 262px" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" 
            DataKeyNames="username">
            <Columns>
                <asp:BoundField DataField="hackerID" HeaderText="hackerID" 
                    SortExpression="hackerID" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="username" HeaderText="username" 
                    SortExpression="username" />
                <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                <asp:BoundField DataField="secret" HeaderText="secret" 
                    SortExpression="secret" />
                <asp:BoundField DataField="key1" HeaderText="key1" 
                    SortExpression="key1" />
                <asp:BoundField DataField="key2" HeaderText="key2" SortExpression="key2" />
                <asp:CommandField DeleteText="Revoke" HeaderText="Revoke Hacker" 
                    ShowDeleteButton="True" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
           
            
           
        </asp:GridView>
    </p>
    <p style="color: #FFFFFF">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:securedynamicConnectionString5 %>" 
            SelectCommand="SELECT * FROM [hacker]" 
            DeleteCommand="DELETE FROM [hacker] WHERE [username]=@username; DELETE FROM [registration] WHERE [username]=@username" >
            <DeleteParameters>
                <asp:Parameter Name="username" />
            </DeleteParameters>
        </asp:SqlDataSource>
    </p>
    <p style="color: #FFFFFF">
        &nbsp;</p>
</asp:Content>

