<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="SampleProductExample.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table>
            <tr>
                <td> Product No.</td>
                <td> <asp:TextBox ID="TextBox_Pno" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td> Product Name</td>
                <td> <asp:TextBox ID="TextBox_Pname" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td> Product Rate</td>
                <td> <asp:TextBox ID="TextBox_Prate" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="text-align: center"> <asp:Button ID="Button2" runat="server" Text="Save" OnClick="Button2_Click" /></td>
                <td style="text-align: center"><asp:Button ID="Button1" runat="server" Text="Clear" OnClick="Button1_Click"/> &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" Text="List" OnClick="Button3_Click" /></td>
            </tr>
        </table>
        <br />
        <h3> Product List</h3>
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>

    </div>
    </form>
</body>
</html>
