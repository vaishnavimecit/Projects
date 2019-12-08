<%@ Page Title="" Language="C#" MasterPageFile="~/cloud.master" AutoEventWireup="true" CodeFile="userdetail.aspx.cs" Inherits="Default4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2 style="color: #FFFFFF">Cloud User's Information:</h2>
    <p>&nbsp;</p>
    <p style="color: #FFFF00; font-family: 'Agency FB'; font-size: x-large; margin-left: 0px;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Select the User :&nbsp;&nbsp;<asp:DropDownList ID="DropDownList1" 
            runat="server" DataSourceID="SqlDataSource2" DataTextField="username" 
            DataValueField="username" Height="25px" Width="120px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:securedynamicConnectionString5 %>" 
            SelectCommand="SELECT [username] FROM [registration]"></asp:SqlDataSource>
        &nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton1" runat="server" 
            ImageUrl="~/images/go1.png" 
            
            
            style="position:absolute; top: 420px; left: 622px; " 
            onclick="ImageButton1_Click" />
    </p>
    <p style="color: #00CCFF; font-family: 'Agency FB'; font-size: x-large; margin-left: 0px;">
        &nbsp;</p>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
        CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" 
        GridLines="Horizontal" style="margin-left: 113px" Height="167px" 
        Width="734px" Visible="False">
        <Columns>
            <asp:BoundField DataField="uid" HeaderText="User_Id" 
                SortExpression="uid" />
            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
            <asp:BoundField DataField="mobile" HeaderText="Mobile_No" 
                SortExpression="mobile" />
            <asp:BoundField DataField="email" HeaderText="Email_Id" SortExpression="email" />
            <asp:BoundField DataField="city" HeaderText="City" 
                SortExpression="city" />
            <asp:BoundField DataField="regdate" HeaderText="Registered_Date" 
                SortExpression="regdate" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
       
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:securedynamicConnectionString5 %>" 
        
        
        SelectCommand="SELECT [uid], [name], [mobile], [email], [city], [regdate] FROM [registration] WHERE ([username] = @username)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="username" PropertyName="SelectedValue" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>



