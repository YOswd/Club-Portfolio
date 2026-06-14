<%@ Page Title="Admin Projects" Language="C#"
MasterPageFile="~/Admin.Master"
AutoEventWireup="true"
CodeBehind="AdminProjects.aspx.cs"
Inherits="HACK_KUET.AdminProjects" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<h2>Projects Management</h2>

<!-- FORM -->
<div class="event-card modern-project">

    <h2 class="event-title">📁 Add / Edit Project</h2>

    <div class="form-grid">

        <div class="field">
            <label>Title</label>
            <asp:TextBox ID="txtTitle" runat="server" CssClass="input modern-input" />
        </div>

        <div class="field">
            <label>Short Description</label>
            <asp:TextBox ID="txtShort" runat="server" CssClass="input modern-input" />
        </div>

        <div class="field">
            <label>Full Description</label>
            <asp:TextBox ID="txtFull" runat="server" TextMode="MultiLine" Rows="4" CssClass="input modern-input" />
        </div>

        <div class="field">
            <label>Image URL</label>
            <asp:TextBox ID="txtImage" runat="server" CssClass="input modern-input" />
        </div>

        <div class="field">
            <label>Category</label>
            <asp:TextBox ID="txtCategory" runat="server" CssClass="input modern-input" />
        </div>

        <div class="field">
            <asp:CheckBox ID="chkFeatured" runat="server" Text=" Featured Project" />
        </div>

    </div>

    <div class="btn-wrapper">
        <asp:Button ID="btnSave" runat="server"
            Text="Add Project"
            CssClass="btn modern-btn"
            OnClick="btnSave_Click" />
    </div>

</div>

<!-- GRID -->
<asp:GridView ID="GridViewProjects" runat="server"
    AutoGenerateColumns="False"
    DataKeyNames="ProjectID"
    CssClass="grid"
    OnRowCommand="GridViewProjects_RowCommand">

    <Columns>

        <asp:BoundField DataField="ProjectID" HeaderText="ID" />

        <asp:BoundField DataField="Title" HeaderText="Title" />

        <asp:BoundField DataField="Category" HeaderText="Category" />

        <asp:TemplateField HeaderText="Featured">
            <ItemTemplate>
                <%# (bool)Eval("IsFeatured") ? "Yes" : "No" %>
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Action">
            <ItemTemplate>

                <div class="action-buttons">
    <asp:Button 
        ID="btnEdit" 
        runat="server"
        Text="Edit"
        CssClass="btn-edit"
        CommandName="EditProject"
        CommandArgument='<%# Eval("ProjectID") %>' />

    <asp:Button 
        ID="btnDelete" 
        runat="server"
        Text="Delete"
        CssClass="btn-delete"
        CommandName="DeleteProject"
        CommandArgument='<%# Eval("ProjectID") %>'
        OnClientClick="return confirm('Delete this event?');" />

</div>

            </ItemTemplate>
        </asp:TemplateField>

    </Columns>

</asp:GridView>

</asp:Content>