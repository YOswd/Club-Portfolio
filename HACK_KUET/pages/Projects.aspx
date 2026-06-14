<%@ Page Title="Projects" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Projects.aspx.cs" Inherits="HACK_KUET.Projects" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
        <!-- HERO SECTION -->
    <section class="page-hero">
        <h1>Our Projects</h1>
        <p>
            Exploring Robotics, Embedded Systems,
            IoT and Innovative Engineering Solutions.
        </p>
    </section>

    <!-- PROJECT CATEGORIES -->
    <section class="reveal">
        <div class="container">
            <h2>Project Categories</h2>

            <div class="grid">

                <div class="card">
                    <h3>Robotics</h3>
                    <p>Autonomous and competitive robots.</p>
                </div>

                <div class="card">
                    <h3>Embedded Systems</h3>
                    <p>Microcontroller-based applications.</p>
                </div>

                <div class="card">
                    <h3>Internet of Things</h3>
                    <p>Smart connected devices and automation.</p>
                </div>

                <div class="card">
                    <h3>Research & Innovation</h3>
                    <p>Experimental and advanced technologies.</p>
                </div>

            </div>
        </div>
    </section>

    <!-- FEATURED PROJECTS (DATABASE CONTROLLED) -->
<section class="reveal">
    <div class="container">

        <h2>Featured Projects</h2>

        <asp:Repeater ID="rptFeaturedProjects" runat="server">

            <ItemTemplate>

                <div class="project-detail-card">

                    <div class="project-header">

                        <div class="short-info">
                            <h3><%# Eval("Title") %></h3>
                            <p><%# Eval("ShortDescription") %></p>

                            <button type="button" class="btn toggle-btn open-btn">
                                SEE DETAILS
                            </button>
                        </div>

                        <div class="img-wrapper">
                            <img class="project-img"
                                src='<%# Eval("ImageUrl") %>' />
                        </div>

                    </div>

                    <div class="project-body">

                        <div class="full-info">

                            <p><%# Eval("FullDescription") %></p>

                            <h4>Category</h4>
                            <p><%# Eval("Category") %></p>

                            <button type="button" class="btn toggle-btn close-btn">
                                SEE LESS
                            </button>

                        </div>

                    </div>

                </div>

            </ItemTemplate>

        </asp:Repeater>

    </div>
</section>

    <!-- TECHNOLOGIES -->

    <section class="reveal">
        <div class="container">
            <h2>Technologies We Use</h2>

            <div class="grid">

                <div class="card">
                    <h3>Arduino</h3>
                </div>

                <div class="card">
                    <h3>ESP32</h3>
                </div>

                <div class="card">
                    <h3>STM32</h3>
                </div>

                <div class="card">
                    <h3>Raspberry Pi</h3>
                </div>

                <div class="card">
                    <h3>Python</h3>
                </div>

                <div class="card">
                    <h3>C / C++</h3>
                </div>

            </div>
        </div>

    </section>

    <!-- UPCOMING PROJECTS -->

    <section class="reveal">
        <div class="container">
            <h2>Future Projects</h2>

            <div class="grid">

                <div class="card">
                    <h3>Smart Agriculture System</h3>
                </div>

                <div class="card">
                    <h3>Autonomous Delivery Robot</h3>
                </div>

                <div class="card">
                    <h3>IoT Energy Monitoring</h3>
                </div>

                <div class="card">
                    <h3>AI Surveillance Robot</h3>
                </div>

            </div>
        </div>

    </section>

    <!-- CONTACT CTA -->

    <section class="reveal">
        <div class="container">
            <h2>Interested in Building Projects?</h2>

            <p>
                Join HACK KUET and work on exciting engineering
                and robotics projects with fellow enthusiasts.
            </p>

            <button type="button" class="btn" onclick="window.location.href='/pages/Contact.aspx'">
                Join Us
            </button>
        </div>

    </section>
    <script>
        document.addEventListener("DOMContentLoaded", function () {

            // ONLY open buttons
            document.querySelectorAll(".open-btn").forEach(btn => {
                btn.addEventListener("click", function () {
                    const card = this.closest(".project-detail-card");
                    if (card) card.classList.add("active");
                });
            });

            // ONLY close buttons
            document.querySelectorAll(".close-btn").forEach(btn => {
                btn.addEventListener("click", function () {
                    const card = this.closest(".project-detail-card");
                    if (card) card.classList.remove("active");
                });
            });

        });
    </script>
</asp:Content>
