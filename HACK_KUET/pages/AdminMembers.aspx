<%@ Page Title="Admin Members" Language="C#"
MasterPageFile="~/Admin.Master"
AutoEventWireup="true"
CodeBehind="AdminMembers.aspx.cs"
Inherits="HACK_KUET.AdminMembers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<h2>Members Management</h2>

<!-- ADD FORM -->
<div class="event-card modern-member">

    <h2 class="event-title">👥 Add New Member</h2>

    <div class="form-grid">

        <div class="field">
            <label>Member Name</label>
            <asp:TextBox ID="txtName" runat="server"
                CssClass="input modern-input"
                placeholder="Enter member name" />
        </div>

        <div class="field">
            <label>Position</label>
            <asp:TextBox ID="txtPosition" runat="server"
                CssClass="input modern-input"
                placeholder="e.g. President / Developer / Member" />
        </div>

        <div class="field">
            <label>Image URL</label>
            <asp:TextBox ID="txtImageUrl" runat="server"
                CssClass="input modern-input"
                placeholder="Paste image URL here" />
        </div>

    </div>

    <!-- CENTER BUTTON -->
    <div class="btn-wrapper">
        <asp:Button ID="btnAdd" runat="server"
            Text="Add Member"
            OnClick="btnAdd_Click"
            CssClass="btn modern-btn" />
    </div>

</div>

<!-- GRID -->
<asp:GridView ID="GridViewMembers" runat="server"
    AutoGenerateColumns="False"
    DataKeyNames="Id"
    CssClass="grid"
    Style="width:100%; table-layout: fixed;">

    <Columns>

        <asp:BoundField DataField="Id" HeaderText="ID">
    <ItemStyle Width="60px" HorizontalAlign="Center" />
</asp:BoundField>

<asp:BoundField DataField="Name" HeaderText="Name">
    <ItemStyle Width="180px" />
</asp:BoundField>

<asp:BoundField DataField="Position" HeaderText="Position">
    <ItemStyle Width="180px" />
</asp:BoundField>

<asp:TemplateField HeaderText="Image">
    <ItemStyle Width="100px" HorizontalAlign="Center" />
    <ItemTemplate>
        <div style="display:flex; justify-content:center; align-items:center;">
            <img src='<%# Eval("ImageUrl") %>'
                 style="width:50px;height:50px;border-radius:50%;object-fit:cover;" />
        </div>
    </ItemTemplate>
</asp:TemplateField>

        <asp:TemplateField HeaderText="Action">
            <ItemTemplate>
                <asp:Button ID="btnDelete" runat="server"
                    Text="Delete"
                    CommandName="DeleteMember"
                    CommandArgument='<%# Eval("Id") %>'
                    CssClass="delete-btn"
                    OnClientClick="return confirm('Delete this member?');" />
            </ItemTemplate>
        </asp:TemplateField>

    </Columns>

</asp:GridView>

</asp:Content>