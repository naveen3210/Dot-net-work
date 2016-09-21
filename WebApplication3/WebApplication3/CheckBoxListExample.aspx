<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckBoxListExample.aspx.cs" Inherits="WebApplication3.CheckBoxListExample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
        </asp:CheckBoxList>
        <br />
        <asp:ListBox ID="ListBox1" runat="server"></asp:ListBox>
    </div>
    </form>
</body>
</html>
