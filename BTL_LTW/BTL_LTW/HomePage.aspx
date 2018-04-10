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
                            <asp:TextBox ID="txtNameProduct" runat="server" class="form-control" placeholder="Tên sản phẩm"></asp:TextBox>
                        </fieldset>
                    </li>

                    <li>
                        <fieldset>
                            <legend>
                                <h5>Giá</h5>
                            </legend>
                            <asp:RadioButtonList ID="rbPrice" runat="server" Style="font-size: 14px;">
                                <asp:ListItem class="checkbox" runat="server" Value="0">
                                    Dưới 5 triệu</asp:ListItem>
                                <asp:ListItem class="checkbox" runat="server" Value="5">
                                    Từ 5 - 10 triệu</asp:ListItem>
                                <asp:ListItem class="checkbox" runat="server" Value="10">
                                    Từ 10 - 15 triệu</asp:ListItem>
                                <asp:ListItem class="checkbox" runat="server" Value="15">
                                    Từ 15 - 20 triệu</asp:ListItem>
                                <asp:ListItem class="checkbox" runat="server" Value="20">
                                    Trên 20 triệu</asp:ListItem>
                            </asp:RadioButtonList>
                        </fieldset>
                    </li>
                    <li>
                        <asp:Button ID="btnSearch" class="btn btn-default" runat="server" Text="Tìm Kiếm" OnClick="btnSearch_Click" />
                    </li>
                </ul>
            </div>
            <div class="col-md-9">
                <div class="row">
                    <h4 class="col-md-3">Danh mục sản phẩm</h4>
                    <asp:Button ID="btnCanceSearch" runat="server" Text="Bỏ lọc sản phẩm" class="btn btn-default col-md-3" Visible="false" OnClick="btnCanceSearch_Click" Style="margin-top: 4px;" />
                </div>

                <asp:ListView ID="lwHomePage" runat="server">
                    <ItemTemplate>
                        <div class="item col-md-4 col-sm-5">
                            <div class="row" id="ContentProduct">
                                <%--<a href='http://localhost:55872/DetailPage.aspx?id=<%# Eval("Id")%>'><img src='<%# Eval("Path")%>' /></a>--%>
                                <img src='<%# Eval("Path")%>' />
                                <div class="row">
                                    <asp:Label runat="server" Text='<%# Eval("Name")%>'></asp:Label><br />
                                    <asp:Label runat="server" Text='<%# Eval("Price", "{0:0,00 VND}")%>'></asp:Label><br />
                                    <asp:Button class="btn btn-default" runat="server" CommandArgument='<%# Eval("Id")%>' Text="Xem chi tiết" OnClick="btnDetail_Click" style="max-width: 100%;" />
                                    <asp:Button class="btn btn-default" runat="server" CommandArgument='<%# Eval("Id")%>' Text="Thêm vào giỏ" OnClick="btnAddToCarts_Click" style="max-width: 100%;"  />
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:ListView>
            </div>
        </form>
    </div>
</asp:Content>
