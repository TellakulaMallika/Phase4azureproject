<%@ Page Title="" Language="C#" MasterPageFile="~/OurSite.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebAppAzureSchool.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            position: absolute;
            top: 144px;
            left: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Welcome to Rainbow School Management!!!</h3>
    <asp:Image ID="Image1" runat="server" CssClass="auto-style6" ImageUrl="~/Images/Kids.jpg" style="z-index: 1" />
    <p>&nbsp;</p>
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
