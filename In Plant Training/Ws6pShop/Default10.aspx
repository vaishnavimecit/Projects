<%@ Page Language="VB" AutoEventWireup="false" MasterPageFile="Default9.master" CodeFile="Default10.aspx.vb" Inherits="Default10" title="Cart"%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

<center>
        <strong><em>SUCCESFULLY ADDED TO UR CART!!!!!!!</em></strong></center>
        <center>
            &nbsp;</center>
        <center>
            &nbsp;</center>
        <center>
            <strong><em>
                <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataKeyField="cname"
                    DataSourceID="AccessDataSource1" ForeColor="#333333" Width="616px">
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <AlternatingItemStyle BackColor="White" />
                    <ItemStyle BackColor="#EFF3FB" />
                    <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <ItemTemplate>
                        <table>
                            <tr>
                                <td style="width: 100px">
                                    <asp:Label ID="cnameLabel" runat="server" Text='<%# Eval("cname") %>'></asp:Label></td>
                                <td style="width: 100px">
                                    <asp:Label ID="dopLabel" runat="server" Text='<%# Eval("dop") %>'></asp:Label></td>
                                <td style="width: 100px">
                                    <asp:Label ID="pidLabel" runat="server" Text='<%# Eval("pid") %>'></asp:Label></td>
                                <td style="width: 100px">
                                    <asp:Label ID="quantityLabel" runat="server" Text='<%# Eval("quantity") %>'></asp:Label></td>
                                <td style="width: 100px">
                                    Rs.<asp:Label ID="totcostLabel" runat="server" Text='<%# Eval("totcost") %>'></asp:Label></td>
                            </tr>
                        </table>
                        <br />
                    </ItemTemplate>
                    <HeaderTemplate>
                        <table>
                            <tr>
                                <td style="width: 100px">
                                    User</td>
                                <td style="width: 100px">
                                    Purchase date</td>
                                <td style="width: 100px">
                                    Product ID</td>
                                <td style="width: 100px">
                                    Quantity</td>
                                <td style="width: 100px">
                                    Total cost</td>
                            </tr>
                        </table>
                    </HeaderTemplate>
                </asp:DataList>&nbsp;
                <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/Cust.mdb"
                    SelectCommand="SELECT * FROM [cust]">
                </asp:AccessDataSource>
            </em></strong>
        </center>
    <center>
        &nbsp;</center>
    <center>
        <strong><em>
            <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Monotype Corsiva"
                Font-Size="X-Large" Height="40px" Text="Exit cart" Width="144px" />
            <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Monotype Corsiva"
                Font-Size="X-Large" Height="40px" Text="Clear Cart" Width="136px" /></em></strong></center>
    <center>
        &nbsp;</center>
    <center>
        &nbsp;</center>
    <center>
        &nbsp;</center>
    <center>
        <strong><em></em></strong>&nbsp;</center>
   </asp:content>