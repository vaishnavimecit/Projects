<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="userregister.aspx.cs" Inherits="Default2" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    
        <br />
        <table  style="width: 107%; color: #CCCCCC; font-size: medium; height: 403px; margin-left: 146px;" 
            border="0">
            <tr>
                <td style="width: 149px; height: 27px;">
                    <asp:Label ID="Label1" runat="server" Text="User ID" Font-Bold="True" 
                        Font-Names="Cambria" Font-Size="Medium"></asp:Label>
                </td>
                <td style="height: 27px">
<asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Names="Cambria" 
                        Font-Size="Medium"></asp:Label>
                </td>
                <td style="height: 27px"></td>
            </tr>
            <tr>
                <td style="width: 149px">
                    <asp:Label ID="Label5" runat="server" Text="E-Mail" Font-Bold="True" 
                        Font-Names="Cambria" Font-Size="Medium"></asp:Label>
                    </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                    <td style="margin-left: 40px">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3"
                            ErrorMessage="Enter valid Email Id" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
            </tr>
            <tr>
                <td style="width: 149px">
                    <asp:Label ID="Label2" runat="server" Text="Reg. Date" Font-Bold="True" 
                        Font-Names="Cambria" Font-Size="Medium"></asp:Label>
                    </td>
                <td>
                    <asp:Label 
                        ID="Label10" runat="server" Font-Bold="True" 
                        Font-Names="Cambria" Font-Size="Medium"></asp:Label>
                    </td>
                    <td style="margin-left: 40px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 149px">
                    <asp:Label ID="Label6" runat="server" 
                        Text="City" Font-Bold="True" Font-Names="Cambria" Font-Size="Medium"></asp:Label>
                    </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                     </td>
                    <td style="margin-left: 40px">
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                            ControlToValidate="TextBox4" ErrorMessage="Enter only characters" 
                            ValidationExpression="^[a-zA-z\s]*"></asp:RegularExpressionValidator>
                    </td>
            </tr>
            <tr>
                <td style="width: 149px">
                    <asp:Label ID="Label3" runat="server" Text="Name" Font-Bold="True" 
                        Font-Names="Cambria" Font-Size="Medium"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td style="margin-left: 40px">  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TextBox1" ErrorMessage="Enter your name"></asp:RequiredFieldValidator>
                     </td>
            </tr>
            <tr>
                <td style="width: 149px">
                     <asp:Label ID="Label7" runat="server" 
                        Text="UserName" Font-Bold="True" Font-Names="Cambria" Font-Size="Medium"></asp:Label>
                    </td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                       </td>
                    <td style="margin-left: 40px"> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="TextBox5" ErrorMessage="Enter User Name"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td style="width: 149px">
                    <asp:Label ID="Label4" runat="server" Text="Mobile" Font-Bold="True" 
                        Font-Names="Cambria" Font-Size="Medium"></asp:Label>
                    </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox>

                    </td>
                    <td style="margin-left: 40px">

                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="TextBox2" ErrorMessage="Enter valid mobile No" 
                            ValidationExpression="^\d{10}"></asp:RegularExpressionValidator>
                    </td>
            </tr>
            <tr>
                <td style="width: 149px">
                    <asp:Label ID="Label8" runat="server" Text="Password" Font-Bold="True" 
                        Font-Names="Cambria" Font-Size="Medium"></asp:Label>
                    </td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" TextMode="Password"></asp:TextBox>
                     </td>
                    <td style="margin-left: 40px">  <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox6"
                                ErrorMessage="Atleast 4 not more than 7 " 
                ValidationExpression="^([a-zA-Z0-9]{4,7})$"></asp:RegularExpressionValidator>
                    </td>
            </tr>
            <tr>
                <td style="width: 149px">
                    &nbsp;</td>
                <td>
                    <asp:ImageButton ID="ImageButton2" runat="server" 
                        ImageUrl="~/images/register.png" onclick="ImageButton2_Click" 
                        style="position:absolute; top: 402px; left: 779px; height: 191px; width: 276px;" />
                    </td>
                    <td style="margin-left: 40px">&nbsp;</td>
            </tr>
        </table>
        <br />

    
        <br />
   

</asp:Content>

