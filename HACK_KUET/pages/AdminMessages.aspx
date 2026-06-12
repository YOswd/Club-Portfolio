<%@ Page Title="Admin Messages" Language="C#" MasterPageFile="~/Site.Master"
AutoEventWireup="true" CodeBehind="AdminMessages.aspx.cs"
Inherits="HACK_KUET.AdminMessages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style>
        .admin-hero {
            background: #0f172a;
            color: white;
            padding: 60px 20px;
            text-align: center;
        }

        .admin-container {
            padding: 40px;
        }

        .stats {
            display: flex;
            gap: 20px;
            justify-content: center;
            margin-bottom: 30px;
        }

        .card {
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
            min-width: 150px;
            text-align: center;
        }

        .grid {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        .grid th {
            background: #0f172a;
            color: white;
            padding: 12px;
        }

        .grid td {
            padding: 12px;
            border-bottom: 1px solid #ddd;
        }

        .delete-btn {
            background: red;
            color: white;
            border: none;
            padding: 6px 10px;
            cursor: pointer;
            border-radius: 5px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <!-- Hero -->
    <section class="admin-hero">
        <h1>Admin Panel</h1>
        <p>Manage Contact Messages</p>
    </section>

    <div class="admin-container">

        <!-- Stats -->
        <div class="stats">
            <div class="card">
                <h3>Total Messages</h3>
                <asp:Label ID="lblCount" runat="server" Text="0"></asp:Label>
            </div>
        </div>

        <!-- Messages Table -->
        <asp:GridView ID="GridViewMessages" runat="server"
            AutoGenerateColumns="False" CssClass="grid">

            <Columns>

                <asp:BoundField DataField="Name" HeaderText="Name" />
                <asp:BoundField DataField="Email" HeaderText="Email" />
                <asp:BoundField DataField="Message" HeaderText="Message" />
                <asp:BoundField DataField="CreatedAt" HeaderText="Date" />

            </Columns>

        </asp:GridView>

        <a href="AdminLogout.aspx" class="logout-btn"> Logout</a>
    </div>

</asp:Content>