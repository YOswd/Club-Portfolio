<%@ Page Title="Admin Members" Language="C#"
MasterPageFile="~/Admin.Master"
AutoEventWireup="true"
CodeBehind="AdminMembers.aspx.cs"
Inherits="HACK_KUET.AdminMembers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<h2>Members Management</h2>

<!-- ADD FORM -->
<div style="background:white;padding:20px;margin-bottom:20px;border-radius:10px;">

    <asp:TextBox ID="txtName" runat="server" />
<asp:TextBox ID="txtPosition" runat="server" />
<asp:TextBox ID="txtImageUrl" runat="server" />

    <asp:Button ID="btnAdd" runat="server" Text="Add Member"
        OnClick="btnAdd_Click" CssClass="btn" />

</div>

<!-- GRID -->
<asp:GridView ID="GridViewMembers" runat="server"
    AutoGenerateColumns="False"
    DataKeyNames="Id"
    OnRowCommand="GridViewMembers_RowCommand">

    <Columns>

        <asp:BoundField DataField="Id" HeaderText="ID" />

        <asp:BoundField DataField="Name" HeaderText="Name" />

        <asp:BoundField DataField="Position" HeaderText="Position" />

        <asp:BoundField DataField="ImageUrl" HeaderText="Image" />

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