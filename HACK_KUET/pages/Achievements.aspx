<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Achievements.aspx.cs" Inherits="HACK_KUET.Achievements" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <section class="page-hero">
    <h1>Achievements</h1>
    <p>Our journey of innovation and success</p>
</section>

<section>

    <h2>Club Statistics</h2>

    <div class="stats">

        <div class="stat-box">
            <h1>25+</h1>
            <p>Projects</p>
        </div>

        <div class="stat-box">
            <h1>15+</h1>
            <p>Awards</p>
        </div>

        <div class="stat-box">
            <h1>500+</h1>
            <p>Participants</p>
        </div>

        <div class="stat-box">
            <h1>50+</h1>
            <p>Events</p>
        </div>

    </div>

</section>

<section>

    <h2>Competition Achievements</h2>

    <div class="achievement-grid">

        <div class="achievement-card">
            <h3>🥇 1st Place</h3>
            <p>National Robotics Festival</p>
            <span>2025</span>
        </div>

        <div class="achievement-card">
            <h3>🥈 Runner Up</h3>
            <p>IoT Innovation Challenge</p>
            <span>2024</span>
        </div>

        <div class="achievement-card">
            <h3>🏆 Top 10 Team</h3>
            <p>RoboCup Bangladesh</p>
            <span>2025</span>
        </div>

    </div>

</section>

<section>

    <h2>Milestones</h2>

    <div class="timeline">

        <div class="timeline-item">
            <div class="timeline-content">
                <h3>Club Founded</h3>
                <p>Beginning of HACK KUET.</p>
            </div>
        </div>

        <div class="timeline-item">
            <div class="timeline-content">
                <h3>First National Competition</h3>
                <p>Participated in major robotics competition.</p>
            </div>
        </div>

        <div class="timeline-item">
            <div class="timeline-content">
                <h3>National Award</h3>
                <p>Won first major championship.</p>
            </div>
        </div>

    </div>

</section>

</asp:Content>
