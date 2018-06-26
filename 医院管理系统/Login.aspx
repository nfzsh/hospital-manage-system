<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style5">
        编号：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </p>
    <p class="auto-style5">
        密码：<asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
    </p>
    <p class="auto-style5">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [userinfo]"></asp:SqlDataSource>
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="确定" />
    </p>
</asp:Content>

