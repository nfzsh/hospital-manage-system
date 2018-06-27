<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style4 {
            text-align: left;
            background-color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="auto-style4">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [userinfo] WHERE ([flag] = @flag)">
    <SelectParameters>
        <asp:Parameter DefaultValue="false" Name="flag" Type="Boolean" />
    </SelectParameters>
</asp:SqlDataSource>
    <asp:CheckBoxList ID="CheckBoxList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Id" DataValueField="Id" RepeatColumns="5" BackColor="White" CssClass="auto-style3" Font-Size="Medium" ForeColor="Black" AutoPostBack="True">
    </asp:CheckBoxList>
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="确定" Height="30px" Width="64px" />
    <br />
</div>
</asp:Content>

