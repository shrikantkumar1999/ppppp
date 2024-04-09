<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Vmercry.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       <div>
           <div>
            <div style="text-align: center;">
    <div style="display: grid; grid-template-columns: 2fr 1fr 2fr 1fr 2fr 1fr 2fr 1fr;">
        <div style="display: grid; grid-template-columns: 2fr 2fr ;">
 <label>Select Text/Image/Video:</label>
 <asp:DropDownList ID="cmbType" runat="server" CssClass="theComboBox" AutoPostBack="true" OnSelectedIndexChanged="cmbType_SelectedIndexChanged">
     <asp:ListItem Text="Image/Text" Value="ImageText"></asp:ListItem>
     <asp:ListItem Text="Video" Value="Video"></asp:ListItem>
     <asp:ListItem Text="Both" Value="Both"></asp:ListItem>
     <asp:ListItem Text="All" Value="All"></asp:ListItem>
 </asp:DropDownList>
        </div>
        <div style="grid-row: 1; grid-column: 2;">
            <label for="txtIPAddress" style="color: red; font-size: 16px; vertical-align: middle;">Enter IP Address:</label>
        </div>
        <div style="grid-row: 1; grid-column: 3;">
            <asp:TextBox ID="txtIPAddress" runat="server" Text="192.168.1.124" Width="150px" Height="25px" CssClass="input-text"></asp:TextBox>
        </div>
        <div style="grid-row: 1; grid-column: 4;">
            <label style="color: red; font-size: 16px; vertical-align: middle;">Enter Octopus IP:</label>
        </div>
        <div style="grid-row: 1; grid-column: 5;">
            <asp:TextBox ID="txtFDIPAddress" runat="server" Text="172.16.3.179" Width="150px" Height="25px" CssClass="input-text"></asp:TextBox>
        </div>
        <div style="grid-row: 1; grid-column: 6;">
            <label style="color: red; font-size: 16px; vertical-align: middle;">Select Timer:</label>
        </div>
        <div style="grid-row: 1; grid-column: 7;">
            <asp:TextBox ID="txtsetTime" runat="server" Text="10" Width="150px" Height="25px" CssClass="input-text" OnTextChanged="txtsetTime_TextChanged"></asp:TextBox>
        </div>
        <div style="grid-row: 2; grid-column: 1;">
            <label style="color: red; font-size: 16px; vertical-align: middle;">Select Test Pattern:</label>
        </div>
        <div style="grid-row: 2; grid-column: 2;">
            <asp:DropDownList ID="dpPattern" runat="server" Width="150px" Height="25px" CssClass="theComboBox" AutoPostBack="true" OnSelectedIndexChanged="dpPattern_SelectedIndexChanged">
                <asp:ListItem Text="--Select--" Value=""></asp:ListItem>
                <asp:ListItem Text="1" Value="1"></asp:ListItem>
                <asp:ListItem Text="2" Value="2"></asp:ListItem>
                <asp:ListItem Text="3" Value="3"></asp:ListItem>
            </asp:DropDownList>
        </div>
        <div style="grid-row: 2; grid-column: 3;">
            <label style="color: red; font-size: 16px; vertical-align: middle;">Select Brightness:</label>
        </div>
        <div style="grid-row: 2; grid-column: 4;">
            <!-- Add ComboBox or other controls here -->
        </div>
        <div style="grid-row: 2; grid-column: 5;">
            <!-- Add buttons here -->
            <asp:Button ID="btnSubmit" runat="server" Text="Get Parameters" CssClass="btn-submit" OnClick="btnGetparameter_Click" />
        </div>
        <div style="grid-row: 2; grid-column: 6;">
    <!-- Add buttons here -->
    <asp:Button ID="Button2" runat="server" Text="Live Display" CssClass="btn-submit" OnClick="btnLive_Click" />
</div>
        <div style="grid-row: 2; grid-column: 7;">
    <!-- Add buttons here -->
    <asp:Button ID="Button3" runat="server" Text="Set Ip" CssClass="btn-submit" OnClick="btnSubmit_Click" />
</div>
    </div>
</div>




</div>
           <div style="display: grid; grid-template-columns: 2fr 2fr;" >
               <div>
               <textarea id="txtRichTextBox"  runat="server" class="rich-textbox"  spellcheck="true" style="background-color:black; color:white ;height:200px;width:200px"></textarea>

               </div>
               <div>
               <%--<textarea id="Textarea1" runat="server" class="rich-textbox"  spellcheck="true" style="background-color:black"></textarea>--%>
                   <asp:Image ID="Logo2" runat="server" ImageUrl="~/Images/Default_Cover.png" AlternateText="Your Image" Height="200" CssClass="image-logo"/>

               </div>
           </div>
           <div>

               <%--<asp:ListView ID="ListView1" runat="server" HorizontalAlignment="Left" VerticalAlignment="Top" DataSourceID="YourDataSourceID" OnItemCommand="MsgImageList_ItemCommand" OnItemDataBound="MsgImageList_ItemDataBound" ClientIDMode="Static" OnSelectedIndexChanged="MsgImageList_SelectedIndexChanged">--%>
               <asp:ListView ID="MsgImageList" runat="server" HorizontalAlignment="Left" VerticalAlignment="Top"   OnItemCommand="MsgImageList_ItemCommand" ClientIDMode="Static"  >
    <LayoutTemplate>
        <div>
            <table>
                     <tr>
                    <th>Sl.No.</th>
                    <th>Image</th>
                    <th>Edit</th>
                    <th>Delete</th>
                </tr>
                <tr id="itemPlaceholder" runat="server"></tr>
            </table>
        </div>
    </LayoutTemplate>
    <ItemTemplate>
           <tr>
            <td><%# Container.DataItemIndex + 1 %></td>
            <td><img src='<%# Eval("Title") %>' alt="Image" height="100" width="100" /></td>
            <td><asp:Button ID="btnEdit" runat="server" Text="Edit" CssClass="edit-btn"  CommandName="btnedit1" CommandArgument='<%# Eval("PrimaryMessageID") %>' /></td>
            <td><asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="delete-btn" CommandName="DeleteItem" CommandArgument='<%# Eval("PrimaryMessageID") %>' /></td>
     
                </tr>  
    </ItemTemplate>
</asp:ListView>
           </div>
           <div style="align-content:center">
           <%--<asp:Label ID="lblErrorMessage" runat="server" Visible="false" ForeColor="Red"  style="font-size:40px"> </asp:Label>--%>
          
              <asp:PlaceHolder ID="MessagePlaceholder" runat="server" Visible="false">
    <div id="messageDiv" class="alert alert-info" role="alert"></div>
</asp:PlaceHolder>
 
           
           </div>

           <div>
       <asp:Label id="Label1" runat="server"/>


           </div>

       </div>
        
        
       

    </form>
</body>
</html>
