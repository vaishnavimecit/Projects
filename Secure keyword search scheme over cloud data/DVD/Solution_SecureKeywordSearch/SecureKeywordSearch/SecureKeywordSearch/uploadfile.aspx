<%@ Page Title="" Language="C#" MasterPageFile="~/OwnerMasterPage.master" AutoEventWireup="true" CodeFile="uploadfile.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table  style="width: 104%; color: #CCCCCC; font-size: medium; height: 204px" 
            border="0">
        <tr>
            <td style="width: 308px" align="center">
                &nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="images/school_work_folder_by_centpushups.png" 
                    style="width: 291px; position:absolute; top: 269px; left: 325px;" /></td>
            <td style="width: 370px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label 
                    ID="Label1" runat="server" Font-Size="X-Large" ForeColor="#66FFFF" 
                  
                   Text="Upload Files. . .  " Font-Bold="True" Font-Names="Broadway" ></asp:Label>
                <br />
                <br />
                <br />
                &nbsp;<asp:Label ID="Label2" runat="server" ForeColor="#999966" Text="File ID" 
                    Font-Bold="True" Font-Names="Cambria" Font-Size="Medium" ></asp:Label>
          
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Cambria" 
                    Font-Size="Medium" ForeColor="#999966"></asp:Label>
       
         
                <br />
                <br />
              
         
                &nbsp;<asp:Label ID="Label3" runat="server" ForeColor="#999966" 
                  
                    Text="File Name"  Font-Bold="True" Font-Names="Cambria" Font-Size="Medium"></asp:Label>
           
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server" Width="130px" 
                   ></asp:TextBox>
                <br />
                <br />
                &nbsp;<asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Cambria" 
                    Font-Size="Medium" ForeColor="#999966" Text="Keyword1"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <br />
                <br />
                &nbsp;<asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Cambria" 
                    Font-Size="Medium" ForeColor="#999966" Text="Keyword2"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <br />
                <br />
                &nbsp;<asp:Label ID="Label6" runat="server" 
                    ForeColor="#999966" 
                 
                    Text="File"  Font-Bold="True" Font-Names="Cambria" Font-Size="Medium"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:FileUpload ID="FileUpload1" runat="server" Width="199px"  />
                <br />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="ImageButton1" runat="server" 
                    Height="46px" ImageUrl="~/images/submit-button.png" 
                    onclick="ImageButton1_Click" Width="103px" />
                <br />
                <br />
                <asp:Label ID="lbl_msg" runat="server" Font-Bold="True" Font-Names="Cambria" 
                    Font-Size="Medium" ForeColor="Lime" 
                    style="position:absolute; top: 584px; left: 361px;"></asp:Label>
     
              
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     
              
                    <br />
                    </td>
        </tr>
        </table>
        <table align="left">
        <tr>
            <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
            </td>
          <td>
          <br />
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:Label ID="Label9" runat="server" Text="File Information" Font-Bold="True" 
                  Font-Names="Book Antiqua" Font-Size="X-Large"></asp:Label>
                  <br />
           <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
        PageSize="6" 
        OnRowDeleting="GridView1_RowDeleting" CellPadding="4" 
        GridLines="None" Font-Bold="True" Font-Names="Cambria" Font-Size="Medium" 
                    Height="22px" Width="703px" ForeColor="white" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" >
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
     <Columns>
        
                   <asp:TemplateField HeaderText="Delete">
                <ItemTemplate>
                <asp:LinkButton ID="delete" runat="server" Text="Delete" ForeColor="blue" CommandName="Delete" CommandArgument='<%#Eval("fileid") %>' ></asp:LinkButton>
                   <%-- <asp:LinkButton ID="delete" runat="server" Text="Delete" CommandName="Delete" CommandArgument='<%#Eval("fileid") %>'></asp:LinkButton>--%>
                </ItemTemplate>
            </asp:TemplateField>
        
            <asp:TemplateField HeaderText="File Id">
                <ItemTemplate>
                    <asp:Label ID="fileid" runat="server" Text='<%#Eval("fileid") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="File Name">
                <ItemTemplate>
                    <asp:Label ID="fname" runat="server" Text='<%#Eval("fname") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Cluster Index">
                <ItemTemplate>
                    <asp:Label ID="key1" runat="server" Text='<%#Eval("key1") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

             <asp:TemplateField HeaderText="Leaf Index">
                <ItemTemplate>
                    <asp:Label ID="key2" runat="server" Text='<%#Eval("key2") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

        
            
            <asp:TemplateField HeaderText="Date">
                <ItemTemplate>
                    <asp:Label ID="fdatetime" runat="server" Text='<%#Eval("fdatetime") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            
            
            
            
        </Columns>
       
                    <EditRowStyle BackColor="#999999" />
       
    <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="white" />
    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
   
</asp:GridView>
              <br />
              <br />
              <br />
       </td>
        </tr>
       
</table>

</asp:Content>

