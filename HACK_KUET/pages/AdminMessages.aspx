<%@ Page Title="Admin Dashboard" Language="C#" MasterPageFile="~/Admin.Master"
AutoEventWireup="true" CodeBehind="AdminMessages.aspx.cs"
Inherits="HACK_KUET.AdminMessages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">

    <style>
        body {
            background: #f4f6f9;
        }

        .admin-header {
    background: #0f172a;
    color: white;
    padding: 18px 30px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    border-radius: 10px;
}

.header-right {
    display: flex;
    gap: 20px;
    align-items: center;
    font-size: 14px;
}

        .admin-header h1 {
            margin: 0;
            font-size: 22px;
        }

        .logout-btn {
            background: #ef4444;
            color: white;
            padding: 8px 15px;
            border-radius: 6px;
            text-decoration: none;
            font-weight: bold;
        }

        .dashboard {
            padding: 30px 40px;
        }

        .cards {
            display: flex;
            gap: 20px;
            margin-bottom: 25px;
        }

        .card {
            flex: 1;
            background: white;
            padding: 20px;
            border-radius: 12px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.08);
            text-align: center;
        }

        .card h2 {
            margin: 0;
            font-size: 28px;
            color: #0f172a;
        }

        .card p {
            margin: 5px 0 0;
            color: gray;
        }

        .table-box {
    background: white;
    margin-top: 15px;
    padding: 20px;
    border-radius: 12px;
    box-shadow: 0 5px 20px rgba(0,0,0,0.08);
}

        .grid {
            width: 100%;
            border-collapse: collapse;
        }

        .grid th {
            background: #0f172a;
            color: white;
            padding: 12px;
        }

        .grid td {
            padding: 12px;
            border-bottom: 1px solid #eee;
        }

       .grid {
    width: 100%;
    table-layout: fixed;
}
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <!-- HEADER -->
    <div class="admin-header">

    <h1>Admin Messages</h1>

    <div class="header-right">
        <span>Total Messages: <asp:Label ID="lblCountTop" runat="server" Text="0" /></span>
    </div>

</div>

    <div class="dashboard">
        <!-- TABLE -->
        <div class="table-box">

            <asp:GridView ID="GridViewMessages" runat="server"
    AutoGenerateColumns="False"
    CssClass="grid"
    DataKeyNames="Id"
    OnRowCommand="GridViewMessages_RowCommand">

    <Columns>

        <asp:BoundField DataField="Id" HeaderText="ID">
            <ItemStyle Width="50px" HorizontalAlign="Center" />
            <HeaderStyle Width="50px" />
        </asp:BoundField>

        <asp:BoundField DataField="Name" HeaderText="Name">
    <ItemStyle Width="120px" />
</asp:BoundField>

<asp:BoundField DataField="Email" HeaderText="Email">
    <ItemStyle Width="180px" />
</asp:BoundField>

<asp:BoundField DataField="Subject" HeaderText="Subject">
    <ItemStyle Width="150px" />
</asp:BoundField>

<asp:TemplateField HeaderText="Message">
    <ItemStyle Width="300px" />
    <ItemTemplate>
        <div style="white-space: normal; word-break: break-word;">
            <%# Eval("Message") %>
        </div>
    </ItemTemplate>
</asp:TemplateField>

        <asp:TemplateField HeaderText="">
    <ItemStyle Width="60px" HorizontalAlign="Center" />
    <HeaderStyle Width="60px" />

    <ItemTemplate>
        <asp:Button ID="btnDelete" runat="server"
            Text="Delete"
            CommandName="DeleteMessage"
            CommandArgument='<%# Eval("Id") %>'
            CssClass="delete-btn"
            OnClientClick="return confirm('Delete this message?');" />
    </ItemTemplate>
</asp:TemplateField>

    </Columns>

</asp:GridView>

        </div>

    </div>

</asp:Content>