<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<script runat="server">

    </script>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label4" runat="server" Text="Label" Visible="False"></asp:Label>
        <asp:Label ID="Label5" runat="server" Text="Label" Visible="False"></asp:Label>
          <br />
          <asp:Panel ID="Panel2" runat="server" 
            
            style=" top: 129px; left: 138px; margin-left: 115px;" 
             BorderColor="#33CCCC"
            BorderStyle="Double" Font-Size="Medium" Width="738px" Height="534px">

              <table style="width: 91%; height: 558px;">
                  <tr>
                      
                      
                      </td>
                           <td style="width: 323px">
                          <asp:Panel ID="Panel3" runat="server" Height="550px" 
                              style=" top: 15px; left: -22px; right: 628px; bottom: 84px;" Width="257px">
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Calibri" 
                                  Font-Size="Medium" ForeColor="White" Text="Type here to search..."></asp:Label>
                              <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Calibri" 
                                  Font-Size="Medium" ForeColor="White" Text="Type here to search..."></asp:Label>
                              <br />
                              <br />
                              &nbsp;&nbsp;&nbsp;<asp:RadioButton ID="RadioButton1" 
            runat="server" Font-Bold="True" Font-Names="Vani" ForeColor="White" GroupName="g1"
            Text="Filename Search" />
                              <br />
                              &nbsp;&nbsp;&nbsp;<asp:RadioButton ID="RadioButton2" runat="server" Font-Bold="True" 
                                  Font-Names="Vani" ForeColor="White" GroupName="g1" 
                                  oncheckedchanged="RadioButton2_CheckedChanged" Text="Keyword Search" />
                                  <br />
                              &nbsp;&nbsp;
                              <asp:RadioButton ID="RadioButton3" runat="server" Font-Bold="True" 
                                  Font-Names="Vani" ForeColor="White" GroupName="g1" 
                                  oncheckedchanged="RadioButton2_CheckedChanged" Text="Ranked Search" />
                              &nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" style="margin-left: 36px" 
                                  Width="118px"></asp:TextBox>
                              &nbsp;&nbsp;&nbsp;<asp:ImageButton ID="ImageButton1" runat="server" Height="32px" 
                                  ImageUrl="~/images/get.png" onclick="ImageButton1_Click" 
                                  style="position:relative; top: 9px; left: -1px;" Width="37px" />
                              &nbsp;<br />
                              &nbsp;&nbsp;&nbsp;&nbsp;
                              <asp:Label ID="lblMsg" runat="server"></asp:Label>
                              <br />
                              <br />
                              <asp:Panel ID="Panel5" runat="server" BackColor="#66CCFF" BorderColor="#000066" 
                                  BorderStyle="Double" Font-Size="Medium" Height="319px" 
                                  style="top: 67px; left: -40px; " Width="247px">
                                  <asp:Label ID="lbl_error" runat="server" Font-Bold="True" Font-Names="Verdana" 
                                      Font-Size="X-Small" ForeColor="Black"></asp:Label>
                                  <asp:Label ID="lbl_text" runat="server" Font-Bold="True" Font-Names="Verdana" 
                                      Font-Size="X-Small" ForeColor="Black"></asp:Label>
                                  <asp:Label ID="lbl_entxt" runat="server" Font-Bold="True" Font-Names="Verdana" 
                                      Font-Size="X-Small" ForeColor="Black"></asp:Label>
                                  <asp:Label ID="Label3" runat="server" Font-Size="Large" ForeColor="Black" 
                                      Text="Search Results" Visible="False"></asp:Label>
                                  <br />
                                  <br />
                                  <asp:Label ID="downloadfiles" runat="server" align="left" class="style22" 
                                      Font-Size="Large" ForeColor="Black"></asp:Label>
                                  <br />
                                  &nbsp;</asp:Panel>
                              <br />
                          </asp:Panel>
                      </td>


         

                      <td style="width: 895px">
                         <%-- <img 
                              src="images/pen.png" style="position:absolute; top: 398px; left: 500px; width: 231px;" id="img1" onclick="return img1_onclick()" />--%>
                       <asp:Image ID="Image1" runat="server" ImageUrl="~/images/pen.png" style="position:absolute; top: 398px; left: 500px; width: 231px;" />

                          <asp:Image ID="Image2" runat="server" ImageUrl="~/images/graph_index.png" 
                              style="position:absolute; top: 329px; left: 531px; height: 163px; width: 430px;" 
                              Visible="False" />

                          <br />
                          <br />
                          <br />
                          <br />
                          <br />
                          <br />
                          <br />
                          <br />
                          &nbsp;&nbsp;&nbsp;

                          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                              DataSourceID="SqlDataSource1" Visible="False" 
                              onselectedindexchanged="GridView1_SelectedIndexChanged" Height="267px" 
                              BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" 
                              BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" 
                              style="position:absolute; top: 552px; left: 365px; width: 643px;">
                              <Columns>
                                  <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                                  <asp:BoundField DataField="key1" HeaderText="key1" SortExpression="key1" />
                                  <asp:BoundField DataField="key2" HeaderText="key2" SortExpression="key2" />
                                  <asp:BoundField DataField="count" HeaderText="count" SortExpression="count" />
                                  <asp:BoundField DataField="fdatetime" HeaderText="fdatetime" 
                                      SortExpression="fdatetime" />
                              </Columns>
                              <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                              <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                              <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                              <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                              
                          </asp:GridView>
                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                              ConnectionString="<%$ ConnectionStrings:securedynamicConnectionString %>" 
                              SelectCommand="SELECT [fname], [key1], [key2], [count], [fdatetime] FROM [uploadfiles] ORDER BY [count] DESC">
                          </asp:SqlDataSource>
                      

                          <td style="width: 438px">
                            <asp:Panel ID="Panel4" runat="server" BackColor="#003399" BorderColor="#000099" 
                BorderStyle="Double" Font-Bold="False" Font-Size="Medium" ForeColor="#66FF33" 
                
                
               
                Visible="False" ScrollBars="Both" Height="243px" Width="276px" style="margin-left: 171px">
              <%--  Encryption Process<br />
                =====================<br />--%>
                <br />
                <asp:Literal ID="Literal1" runat="server" Visible="False" ></asp:Literal>
            </asp:Panel>
          &nbsp;<asp:Panel ID="Panel6" runat="server" BackColor="#003399" BorderColor="#000099" 
                                BorderStyle="Double" Font-Bold="False" Font-Size="Medium" ForeColor="Lime" 
                                Height="239px" ScrollBars="Both" Visible="False" Width="277px" 
                                  style="margin-left: 168px">
                               <%-- Decryption Process<br /> =====================<br />--%>
                                <br />
                                <asp:Literal ID="Literal2" runat="server" Visible="False"></asp:Literal>
                            </asp:Panel>
                      </td>
                  </tr>
              </table>
             </asp:Panel>
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function img1_onclick() {

        }

// ]]>
    </script>
</asp:Content>

