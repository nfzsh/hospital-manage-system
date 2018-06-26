<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddUser.aspx.cs" Inherits="AddUser" %>

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
        姓名：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </p>
    <p class="auto-style5">
        科室：<asp:DropDownList ID="DropDownList1" runat="server" Width="160px" Height="23px">
            <asp:ListItem>普通外科</asp:ListItem>
            <asp:ListItem>库存管理</asp:ListItem>
            <asp:ListItem>神经外科</asp:ListItem>
            <asp:ListItem>急诊</asp:ListItem>
            <asp:ListItem>光学影像</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p class="auto-style5">
        密码：<asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
    </p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [userinfo]"></asp:SqlDataSource>
    <p class="auto-style5">
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="确定" />
    </p>
</asp:Content>

