<%@ Page Title="" Language="C#" MasterPageFile="~/Charge.master" AutoEventWireup="true" CodeFile="Charge.aspx.cs" Inherits="Charge" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="auto-style6">
        患者姓名：<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="Id" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem Enabled="False" Selected="True">请选择...</asp:ListItem>
        </asp:DropDownList>
        <br />
        应缴金额：<asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
        <asp:Button ID="Button6" runat="server" OnClick="Button6_Click1" Text="确定" />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [name] FROM [sick] WHERE ([mark] = @mark)">
            <SelectParameters>
                <asp:Parameter DefaultValue="false" Name="mark" Type="Boolean" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

