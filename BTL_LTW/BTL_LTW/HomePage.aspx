<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="BTL_LTW.HomePage" %>

<asp:Content ID="HomePage" ContentPlaceHolderID="content" runat="server">
    <link href="css/ItemCss.css" rel="stylesheet" />
    <div class="container">

        <form id="formHomePage" runat="server">
            <div class="col-md-3">
                <h3>Lọc</h3>
                <ul class="sidebar-menu tree">
                    <li><a href="#">Hãng</a>
                        <ul>
                            <li><a href="#">Asus</a></li>
                            <li><a href="#">Dell</a></li>
                            <li><a href="#">Mac book</a></li>
                            <li><a href="#">Think Pad</a></li>
                        </ul>
                    </li>
                    <li><a href="#">Giá</a>
                        <ul>
                            <li>
                                <label>
                                    <input type="radio" value="" />
                                    Dưới 5 triệu</label>
                            </li>

                            <li>
                                <label>
                                    <input type="radio" value="" />
                                    5 triệu - 10 triệu</label>
                            </li>
                            <li>
                                <label>
                                    <input type="radio" value="" />
                                    10 triệu - 15 triệu</label>
                            </li>
                            <li>
                                <label>
                                    <input type="radio" value="" />
                                    Trên 15 triệu</label>
                            </li>
                        </ul>
                    </li>
                    <li><a href="#">Chính sách đổi trả</a></li>
                    <li><a href="#">Giao hàng & Thanh toán</a></li>
                </ul>
            </div>
            <div class="col-md-9">
                <h3>Danh mục sản phẩm</h3>
                <asp:ListView ID="lwHomePage" runat="server">
                    <ItemTemplate>
                        <div class="item col-md-4">
                            <div class="row" id="ContentProduct">
                                <img src='<%# Eval("Path")%>' />
                                <%--</div>
                    <div class="row">--%>
                                <asp:Label runat="server" Text='<%# Eval("Name")%>'></asp:Label><br />
                                <asp:Button class="btn btn-default" runat="server" CommandArgument='<%# Eval("Id")%>' Text="Xem chi tiết" OnClick="btnDetail_Click" />
                                <asp:Button class="btn btn-default" runat="server" CommandArgument='<%# Eval("Id")%>' Text="Thêm vào giỏ hàng" OnClick="btnAddToCarts_Click" />
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:ListView>
        </form>
    </div>
    </div>
</asp:Content>
