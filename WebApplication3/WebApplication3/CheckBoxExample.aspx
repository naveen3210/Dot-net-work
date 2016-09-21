<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckBoxExample.aspx.cs" Inherits="WebApplication3.CheckBoxExample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
         <asp:CheckBox ID="CheckBox1" runat="server" Text ="RAM" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged" /> <br />
         <asp:CheckBox ID="CheckBox2" runat="server" Text =" Mouse" AutoPostBack="True" OnCheckedChanged="CheckBox2_CheckedChanged" /> <br />
        <asp:CheckBox ID ="CheckBox3" runat ="server" Text ="KeyBoard" AutoPostBack="True" OnCheckedChanged="CheckBox3_CheckedChanged" /> <br />
        <asp:CheckBox ID ="CheckBox4" runat ="server" Text ="Monitor" AutoPostBack="True" OnCheckedChanged="CheckBox4_CheckedChanged" />
        <br />

        <asp:Label ID="Label1" runat="server" Text="Bill Amount: "></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" Enabled="False" OnTextChanged="TextBox1_TextChanged">0</asp:TextBox>
    </div>
    </form>
</body>
</html>
