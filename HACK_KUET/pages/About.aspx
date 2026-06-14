<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="HACK_KUET.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <!-- HERO -->
    <section class="page-hero">
        <h1>About Us</h1>
        <p>Empowering Innovation Through Robotics, Hardware & Emerging Technologies</p>
    </section>

    <!-- WHO WE ARE -->
    <section class="reveal">
        <div class="container">

            <h2>Who We Are</h2>

            <p>
                HACK KUET (Hardware Acceleration Club of KUET) is a student-led
                technology and innovation club dedicated to robotics, embedded
                systems, Internet of Things (IoT), automation, and hardware
                development. The club provides a collaborative platform where
                students can transform ideas into practical engineering solutions
                through hands-on learning and project-based activities.
            </p>

            <p>
                We believe that innovation grows through experimentation.
                By combining creativity with engineering knowledge, our members
                work on real-world projects, participate in competitions,
                organize workshops, and continuously explore emerging technologies.
            </p>

        </div>
    </section>

    <!-- MISSION -->
    <section class="reveal">
        <div class="container">

            <h2>Our Mission</h2>

            <div class="grid">

                <div class="card">
                    <h3>Learn</h3>
                    <p>
                        Provide practical learning opportunities in robotics,
                        electronics, embedded systems, and programming through
                        workshops, training sessions, and mentorship.
                    </p>
                </div>

                <div class="card">
                    <h3>Build</h3>
                    <p>
                        Encourage members to design and develop innovative
                        engineering projects that solve real-world challenges.
                    </p>
                </div>

                <div class="card">
                    <h3>Compete</h3>
                    <p>
                        Prepare students for national and international
                        competitions while fostering teamwork, leadership,
                        and technical excellence.
                    </p>
                </div>

            </div>

        </div>
    </section>

    <!-- WHAT WE DO -->
    <section class="reveal">
        <div class="container">

            <h2>What We Do</h2>

            <div class="grid">

                <div class="card">
                    <h3>Robotics Development</h3>
                    <p>
                        Design and build autonomous robots, competition robots,
                        and intelligent robotic systems.
                    </p>
                </div>

                <div class="card">
                    <h3>Embedded Systems</h3>
                    <p>
                        Develop microcontroller-based solutions using Arduino,
                        ESP32, STM32, and other embedded platforms.
                    </p>
                </div>

                <div class="card">
                    <h3>IoT Projects</h3>
                    <p>
                        Create smart devices and automation systems using
                        sensors, wireless communication, and cloud technologies.
                    </p>
                </div>

                <div class="card">
                    <h3>Workshops & Training</h3>
                    <p>
                        Organize technical workshops, beginner training sessions,
                        and skill development programs for students.
                    </p>
                </div>

            </div>

        </div>
    </section>

    <!-- CORE VALUES -->
    <section class="reveal">
        <div class="container">

            <h2>Our Core Values</h2>

            <div class="grid">

                <div class="card">
                    <h3>Innovation</h3>
                    <p>
                        Encouraging creative thinking and technological exploration.
                    </p>
                </div>

                <div class="card">
                    <h3>Collaboration</h3>
                    <p>
                        Working together to achieve greater results and share knowledge.
                    </p>
                </div>

                <div class="card">
                    <h3>Excellence</h3>
                    <p>
                        Striving for quality, precision, and continuous improvement.
                    </p>
                </div>

                <div class="card">
                    <h3>Leadership</h3>
                    <p>
                        Developing future engineers, innovators, and technology leaders.
                    </p>
                </div>

            </div>

        </div>
    </section>

    <!-- VISION -->
    <section class="reveal">
        <div class="container">

            <h2>Our Vision</h2>

            <p>
                To become one of the leading robotics and hardware innovation
                communities in Bangladesh by nurturing skilled engineers,
                promoting technological creativity, and contributing to the
                advancement of science, engineering, and innovation.
            </p>

        </div>
    </section>

    <!-- WHY JOIN -->
    <section class="reveal">
        <div class="container">

            <h2>Why Join HACK KUET?</h2>

            <div class="grid">

                <div class="card">
                    <h3>Hands-On Experience</h3>
                    <p>
                        Gain practical engineering skills by working on
                        real projects and prototypes.
                    </p>
                </div>

                <div class="card">
                    <h3>Technical Growth</h3>
                    <p>
                        Learn modern technologies and industry-relevant skills
                        from experienced members and mentors.
                    </p>
                </div>

                <div class="card">
                    <h3>Competition Opportunities</h3>
                    <p>
                        Represent KUET in robotics, IoT, and engineering
                        competitions across the country.
                    </p>
                </div>

                <div class="card">
                    <h3>Networking</h3>
                    <p>
                        Connect with passionate students, alumni,
                        and technology enthusiasts.
                    </p>
                </div>

            </div>

        </div>
    </section>

    <!-- CALL TO ACTION -->
    <section class="reveal">
        <div class="container">

            <h2>Join Our Journey</h2>

            <p>
                Whether you are a beginner eager to learn or an experienced
                innovator looking to build impactful solutions, HACK KUET
                welcomes you to become part of a community where creativity,
                technology, and engineering come together.
            </p>

            <br />

            <button type="button" class="btn"
            onclick="window.location.href='Contact.aspx'">JOIN HACK KUET</button>

        </div>
    </section>

</asp:Content>