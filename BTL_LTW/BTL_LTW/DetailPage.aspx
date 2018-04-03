<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="DetailPage.aspx.cs" Inherits="BTL_LTW.DetailPage" %>

<asp:Content ID="DetailPage" ContentPlaceHolderID="content" runat="server">
    <form id="forDetail" runat="server">
        <asp:Image ID="img" runat="server" /><br />
        <asp:Label ID="lblName" runat="server" Text=""></asp:Label><br />
        <asp:Label ID="lblDescribe" runat="server" Text=""></asp:Label><br />
        <asp:Button ID="btnAddToCarts" runat="server" Text="Thêm vào giỏ hàng" OnClick="btnAddToCarts_Click" />
    </form>
</asp:Content>
