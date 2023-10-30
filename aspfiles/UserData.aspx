<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserData.aspx.cs" Inherits="WebApplication1.UserData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            You can View User Data Here
            <asp:GridView ID="GridUser" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="Place" HeaderText="Place" SortExpression="Place"></asp:BoundField>
                    <asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact"></asp:BoundField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [TableUser]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
