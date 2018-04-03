<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="RegPage.aspx.cs" Inherits="BTL_LTW.RegPage" %>
<asp:Content ID="RegPage" ContentPlaceHolderID="content" runat="server">
    <h1 style="text-align:center">THÔNG TIN ĐĂNG KÍ</h1>
    <form id="formReg" runat="server">
        <table >
            <tr>
                <td>Họ và tên</td>
                <td>
                    <asp:TextBox ID="txtFullName" runat="server" placeholder ="Họ và tên"></asp:TextBox></td>
                <td>
                    <asp:Label ID="errFullName" runat="server" Text="" style="color:red; font-style:italic;"></asp:Label></td>
            </tr>
            <tr>
                <td>Ngày sinh</td>
                <td><input type="date" id="dateDob" runat="server" placeholder ="Ngày sinh"/>  </td>
                <td>
                    <asp:Label ID="errDob" runat="server" Text="" style="color:red; font-style:italic;"></asp:Label></td>
            </tr>
            <tr>
                <td>Giới tính</td>
                <td>
                    <asp:DropDownList ID="litsGender" runat="server" placeholder="Chọn giới tính">
                        <asp:ListItem Value="nam">Nam</asp:ListItem>
                        <asp:ListItem Value="nu">Nữ</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:Label ID="errGender" runat="server" Text="" style="color:red; font-style:italic;"></asp:Label></td>
            </tr>
            <tr>
                <td>Địa chỉ</td>
                <td><asp:TextBox ID="txtAddress" runat="server" placeholder ="Địa chỉ"></asp:TextBox></td>
                <td>
                    <asp:Label ID="errAddress" runat="server" Text="" style="color:red; font-style:italic;"></asp:Label></td>
            </tr>
            <tr>
                <td>Số điện thoại</td>
                <td><asp:TextBox ID="txtPhoneNumber" runat="server" placeholder ="Số điện thoại"></asp:TextBox></td>
                <td>
                    <asp:Label ID="errPhoneNumber" runat="server" Text="" style="color:red; font-style:italic;"></asp:Label></td>
            </tr>
            <tr>
                <td>Địa chỉ Email</td>
                <td><asp:TextBox ID="txtEmail" runat="server" placeholder ="Email" type="email"></asp:TextBox></td>
                <td>
                    <asp:Label ID="errEmail" runat="server" Text="" style="color:red; font-style:italic;"></asp:Label></td>
            </tr>
            <tr>
                <td>Tên đăng nhập</td>
                <td><asp:TextBox ID="txtUsername" runat="server" placeholder ="Tên tài khoản"></asp:TextBox></td>
                <td>
                    <asp:Label ID="errUsername" runat="server" Text="" style="color:red; font-style:italic;"></asp:Label></td>
            </tr>
            <tr>
                <td>Mật khẩu</td>
                <td><asp:TextBox ID="txtPassword" runat="server" placeholder ="Mật khẩu" type="password"></asp:TextBox></td>
                <td>
                    <asp:Label ID="errPassword" runat="server" Text="" style="color:red; font-style:italic;"></asp:Label></td>
            </tr>
            <tr>
                <td>Nhập lại mật khẩu</td>
                <td><asp:TextBox ID="txtPassword2" runat="server" placeholder ="Nhập lại mật khẩu" type="password"></asp:TextBox></td>
                <td>
                    <asp:Label ID="errPassword2" runat="server" Text="" style="color:red; font-style:italic;"></asp:Label></td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" Text="Đăng ký" OnClick="btnSubmit_Click" />
                    <input type="reset" Text="Nhập lại"/>
                </td>
            </tr>
        </table>
    </form>
</asp:Content>
