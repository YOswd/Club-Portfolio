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

    <!-- FEATURED PROJECTS -->

<section class="reveal">
    <div class="container">
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
                    <p>
A high-speed autonomous robot designed to detect and follow a predefined track
using infrared sensors and PID-based control algorithms. The robot continuously
adjusts motor speed to maintain accuracy and stability while navigating sharp turns.
</p>

<h4>Main Components</h4>
<ul>
    <li>Arduino UNO</li>
    <li>IR Sensor Array</li>
    <li>L298N Motor Driver</li>
    <li>DC Geared Motors</li>
    <li>Li-ion Battery Pack</li>
</ul>

<h4>Features</h4>
<ul>
    <li>Automatic line tracking</li>
    <li>PID speed correction</li>
    <li>High-speed corner handling</li>
    <li>Competition-ready design</li>
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
                    <p>
An intelligent quadcopter capable of autonomous navigation using GPS and onboard
flight controllers. The drone can follow waypoints, stabilize itself, and collect
aerial data for mapping and monitoring applications.
</p>

<h4>Main Components</h4>
<ul>
    <li>Pixhawk Flight Controller</li>
    <li>GPS Module</li>
    <li>Brushless Motors</li>
    <li>ESCs</li>
    <li>LiPo Battery</li>
    <li>Telemetry Module</li>
</ul>

<h4>Features</h4>
<ul>
    <li>Waypoint navigation</li>
    <li>Automatic takeoff and landing</li>
    <li>Real-time telemetry</li>
    <li>GPS stabilization</li>
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
                    <p>Robotic Soccer Competition.</p>
                    <button type="button" class="btn toggle-btn open-btn">SEE DETAILS</button>
                </div>

                <div class="img-wrapper">
                    <img src='<%= ResolveUrl("~/images/soccer.jpg") %>' alt="Soccer Bot" class="project-img">
                </div>
            </div>

            <div class="project-body">
                <div class="full-info">
                    <p>
A manually controlled robotic vehicle developed for robotic soccer competitions.
The robot is optimized for agility, ball control, and quick directional changes
during gameplay.
</p>

<h4>Main Components</h4>
<ul>
    <li>Arduino Nano</li>
    <li>RF Communication Module</li>
    <li>DC Motors</li>
    <li>Motor Driver</li>
    <li>Custom Chassis</li>
</ul>

<h4>Features</h4>
<ul>
    <li>Wireless control</li>
    <li>Fast acceleration</li>
    <li>Precise ball handling</li>
    <li>Competition-grade maneuverability</li>
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
                    <p>3D Printer using Arduino and other components.</p>
                    <button type="button" class="btn toggle-btn open-btn">SEE DETAILS</button>
                </div>

                <div class="img-wrapper">
                    <img src='<%= ResolveUrl("~/images/3D Printer.jpg") %>' alt="3D Printer" class="project-img">
                </div>
            </div>

            <div class="project-body">
                <div class="full-info">
                    <p>
A custom-built FDM 3D printer used for rapid prototyping and fabrication of
robotics components, mechanical parts, and project enclosures.
</p>

<h4>Main Components</h4>
<ul>
    <li>Aluminum Frame</li>
    <li>NEMA 17 Stepper Motors</li>
    <li>RAMPS Controller</li>
    <li>Hotend Extruder</li>
    <li>Heated Print Bed</li>
</ul>

<h4>Features</h4>
<ul>
    <li>PLA and PETG printing</li>
    <li>Custom part fabrication</li>
    <li>High dimensional accuracy</li>
    <li>Low-cost rapid prototyping</li>
</ul>

                    <button type="button" class="btn toggle-btn close-btn">SEE LESS</button>
                </div>
            </div>
        </div>

        <div class="project-detail-card">

            <div class="project-header">
                <div class="short-info">
                    <h3>SMART DUSTBIN</h3>
                    <p>Sensor based dustin system.</p>
                    <button type="button" class="btn toggle-btn open-btn">SEE DETAILS</button>
                </div>

                <div class="img-wrapper">
                    <img src='<%= ResolveUrl("~/images/Smart Bin.jpeg") %>' alt="Smart Bin" class="project-img">
                </div>
            </div>

            <div class="project-body">
                <div class="full-info">
                    <p>
An IoT-enabled waste management system that automatically opens its lid when a
user approaches and monitors garbage levels in real time.
</p>

<h4>Main Components</h4>
<ul>
    <li>ESP32</li>
    <li>Ultrasonic Sensors</li>
    <li>Servo Motor</li>
    <li>Buzzer Module</li>
    <li>Wi-Fi Connectivity</li>
</ul>

<h4>Features</h4>
<ul>
    <li>Touchless operation</li>
    <li>Automatic lid control</li>
    <li>Waste level monitoring</li>
    <li>Smart city integration</li>
