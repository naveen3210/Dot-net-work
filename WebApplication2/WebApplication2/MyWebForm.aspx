<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyWebForm.aspx.cs" Inherits="WebApplication2.MyWebForm"   EnableViewState ="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> My Calculator</title>
    <link href="StyleSheets/MyStyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class ="header">
    <h2> My Calculator </h2>
        <table>
            <tr>
                
                <td style ="text-align :right"><asp:Label ID="Label1" runat="server" Text="Enter First Number:"></asp:Label> </td>
                <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                
            </tr>

            <tr>
                <td style ="text-align :right"><asp:Label ID="Label2" runat="server" Text="Enter Second Number:"></asp:Label> </td>
                <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
            </tr>

            <tr>
                <td style ="text-align :right"><asp:Label ID="Label3" runat="server" Text="Result:"></asp:Label> </td>
                <td><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style ="text-align :right"> 
                    <asp:Button ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" Text="Sub" OnClick="Button2_Click" />
                    <asp:Button ID="Button3" runat="server" Text="Mul" OnClick="Button3_Click" />
                </td>
     
                <td>
                    <asp:Button ID="Button4" runat="server" Text="Div" OnClick="Button4_Click" />
                    <asp:Button ID="Button5" runat="server" Text="Rem" OnClick="Button5_Click" />
                    <asp:Button ID="Button6" runat="server" Text="Clear" OnClick="Button6_Click" />
                </td>
            </tr>
            
       
        </table>
    </div>
    </form>
</body>
</html>
