<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Projects.aspx.cs" Inherits="HACK_KUET.Projects" %>
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
    </section>

    <!-- FEATURED PROJECTS -->

<section class="reveal">
    <h2>Featured Projects</h2>

    <!-- PROJECT 1 -->
    <div class="project-detail-card">

        <div class="project-header">
            <div class="short-info">
                <h3>LINE FOLLOWER ROBOT</h3>
                <p>Autonomous robot using IR sensors and control logic.</p>
                <button type="button" class="btn toggle-btn open-btn">SEE DETAILS</button>
            </div>

            <div class="img-wrapper">
                <img src='<%= ResolveUrl("~/images/LFR.jpg") %>' alt="LFR" class="project-img">
            </div>
        </div>

        <div class="project-body">
            <div class="full-info">
                <p>Full description of line follower robot...</p>

                <h4>Technologies Used</h4>
                <ul>
                    <li>Arduino UNO</li>
                    <li>IR Sensors</li>
                    <li>PID Control</li>
                </ul>

                <h4>Achievements</h4>
                <ul>
                    <li>Champion Robo Challenge</li>
                </ul>

                <button type="button" class="btn toggle-btn close-btn">SEE LESS</button>
            </div>
        </div>
    </div>


    <!-- PROJECT 2 -->
    <div class="project-detail-card">

        <div class="project-header">
            <div class="short-info">
                <h3>AUTONOMOUS DRONE</h3>
                <p>GPS-based autonomous aerial system.</p>
                <button type="button" class="btn toggle-btn open-btn">SEE DETAILS</button>
            </div>

            <div class="img-wrapper">
                <img src='<%= ResolveUrl("~/images/drone.jpg") %>' alt="Drone" class="project-img">
            </div>
        </div>

        <div class="project-body">
            <div class="full-info">
                <p>Drone description...</p>

                <h4>Technologies Used</h4>
                <ul>
                    <li>Flight Controller</li>
                    <li>GPS Module</li>
                    <li>Brushless Motors</li>
                </ul>

                <h4>Achievements</h4>
                <ul>
                    <li>Top 5 UAV Contest</li>
                </ul>

                <button type="button" class="btn toggle-btn close-btn">SEE LESS</button>
            </div>
        </div>
    </div>

    <!-- PROJECT 3 -->
    <div class="project-detail-card">

        <div class="project-header">
            <div class="short-info">
                <h3>SOCCER BOT</h3>
                <p>GPS-based autonomous aerial system.</p>
                <button type="button" class="btn toggle-btn open-btn">SEE DETAILS</button>
            </div>

            <div class="img-wrapper">
                <img src='<%= ResolveUrl("~/images/soccer.jpg") %>' alt="Soccer Bot" class="project-img">
            </div>
        </div>

        <div class="project-body">
            <div class="full-info">
                <p>Drone description...</p>

                <h4>Technologies Used</h4>
                <ul>
                    <li>Flight Controller</li>
                    <li>GPS Module</li>
                    <li>Brushless Motors</li>
                </ul>

                <h4>Achievements</h4>
                <ul>
                    <li>Top 5 UAV Contest</li>
                </ul>

                <button type="button" class="btn toggle-btn close-btn">SEE LESS</button>
            </div>
        </div>
    </div>

    <!-- PROJECT 4 -->
    <div class="project-detail-card">

        <div class="project-header">
            <div class="short-info">
                <h3>3D PRINTER</h3>
                <p>GPS-based autonomous aerial system.</p>
                <button type="button" class="btn toggle-btn open-btn">SEE DETAILS</button>
            </div>

            <div class="img-wrapper">
                <img src='<%= ResolveUrl("~/images/3D Printer.jpg") %>' alt="3D Printer" class="project-img">
            </div>
        </div>

        <div class="project-body">
            <div class="full-info">
                <p>Drone description...</p>

                <h4>Technologies Used</h4>
                <ul>
                    <li>Flight Controller</li>
                    <li>GPS Module</li>
                    <li>Brushless Motors</li>
                </ul>

                <h4>Achievements</h4>
                <ul>
                    <li>Top 5 UAV Contest</li>
                </ul>

                <button type="button" class="btn toggle-btn close-btn">SEE LESS</button>
            </div>
        </div>
    </div>

    <div class="project-detail-card">

        <div class="project-header">
            <div class="short-info">
                <h3>SMART DUSTBIN</h3>
                <p>GPS-based autonomous aerial system.</p>
                <button type="button" class="btn toggle-btn open-btn">SEE DETAILS</button>
            </div>

            <div class="img-wrapper">
                <img src='<%= ResolveUrl("~/images/Smart Bin.jpeg") %>' alt="Smart Bin" class="project-img">
            </div>
        </div>

        <div class="project-body">
            <div class="full-info">
                <p>Drone description...</p>

                <h4>Technologies Used</h4>
                <ul>
                    <li>Flight Controller</li>
                    <li>GPS Module</li>
                    <li>Brushless Motors</li>
                </ul>

                <h4>Achievements</h4>
                <ul>
                    <li>Top 5 UAV Contest</li>
                </ul>

                <button type="button" class="btn toggle-btn close-btn">SEE LESS</button>
            </div>
        </div>
    </div>

    <div class="project-detail-card">

    <div class="project-header">
        <div class="short-info">
            <h3>SMART CAR</h3>
            <p>GPS-based autonomous aerial system.</p>
            <button type="button" class="btn toggle-btn open-btn">SEE DETAILS</button>
        </div>

        <div class="img-wrapper">
            <img src='<%= ResolveUrl("~/images/project4.jpeg") %>' alt="Smart Car" class="project-img">
        </div>
    </div>

    <div class="project-body">
        <div class="full-info">
            <p>Drone description...</p>

            <h4>Technologies Used</h4>
            <ul>
                <li>Flight Controller</li>
                <li>GPS Module</li>
                <li>Brushless Motors</li>
            </ul>

            <h4>Achievements</h4>
            <ul>
                <li>Top 5 UAV Contest</li>
            </ul>

            <button type="button" class="btn toggle-btn close-btn">SEE LESS</button>
        </div>
    </div>
</div>

</section>

    <!-- TECHNOLOGIES -->

    <section class="reveal">

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

    </section>

    <!-- UPCOMING PROJECTS -->

    <section class="reveal">

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

    </section>

    <!-- CONTACT CTA -->

    <section class="reveal">

        <h2>Interested in Building Projects?</h2>

        <p>
            Join HACK KUET and work on exciting engineering
            and robotics projects with fellow enthusiasts.
        </p>

        <button type="button" class="btn" onclick="window.location.href='/pages/Contact.aspx'">
            Join Us
        </button>

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