</ul>

                    <button type="button" class="btn toggle-btn close-btn">SEE LESS</button>
                </div>
            </div>
        </div>

        <div class="project-detail-card">

        <div class="project-header">
            <div class="short-info">
                <h3>SMART CAR</h3>
                <p>A robotic car.</p>
                <button type="button" class="btn toggle-btn open-btn">SEE DETAILS</button>
            </div>

            <div class="img-wrapper">
                <img src='<%= ResolveUrl("~/images/project4.jpeg") %>' alt="Smart Car" class="project-img">
            </div>
        </div>

        <div class="project-body">
            <div class="full-info">
                <p>
An intelligent robotic vehicle capable of obstacle avoidance, path navigation,
and remote monitoring. Designed as a platform for embedded systems and IoT research.
</p>

<h4>Main Components</h4>
<ul>
    <li>ESP32</li>
    <li>Ultrasonic Sensor</li>
    <li>Motor Driver Module</li>
    <li>DC Motors</li>
    <li>Bluetooth/Wi-Fi Module</li>
</ul>

<h4>Features</h4>
<ul>
    <li>Obstacle detection</li>
    <li>Wireless control</li>
    <li>Autonomous navigation</li>
    <li>Real-time monitoring</li>
</ul>

                <button type="button" class="btn toggle-btn close-btn">SEE LESS</button>
            </div>
        </div>
    </div>
    </div>

            <div class="project-detail-card">

            <div class="project-header">
                <div class="short-info">
                    <h3>FIRE FIGHTING ROBOT</h3>
                    <p>
Autonomous robot designed to detect and extinguish fire in indoor environments.
</p>
                    <button type="button" class="btn toggle-btn open-btn">SEE DETAILS</button>
                </div>

                <div class="img-wrapper">
                    <img src='<%= ResolveUrl("~/images/project6.jpeg") %>' alt="Smart Bin" class="project-img">
                </div>
            </div>

            <div class="project-body">
                <div class="full-info">
                    <p>
The Fire Fighting Robot is an autonomous mobile robot capable of detecting fire
sources using flame sensors and automatically moving toward them. Once the fire
is located, the robot activates a water pump or fan-based extinguishing system
to suppress the flame while keeping a safe distance.
</p>

<h4>Main Components</h4>
<ul>
    <li>Arduino UNO</li>
    <li>Flame Sensors</li>
    <li>Ultrasonic Sensors</li>
    <li>L298N Motor Driver</li>
    <li>DC Geared Motors</li>
    <li>Water Pump Module</li>
    <li>Battery Pack</li>
</ul>

<h4>Features</h4>
<ul>
    <li>Automatic fire detection</li>
    <li>Obstacle avoidance system</li>
    <li>Automatic extinguishing mechanism</li>
    <li>Real-time flame monitoring</li>
</ul>

<h4>Applications</h4>
<ul>
    <li>Industrial safety</li>
    <li>Warehouse monitoring</li>
    <li>Research and education</li>
</ul>

<h4>Achievements</h4>
<ul>
    <li>Developed for autonomous robotics competitions</li>
    <li>Demonstrated successful fire detection and suppression</li>
</ul>

                    <button type="button" class="btn toggle-btn close-btn">SEE LESS</button>
                </div>
            </div>
        </div>

            <div class="project-detail-card">

            <div class="project-header">
                <div class="short-info">
                    <h3>ROBOTIC ARM</h3>
                    <p>
Multi-axis robotic arm capable of performing pick-and-place operations with precision.
</p>
                    <button type="button" class="btn toggle-btn open-btn">SEE DETAILS</button>
                </div>

                <div class="img-wrapper">
                    <img src='<%= ResolveUrl("~/images/project7.jpeg") %>' alt="Smart Bin" class="project-img">
                </div>
            </div>

            <div class="project-body">
                <div class="full-info">
                    <p>
The Robotic Arm is a programmable multi-degree-of-freedom manipulator designed
for object handling, sorting, and automation tasks. It can be controlled through
joysticks, mobile applications, or predefined motion sequences to perform
industrial-style pick-and-place operations.
</p>

<h4>Main Components</h4>
<ul>
    <li>Arduino Mega</li>
    <li>Servo Motors</li>
    <li>Robotic Gripper</li>
    <li>Motor Driver Module</li>
    <li>Power Supply Unit</li>
    <li>Custom Mechanical Structure</li>
</ul>

<h4>Features</h4>
<ul>
    <li>Multiple degrees of freedom</li>
    <li>Object gripping and release</li>
    <li>Programmable motion sequences</li>
    <li>Manual and automatic control modes</li>
</ul>

<h4>Applications</h4>
<ul>
    <li>Industrial automation</li>
    <li>Educational robotics</li>
    <li>Manufacturing processes</li>
    <li>Research laboratories</li>
</ul>

<h4>Achievements</h4>
<ul>
    <li>Successfully performed pick-and-place demonstrations</li>
    <li>Used for robotics training and workshops</li>
</ul>

                    <button type="button" class="btn toggle-btn close-btn">SEE LESS</button>
                </div>
            </div>
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
