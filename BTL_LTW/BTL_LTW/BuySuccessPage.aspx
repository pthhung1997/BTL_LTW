<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="BuySuccessPage.aspx.cs" Inherits="BTL_LTW.BuySuccessPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <form runat="server" id="formBuySuccess">
        <div class="container" style="text-align:center;">
            <img src="image/thanksoder.jpg" style="margin-top: 60px;"/><br />
            <asp:Button ID="btnHomePage" runat="server" Text="Về trang chủ" class="btn btn-link" OnClick="btnHomePage_Click" />
        </div>
    </form>
</asp:Content>
