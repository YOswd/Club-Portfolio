<%@ Page Title="HACK KUET" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HACK_KUET.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <!-- Page-specific CSS or scripts if needed -->
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<!-- HERO -->
<header class="hero">

    <div class="hero-content">

        <div class="hero-text">

            <h1>Hardware Acceleration Club of KUET</h1>

            <p>Innovate. Build. Compete.</p>

            <div class="hero-buttons">
               <a href="Contact.aspx"><button class="btn">Join Us</button></a>
            </div>

        </div>

        <div class="hero-image">
            <img src='<%= ResolveUrl("~/images/robot.jpg") %>' alt="HACK KUET Logo">
        </div>

    </div>

</header>

<!-- ABOUT -->
<section id="about" class="reveal">

    <h2>ABOUT US</h2>

    <p>
        We are a community of KUET students passionate about robotics,
        embedded systems, and IoT.
    </p>

    <a href="About.aspx">
        <button class="btn">Read More</button>
    </a>

</section>

<!-- PROJECTS -->
<section id="projects" class="reveal">
    <div class="container">
        <div class="section-header">
    <h2>FEATURED PROJECTS</h2>
    <a href="Projects.aspx" class="see-all-btn">SEE ALL PROJECTS →</a>
</div>

<div class="project-grid">

    <div class="project-card p1">
        <img src='<%= ResolveUrl("~/images/LFR.jpg") %>'>
        <div class="project-overlay"><h3>Line Follower Robot</h3></div>
    </div>

    <div class="project-card p2">
        <img src='<%= ResolveUrl("~/images/drone.jpg") %>'>
        <div class="project-overlay"><h3>Drone Using Arduino</h3></div>
    </div>

    <div class="project-card p3">
        <img src='<%= ResolveUrl("~/images/soccer.jpg") %>'>
        <div class="project-overlay"><h3>Soccer Bot</h3></div>
    </div>

    <div class="project-card p4">
        <img src='<%= ResolveUrl("~/images/3D Printer.jpg") %>'>
        <div class="project-overlay"><h3>3D Printer</h3></div>
    </div>

    <div class="project-card p5">
        <img src='<%= ResolveUrl("~/images/Smart Bin.jpeg") %>'>
        <div class="project-overlay"><h3>Smart Bin</h3></div>
    </div>

</div>
    </div>
</section>

<!-- ACHIEVEMENTS -->
<section class="reveal">
    <div class="container">
        <div class="section-header">
    <h2>ACHIEVEMENTS</h2>
    <a href="Achievements.aspx" class="see-all-btn">VIEW ALL →</a>
</div>

<div class="grid">
    <div class="card"><h3>1st Place Robotics Fest</h3></div>
    <div class="card"><h3>National IoT Competition Finalist</h3></div>
    <div class="card"><h3>Top 10 RoboCup Team</h3></div>
</div>
    </div>
</section>

<!-- EVENTS -->
<section id="events" class="reveal">

    <div class="section-container">

        <div class="section-header">
            <div class="title-area">
                <span class="subtitle">EVENTS</span>
                <h2>OUR<br>RECENT EVENTS</h2>
            </div>

            <a href="Events.aspx" class="see-all-btn">SEE ALL →</a>
        </div>

        <div class="events-grid">

            <div class="event-card">
                <div class="img-container">
                    <img src='<%= ResolveUrl("~/images/event1.jpeg") %>'>
                </div>
                <h3>FREE HACK WORKSHOP 2025</h3>
            </div>

            <div class="event-card">
                <div class="img-container">
                    <img src='<%= ResolveUrl("~/images/event2.jpeg") %>'>
                </div>
                <h3>OPEN WORKSHOP FOR BATCH 2K23</h3>
            </div>

            <div class="event-card">
                <div class="img-container">
                    <img src='<%= ResolveUrl("~/images/event3.jpeg") %>'>
                </div>
                <h3>HACK IN'</h3>
            </div>

        </div>

    </div>

</section>

<!-- GALLERY -->
<section id="gallery" class="reveal">
    <div class="container">
        <div class="section-header">
    <h2>GALLERY</h2>
    <a href="Gallery.aspx" class="see-all-btn">VIEW FULL GALLERY →</a>
</div>

<div class="gallery">

    <img src='<%= ResolveUrl("~/images/workshop2.jpeg") %>'>
    <img src='<%= ResolveUrl("~/images/competition4.jpeg") %>'>
    <img src='<%= ResolveUrl("~/images/drone.jpg") %>'>

</div>
    </div>
</section>

<!-- STATS -->
<section class="stats reveal">

    <div class="stat-box">
        <h2>50+</h2>
        <p>Active Members</p>
    </div>

    <div class="stat-box">
        <h2>15+</h2>
        <p>Projects</p>
    </div>

    <div class="stat-box">
        <h2>10+</h2>
        <p>Competitions</p>
    </div>

    <div class="stat-box">
        <h2>5+</h2>
        <p>Years Active</p>
    </div>

</section>

<!-- JOIN -->
<section class="join-section reveal">

    <h2>Ready To Join HACK KUET?</h2>

    <p>
        Become part of a community of innovators, makers, and problem solvers.
    </p>

    <a href="Contact.aspx">
        <button class="btn">Contact Us</button>
    </a>

</section>

</asp:Content>