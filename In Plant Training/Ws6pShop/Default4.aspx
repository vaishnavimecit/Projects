<%@ Page Language="VB" AutoEventWireup="false" MasterPageFile="Default9.master" CodeFile="Default4.aspx.vb" Inherits="Default4" title="Cameras"%>


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
    &nbsp;
    <asp:Button ID="Button4" runat="server" Font-Bold="True" Font-Size="Large" Height="32px"
        Text="View Cart!!!" Width="112px" />&nbsp;</center>
    <center>
        <asp:DataList ID="DataList1" runat="server" CellPadding="4" ForeColor="#333333" DataKeyField="ID" DataSourceID="AccessDataSource1" Height="608px" Width="1168px">
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <AlternatingItemStyle BackColor="White" />
            <ItemStyle BackColor="#EFF3FB" />
            <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <ItemTemplate>
                <table>
                    <tr>
                        <td style="height: 89px;" colspan="3">
                            <asp:CheckBox ID="CheckBox1" runat="server" />
                            ITEM CODE:<asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' Font-Bold="True" Font-Size="X-Large"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 67px; height: 89px">
                            No. of Items:<br />
                            <asp:TextBox ID="TextBox1" runat="server" Height="16px" Width="40px"></asp:TextBox></td>
                        <td style="width: 582px; height: 89px">
                            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>'></asp:Label></td>
                        <td style="width: 100px; height: 89px">
                            <img src='<%# Eval("Image") %>' style="width: 168px; height: 152px" />
                            Rs:<asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>'></asp:Label></td>
                    </tr>
                </table>
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>&nbsp;</center>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="cam.mdb"
            SelectCommand="SELECT * FROM [cam]"></asp:AccessDataSource>
            <center>
        <asp:Button ID="Button1" runat="server" Text="Back" Height="40px" Width="144px" />
        <asp:Button ID="Button2" runat="server" Text="Add to cart" Height="40px" Width="152px" />
                <asp:Button ID="Button3" runat="server" Height="40px" Text="Products" Width="152px" /></center>
    </asp:Content>