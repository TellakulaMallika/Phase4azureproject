<%@ Page Title="" Language="C#" MasterPageFile="~/OurSite.Master" AutoEventWireup="true" CodeBehind="Students.aspx.cs" Inherits="WebAppAzureSchool.Students" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style6 {
        width: 187px;
        height: 133px;
        position: absolute;
        top: 108px;
        left: 13px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td>Student Details<asp:GridView ID="GridView1" runat="server" CssClass="auto-style6" style="z-index: 1" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="Student_Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Student_Id" HeaderText="Student_Id" ReadOnly="True" SortExpression="Student_Id" />
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                <asp:BoundField DataField="Student_Address" HeaderText="Student_Address" SortExpression="Student_Address" />
                <asp:BoundField DataField="class_Id" HeaderText="class_Id" SortExpression="class_Id" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:RainbowDb1ConnectionString %>" DeleteCommand="DELETE FROM [Students] WHERE [Student_Id] = @original_Student_Id AND [FirstName] = @original_FirstName AND [LastName] = @original_LastName AND (([Age] = @original_Age) OR ([Age] IS NULL AND @original_Age IS NULL)) AND [Student_Address] = @original_Student_Address AND (([class_Id] = @original_class_Id) OR ([class_Id] IS NULL AND @original_class_Id IS NULL))" InsertCommand="INSERT INTO [Students] ([Student_Id], [FirstName], [LastName], [Age], [Student_Address], [class_Id]) VALUES (@Student_Id, @FirstName, @LastName, @Age, @Student_Address, @class_Id)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:RainbowDb1ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Students]" UpdateCommand="UPDATE [Students] SET [FirstName] = @FirstName, [LastName] = @LastName, [Age] = @Age, [Student_Address] = @Student_Address, [class_Id] = @class_Id WHERE [Student_Id] = @original_Student_Id AND [FirstName] = @original_FirstName AND [LastName] = @original_LastName AND (([Age] = @original_Age) OR ([Age] IS NULL AND @original_Age IS NULL)) AND [Student_Address] = @original_Student_Address AND (([class_Id] = @original_class_Id) OR ([class_Id] IS NULL AND @original_class_Id IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_Student_Id" Type="Int32" />
                    <asp:Parameter Name="original_FirstName" Type="String" />
                    <asp:Parameter Name="original_LastName" Type="String" />
                    <asp:Parameter Name="original_Age" Type="Int32" />
                    <asp:Parameter Name="original_Student_Address" Type="String" />
                    <asp:Parameter Name="original_class_Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Student_Id" Type="Int32" />
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="Age" Type="Int32" />
                    <asp:Parameter Name="Student_Address" Type="String" />
                    <asp:Parameter Name="class_Id" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="Age" Type="Int32" />
                    <asp:Parameter Name="Student_Address" Type="String" />
                    <asp:Parameter Name="class_Id" Type="Int32" />
                    <asp:Parameter Name="original_Student_Id" Type="Int32" />
                    <asp:Parameter Name="original_FirstName" Type="String" />
                    <asp:Parameter Name="original_LastName" Type="String" />
                    <asp:Parameter Name="original_Age" Type="Int32" />
                    <asp:Parameter Name="original_Student_Address" Type="String" />
                    <asp:Parameter Name="original_class_Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
