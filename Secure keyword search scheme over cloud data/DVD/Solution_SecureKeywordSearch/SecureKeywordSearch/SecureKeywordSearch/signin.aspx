<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="signin.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table  style="width: 70%; color: #CCCCCC; font-size: medium; height: 204px; margin-left: 178px;">
        <tr>
            <td style="width: 352px">
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Cambria" 
        Font-Size="Medium" ForeColor="#999966" Text="Type"></asp:Label>
&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="DropDownList1" runat="server" Height="24px" 
    Width="124px" style="margin-left: 0px">
    <asp:ListItem>----Select---</asp:ListItem>
    <asp:ListItem>Data Owner</asp:ListItem>
    <asp:ListItem>User</asp:ListItem>
    <asp:ListItem>Cloud</asp:ListItem>
    </asp:DropDownList>
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Cambria" 
            Font-Size="Medium" ForeColor="#999966" Text="User Name:"></asp:Label>
         
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
        ID="txt_unam" CssClass="texta1" runat="server" style="margin-left: 10px"></asp:TextBox>
           

                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           

        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Cambria" 
            Font-Size="Medium" ForeColor="#999966" Text="Password:"></asp:Label>
          
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
        ID="txt_pass" CssClass="texta1" runat="server" TextMode="Password" 
                    style="margin-left: 10px"></asp:TextBox>
          
         
                <br />
                <br />

          
         
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton1" runat="server" Height="36px" 
                    ImageUrl="~/images/login1.png" onclick="ImageButton1_Click" Width="85px" />
&nbsp;
                <asp:ImageButton ID="ImageButton2" runat="server" Height="36px" 
                    ImageUrl="~/images/clear.png" onclick="ImageButton2_Click" Width="94px" />
            &nbsp;<img src="images/clientes.png" 
                    style="position:absolute; top: 268px; left: 803px;" />
            </td>
             
        </tr>
      
    </table>

</asp:Content>

