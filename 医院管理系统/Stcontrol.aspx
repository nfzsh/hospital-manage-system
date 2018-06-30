<%@ Page Title="" Language="C#" MasterPageFile="~/Stock.master" AutoEventWireup="true" CodeFile="Stcontrol.aspx.cs" Inherits="Stcontrol" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [medic]"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="药品编号" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="name" HeaderText="药品名称" SortExpression="name" />
                    <asp:BoundField DataField="addreess" HeaderText="产地" SortExpression="addreess" />
                    <asp:BoundField DataField="logo" HeaderText="厂家" SortExpression="logo" />
                    <asp:BoundField DataField="price" HeaderText="单价" SortExpression="price" />
                    <asp:BoundField DataField="no" HeaderText="数量" SortExpression="no" />
                    <asp:BoundField DataField="date" HeaderText="生产日期" SortExpression="date" />
                    <asp:BoundField DataField="sdate" HeaderText="保质期" SortExpression="sdate" />
                </Columns>
            </asp:GridView>
            修改单价/删除：<br />
    药品编号：<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Id" DataValueField="Id">
    </asp:DropDownList>
    <br />
    药品单价：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    （留空则确认后删除该项）<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="确定" />
</asp:Content>

