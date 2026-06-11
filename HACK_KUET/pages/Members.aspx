<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Members.aspx.cs" Inherits="HACK_KUET.pages.Members" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <section class="page-hero">
    <h1>Our Team</h1>
    <p>Meet the people behind HACK KUET.</p>
</section>

<!-- Faculty Advisor -->
<section>

    <h2>Moderators</h2>

    <div class="member-grid">

        <div class="member-card">
            <img src='<%= ResolveUrl("~/images/member.jpg") %>' alt="Advisor">
            <h3>DR. MUHAMMED SHEIKH SADI</h3>
            <p>PROFESSOR</p>
        </div>

        <div class="member-card">
            <img src='<%= ResolveUrl("~/images/member.jpg") %>' alt="Advisor">
            <h3>DR. MD. MILON ISLAM</h3>
            <p>ASSISTANT PROFESSOR</p>
        </div>

        <div class="member-card">
            <img src='<%= ResolveUrl("~/images/member.jpg") %>' alt="Advisor">
            <h3>MD. REPON ISLAM</h3>
            <p>ASSISTANT PROFESSOR</p>
        </div>

        <div class="member-card">
            <img src='<%= ResolveUrl("~/images/member.jpg") %>' alt="Advisor">
            <h3>MD BADIUZZAMAN SHUVO</h3>
            <p>LECTURER</p>
        </div>

    </div>

</section>

<!-- Executive Committee -->

<section>

    <h2>Executive Committee</h2>

    <div class="member-grid" runat="server" id="MembersContainer">
</div>

</section>
</asp:Content>