<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="HACK_KUET.Gallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <section class="page-hero">
    <h1>Gallery</h1>
    <p>Memories, Competitions & Workshops</p>
</section>

<section>

    <h2>KUET BITFEST 2025</h2>

    <div class="gallery-grid">
       <img src='<%= ResolveUrl("~/images/bitfest1.jpg") %>'>
       <img src='<%= ResolveUrl("~/images/bitfest2.jpeg") %>'>
       <img src='<%= ResolveUrl("~/images/bitfest3.jpeg") %>'>
       <img src='<%= ResolveUrl("~/images/bitfest4.jpeg") %>'>
       <img src='<%= ResolveUrl("~/images/bitfest5.jpeg") %>'>
       <img src='<%= ResolveUrl("~/images/bitfest6.jpeg") %>'>
       <img src='<%= ResolveUrl("~/images/bitfest7.jpeg") %>'>
       <img src='<%= ResolveUrl("~/images/bitfest8.jpeg") %>'>
       <img src='<%= ResolveUrl("~/images/bitfest9.jpeg") %>'>
       <img src='<%= ResolveUrl("~/images/bitfest10.jpeg") %>'>
       <img src='<%= ResolveUrl("~/images/bitfest11.jpeg") %>'>
       <img src='<%= ResolveUrl("~/images/bitfest12.jpeg") %>'>
       <img src='<%= ResolveUrl("~/images/bitfest13.jpeg") %>'>
    </div>

</section>

<section>

    <h2>Workshop</h2>

    <div class="gallery-grid">
       <img src='<%= ResolveUrl("~/images/workshop1.jpg") %>'>
       <img src='<%= ResolveUrl("~/images/workshop2.jpeg") %>'>
       <img src='<%= ResolveUrl("~/images/workshop3.jpeg") %>'>
       <img src='<%= ResolveUrl("~/images/workshop4.jpeg") %>'>
       <img src='<%= ResolveUrl("~/images/workshop5.jpeg") %>'>
       <img src='<%= ResolveUrl("~/images/workshop6.jpeg") %>'>
       <img src='<%= ResolveUrl("~/images/workshop7.jpeg") %>'>
       <img src='<%= ResolveUrl("~/images/workshop8.jpeg") %>'>
       <img src='<%= ResolveUrl("~/images/workshop9.jpeg") %>'>
       <img src='<%= ResolveUrl("~/images/workshop10.jpeg") %>'>
    </div>

</section>

<section>

    <h2>Competition Highlights</h2>

    <div class="gallery-masonry">

        <div class="large">
            <img src='<%= ResolveUrl("~/images/competition1.jpeg") %>'>
        </div>

        <div>
           <img src='<%= ResolveUrl("~/images/competition2.jpeg") %>'>
           <img src='<%= ResolveUrl("~/images/competition3.jpeg") %>'>
        </div>

    </div>

    <div class="gallery-grid">
        <img src='<%= ResolveUrl("~/images/competition4.jpeg") %>'>
        <img src='<%= ResolveUrl("~/images/competition5.jpeg") %>'>
    </div>

</section> 

</section>

<section>

    <h2>Projects</h2>

    <div class="gallery-grid">
      <img src='<%= ResolveUrl("~/images/project1.jpeg") %>'>
      <img src='<%= ResolveUrl("~/images/project2.jpeg") %>'>
      <img src='<%= ResolveUrl("~/images/project3.jpeg") %>'>
      <img src='<%= ResolveUrl("~/images/project4.jpeg") %>'>
      <img src='<%= ResolveUrl("~/images/project5.jpeg") %>'>
    </div>

</section>
</asp:Content>