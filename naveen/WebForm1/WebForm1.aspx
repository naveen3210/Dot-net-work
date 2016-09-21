<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebForm1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:TextBox ID="txtSample" runat="server"></asp:TextBox>
        <asp:Button ID="btnSample" runat="server" Text="ClickMe" OnClick="btnSample_Click" />
        <br/>
        <asp:Label ID="lblSample" runat="server" Text=""></asp:Label>

    </div>
    </form>
</body>
</html>
