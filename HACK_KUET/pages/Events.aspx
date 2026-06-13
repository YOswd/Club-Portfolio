<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Events.aspx.cs" Inherits="HACK_KUET.Events" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <section class="page-hero">
    <h1>Events & Activities</h1>
    <p>Workshops, Competitions and Training Sessions</p>
</section>

<section>

    <h2>Event Timeline</h2>

    <div class="timeline">

        <asp:Repeater ID="rptEvents" runat="server">
    <ItemTemplate>
        <div class="timeline-item">
            <div class="timeline-content">

    <img src='<%# 
        Eval("ImageUrl") == DBNull.Value || Eval("ImageUrl") == null || string.IsNullOrEmpty(Eval("ImageUrl").ToString())
        ? ResolveUrl("~/images/default.jpg")
        : ResolveUrl(Eval("ImageUrl").ToString())
    %>'
    style="width:100%;max-height:200px;object-fit:cover;border-radius:10px;" />

    <!-- TITLE -->
    <h3><%# Eval("Title") %></h3>

    <!-- DESCRIPTION -->
    <p class="description"><%# Eval("Description") %></p>

    <!-- DATE -->
    <p class="meta">
        📅 <%# Eval("StartDate", "{0:dd MMM yyyy}") %>
        <%# Eval("EndDate") != DBNull.Value &&
            Convert.ToDateTime(Eval("EndDate")) != Convert.ToDateTime(Eval("StartDate"))
            ? " - " + Eval("EndDate", "{0:dd MMM yyyy}")
            : "" %>
    </p>

    <!-- LOCATION -->
    <p class="meta">📍 <%# Eval("Location") %></p>

</div>
        </div>

    </ItemTemplate>
</asp:Repeater>
    </div>

</section>
</asp:Content>