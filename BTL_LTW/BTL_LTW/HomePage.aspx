<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="BTL_LTW.HomePage" %>

<asp:Content ID="HomePage" ContentPlaceHolderID="content" runat="server">
    <link href="css/homePageCss.css" rel="stylesheet" />
    <div class="container">
        <form id="formHomePage" runat="server">
            <div class="col-md-3">
                <h4 style="font-weight: bold;">Bộ lọc</h4>
                <ul class="sidebar-menu tree">
                    <li>
                        <fieldset>
                            <legend>
                                <h5>Tên sản phẩm</h5>
                            </legend>
                            <%--<asp:input type="text" class="form-control" placeholder="Tên sản phẩm">--%>
                            <asp:TextBox runat="server" class="form-control" placeholder="Tên sản phẩm"></asp:TextBox>
                        </fieldset>
                    </li>

                    <li>
                        <fieldset>
                            <legend>
                                <h5>Giá</h5>
                            </legend>
                            <%--<form>
                            <input type="radio" name="Gia" value="Gia" checked>
                            Dưới 5 triệu<br />
                            <input type="radio" name="Gia" value="Gia">
                            Từ 5 - 10 triệu<br />
                            <input type="radio" name="Gia" value="Gia">
                            Từ 10 - 15 triệu<br />
                            <input type="radio" name="Gia" value="Gia">
                            Từ 15 - 20 triệu<br />
                            <input type="radio" name="Gia" value="Gia">
                            Từ 20 - 25 triệu<br />
                            <input type="radio" name="Gia" value="Gia">
                            Từ 25 - 30 triệu<br />
                            <input type="radio" name="Gia" value="Gia">
                            Trên 30 triệu<br />
                        </form>--%>
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                                <asp:ListItem class="checkbox" runat="server">
                                    Dưới 5 triệu</asp:ListItem>
                                <asp:ListItem class="checkbox" runat="server">
                                    Dưới 5 triệu</asp:ListItem>
                                <asp:ListItem class="checkbox" runat="server">
                                    Từ 5 - 10 triệu</asp:ListItem>
                                <asp:ListItem class="checkbox" runat="server">
                                    Từ 10 - 15 triệu</asp:ListItem>
                                <asp:ListItem class="checkbox" runat="server">
                                    Từ 15 - 20 triệu</asp:ListItem>
                                <asp:ListItem class="checkbox" runat="server">
                                    Trên 20 triệu</asp:ListItem>
                            </asp:RadioButtonList>
                        </fieldset>
                    </li>
                    <%--<li>
                    <fieldset>
                        <legend>
                            <h5>RAM</h5>
                        </legend>
                        <form>
                            <input type="radio" name="RAM" value="RAM" checked>
                            Tất cả<br />
                            <input type="radio" name="RAM" value="RAM">
                            2 GB<br />
                            <input type="radio" name="RAM" value="RAM">
                            4 GB<br />
                            <input type="radio" name="RAM" value="RAM">
                            8 GB<br />
                            <input type="radio" name="RAM" value="RAM">
                            16 GB<br />
                            <input type="radio" name="RAM" value="RAM">
                            32 GB<br />
                        </form>
                    </fieldset>
                </li>
                <li>
                    <fieldset>
                        <legend>
                            <h5>CPU</h5>
                        </legend>
                        <form>
                            <input type="radio" name="CPU" value="CPU" checked>
                            Tất cả<br />
                            <input type="radio" name="CPU" value="CPU">
                            Intel Atom<br />
                            <input type="radio" name="CPU" value="CPU">
                            intel Celeron<br />
                            <input type="radio" name="CPU" value="CPU">
                            Intel Pentium<br />
                            <input type="radio" name="CPU" value="CPU">
                            Intel Core i3<br />
                            <input type="radio" name="CPU" value="CPU">
                            Intel Core i5<br />
                            <input type="radio" name="CPU" value="CPU">
                            Intel Core i7<br />
                            <input type="radio" name="CPU" value="CPU">
                            Intel Core M<br />
                        </form>
                    </fieldset>
                </li>
                <li>
                    <fieldset>
                        <legend>
                            <h5>Loại ổ cứng</h5>
                        </legend>
                        <form>
                            <input type="radio" name="OCung" value="OCung" checked>
                            HDD<br />
                            <input type="radio" name="OCung" value="OCung">
                            SSD<br />
                            <input type="radio" name="OCung" value="OCung">
                            HDD + SSD<br />
                        </form>
                    </fieldset>
                </li>--%>
                    <li>
                        <asp:Button ID="btnSearch" class="btn btn-default" runat="server" Text="Tìm Kiếm"  />
                    </li>
                </ul>
            </div>
            <div class="col-md-9">
                <h4>Danh mục sản phẩm</h4>
                <asp:ListView ID="lwHomePage" runat="server">
                    <ItemTemplate>
                        <div class="item col-md-4">
                            <div class="row" id="ContentProduct">
                                <img src='<%# Eval("Path")%>' />
                                <asp:Label runat="server" Text='<%# Eval("Name")%>'></asp:Label><br />
                                <asp:Label runat="server" Text='<%# Eval("Price")%>'></asp:Label><br />
                                <asp:Button class="btn btn-default" runat="server" CommandArgument='<%# Eval("Id")%>' Text="Xem chi tiết" OnClick="btnDetail_Click" />
                                <asp:Button class="btn btn-default" runat="server" CommandArgument='<%# Eval("Id")%>' Text="Thêm vào giỏ hàng" OnClick="btnAddToCarts_Click" />
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:ListView>
            </div>
        </form>
    </div>
</asp:Content>
