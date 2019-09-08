<%@ Page Language="VB" AutoEventWireup="false" MasterPageFile="Default9.master" CodeFile="Default6.aspx.vb" Inherits="Default6" title="Mobiles"%>


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
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<asp:Button ID="Button4"
        runat="server" Font-Bold="True" Font-Size="Large" Height="32px" Text="View Cart!!!"
        Width="112px" />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp;
    </center>
    <center>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="ID" DataSourceID="AccessDataSource1"
            Height="832px" Width="1344px" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
            <ItemTemplate>
                <table>
                    <tr>
                        <td colspan="4">
                            <asp:CheckBox ID="CheckBox1" runat="server" />
                            ITEM CODE:<asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' Font-Bold="True" Font-Size="X-Large" Height="16px" Width="48px"></asp:Label>&nbsp;<%-- <asp:Image ID="Image1" runat="server" Height="88px" ImageUrl="~/m6.jpg" Width="136px" />--%>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 338px">
                            No. of Items:<br />
                            <asp:TextBox ID="TextBox1" runat="server" Height="16px" Width="40px"></asp:TextBox></td>
                        <td style="width: 168px">
                            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>'></asp:Label></td>
                        <td style="width: 613px">
                        </td>
                        <td style="width: 119px">
                           <img src='<%# Eval("Img") %>' style="width: 144px; height: 120px" />
                            Rs:<asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>'></asp:Label></td>
                    </tr>
                </table>
            </ItemTemplate>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <AlternatingItemStyle BackColor="Gainsboro" />
            <ItemStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedItemStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="mob.mdb"
            SelectCommand="SELECT * FROM [mob]"></asp:AccessDataSource>
    </center>
        <center>
            <asp:Button ID="Button1" runat="server" Height="40px" Text="Back" Width="144px" />
            <asp:Button ID="Button2" runat="server" Height="40px" Text="Add to cart" Width="120px" />
            <asp:Button ID="Button3" runat="server" Height="40px" Text="Products" Width="120px" /></center>
    </asp:content>
