<%@ Page Title="" Language="C#" MasterPageFile="~/OurSite.Master" AutoEventWireup="true" CodeBehind="Teachers.aspx.cs" Inherits="WebAppAzureSchool.Teachers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style6 {
        width: 187px;
        height: 133px;
        position: absolute;
        top: 112px;
        left: 13px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td>Teachers Details</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" CssClass="auto-style6" style="z-index: 1" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="TeacherId" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="TeacherId" HeaderText="TeacherId" ReadOnly="True" SortExpression="TeacherId" />
                    <asp:BoundField DataField="Teacher_Name" HeaderText="Teacher_Name" SortExpression="Teacher_Name" />
                    <asp:BoundField DataField="TSubject" HeaderText="TSubject" SortExpression="TSubject" />
                    <asp:BoundField DataField="Experience" HeaderText="Experience" SortExpression="Experience" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:RainbowDb1ConnectionString2 %>" DeleteCommand="DELETE FROM [Teachers] WHERE [TeacherId] = @original_TeacherId AND [Teacher_Name] = @original_Teacher_Name AND [TSubject] = @original_TSubject AND (([Experience] = @original_Experience) OR ([Experience] IS NULL AND @original_Experience IS NULL))" InsertCommand="INSERT INTO [Teachers] ([TeacherId], [Teacher_Name], [TSubject], [Experience]) VALUES (@TeacherId, @Teacher_Name, @TSubject, @Experience)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:RainbowDb1ConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [Teachers]" UpdateCommand="UPDATE [Teachers] SET [Teacher_Name] = @Teacher_Name, [TSubject] = @TSubject, [Experience] = @Experience WHERE [TeacherId] = @original_TeacherId AND [Teacher_Name] = @original_Teacher_Name AND [TSubject] = @original_TSubject AND (([Experience] = @original_Experience) OR ([Experience] IS NULL AND @original_Experience IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_TeacherId" Type="Int32" />
                    <asp:Parameter Name="original_Teacher_Name" Type="String" />
                    <asp:Parameter Name="original_TSubject" Type="String" />
                    <asp:Parameter Name="original_Experience" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="TeacherId" Type="Int32" />
                    <asp:Parameter Name="Teacher_Name" Type="String" />
                    <asp:Parameter Name="TSubject" Type="String" />
                    <asp:Parameter Name="Experience" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Teacher_Name" Type="String" />
                    <asp:Parameter Name="TSubject" Type="String" />
                    <asp:Parameter Name="Experience" Type="Int32" />
                    <asp:Parameter Name="original_TeacherId" Type="Int32" />
                    <asp:Parameter Name="original_Teacher_Name" Type="String" />
                    <asp:Parameter Name="original_TSubject" Type="String" />
                    <asp:Parameter Name="original_Experience" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
