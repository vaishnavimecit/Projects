<%@ Page Title="" Language="C#" MasterPageFile="~/OwnerMasterPage.master" AutoEventWireup="true" CodeFile="viewrequest.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table  style="width: 100%; color: #CCCCCC; font-size: medium; height: 204px" border="0">
        <tr>
            <td align="center">
                <br />
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" Text="User File Request" Font-Bold="True" 
                    Font-Names="Britannic Bold" Font-Size="X-Large" ForeColor="White"></asp:Label>
                <br />
                <br />
                <br />
    <p style="color: #FFFF00; font-family: 'Agency FB'; font-size: x-large; margin-left: 0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Select the User :&nbsp;&nbsp;<asp:DropDownList ID="DropDownList1" 
            runat="server" DataSourceID="SqlDataSource2" DataTextField="name" 
            DataValueField="name" Height="25px" Width="120px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:securedynamicConnectionString5 %>" 
            SelectCommand="SELECT distinct [name] FROM [filerequest]"></asp:SqlDataSource>
        &nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton1" runat="server" 
            ImageUrl="~/images/go1.png" 
            
            
            style="position:absolute; top: 446px; left: 645px; " 
            onclick="ImageButton1_Click" />
    </p>
                <br />
                <br />
               &nbsp; 
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataSourceID="SqlDataSource1" Font-Names="Cambria" 
                    Font-Size="Large" ForeColor="Black" GridLines="Horizontal" Width="682px" 
                    style="text-align: center" Height="197px" BorderStyle="None" 
                    BorderWidth="1px" BackColor="White" BorderColor="#CCCCCC" >
                    <Columns>
                        <asp:BoundField DataField="fid" HeaderText="File_Id" InsertVisible="False" 
                            ReadOnly="True" SortExpression="fid" />
                        <asp:BoundField DataField="fname" HeaderText="File_Name" SortExpression="fname" />
                       
                        <asp:BoundField DataField="uid" HeaderText="User_Id" SortExpression="uid" />
                        <asp:BoundField DataField="name" HeaderText="Name" 
                            SortExpression="name" />
                        <asp:BoundField DataField="count" HeaderText="Request" SortExpression="count" />
                        <asp:BoundField DataField="requesteddate" HeaderText="Date" 
                            SortExpression="requesteddate" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" 
                        HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" ForeColor="White" Font-Bold="True" />
                    
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:securedynamicConnectionString %>" 
                    
                    SelectCommand="SELECT * FROM [filerequest] WHERE ([name] = @name2)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="name2" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <img src="images/img5.png" 
                    
                    
                    style="height: 625px; width: 213px; position:absolute; top: 0px; left: 0px;" /><img src="images/img2.png" style="height: 74px; width: 858px; position:absolute; top: 239px; left: 235px; margin-top: 0px;"/><img src="images/req.png" 
                    style="position:absolute; top: 401px; left: 1058px;" /><br />
            </td>
            
            
        </tr>
    </table>
</asp:Content>

