<%@ Page Title="Admin Events" Language="C#"
MasterPageFile="~/Admin.Master"
AutoEventWireup="true"
CodeBehind="AdminEvents.aspx.cs"
Inherits="HACK_KUET.AdminEvents" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<h2>Events Management</h2>

<!-- ADD EVENT FORM -->
<div style="background:white;padding:20px;margin-bottom:20px;border-radius:10px;">

    <asp:TextBox ID="txtTitle" runat="server" placeholder="Event Title" CssClass="input" />
    <br /><br />

    <asp:TextBox ID="txtDescription" runat="server"
        TextMode="MultiLine"
        placeholder="Event Description"
        CssClass="input" />

    <br /><br />

    <asp:TextBox ID="txtDate" runat="server"
        placeholder="Event Date (yyyy-mm-dd)" CssClass="input" />

    <br /><br />

    <asp:TextBox ID="txtLocation" runat="server"
        placeholder="Location" CssClass="input" />

    <br /><br />

    <asp:Button ID="btnAddEvent" runat="server"
        Text="Add Event"
        CssClass="btn"
        OnClick="btnAddEvent_Click" />

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
        <asp:BoundField DataField="EventDate" HeaderText="Date" />
        <asp:BoundField DataField="Location" HeaderText="Location" />
        <asp:BoundField DataField="CreatedAt" HeaderText="Created" />

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