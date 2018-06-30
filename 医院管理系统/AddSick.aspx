<%@ Page Title="" Language="C#" MasterPageFile="~/Charge.master" AutoEventWireup="true" CodeFile="AddSick.aspx.cs" Inherits="AddSick" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style6 {
        width: 100%;
    }
    .auto-style7 {
        text-align: right;
    }
    .auto-style8 {
        text-align: left;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style6">
    <tr>
        <td class="auto-style7">身份证号：</td>
        <td class="auto-style8">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">姓名：</td>
        <td class="auto-style8">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">科室：</td>
        <td class="auto-style8">
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="kname" DataValueField="kname" AutoPostBack="True">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [kname] FROM [userinfo] WHERE ([kname] &lt;&gt; @kname) group by [kname]">
                <SelectParameters>
                    <asp:Parameter DefaultValue="库存管理" Name="kname" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">医生：</td>
        <td class="auto-style8">
            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="name" DataValueField="Id" AutoPostBack="True">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [name] FROM [userinfo] WHERE ([kname] = @kname)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="kname" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style8">
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="确定" />
        </td>
    </tr>
</table>
</asp:Content>

