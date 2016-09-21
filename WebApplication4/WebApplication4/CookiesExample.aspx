<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CookiesExample.aspx.cs" Inherits="WebApplication4.CookiesExample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Click Counts: <asp:Label ID="Label1" runat="server" Text="0"></asp:Label>
        <br />
        <asp:Button ID="Button1" runat="server" Text="click" OnClick="Button1_Click" />
    </div>
    </form>
</body>
</html>
