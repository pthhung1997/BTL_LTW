<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="DetailPage.aspx.cs" Inherits="BTL_LTW.DetailPage" %>

<asp:Content ID="DetailPage" ContentPlaceHolderID="content" runat="server">
    <link href="css/DetailPageCss.css" rel="stylesheet" />
    <div class="container">
        <form id="formDetail" runat="server">
            <div class="row">
                <div class="col-md-5">
                    <asp:Image ID="img" runat="server" Style="margin: 5px;" />
                </div>
                <div class="col-md-6 col-md-offset-1" id="inforproduct">
                    <%--  --%>
                    <fieldset>
                        <legend>
                            <h1 style="margin: 0px;">
                                <asp:Label ID="lblName" runat="server" Text="" class="col-md-7"></asp:Label></h1>
                        </legend>
                        <div style="font-family: initial;">
                            <table>
                                <tr>
                                    <td>
                                        <b>Lượt xem: </b>13161 lượt</td>
                                </tr>
                                <tr>
                                    <td>
                                        <b>Kho hàng: </b>
                                        <span>Đang còn hàng tại: </span>
                                        <br />
                                        <span style="margin-left: 70px; color: red; font-size: 15px">- 129+131 Lê Thanh Nghị - HBT - Hà Nội
                                                <br />
                                        </span>
                                        <span style="margin-left: 70px; color: red; font-size: 15px">- 43 Thái Hà - Đống Đa - Hà Nội
                                                <br />
                                        </span>
                                        <span style="margin-left: 70px; color: red; font-size: 15px">- 57 Nguyễn Văn Huyên - Cầu Giấy - Hà Nội<br />
                                        </span>
                                        <span style="margin-left: 70px; color: red; font-size: 15px">- A1-6 Lô 8A, Lê Hồng Phong, Ngô Quyền, Hải Phòng
                                        </span>
                                    </td>
                                </tr>
                                <tr>
                                    <td><b>Bảo hành:</b> 60 Tháng
                                            <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td><b>Giao hàng:</b>
                                        <br />
                                        <span style="margin-left: 62px; font-size: 15px">- Miễn phí giao hàng (Trong bán kính 20 km) cho đơn hàng từ 500.000đ trở lên 
                                        </span>
                                        <br />
                                        <span style="margin-left: 62px; font-size: 15px">- Miễn phí giao hàng 300 km với khách hàng Nets, Doanh Nghiệp, Dự Án
                                        </span>
                                        <br />
                                        <span style="margin-left: 62px; font-size: 15px">- Nhận giao hàng và lắp đặt từ 8h00 - 20h30 các ngày kể cả ngày lễ, thứ 7, CN
                                        </span>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </fieldset>

                    <div class="price">
                        <asp:Label ID="lblPrices" runat="server" Text=""></asp:Label>.vnđ
                    </div>
                    <asp:Button ID="btnAddToCarts" runat="server" Text="Thêm vào giỏ hàng" class="btn btn-primary btn-lg btn-block" OnClick="btnAddToCarts_Click" />
                </div>
                <%--  --%>
            </div>
            <div class="row">

                <div class="container">
                    <h2>Mô tả</h2>
                    <ul class="nav nav-tabs">
                        <li class="active"><a data-toggle="tab" href="#home">Thông tin chi tiết</a></li>
                        <li><a data-toggle="tab" href="#menu1">Đánh giá</a></li>
                    </ul>

                    <div class="tab-content">
                        <div id="home" class="tab-pane fade in active">
                            <div>
                                <h3 class="detail-title">Chất liệu tốt, siêu bền</h3>
                                <img src="image/1.jpg" /><br />
                                <p>Bàn phím game Logitech G213 được làm từ nhựa cao su cao cấp cho độ bền lên đến 10 triệu lần bấm. Điểm nhấn của bàn phím này chính là phần kê tay cực lớn phía dưới, tuy nó khiến cho tổng thể chiếc bàn phím trở nên to lớn cồng kềnh, thế nhưng với những game thủ ít di chuyển thì quả thực đây là thứ vô cùng đáng giá. Nguyên nhân đơn giản bởi phần nhựa lớn này giúp cho cổ tay ít bị mỏi hơn hẳn khi chơi game hay gõ văn bản.</p>
                            </div>
                            <div>
                                <h3 class="detail-title">Công nghệ đèn Led bắt mắt</h3>
                                <img src="image/1.jpg" /><br />
                                <p>Logitech G213 là chiếc bàn phím giả cơ được trang bị đèn Led nền phím RGB có khả năng đổi màu tuỳ ý với nhiều chế độ khác nhau. Hệ thống Led trên chiếc bàn phím này được thiết kế rất tốt, đèn đặt ở giữa phím và có ánh sáng rất vừa mắt, đẹp mà không chói loá, dễ dàng cho game thủ sử dụng trong màn đêm mà không cần thêm chiếc đèn chiếu sáng nào khác.</p>
                            </div>
                            <div>
                                <h3 class="detail-title">Chất liệu tốt, siêu bền</h3>
                                <img src="image/1.jpg" /><br />
                                <p>Bàn phím game Logitech G213 được làm từ nhựa cao su cao cấp cho độ bền lên đến 10 triệu lần bấm. Điểm nhấn của bàn phím này chính là phần kê tay cực lớn phía dưới, tuy nó khiến cho tổng thể chiếc bàn phím trở nên to lớn cồng kềnh, thế nhưng với những game thủ ít di chuyển thì quả thực đây là thứ vô cùng đáng giá. Nguyên nhân đơn giản bởi phần nhựa lớn này giúp cho cổ tay ít bị mỏi hơn hẳn khi chơi game hay gõ văn bản.</p>
                            </div>
                            <div>
                                <h3 class="detail-title">Công nghệ đèn Led bắt mắt</h3>
                                <img src="image/1.jpg" /><br />
                                <p>Logitech G213 là chiếc bàn phím giả cơ được trang bị đèn Led nền phím RGB có khả năng đổi màu tuỳ ý với nhiều chế độ khác nhau. Hệ thống Led trên chiếc bàn phím này được thiết kế rất tốt, đèn đặt ở giữa phím và có ánh sáng rất vừa mắt, đẹp mà không chói loá, dễ dàng cho game thủ sử dụng trong màn đêm mà không cần thêm chiếc đèn chiếu sáng nào khác.</p>
                            </div>
                        </div>
                        <div id="menu1" class="tab-pane fade">
                            <h3>Đánh giá:</h3>
                            <p>
                                <asp:Label ID="lblDescribe" runat="server" Text="" class="col-md-8"></asp:Label>
                            </p>
                        </div>
                    </div>
                </div>

                

            </div>
        </form>
    </div>
    <script src="scripts/jquery-3.3.1.min.js"></script>
    <script src="scripts/bootstrap.min.js"></script>
</asp:Content>
