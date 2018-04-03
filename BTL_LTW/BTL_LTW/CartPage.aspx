<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CartPage.aspx.cs" Inherits="BTL_LTW.CartPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <div class="container">
        <h2>Giỏ hàng</h2>
        <asp:Label ID="lblErr" runat="server" Text="" Style="color: red; text-align: initial;"></asp:Label>
        <form runat="server" id="formCarts">
            <table>
                <asp:ListView ID="lwCarts" runat="server">
                    <ItemTemplate>
                        <div class="item">
                            <tr>
                                <td>
                                    <img src='<%# Eval("Path")%>' style="height: 150px; width: 200px;" /></td>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name")%>'></asp:Label></td>
                                <td>
                                    <asp:Button runat="server" CommandArgument='<%# Eval("Id")%>' CommandName='<%# Eval("Id")%>' Text="Xóa khỏi giỏ hàng" OnClick="btnDelete_Click" /></td>
                            </tr>
                        </div>
                    </ItemTemplate>

                </asp:ListView>
            </table>
            <asp:Button ID="btnHomePage" runat="server" Text="Trang chủ" OnClick="btnHomePage_Click" />
            <asp:Button ID="btnBuy" runat="server" Text="Thanh toán" OnClick="btnBuy_Click" />
        </form>
    </div>
</asp:Content>
