<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="BTL_LTW.LoginPage" %>

<asp:Content ID="LoginPage" ContentPlaceHolderID="content" runat="server">
    <h1 style="text-align: center">Đăng nhập</h1>
    <form id="formLogin" runat="server" class="form-horizontal col-md-6 col-md-offset-3">

        <div class="form-group">
            <label for="inputEmail3" class="col-sm-2 control-label">Username</label>
            <div class="col-sm-10">
                <asp:TextBox required ID="txtUsername" class="form-control" runat="server" placeholder="Tên tài khoản"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
            <div class="col-sm-10">
                <asp:TextBox required ID="txtPassword" runat="server" class="form-control" placeholder="Mật khẩu" type="password"></asp:TextBox>
            </div>
        </div>
        <%--<div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <div class="checkbox">
                    <label>
                        <input type="checkbox">
                        Remember me
                    </label>
                </div>
            </div>
        </div>--%>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <asp:Button ID="btnSubmit" runat="server" class="btn btn-default" Text="Đăng Nhập" OnClick="btnSubmit_Click" />
                <input type="reset" text="Nhập lại" class="btn btn-default" />
            </div>
        </div>
        <%--  --%>
    </form>
</asp:Content>
