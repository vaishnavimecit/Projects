<%@ Page Language="VB" AutoEventWireup="false" MasterPageFile="Default9.master" CodeFile="Default8.aspx.vb" Inherits="Default8" title="Kids Wear"%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server"> 
<center>
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp;
    <asp:Button ID="Button4" runat="server" Font-Bold="True" Font-Size="Large" Height="32px"
        Text="View Cart!!!" Width="112px" />&nbsp;</center>
    <center>
        <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#3366CC"
            BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyField="ID" DataSourceID="AccessDataSource1"
            GridLines="Vertical" Height="592px" Width="1072px">
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <ItemStyle BackColor="White" ForeColor="#003399" />
            <SelectedItemStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <ItemTemplate>
                <table>
                    <tr>
                        <td colspan="4">
                            <asp:CheckBox ID="CheckBox1" runat="server" />
                            ITEM CODE:<asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' Font-Bold="True" Font-Size="X-Large" Height="24px" Width="112px"></asp:Label>&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            No. of Items:<br />
                            <asp:TextBox ID="TextBox1" runat="server" Height="16px" Width="40px"></asp:TextBox></td>
                        <td style="width: 391px">
                            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' Height="80px" Width="112px"></asp:Label></td>
                        <td style="width: 154px">
                        </td>
                        <td style="width: 100px">
                            <img src='<%# Eval("Pic") %>' style="width: 176px; height: 120px" />
                            Rs:<asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>'></asp:Label></td>
                    </tr>
                </table>
                <br />
            </ItemTemplate>
        </asp:DataList>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="kids.mdb"
            SelectCommand="SELECT * FROM [kids]"></asp:AccessDataSource>
    </center>
        <center>
            <asp:Button ID="Button1" runat="server" Height="32px" Text="Back" Width="96px" />
            <asp:Button ID="Button2" runat="server" Height="32px" Text="Add to cart" Width="104px" />
            <asp:Button ID="Button3" runat="server" Height="32px" Text="Products" Width="104px" /></center>
    </asp:content>