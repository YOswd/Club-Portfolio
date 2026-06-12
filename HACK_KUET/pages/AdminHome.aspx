<%@ Page Title="Admin Home" Language="C#" MasterPageFile="~/Admin.Master"
AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs"
Inherits="HACK_KUET.AdminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2 style="margin-bottom:20px;">Dashboard Overview</h2>

    <div class="dashboard-cards">

        <div class="card">
            <h1><asp:Label ID="lblMessages" runat="server" Text="0" /></h1>
            <p>Total Messages</p>
        </div>

        <div class="card">
            <h1><asp:Label ID="lblEvents" runat="server" Text="0" /></h1>
            <p>Total Events</p>
        </div>

        <div class="card">
            <h1><asp:Label ID="lblMembers" runat="server" Text="0" /></h1>
            <p>Total Members</p>
        </div>

    </div>

</asp:Content>