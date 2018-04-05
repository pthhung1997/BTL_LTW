<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="BTL_LTW.LoginPage" %>

<asp:Content ID="LoginPage" ContentPlaceHolderID="content" runat="server">
    <h1 style="text-align: center">Đăng nhập</h1>
    <form id="formLogin" runat="server" class="form-horizontal col-md-9 col-md-offset-3">

        <div class="form-group">
            <label for="inputEmail3" class="col-md-2 control-label">Username</label>
            <div class="col-md-5">
                <%--text-align:right;  //set start crusor to right--%>
                <asp:TextBox required ID="txtUsername" class="form-control" runat="server" placeholder="Tên tài khoản" onChange="validateUsername()" ></asp:TextBox>
            </div>
            <span id="errUsername" class="help-block col-md-4" text="" style="margin: 0px;font-size: 13px;"></span>
        </div>
        <div class="form-group">
            <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
            <div class="col-md-5">
                <asp:TextBox required ID="txtPassword" runat="server" class="form-control" placeholder="Mật khẩu" type="password" onChange="validatePasword()"></asp:TextBox>
            </div>
            <span id="errPassword" class="help-block col-md-4" text="" style="margin: 0px;font-size: 13px;"></span>
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
    <script>
        <%--var username = document.getElementById('<%=txtPassword.ClientID %>');
        username.parentElement.parentElement.classList.add("has-error");--%>
        function validateUsername() {
            var username = document.getElementById('<%=txtUsername.ClientID %>');
            var usernameRegex = /^[a-zA-Z0-9]+$/;
            if (!usernameRegex.test(username.value)) {
                username.parentElement.parentElement.classList.add("has-error");
                document.getElementById('errUsername').innerHTML = "Tài khoản chỉ bao gồm các ký tự  a - z, A - Z, 0 - 9";
                return false;
            }else if(!(username.value.trim().length >= 6 && username.value.trim().length <= 30)){
                username.parentElement.parentElement.classList.add("has-error");
                document.getElementById('errUsername').innerHTML = "Tài khoản từ 6 - 30 ký tự";
                return false;
            } else {
                username.parentElement.parentElement.classList.remove("has-error");
                username.parentElement.parentElement.classList.add("has-success");
                document.getElementById('errUsername').innerHTML = "";
                return true;
            }
            
        }

        function validatePasword() {
            
              //(?=.*\d)          // should contain at least one digit
              //(?=.*[a-z])       // should contain at least one lower case
              //(?=.*[A-Z])       // should contain at least one upper case
              //[a-zA-Z0-9]{8,}   // should contain at least 8 from the mentioned characters
            
            var password = document.getElementById('<%=txtPassword.ClientID%>');
            
            var passwordRegex = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])[0-9a-zA-Z]{8,}$/;
            if (!passwordRegex.test(password.value)) {
                password.parentElement.parentElement.classList.add("has-error");
                document.getElementById('errPassword').innerHTML = "Mật khẩu tối thiểu từ 8 ký tự, tối thiểu 1 ký tự số,  1 ký tự viết hoa,  1 ký tự viết thường";
                return false;
            } else {
                password.parentElement.parentElement.classList.remove("has-error");
                password.parentElement.parentElement.classList.add("has-success");
                document.getElementById('errPassword').innerHTML = "";
                return true;
            }
        }

        $(document).ready(
            function () {
                $("#<%=btnSubmit.ClientID%>").click(function () {
                    if(!validateUsername()) return false;
                    if(!validatePasword()) return false;
                    return true;
                });
            }
            );

    </script>
</asp:Content>
