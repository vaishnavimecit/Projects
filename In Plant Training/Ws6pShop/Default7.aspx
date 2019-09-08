<%@ Page Language="VB" AutoEventWireup="false" MasterPageFile="Default9.master" CodeFile="Default7.aspx.vb" Inherits="Default7" title="Kitchenware" %>

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
    &nbsp; &nbsp; &nbsp;&nbsp;
    <asp:Button ID="Button4" runat="server" Font-Bold="True" Font-Size="Large" Height="32px"
        Text="View Cart!!!" Width="112px" />&nbsp;</center>
    <center>
        <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#DEDFDE"
            BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyField="ID" DataSourceID="AccessDataSource1"
            ForeColor="Black" GridLines="Vertical" Height="664px" Width="1176px">
            <FooterStyle BackColor="#CCCC99" />
            <AlternatingItemStyle BackColor="White" />
            <ItemStyle BackColor="#F7F7DE" />
            <SelectedItemStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <ItemTemplate>
                <table>
                    <tr>
                        <td colspan="3" style="height: 67px">
                            <asp:CheckBox ID="CheckBox1" runat="server" Font-Bold="False" Font-Size="Larger" />
                            ITEM CODE:<asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' Font-Bold="True" Font-Size="X-Large"></asp:Label>&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 76px; height: 22px">
                        </td>
                        <td style="width: 508px; height: 22px">
                        </td>
                        <td style="width: 100px; height: 22px">
                            <img src='<%# Eval("Picture") %>' style="width: 144px; height: 128px" />&nbsp;<br />
                            </td>
                    </tr>
                    <tr>
                        <td style="width: 76px; height: 64px">
                            No. of Items:<br />
                            <asp:TextBox ID="TextBox1" runat="server" Height="16px" Width="40px"></asp:TextBox></td>
                        <td style="width: 508px; height: 64px">
                        </td>
                        <td style="width: 100px; height: 64px">
                            Rs:<asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' Height="8px" Width="8px"></asp:Label></td>
                    </tr>
                </table>
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>
    </center>
        <center>
            <asp:Button ID="Button1" runat="server" Height="40px" Text="Back" Width="136px" />
            <asp:Button ID="Button2" runat="server" Height="40px" Text="Add to cart" Width="128px" />
            <asp:Button ID="Button3" runat="server" Height="40px" Text="Products" Width="128px" /></center>
    
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="kit.mdb"
            SelectCommand="SELECT * FROM [kit]"></asp:AccessDataSource>
    </asp:content>
