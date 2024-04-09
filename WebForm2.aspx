<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Vmercry.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>



    <title>ListBox Example</title>
<script language="C#" runat="server">

      void SubmitBtn_Click(Object sender, EventArgs e) 
      {
         if (ListBox1.SelectedIndex > -1)
            Label1.Text="You chose: " + ListBox1.SelectedItem.Text;
      }

   </script>



   <h3>ListBox Example</h3>

   <form id="form1" runat="server">

      <asp:ListBox id="ListBox1" 
           Rows="6"
           Width="100px"
           SelectionMode="Single" 
           runat="server">

         <asp:ListItem>Item 1</asp:ListItem>
         <asp:ListItem>Item 2</asp:ListItem>
         <asp:ListItem>Item 3</asp:ListItem>
         <asp:ListItem>Item 4</asp:ListItem>
         <asp:ListItem>Item 5</asp:ListItem>
         <asp:ListItem>Item 6</asp:ListItem>

      </asp:ListBox>

      <asp:button id="Button1"
           Text="Submit" 
           OnClick="SubmitBtn_Click" 
           runat="server" />
        
      <asp:Label id="Label1" 
           Font-Names="Verdana" 
           Font-Size="10pt" 
           runat="server"/>
        
   </form>




   <%-- <form id="form1" runat="server">
        <div>
            <div class="ribbon">
    <a href="#" class="ribbon-tab">Home</a>
    <a href="#" class="ribbon-tab">Edit</a>
    <a href="#" class="ribbon-tab">View</a>
    <a href="#" class="ribbon-tab">Settings</a>
</div>


        </div>
    </form>--%>
</body>
</html>
