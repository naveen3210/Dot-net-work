<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registeration.aspx.cs" Inherits="ValidatatonExamples.Registeration" %>

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
            <td>
                 Customer ID 
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Fille Customer ID" ControlToValidate="TextBox1" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please Enter Customer id in number.." ForeColor="Red" ControlToValidate="TextBox1" ValidationExpression="\d+">*</asp:RegularExpressionValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Please Enter ID In Between 1000 to 5000" ControlToValidate="TextBox1" ForeColor="Red" MaximumValue="5000" MinimumValue="1000" Type="Integer">*</asp:RangeValidator>
            </td>
        </tr>
         <tr>
            <td>
                 Customer Name 
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Fille Customer Name" ControlToValidate="TextBox2" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td>
                 Phone
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Fille Customer Phone" ControlToValidate="TextBox3" ForeColor="Red">*</asp:RequiredFieldValidator>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Please valid Phone number(123-456-7890)" ForeColor="Red" ControlToValidate="TextBox3" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}">*</asp:RegularExpressionValidator> 
            </td>
        </tr>
         <tr>
            <td>
                 EmailID
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Fille Customer Email ID" ControlToValidate="TextBox4" ForeColor="Red">*</asp:RequiredFieldValidator>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Please Enter valid email id.." ControlToValidate="TextBox4" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            </td>
        </tr>
         <tr>
            <td>
                 Password
            </td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please Enter Password.." ControlToValidate="TextBox5" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
             </tr>
              <tr>
            <td>
                 Confirm Password
            </td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please Enter Confirum Password" ControlToValidate="TextBox6" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Please enter both passwords are same" ControlToCompare="TextBox6" ControlToValidate="TextBox5" ForeColor="Red">*</asp:CompareValidator>
            </td>
        </tr>
              <tr>
            <td>
                 
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
            </td>
        </tr>
        
    </table>

        <br />
        <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Note :" />

    </div>
    </form>
</body>
</html>
