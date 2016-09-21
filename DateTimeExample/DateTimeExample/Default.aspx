<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DateTimeExample._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <asp:Timer ID="Timer1" runat="server"></asp:Timer>
    <asp:LinkButton ID="LinkButton1" runat="server">LinkButton</asp:LinkButton>
</asp:Content>
