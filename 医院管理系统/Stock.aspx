<%@ Page Title="" Language="C#" MasterPageFile="~/Stock.master" AutoEventWireup="true" CodeFile="Stock.aspx.cs" Inherits="Stock" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style6 {
        text-align: center;
    }
    .auto-style7 {
        width: 100%;
    }
    .auto-style8 {
        text-align: left;
    }
    .auto-style9 {
        text-align: right;
        width: 702px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style6">
        <table align="center" class="auto-style7">
            <tr>
                <td class="auto-style9">药品编号：</td>
                <td class="auto-style8"><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">药品名称：</td>
                <td class="auto-style8"><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">生产地址：</td>
                <td class="auto-style8"><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">药品品牌：</td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">药品单价：</td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">药品数量：</td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">生产日期：</td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="选择日期" />
                    <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" Visible="False"></asp:Calendar>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">保质期：</td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                    (输入数字年数)</td>
            </tr>
            <tr>
                <td class="auto-style6" colspan="2">
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="确定" />
                </td>
            </tr>
        </table>
    </p>
</asp:Content>

