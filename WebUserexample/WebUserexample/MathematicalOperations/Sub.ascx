<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Sub.ascx.cs" Inherits="WebUserexample.MathematicalOperations.Sub" %>

<table>
    <tr>
        <td>
            First Number:
        </td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            Second Number:
        </td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            Result:
        </td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            
        </td>
        <td>
            <asp:Button ID="Button1" runat="server" Text="Click" OnClick="Button1_Click" />
        </td>
    </tr>
</table>