<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="downloadfiles1.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<table  style="width: 98%; color: #CCCCCC; font-size: medium; height: 378px; margin-bottom: 0px; margin-left: 63px;" 
            border="0">
        <tr>
            <td style="width: 476px">
                 <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" 
                     Font-Italic="True" Font-Names="Cambria" Font-Size="Medium" 
                      PostBackUrl="~/userviewkey.aspx" Font-Underline="True" ForeColor="Yellow">File Details</asp:LinkButton>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                 <br />
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Font-Bold="True" 
                     Font-Names="Cambria" Font-Size="Large" Text="Name"></asp:Label>
                 <%--&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--%>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:TextBox ID="TextBox3" runat="server" Font-Names="Cambria" 
                     ontextchanged="TextBox3_TextChanged" ReadOnly="True"></asp:TextBox>
                 <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Cambria" 
                     Font-Size="Large" Text="File Name"></asp:Label>
                <%-- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--%>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <%--<asp:TextBox ID="TextBox4" runat="server" Font-Names="Cambria"></asp:TextBox>--%>
                 <%--<asp:DropDownList ID="DropDownList1" runat="server" Height="24px" Width="130px" 
                                Font-Bold="False" Font-Names="Cooper Black" 
                                Font-Size="Medium" ForeColor="#3366CC" 
                     DataSourceID="SqlDataSource1" DataTextField="fname" DataValueField="fname" 
                     onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                                                              
                            </asp:DropDownList>--%>
                
                 <asp:DropDownList ID="DropDownList1" runat="server" Height="24px" Width="130px" 
                     DataSourceID="SqlDataSource1" DataTextField="fname" DataValueField="fname">
                 </asp:DropDownList>
                
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                     ConnectionString="<%$ ConnectionStrings:securedynamicConnectionString3 %>" 
                     SelectCommand="SELECT distinct [fname] FROM [filerequest]"></asp:SqlDataSource>
                 <br />
                 <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Cambria" 
                     Font-Size="Large" Text="Secret Key"></asp:Label>
                 <%--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--%>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:TextBox ID="TextBox5" runat="server" Font-Names="Cambria"></asp:TextBox>
                 <br />
                 <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Cambria" 
                      Font-Size="Large" ForeColor="Silver" Height="17px" 
                     
                      Text="Enter the Cluster Index:" Width="214px" Visible="False"></asp:Label>
                  <asp:TextBox ID="TextBox1" runat="server" Font-Names="Cambria" Visible="False" ></asp:TextBox>
                  <br />
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <br />
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Cambria" 
                      Font-Size="Large" ForeColor="Silver" 
                     
                      Text="Enter the Leaf Index :" Width="207px" Visible="False"></asp:Label>
                  &nbsp;
                  <asp:TextBox ID="TextBox2" runat="server" Font-Names="Cambria" Visible="False" ></asp:TextBox>
                 <br />
                 <br />
                 <br /><asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="XX-Small" 
                      ForeColor="Black" ></asp:Label>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="Cambria" 
                     Font-Size="Medium" onclick="Button1_Click" Text="Download" />
                <asp:Image ID="Image1" runat="server" ImageUrl="~/images/download.png" 
                     style="position:absolute; top: 372px; left: 802px;" />
                
            </td>
            <td>
                <asp:Panel ID="Panel4" runat="server" BackColor="#DCECF3" BorderColor="#000099" 
                  BorderStyle="Double" Font-Bold="False" Font-Size="Medium" ForeColor="#003366" 
                  ScrollBars="Both" 
                 
                  Visible="False" Height="351px" Width="347px">
                  Encryption Process<br />
                  =======================<br />
                <br />
                  <asp:Literal ID="Literal1" runat="server"></asp:Literal>
              </asp:Panel>&nbsp;</td>
        </tr>
    </table>
    &nbsp;&nbsp;
    <br />
    <br />
</br>
</asp:Content>

