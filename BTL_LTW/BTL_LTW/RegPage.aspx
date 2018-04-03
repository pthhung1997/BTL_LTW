<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="RegPage.aspx.cs" Inherits="BTL_LTW.RegPage" %>

<asp:Content ID="RegPage" ContentPlaceHolderID="content" runat="server">
    <h1 style="text-align: center">THÔNG TIN ĐĂNG KÍ</h1>
    <form id="formReg" runat="server">
        <div class="container col-md-offset-2">
            <div class="form-group row">
                <label for="inputName" class="col-md-2 control-label">Họ và tên</label>
                <div class="col-md-5">
                    <asp:TextBox  required ID="txtFullName" runat="server" class="form-control" placeholder="Họ và tên"></asp:TextBox>
                </div>
                <asp:Label ID="errFullName" class="col-md-3 control-label" runat="server" Text="" Style="color: red; font-style: italic;"></asp:Label>
            </div>
            <div class="form-group row">
                <label for="inputDob" class="col-md-2 control-label">Ngày sinh</label>
                <div class="col-md-5">
                    <input  required type="date" id="dateDob" class="form-control" runat="server" placeholder="Ngày sinh" />
                </div>
            </div>
            <div class="form-group row">
                <label for="inputGender" class="col-md-2 control-label">Giới tính</label>
                <div class="col-md-5">
                    <asp:DropDownList  required ID="litsGender" runat="server" class="form-control" placeholder="Chọn giới tính">
                        <asp:ListItem Value="nam">Nam</asp:ListItem>
                        <asp:ListItem Value="nu">Nữ</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>

            <div class="form-group row">
                <label for="inputAdd" class="col-md-2 control-label">Địa chỉ</label>
                <div class="col-md-5">
                    <asp:TextBox  required ID="txtAddress" runat="server" class="form-control" placeholder="Địa chỉ"></asp:TextBox>
                </div>
            </div>

            <div class="form-group row">
                <label for="inputPhone" class="col-md-2 control-label">Số điện thoại</label>
                <div class="col-md-5">
                    <asp:TextBox required  ID="txtPhoneNumber" class="form-control" runat="server" placeholder="Số điện thoại"></asp:TextBox>
                </div>
            </div>

            <div class="form-group row">
                <label for="inputDob" class="col-md-2 control-label">Email</label>
                <div class="col-md-5">
                    <asp:TextBox required ID="txtEmail" runat="server" class="form-control" placeholder="Email" type="email"></asp:TextBox>
                </div>
                <asp:Label   ID="errEmail" class="col-md-3 control-label" runat="server" Text="" Style="color: red; font-style: italic;"></asp:Label>
            </div>

            <div class="form-group row">
                <label for="inputUsername" class="col-md-2 control-label">Tên đăng nhập</label>
                <div class="col-md-5">
                    <asp:TextBox  required ID="txtUsername" runat="server" class="form-control" placeholder="Tên tài khoản"></asp:TextBox>
                </div>
                <asp:Label ID="errUsername" class="col-md-3 control-label" runat="server" Text="" Style="color: red; font-style: italic;"></asp:Label>
            </div>

            <div class="form-group row">
                <label for="exampleInputPassword1" class="col-md-2 control-label">Mật khẩu</label>
                <div class="col-md-5">
                    <asp:TextBox required  ID="txtPassword" runat="server" class="form-control" placeholder="Mật khẩu" type="password"></asp:TextBox>
                </div>
            </div>
            <div class="form-group row">
                <label for="exampleInputPassword1" class="col-md-2 control-label">Nhập lại mật khẩu</label>
                <div class="col-md-5">
                    <asp:TextBox required  ID="txtPassword2" runat="server" class="form-control" placeholder="Nhập lại mật khẩu" type="password"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-md-offset-6">
                    <asp:Button ID="btnSubmit" class="btn btn-default" runat="server" Text="Đăng ký" OnClick="btnSubmit_Click" />
                    <input type="reset" class="btn btn-default" text="Nhập lại" />
                </div>
            </div>
            <%--  --%>
            <%--<table>
            <tr>
                <td>Họ và tên</td>
                <td></td>
                <td>
                    </td>
            </tr>
            <tr>
                <td>Ngày sinh</td>
                <td></td>
                <td>
                    <asp:Label ID="errDob" runat="server" Text="" Style="color: red; font-style: italic;"></asp:Label></td>
            </tr>
            <tr>
                <td>Giới tính</td>
                <td></td>
                <td>
                    <asp:Label ID="errGender" runat="server" Text="" Style="color: red; font-style: italic;"></asp:Label></td>
            </tr>
            <tr>
                <td>Địa chỉ</td>
                <td></td>
                <td>
                    <asp:Label ID="errAddress" runat="server" Text="" Style="color: red; font-style: italic;"></asp:Label></td>
            </tr>
            <tr>
                <td>Số điện thoại</td>
                <td></td>
                <td>
                    <asp:Label ID="errPhoneNumber" runat="server" Text="" Style="color: red; font-style: italic;"></asp:Label></td>
            </tr>
            <tr>
                <td>Địa chỉ Email</td>
                <td></td>
                <td>
                    </asp:Label></td>
            </tr>
            <tr>
                <td>Tên đăng nhập</td>
                <td>

                    <td>
                        </td>
            </tr>
            <tr>
                <td>Mật khẩu</td>
                <td></td>
                <td>
                    <asp:Label ID="errPassword" runat="server" Text="" Style="color: red; font-style: italic;"></asp:Label></td>
            </tr>
            <tr>
                <td>Nhập lại mật khẩu</td>
                <td></td>
                <td>
                    <asp:Label ID="errPassword2" runat="server" Text="" Style="color: red; font-style: italic;"></asp:Label></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
            </tr>
        </table>--%>
        </div>
    </form>
</asp:Content>
