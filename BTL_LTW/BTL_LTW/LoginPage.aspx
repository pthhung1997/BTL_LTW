<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="BTL_LTW.LoginPage" %>
<asp:Content ID="LoginPage" ContentPlaceHolderID="content" runat="server">
    <h1 style="text-align:center">Đăng nhập</h1>
    <form id="formLogin" runat="server">
        <table >
            
            <tr>
                <td>Tên đăng nhập</td>
                <td><asp:TextBox ID="txtUsername" runat="server" placeholder ="Tên tài khoản"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Mật khẩu</td>
                <td><asp:TextBox ID="txtPassword" runat="server" placeholder ="Mật khẩu" type="password"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" Text="Đăng Nhập" OnClick="btnSubmit_Click"/>
                    <input type="reset" Text="Nhập lại"/>
                </td>
            </tr>
        </table>
    </form>
</asp:Content>
