<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Events.aspx.cs" Inherits="HACK_KUET.pages.Events" %>
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

        <div class="timeline-item">
            <div class="timeline-content">
                <h3>Robotics Workshop 2026</h3>
                <p>
                    Introduction to Arduino, sensors,
                    motors and autonomous robotics.
                </p>
            </div>
        </div>

        <div class="timeline-item">
            <div class="timeline-content">
                <h3>Line Follower Competition</h3>
                <p>
                    Internal competition for beginner robotics teams.
                </p>
            </div>
        </div>

        <div class="timeline-item">
            <div class="timeline-content">
                <h3>IoT Bootcamp</h3>
                <p>
                    Smart home and cloud-based monitoring systems.
                </p>
            </div>
        </div>

        <div class="timeline-item">
            <div class="timeline-content">
                <h3>Hackathon Participation</h3>
                <p>
                    National-level hardware innovation competition.
                </p>
            </div>
        </div>

    </div>

</section>
</asp:Content>