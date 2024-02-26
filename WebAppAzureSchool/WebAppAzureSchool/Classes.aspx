<%@ Page Title="" Language="C#" MasterPageFile="~/OurSite.Master" AutoEventWireup="true" CodeBehind="Classes.aspx.cs" Inherits="WebAppAzureSchool.Classes" %>
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
        <td>Classes Details<asp:GridView ID="GridView1" runat="server" CssClass="auto-style6" style="z-index: 1" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="classId" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="classId" HeaderText="classId" ReadOnly="True" SortExpression="classId" />
                <asp:BoundField DataField="ClassName" HeaderText="ClassName" SortExpression="ClassName" />
                <asp:BoundField DataField="SeatsCount" HeaderText="SeatsCount" SortExpression="SeatsCount" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:RainbowDb1ConnectionString3 %>" DeleteCommand="DELETE FROM [Classes] WHERE [classId] = @original_classId AND [ClassName] = @original_ClassName AND (([SeatsCount] = @original_SeatsCount) OR ([SeatsCount] IS NULL AND @original_SeatsCount IS NULL))" InsertCommand="INSERT INTO [Classes] ([classId], [ClassName], [SeatsCount]) VALUES (@classId, @ClassName, @SeatsCount)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:RainbowDb1ConnectionString3.ProviderName %>" SelectCommand="SELECT * FROM [Classes]" UpdateCommand="UPDATE [Classes] SET [ClassName] = @ClassName, [SeatsCount] = @SeatsCount WHERE [classId] = @original_classId AND [ClassName] = @original_ClassName AND (([SeatsCount] = @original_SeatsCount) OR ([SeatsCount] IS NULL AND @original_SeatsCount IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_classId" Type="Int32" />
                    <asp:Parameter Name="original_ClassName" Type="String" />
                    <asp:Parameter Name="original_SeatsCount" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="classId" Type="Int32" />
                    <asp:Parameter Name="ClassName" Type="String" />
                    <asp:Parameter Name="SeatsCount" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ClassName" Type="String" />
                    <asp:Parameter Name="SeatsCount" Type="Int32" />
                    <asp:Parameter Name="original_classId" Type="Int32" />
                    <asp:Parameter Name="original_ClassName" Type="String" />
                    <asp:Parameter Name="original_SeatsCount" Type="Int32" />
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
