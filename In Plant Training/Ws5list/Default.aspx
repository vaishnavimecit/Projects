<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Mark List</title>
</head>
<body>
    <form id="form1" runat="server">
    <div><center>
            <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#E7E7FF"
            BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyField="name" DataSourceID="AccessDataSource1"
            GridLines="Both" Height="288px" Width="664px">
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <AlternatingItemStyle BackColor="#F7F7F7" />
            <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <ItemTemplate>
                <table>
                    <tr>
                        <td style="width: 100px">
                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' Font-Bold="True" Font-Size="Larger"></asp:Label></td>
                        <td style="width: 100px">
                tot:
                <asp:Label ID="totLabel" runat="server" Text='<%# Eval("tot") %>'></asp:Label><br />
                        </td>
                        <td style="width: 100px">
                avg:
                <asp:Label ID="avgLabel" runat="server" Text='<%# Eval("avg") %>'></asp:Label><br />
                        </td>
                        <td style="width: 100px">
                <img src='<%# Eval("pic") %>' height="50" width="50" /></td>
                    </tr>
                </table>
                <br />
                &nbsp;
            </ItemTemplate>
        </asp:DataList>
        <br />
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/db2.mdb"
            SelectCommand="SELECT [name], [tot], [avg], [pic] FROM [stud]"></asp:AccessDataSource>
        &nbsp;
        </center>
        </div>
    </form>
</body>
</html>
