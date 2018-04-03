<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="BuySuccessPage.aspx.cs" Inherits="BTL_LTW.BuySuccessPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <form runat="server" id="formBuySuccess">
        <div>
            <h2>Mua hàng thành công</h2>
            <p>Thanh toán thành công :))</p>
            <p>
                Đơn hàng của bạn có giá trị
            <asp:Label ID="lblPrice" runat="server" Text="" Style="color: red;"></asp:Label>
            </p>
            <p>
                Chúng tôi sẽ gửi hàng cho bạn đến địa chỉ:
            <asp:Label ID="lblAddress" runat="server" Text="Label"></asp:Label>.
            </p>
            <asp:Button ID="btnHomePage" runat="server" Text="Về trang chủ" />
        </div>
    </form>
</asp:Content>
