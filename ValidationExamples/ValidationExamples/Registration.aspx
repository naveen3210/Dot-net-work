<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="ValidationExamples.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h4> Registration Form </h4>
    <table>
        <tr>
            <td> <asp:Label ID="Label1" runat="server" Text="Customer ID"></asp:Label></td>
            <td> <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Customer ID" ControlToValidate="TextBox1"></asp:RequiredFieldValidator></td>
            <td> <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter only Numbers" ControlToValidate="TextBox1" ValidationExpression="^\d+"></asp:RegularExpressionValidator></td>
            <td> <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Id must be 5 digits" ControlToValidate="TextBox1" MaximumValue="99999" MinimumValue="10000" Type="Integer"></asp:RangeValidator></td>
        </tr>
        <tr>
            <td> <asp:Label ID="Label2" runat="server" Text="Customer Name"></asp:Label></td>
            <td> <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Customer name" ControlToValidate="TextBox2"></asp:RequiredFieldValidator></td>
           <td> <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ValidationExpression="^[a-zA-Z'.\s]{1,40}$" ErrorMessage="Enter Valid Name" ControlToValidate="TextBox2"></asp:RegularExpressionValidator></td> 
        </tr>
        <tr>
            <td> <asp:Label ID="Label3" runat="server" Text="Phone"></asp:Label></td>
            <td> <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="EnterPhone Number" ControlToValidate="TextBox3"></asp:RequiredFieldValidator></td>
           <td> <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter (xxx) xxx-xxxx" ControlToValidate="TextBox3" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator></td> 
        </tr>
        <tr>
            <td> <asp:Label ID="Label4" runat="server" Text="Email ID"></asp:Label></td>
            <td> <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Email ID" ControlToValidate="TextBox4"></asp:RequiredFieldValidator></td>
            <td> <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Enter Valid email ID" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TextBox4"></asp:RegularExpressionValidator></td> 
        </tr>
        <tr>
            <td> <asp:Label ID="Label5" runat="server" Text="Password"></asp:Label></td>
            <td> <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter Password" ControlToValidate="TextBox5"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td> <asp:Label ID="Label6" runat="server" Text="Confirm Password"></asp:Label></td>
            <td> <asp:TextBox ID="TextBox6" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter Same password" ControlToValidate="TextBox6"></asp:RequiredFieldValidator></td>
            <td> <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Enter Same password" ControlToCompare="TextBox6" ControlToValidate="TextBox5"></asp:CompareValidator></td>
        </tr>
        <tr>
            <td><asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" /></td>
        </tr>
       
    </table>
     </div>
    </form>
</body>
</html>
