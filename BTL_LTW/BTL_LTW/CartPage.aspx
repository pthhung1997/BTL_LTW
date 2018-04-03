<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CartPage.aspx.cs" Inherits="BTL_LTW.CartPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <link href="css/CartPageCss.css" rel="stylesheet" />
    <div class="container">
        <asp:Label ID="lblErr" runat="server" Text="" Style="color: red; text-align: initial; font-size:20px;"></asp:Label>
        <%if ( (int)Session["cartsCount"] != 0)
            { %>
        <h4>Giỏ hàng</h4>
        <form runat="server" id="formCarts">
            <table class="table table-hover">
                <tr>
                    <th class="col-md-1">#</th>
                    <th class="col-md-3">Hình minh hoạ</th>
                    <th class="col-md-2">Tên sản phẩm</th>
                    <th class="col-md-2">Giá</th>
                    <th class="col-md-2">Xem chi tiết</th>
                    <th class="col-md-2">Xoá sản phẩm</th>
                </tr>
                <asp:ListView ID="lwCarts" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td><label><%# Container.DataItemIndex + 1 %></label></td>
                            <td>
                                <img src='<%# Eval("Path")%>' class="img-rounded" /></td>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name")%>'></asp:Label></td>
                            <td>
                                <asp:Label runat="server" Text='<%# Eval("Price")%>'></asp:Label></td>
                            <td>
                                <asp:Button runat="server" CommandArgument='<%# Eval("Id")%>' CommandName='<%# Eval("Id")%>' Text="Chi Tiết sản phẩm" OnClick="btnDetail_Click" class="btn btn-info" /></td>
                            <td>
                                <asp:Button runat="server" CommandArgument='<%# Eval("Id")%>' CommandName='<%# Eval("Id")%>' Text="Xóa khỏi giỏ hàng" OnClick="btnDelete_Click" class="btn btn-danger" /></td>
                        </tr>
                    </ItemTemplate>
                </asp:ListView>
            </table>
            <div class="row" style="text-align:center;">
                <asp:Button ID="btnBuy" runat="server" Text="Thanh toán" OnClick="btnBuy_Click" class="btn btn-success"/>
            <asp:Button ID="btnHomePage" runat="server" Text="Trang chủ" OnClick="btnHomePage_Click" class="btn btn-default"/>
            </div>
            
        </form>
        <%} %>
    </div>
</asp:Content>
