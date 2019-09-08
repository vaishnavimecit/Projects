<%@ Page Language="VB" AutoEventWireup="false" MasterPageFile="Default9.master" CodeFile="Default5.aspx.vb" Inherits="Default5" title="Casseroles"%>


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
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
    <asp:Button ID="Button4" runat="server" Font-Bold="True" Font-Size="Large" Height="32px"
        Text="View Cart!!!" Width="112px" />&nbsp;<asp:DataList ID="DataList1" runat="server" DataKeyField="ID" DataSourceID="AccessDataSource1"
            Height="536px" Width="1208px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" GridLines="Both">
            <ItemTemplate>
                <table>
                    <tr>
                        <td colspan="3" style="height: 66px">
                            <asp:CheckBox ID="CheckBox1" runat="server" />
                            ITEM CODE:<asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' Height="32px" Width="88px" Font-Bold="True" Font-Size="X-Large"></asp:Label>&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 94px">
                        </td>
                        <td style="width: 378px; height: 94px">
                            No. of Items:<br />
                            <asp:TextBox ID="TextBox1" runat="server" Height="16px" Width="40px"></asp:TextBox></td>
                        <td style="width: 253px; height: 94px">
                            <img src='<%# Eval("Image") %>' style="width: 128px; height: 104px" />
                            Rs:<asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>'></asp:Label></td>
                    </tr>
                </table>
                <br />
                <br />
            </ItemTemplate>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="casserole.mdb"
            SelectCommand="SELECT * FROM [casserole]"></asp:AccessDataSource>
    </center>
        <center>
            <asp:Button ID="Button1" runat="server" Height="40px" Text="Back" Width="112px" />
            <asp:Button ID="Button2" runat="server" Height="40px" Text="Add to cart" Width="112px" />
            <asp:Button ID="Button3" runat="server" Height="40px" Text="Products" Width="120px" /></center>
    </asp:Content>