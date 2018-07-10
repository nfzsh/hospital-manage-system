<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor.master" AutoEventWireup="true" CodeFile="Doctor.aspx.cs" Inherits="Doctor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="flag">
        <Columns>
<asp:BoundField DataField="name" HeaderText="患者姓名" SortExpression="name">
</asp:BoundField>
            <asp:BoundField DataField="date" HeaderText="就诊日期" SortExpression="date">
            </asp:BoundField>
            <asp:CheckBoxField DataField="flag" HeaderText="是否就诊" SortExpression="flag">
            </asp:CheckBoxField>
            <asp:CheckBoxField DataField="mark" HeaderText="是否缴费" SortExpression="mark">
            </asp:CheckBoxField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [sick]" DeleteCommand="DELETE FROM [sick] WHERE [Id] = @original_Id" InsertCommand="INSERT INTO [sick] ([Id], [name], [kname], [dname], [mark], [date], [flag]) VALUES (@Id, @name, @kname, @dname, @mark, @date, @flag)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [sick] SET [name] = @name, [kname] = @kname, [dname] = @dname, [mark] = @mark, [date] = @date, [flag] = @flag WHERE [Id] = @original_Id">
        <DeleteParameters>
            <asp:Parameter Name="original_Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Id" Type="Int32" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="kname" Type="String" />
            <asp:Parameter Name="dname" Type="String" />
            <asp:Parameter Name="mark" Type="Boolean" />
            <asp:Parameter Name="date" Type="String" />
            <asp:Parameter Name="flag" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="flag" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

