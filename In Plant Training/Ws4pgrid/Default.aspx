<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Student Marklist</title>
</head>
<body>
    <form id="form1" runat="server">
    <div><center>
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="WhiteSmoke" BorderColor="#FFC0FF" BorderStyle="Dotted" BorderWidth="1px" Caption="Student Marklist" CaptionAlign="Top" CellPadding="4" DataKeyNames="name" DataSourceID="AccessDataSource1" Font-Bold="False" Font-Italic="True" Font-Names="Monotype Corsiva" Font-Size="XX-Large" ForeColor="Black" GridLines="Horizontal">
            <Columns>
                <asp:BoundField DataField="name" HeaderText="name" ReadOnly="True" SortExpression="name" />
                <asp:BoundField DataField="m1" HeaderText="m1" SortExpression="m1" />
                <asp:BoundField DataField="m2" HeaderText="m2" SortExpression="m2" />
                <asp:BoundField DataField="m3" HeaderText="m3" SortExpression="m3" />
                <asp:BoundField DataField="tot" HeaderText="tot" SortExpression="tot" />
                <asp:BoundField DataField="avg" HeaderText="avg" SortExpression="avg" />
            </Columns>
            <FooterStyle BackColor="#FF80FF" Font-Italic="True" ForeColor="Black" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
        &nbsp;</center>
        <center>
            <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/db2.mdb"
                SelectCommand="SELECT * FROM [stud]"></asp:AccessDataSource>
        </center>
    </div>
    </form>
</body>
</html>
