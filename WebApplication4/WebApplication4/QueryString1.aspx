<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QueryString1.aspx.cs" Inherits="WebApplication4.QueryString1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    Enter your Name: <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />

    </div>
    </form>
</body>
</html>
