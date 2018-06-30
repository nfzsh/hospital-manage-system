<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor.master" AutoEventWireup="true" CodeFile="Doctor.aspx.cs" Inherits="Doctor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="name" HeaderText="患者姓名" SortExpression="name">
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="date" HeaderText="挂号日期" SortExpression="date">
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:CheckBoxField DataField="flag" HeaderText="是否就诊" SortExpression="flag">
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:CheckBoxField>
            <asp:CheckBoxField DataField="mark" HeaderText="是否付费" SortExpression="mark">
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:CheckBoxField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [name], [date], [flag], [mark] FROM [sick]"></asp:SqlDataSource>
</asp:Content>

