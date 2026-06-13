<%@ Page Title="Admin Events" Language="C#"
MasterPageFile="~/Admin.Master"
AutoEventWireup="true"
CodeBehind="AdminEvents.aspx.cs"
Inherits="HACK_KUET.AdminEvents" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<h2>Events Management</h2>

<!-- ADD EVENT FORM -->
<div class="event-card">

    <h3>➕ Add New Event</h3>

    <asp:TextBox ID="txtTitle" runat="server" placeholder="Event Title" CssClass="input" />
    <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" placeholder="Event Description" CssClass="input" />

    <div class="row">
        <asp:CheckBox ID="chkMultiDay" runat="server" Text="Multi-day event" />
    </div>

    <div class="row">
        Start:
        <asp:TextBox ID="txtStartDate" runat="server" TextMode="Date" CssClass="input-small" />

        End:
        <asp:TextBox ID="txtEndDate" runat="server" TextMode="Date" CssClass="input-small" />
    </div>

    <asp:TextBox ID="txtLocation" runat="server" placeholder="Location" CssClass="input" />

    <asp:FileUpload ID="fuImage" runat="server" />

    <asp:Button ID="btnAddEvent" runat="server" Text="Add Event"
        CssClass="btn" OnClick="btnAddEvent_Click" />

</div>

<!-- GRID -->
<asp:GridView ID="GridViewEvents" runat="server"
    AutoGenerateColumns="False"
    DataKeyNames="Id"
    OnRowCommand="GridViewEvents_RowCommand"
    CssClass="grid">

    <Columns>

        <asp:BoundField DataField="Id" HeaderText="ID" />
        <asp:BoundField DataField="Title" HeaderText="Title" />
        <asp:BoundField DataField="Description" HeaderText="Description" />
        <asp:TemplateField HeaderText="Date">
        <ItemTemplate>
        <%# Eval("StartDate", "{0:dd MMM yyyy}") %>
        <%# Eval("EndDate") != DBNull.Value
            ? " - " + Eval("EndDate", "{0:dd MMM yyyy}")
            : "" %>
        </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="Location" HeaderText="Location" />

        <asp:TemplateField HeaderText="Action">
            <ItemTemplate>
                <asp:Button ID="btnDelete" runat="server"
                    Text="Delete"
                    CommandName="DeleteEvent"
                    CommandArgument='<%# Eval("Id") %>'
                    CssClass="delete-btn"
                    OnClientClick="return confirm('Delete this event?');" />
            </ItemTemplate>
        </asp:TemplateField>

    </Columns>

</asp:GridView>

</asp:Content>