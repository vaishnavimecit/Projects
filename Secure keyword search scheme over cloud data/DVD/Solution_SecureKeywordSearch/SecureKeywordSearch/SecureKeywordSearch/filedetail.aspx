<%@ Page Title="" Language="C#" MasterPageFile="~/cloud.master" AutoEventWireup="true" CodeFile="filedetail.aspx.cs" Inherits="Default4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2>Information Of Data Owner Files:</h2>
    <p>&nbsp;</p>
    <p style="color: #00CCFF; font-family: 'Agency FB'; font-size: x-large; margin-left: 0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Select the files :&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList1" 
            runat="server" DataSourceID="SqlDataSource2" DataTextField="fname" 
            DataValueField="fname" Height="22px" Width="122px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:securedynamicConnectionString5 %>" 
            SelectCommand="SELECT [fname] FROM [uploadfiles]"></asp:SqlDataSource>
        &nbsp;
        <asp:ImageButton ID="ImageButton1" runat="server" Height="42px" 
            ImageUrl="~/images/go_button.png" Width="54px" 
            style="position:absolute; top: 410px; left: 608px;" 
            onclick="ImageButton1_Click" />
    </p>
    <p style="color: #00CCFF; font-family: 'Agency FB'; font-size: x-large; margin-left: 0px;">
        &nbsp;</p>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
        CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" 
        GridLines="Horizontal" style="margin-left: 121px" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" Height="197px" 
        Width="649px" Visible="False">
        <Columns>
            <asp:BoundField DataField="fileid" HeaderText="File_Id" 
                SortExpression="fileid" />
            <asp:BoundField DataField="fname" HeaderText="File_Name" SortExpression="fname" />
            <asp:BoundField DataField="key1" HeaderText="Cluster_Index" SortExpression="key1" />
            <asp:BoundField DataField="key2" HeaderText="Leaf_Index" SortExpression="key2" />
            <asp:BoundField DataField="secret" HeaderText="Secrect_Key" 
                SortExpression="secret" />
            <asp:BoundField DataField="count" HeaderText="Request" SortExpression="count" />
            <asp:BoundField DataField="fdatetime" HeaderText="Date" 
                SortExpression="fdatetime" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:securedynamicConnectionString5 %>" 
        
        SelectCommand="SELECT [fileid], [fname], [key1], [key2], [secret], [count], [fdatetime] FROM [uploadfiles] WHERE ([fname] = @fname)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="fname" PropertyName="SelectedValue" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

