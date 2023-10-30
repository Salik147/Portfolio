<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin Panel.aspx.cs" Inherits="WebApplication1.Admin_Panel" %>

<!DOCTYPE html>
<script runat="server">

    protected void Unnamed2_TextChanged(object sender, EventArgs e)
    {

    }
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label runat="server" Text="Label"></asp:Label><asp:TextBox runat="server" OnTextChanged="Unnamed2_TextChanged"></asp:TextBox>
       
    </form>
</body>
</html>
