<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Apply1.aspx.cs" Inherits="ApplicationFormExample.Apply1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <%-- main border--%>
        <div style ="margin-left:100px; margin-right :100px;margin-top:30px;margin-bottom :50px">
        <h1 style ="text-align :center">Sample Employment Application Form</h1>
       <div style="height:60px">
            <div style ="text-align :center ; float :left;margin-left :50px">
            <p style="text-align :center; border :solid ; width: 220px; height: auto "> PLEASE PRINT ALL INFORMATION REQUESTED EXCEPT SIGNATURE</p>
        </div>
        <div style ="text-align :right; float :right;margin-right :50px ">
             <p style="text-align :center; border :solid ; width: 220px; height: 60px "> </p>
        </div>
       </div>
       </div> 
        <h4 style ="text-align :center "> APPLICATION FOR EMPLOYMENT</h4>
      <div style ="border :solid ;height :auto;margin-top :10px;margin-left :10px;margin-right :10px">
            <div style ="margin-top :10px">
            <div style ="margin-left :10px"> &nbsp; DO YOU HAVE A DRIVER'S LICENSE? &nbsp;
               <asp:RadioButtonList ID="RadioButtonList3" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem>&nbsp;&nbsp;Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
                </asp:RadioButtonList>
            </div>
             <p style ="margin-left :15px; font-size: medium;text-align :justify;margin-right :20px"> What is your means of transportation to work? 
               &nbsp; <asp:TextBox ID="TextBox34" runat="server" Width ="500px"></asp:TextBox>
             </p>



            </div>
    </div>
    </form>
</body>
</html>
