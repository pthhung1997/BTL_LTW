<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CartPage.aspx.cs" Inherits="BTL_LTW.CartPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <link href="css/CartPageCss.css" rel="stylesheet" />
    <script src="scripts/bootstrap.min.js"></script>
    <div class="container">

        <%if ((int)Session["cartsCount"] != 0)
            { %>
        <h4>Giỏ hàng</h4>
        <form runat="server" id="formCarts">
            <table class="table table-hover">
                <tr>
                    <th class="col-md-1">#</th>
                    <th class="col-md-3">Hình minh hoạ</th>
                    <th class="col-md-2">Tên sản phẩm</th>
                    <th class="col-md-2">Giá</th>
                    <th class="col-md-1">Số lượng</th>
                    <th class="col-md-2">Xem chi tiết</th>
                    <th class="col-md-2">Xoá sản phẩm</th>
                </tr>
                <asp:ListView ID="lwCarts" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td>
                                <label><%# Container.DataItemIndex + 1 %></label></td>
                            <td>
                                <img src='<%#  Eval("product.Path")%>' class="img-rounded" /></td>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("product.Name")%>'></asp:Label></td>
                            <td>
                                <asp:Label runat="server" Text='<%# Eval("product.Price", "{0:0,00 VND}")%>'></asp:Label></td>
                            <td>
                                <asp:ImageButton runat="server" src="image\\add.png" Style="height: 15px; width: auto;" CommandArgument='<%# Eval("product.Id")%>' CommandName='<%# Eval("product.Id")%>' OnClick="btnAddAProduct_Click" />
                                <asp:Label runat="server" Text='<%# Eval("Count")%>'></asp:Label>
                                <asp:ImageButton runat="server" src="image\\minus.png" Style="height: 15px; width: auto;" CommandArgument='<%# Eval("product.Id")%>' CommandName='<%# Eval("product.Id")%>' OnClick="btnDeleteAProduct_Click" />
                                <%--<asp:ImageButton runat="server" src="image\\minus.png" Style="height: 15px; width: auto;" CommandArgument='<%# Eval("product.Id")%>' CommandName='<%# Eval("product.Id")%>' OnClick="btnDeleteAProduct_Click" Visible='<%#Convert.ToInt32(Eval("Count").ToString()) > 1 ? true : false%>' />--%>
                                <%--<input type="image" data-toggle="modal" data-target="#myModal" style="height: 15px; width: auto; display: <%#Convert.ToInt32(Eval("Count").ToString()) == 1 ? "inline" : "none"%>" src="image\\minus.png">--%>
                            


                            </td>
                            <td>
                                <asp:Button runat="server" CommandArgument='<%# Eval("product.Id")%>' CommandName='<%# Eval("product.Id")%>' Text="Chi Tiết sản phẩm" OnClick="btnDetail_Click" class="btn btn-info" /></td>
                            <td>
                                <asp:Button runat="server" CommandArgument='<%# Eval("product.Id")%>' CommandName='<%# Eval("product.Id")%>' Text="Xóa khỏi giỏ hàng" OnClick="btnDelete_Click" class="btn btn-danger" /></td>
                        </tr>
                    </ItemTemplate>
                </asp:ListView>
            </table>
            <div class="row" style="text-align: center;">
                <asp:Label ID="lblPrices" runat="server" Text="" Style="color: #ff0000; font-weight: bold; font-size: 25px; font-style: italic; text-align: center;"></asp:Label>
                <asp:Button ID="btnBuy" runat="server" Text="Thanh toán" OnClick="btnBuy_Click" class="btn btn-success" />
            </div>


            <div>
                <!-- Modal -->
                <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="myModalLabel">Modal title</h4>
                            </div>
                            <div class="modal-body">
                                ...
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                <asp:Button ID="btnDel" runat="server" Text="Xác nhận" />
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </form>
        <%}
            else
            {%>
        <div class="row col-md-4 col-md-offset-5" style="margin-top: 30px;">
            <asp:Label ID="lblErr" runat="server" Text="" Style="color: red; font-size: 20px;"></asp:Label>
            <br />
            <img style="text-align: center;" src="image/carts-empty.jpg" />
        </div>
        <%} %>
    </div>
</asp:Content>
