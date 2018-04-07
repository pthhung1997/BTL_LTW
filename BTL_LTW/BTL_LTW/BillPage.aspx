<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="BillPage.aspx.cs" Inherits="BTL_LTW.BillPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <script src="scripts/bootstrap.min.js"></script>
    <link href="css/BillPageCss.css" rel="stylesheet" />
    <div class="container">

        <%if ((int)Session["cartsCount"] != 0)
            { %>
        <form runat="server" id="formCarts">
            <fieldset>
                <legend>Danh sách sản phẩm</legend>

                <table class="table table-hover">
                    <tr>
                        <th class="col-md-1">#</th>
                        <th class="col-md-3">Hình minh hoạ</th>
                        <th class="col-md-2">Tên sản phẩm</th>
                        <th class="col-md-1">Số lượng</th>
                        <th class="col-md-2">Thành tiền</th>
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
                                    <asp:Label runat="server" Text='<%# Eval("Count")%>'></asp:Label>
                                </td>
                                <td>
                                    <asp:Label runat="server" Text='<%# Eval("TotalPrices", "{0:0,00 VND}")%>'></asp:Label></td>
                            </tr>
                        </ItemTemplate>
                    </asp:ListView>
                </table>
                <div class="row" style="text-align: center;">
                    <asp:Label ID="lblPrices" runat="server" Text="" Style="color: #ff0000; font-weight: bold; font-size: 25px; font-style: italic; text-align: center;"></asp:Label>
                </div>
            </fieldset>
            <fieldset>
                <legend>Chi tiết người nhận</legend>
                    <div class="form-group">
                        <label>Tên: </label>
                        <asp:Label ID="lblName" runat="server" Text=""></asp:Label>
                    </div>
                <div class="form-group">
                    <label>Địa chỉ: </label>
                    <asp:Label ID="lblAddress" runat="server" Text=""></asp:Label>
                </div>
                <div class="form-group">
                    <label>Số điện thoại: </label>
                    <asp:Label ID="lblPhoneNumber" runat="server" Text=""></asp:Label>
                </div>
            </fieldset>
            <fieldset>
                <div class="row" style="text-align: center;">
                    <asp:Button ID="btnSubmit" runat="server" Text="Thanh toán" OnClick="btnSubmit_Click" class="btn btn-success" />
                </div>
            </fieldset>
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
