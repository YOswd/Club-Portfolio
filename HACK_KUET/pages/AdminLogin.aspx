<%@ Page Title="Admin Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="HACK_KUET.AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div style="max-width:400px;margin:80px auto;padding:30px;background:#fff;
                box-shadow:0 5px 15px rgba(0,0,0,0.1);border-radius:10px;text-align:center;">

        <h2>Admin Login</h2>

        <asp:TextBox ID="txtUser" runat="server" placeholder="Username"
            style="width:100%;padding:10px;margin:10px 0;"></asp:TextBox>

        <asp:TextBox ID="txtPass" runat="server" TextMode="Password" placeholder="Password"
            style="width:100%;padding:10px;margin:10px 0;"></asp:TextBox>

        <asp:Button ID="btnLogin" runat="server" Text="Login"
            OnClick="btnLogin_Click"
            style="width:100%;padding:10px;background:#0f172a;color:white;border:none;" />

    </div>

</asp:Content>