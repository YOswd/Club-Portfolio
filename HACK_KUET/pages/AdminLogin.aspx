<%@ Page Title="Admin Login" Language="C#" MasterPageFile="~/Login.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="HACK_KUET.AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="login-box">

    <div class="logo">
        🤖
    </div>

    <h2>Admin Login</h2>
    <p class="subtitle">HACK KUET Administration Panel</p>

    <asp:TextBox ID="txtUser" runat="server"
        placeholder="Username"
        CssClass="input" />

    <asp:TextBox ID="txtPass" runat="server"
        TextMode="Password"
        placeholder="Password"
        CssClass="input" />

    <asp:Button ID="btnLogin" runat="server"
        Text="Sign In"
        CssClass="btn"
        OnClick="btnLogin_Click" />

</div>

</asp:Content>