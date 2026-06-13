<%@ Page Title="Admin Login" Language="C#" MasterPageFile="~/Login.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="HACK_KUET.AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="login-box">
    <h2>Admin Panel Login</h2>

    <asp:TextBox ID="txtUser" runat="server" placeholder="Username" CssClass="input" />
    <asp:TextBox ID="txtPass" runat="server" TextMode="Password" placeholder="Password" CssClass="input" />

    <asp:Button ID="btnLogin" runat="server" Text="Login"
        OnClick="btnLogin_Click" CssClass="btn" />
</div>

</asp:Content>