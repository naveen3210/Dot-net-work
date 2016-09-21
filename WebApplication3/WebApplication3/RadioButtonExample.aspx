<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RadioButtonExample.aspx.cs" Inherits="WebApplication3.RadioButtonExample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       Gender : <asp:RadioButton ID="RadioButton1" runat="server" Text ="Male" />
        <asp:RadioButton ID ="RadioButton2" runat ="server" Text ="Female" />
        <br />
        <br />
        Gender: <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True">
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
        </asp:RadioButtonList>
    </div>
    </form>
</body>
</html>
