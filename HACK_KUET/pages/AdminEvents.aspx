<%@ Page Title="Admin Events" Language="C#"
MasterPageFile="~/Admin.Master"
AutoEventWireup="true"
CodeBehind="AdminEvents.aspx.cs"
Inherits="HACK_KUET.AdminEvents" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<h2>Events Management</h2>

<!-- ADD EVENT FORM -->
<div class="event-card modern-event">

    <h2 class="event-title">➕ Create New Event</h2>

    <div class="form-grid">

        <div class="field">
            <label>Event Title</label>
            <asp:TextBox ID="txtTitle" runat="server" CssClass="input modern-input" placeholder="Enter event title" />
        </div>

        <div class="field">
            <label>Description</label>
            <asp:TextBox ID="txtDescription" runat="server"
                TextMode="MultiLine"
                Rows="4"
                CssClass="input modern-input"
                placeholder="Describe your event..." />
        </div>

        <div class="field checkbox-field">
              <asp:CheckBox ID="chkMultiDay" runat="server" Text=" Multi-day event" />
        </div>

        <div class="row two-cols">

            <div class="field">
                <label>Start Date</label>
                <asp:TextBox ID="txtStartDate" runat="server" TextMode="Date" CssClass="input modern-input" />
            </div>

            <div class="field">
                <label>End Date</label>
                <asp:TextBox ID="txtEndDate" runat="server" TextMode="Date" CssClass="input modern-input" />
            </div>

        </div>

        <div class="field">
            <label>Location</label>
            <asp:TextBox ID="txtLocation" runat="server" CssClass="input modern-input" placeholder="Event location" />
        </div>

        <div class="field">
            <label>Event Image</label>
            <asp:FileUpload ID="fuImage" runat="server" />
        </div>

    </div>

    <!-- CENTER BUTTON -->
    <div class="btn-wrapper">
        <asp:Button ID="btnAddEvent" runat="server"
            Text="Publish Event"
            CssClass="btn modern-btn"
            OnClick="btnAddEvent_Click" />
    </div>

</div>

<!-- GRID -->
<asp:GridView ID="GridViewEvents" runat="server"
    AutoGenerateColumns="False"
    DataKeyNames="Id"
    OnRowCommand="GridViewEvents_RowCommand"
    CssClass="grid">

    <Columns>

        <asp:BoundField DataField="Id" HeaderText="ID">
    <ItemStyle Width="50px" HorizontalAlign="Center" />
</asp:BoundField>

<asp:BoundField DataField="Title" HeaderText="Title">
    <ItemStyle Width="150px" />
</asp:BoundField>

<asp:BoundField DataField="Description" HeaderText="Description">
    <ItemStyle Width="250px" />
</asp:BoundField>

<asp:TemplateField HeaderText="Date">
    <ItemStyle Width="150px" />
    <ItemTemplate>
        <%# Eval("StartDate", "{0:dd MMM yyyy}") %>
        <%# Eval("EndDate") != DBNull.Value
            ? " - " + Eval("EndDate", "{0:dd MMM yyyy}")
            : "" %>
    </ItemTemplate>
</asp:TemplateField>

<asp:BoundField DataField="Location" HeaderText="Location">
    <ItemStyle Width="120px" />
</asp:BoundField>

    </Columns>

</asp:GridView>

</asp:Content>