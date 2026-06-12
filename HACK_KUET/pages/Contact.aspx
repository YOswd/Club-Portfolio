<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="HACK_KUET.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <section class="page-hero">
    <h1>Contact Us</h1>
    <p>Get connected with HACK KUET</p>
</section>

<section>

    <div class="contact-container">

        <!-- Left Side -->

        <div class="contact-info">

            <h2>Get In Touch</h2>

            <p>
                Interested in robotics, embedded systems,
                IoT or hardware projects?
                Join our community.
            </p>

            <div class="contact-item">
                <i class="fas fa-envelope"></i>
                <span>hack@kuet.ac.bd</span>
            </div>

            <div class="contact-item">
                <i class="fas fa-phone"></i>
                <span>+880 1XXXXXXXXX</span>
            </div>

            <div class="contact-item">
                <i class="fas fa-location-dot"></i>
                <span>Khulna University of Engineering & Technology</span>
            </div>

            <div class="social-links">

                <a href="#"><i class="fab fa-facebook"></i></a>
                <a href="#"><i class="fab fa-youtube"></i></a>

            </div>

        </div>

        <!-- Right Side -->

        <div class="contact-form">

    <h2>Send Message</h2>

    <asp:TextBox ID="txtName" runat="server" placeholder="Full Name" CssClass="input"></asp:TextBox>

    <asp:TextBox ID="txtEmail" runat="server" placeholder="Email Address" CssClass="input"></asp:TextBox>

    <asp:TextBox ID="txtSubject" runat="server" placeholder="Subject" CssClass="input"></asp:TextBox>

    <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine"
        placeholder="Write your message here..." CssClass="input"></asp:TextBox>

    <asp:Button ID="btnSend" runat="server" Text="Send Message"
        CssClass="btn" OnClick="btnSend_Click" />

      </div>

    </div>

</section>
</asp:Content>