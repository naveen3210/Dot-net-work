<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebUserexample.WebForm1" %>

<%@ Register Src="~/MathematicalOperations/Add.ascx" TagPrefix="uc1" TagName="Add" %>
<%@ Register Src="~/MathematicalOperations/Sub.ascx" TagPrefix="uc1" TagName="Sub" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <uc1:Add runat="server" ID="Add" />
        <uc1:Sub runat="server" id="Sub" />
    </div>
    </form>
</body>
</html>
