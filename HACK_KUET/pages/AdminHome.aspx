<%@ Page Title="Admin Home" Language="C#" MasterPageFile="~/Admin.Master"
AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs"
Inherits="HACK_KUET.AdminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2 style="margin-bottom:20px;">Dashboard Overview</h2>

    <div class="dashboard-cards">

    <div class="card messages">
        <i class="fa-solid fa-envelope icon"></i>
        <h1><asp:Label ID="lblMessages" runat="server" Text="0" /></h1>
        <p>Messages</p>
    </div>

    <div class="card events">
        <i class="fa-solid fa-calendar-days icon"></i>
        <h1><asp:Label ID="lblEvents" runat="server" Text="0" /></h1>
        <p>Events</p>
    </div>

    <div class="card members">
        <i class="fa-solid fa-users icon"></i>
        <h1><asp:Label ID="lblMembers" runat="server" Text="0" /></h1>
        <p>Members</p>
    </div>

    <div class="card projects">
        <i class="fa-solid fa-robot"></i>
        <h1><asp:Label ID="lblProjects" runat="server" Text="0" /></h1>
        <p>Projects</p>
    </div>

</div>

</div>

</asp:Content>