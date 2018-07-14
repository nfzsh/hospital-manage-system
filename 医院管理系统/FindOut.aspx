<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor.master" AutoEventWireup="true" CodeFile="FindOut.aspx.cs" Inherits="FindOut" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatColumns="2" AutoPostBack="True">
    <asp:ListItem Value="0">输入情况</asp:ListItem>
    <asp:ListItem Value="1">住院情况</asp:ListItem>
</asp:RadioButtonList>
<br />
开始日期：<asp:TextBox ID="TextBox1" runat="server">2018/7/1</asp:TextBox>
<asp:Button ID="Button6" runat="server" Text="选择日期" OnClick="Button6_Click" />
结束日期：<asp:TextBox ID="TextBox2" runat="server" Height="16px" Width="177px">2018/7/11</asp:TextBox>
<asp:Button ID="Button7" runat="server" Text="选择日期" OnClick="Button7_Click" />
    <br />
    <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [sick] WHERE (([dname] = @dname) AND ([date] &gt; @date) AND ([date] &lt; @date2))">
        <SelectParameters>
            <asp:SessionParameter Name="dname" SessionField="id" Type="String" />
            <asp:ControlParameter ControlID="TextBox1" Name="date" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox2" Name="date2" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [sick] WHERE (([date] &lt;= @date2) AND ([odate] &gt;= @odate) AND ([dname] = @dname))">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="date2" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox2" Name="odate" PropertyName="Text" Type="String" />
            <asp:CookieParameter CookieName="id" Name="dname" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [sick] WHERE (([dname] = @dname) AND ([date] &lt;= @date) AND ([odate] &gt;= @odate))">
        <SelectParameters>
            <asp:SessionParameter Name="dname" SessionField="id" Type="String" />
            <asp:Parameter DefaultValue="2018/7/1" Name="date" Type="String" />
            <asp:Parameter DefaultValue="2018/7/11" Name="odate" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource3">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="kname" HeaderText="kname" SortExpression="kname" />
            <asp:BoundField DataField="dname" HeaderText="dname" SortExpression="dname" />
            <asp:CheckBoxField DataField="mark" HeaderText="mark" SortExpression="mark" />
            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
            <asp:BoundField DataField="odate" HeaderText="odate" SortExpression="odate" />
            <asp:CheckBoxField DataField="flag" HeaderText="flag" SortExpression="flag" />
        </Columns>
    </asp:GridView>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="查询" />
</asp:Content>

