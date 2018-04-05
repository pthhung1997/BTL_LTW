<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="RegPage.aspx.cs" Inherits="BTL_LTW.RegPage" %>

<asp:Content ID="RegPage" ContentPlaceHolderID="content" runat="server">
    <link href="css/RegPageCss.css" rel="stylesheet" />
    <h1 style="text-align: center">THÔNG TIN ĐĂNG KÍ</h1>
    <form id="formReg" runat="server">
        <div class="container col-md-offset-2 col-md-10">
            <div class="form-group row">
                <label for="<%=txtFullName.ClientID%>" class="col-md-2 control-label">Họ và tên </label>
                <div class="col-md-5">
                    <asp:TextBox  required ID="txtFullName" runat="server" class="form-control" placeholder="Họ và tên" onChange="checkNotNull(this.id)" ></asp:TextBox>
                </div>
                <span id="err<%=txtFullName.ClientID%>" class="help-block col-md-4" text="" ></span>
            </div>
          
              <div class="form-group row">
                <label for="<%=dateDob.ClientID%>" class="col-md-2 control-label">Ngày sinh</label>
                <div class="col-md-5">
                    <input  required type="date" id="dateDob" class="form-control" runat="server" placeholder="Ngày sinh"  onChange="checkNotNull(this.id)" />
                </div>
                <span id="err<%=dateDob.ClientID%>" class="help-block col-md-4" text="" ></span>
            </div>
          
              <div class="form-group row">
                <label for="<%=listGender.ClientID%>" class="col-md-2 control-label">Giới tính</label>
                <div class="col-md-5">
                    <asp:DropDownList  required ID="listGender" runat="server" onChange="checkNotNull(this.id)"  class="form-control" placeholder="Chọn giới tính">
                        <asp:ListItem Value="nam">Nam</asp:ListItem>
                        <asp:ListItem Value="nu">Nữ</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <span id="err<%=listGender.ClientID%>" class="help-block col-md-4" text="" ></span>
            </div>

            <div class="form-group row">
                <label for="<%=txtAddress.ClientID%>" class="col-md-2 control-label">Địa chỉ</label>
                <div class="col-md-5">
                    <asp:TextBox  required ID="txtAddress" runat="server" class="form-control" onChange="checkNotNull(this.id)"  placeholder="Địa chỉ"></asp:TextBox>
                </div>
                <span id="err<%=txtAddress.ClientID%>" class="help-block col-md-4" text="" ></span>
            </div>

            <div class="form-group row">
                <label for="<%=txtPhoneNumber.ClientID%>" class="col-md-2 control-label">Số điện thoại</label>
                <div class="col-md-5">
                    <asp:TextBox required  ID="txtPhoneNumber" class="form-control" runat="server" placeholder="Số điện thoại" onChange="validatePhoneNumber()"></asp:TextBox>
                </div>
                 <span id="errPhoneNumber" class="help-block col-md-4" text="" ></span>
            </div>

            <div class="form-group row">
                <label for="<%=txtEmail.ClientID %>" class="col-md-2 control-label">Email</label>
                <div class="col-md-5">
                    <asp:TextBox required ID="txtEmail" runat="server" class="form-control" placeholder="Email" type="email" onChange="validateEmail()"></asp:TextBox>
                </div>
                <asp:Label   ID="errEmail" class="col-md-4 control-label errorMsg" runat="server" Text="" ></asp:Label>
            </div>

            <div class="form-group row">
                <label for="<%=txtUsername.ClientID %>" class="col-md-2 control-label">Tên đăng nhập</label>
                <div class="col-md-5">
                    <asp:TextBox  required ID="txtUsername" runat="server" class="form-control" placeholder="Tên tài khoản" onChange="validateUsername()"></asp:TextBox>
                </div>
                <asp:Label ID="errUsername" class="col-md-3 control-label errorMsg" runat="server" Text="" ></asp:Label>
            </div>

            <div class="form-group row">
                <label for="<%=txtPassword.ClientID %>" class="col-md-2 control-label">Mật khẩu</label>
                <div class="col-md-5">
                    <asp:TextBox required  ID="txtPassword" runat="server" class="form-control" placeholder="Mật khẩu" type="password" onChange="validatePassword()"></asp:TextBox>
                </div>
                <span id="errPassword" class="help-block col-md-4 errorMsg" text="" ></span>
            </div>
            <div class="form-group row">
                <label for="<%=txtPassword2.ClientID %>" class="col-md-2 control-label">Nhập lại mật khẩu</label>
                <div class="col-md-5">
                    <asp:TextBox required  ID="txtPassword2" runat="server" class="form-control" placeholder="Nhập lại mật khẩu" type="password" onChange="validatePassword1()"></asp:TextBox>
                </div>
                <span id="errPassword1" class="help-block col-md-4 errorMsg" text="" ></span>
            </div>
            <div class="row">
                <div class="col-md-offset-6">
                    <asp:Button ID="btnSubmit" class="btn btn-default" runat="server" Text="Đăng ký" OnClick="btnSubmit_Click" />
                    <input type="reset" class="btn btn-default" text="Nhập lại" />
                </div>
            </div>
            
        </div>
    </form>
    <script>
        <%--var username = document.getElementById('<%=txtPassword.ClientID %>');
        username.parentElement.parentElement.classList.add("has-error");--%>
        function validateUsername() {
            var username = document.getElementById('<%=txtUsername.ClientID %>');
            var usernameRegex = /^[a-zA-Z0-9]+$/;
            if(!usernameRegex.test(username.value)){
                username.parentElement.parentElement.classList.add("has-error");
                document.getElementById("<%=errUsername.ClientID%>").innerHTML = "Tài khoản chỉ bao gồm các ký tự  a - z, A - Z, 0 - 9";
                username.focus();
                return false;
            }else if(!(username.value.trim().length >= 6 && username.value.trim().length <= 30)){
                username.parentElement.parentElement.classList.add("has-error");
                document.getElementById('<%=errUsername.ClientID%>').innerHTML = "Tài khoản từ 6 - 30 ký tự";
                username.focus();
                return false;
            } else {
                username.parentElement.parentElement.classList.remove("has-error");
                username.parentElement.parentElement.classList.add("has-success");
                document.getElementById('<%=errUsername.ClientID%>').innerHTML = "";
                return true;
            }
            
        }

        function validatePassword() {
            
              //(?=.*\d)          // should contain at least one digit
              //(?=.*[a-z])       // should contain at least one lower case
              //(?=.*[A-Z])       // should contain at least one upper case
              //[a-zA-Z0-9]{8,}   // should contain at least 8 from the mentioned characters
            
            var password = document.getElementById('<%=txtPassword.ClientID%>');
            var passwordRegex = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])[0-9a-zA-Z]{8,}$/;
            if (!passwordRegex.test(password.value)) {
                password.parentElement.parentElement.classList.add("has-error");
                document.getElementById('errPassword').innerHTML = "Mật khẩu tối thiểu từ 8 ký tự, tối thiểu 1 ký tự số,  1 ký tự viết hoa,  1 ký tự viết thường";
                password.focus();
                return false;
            } else {
                password.parentElement.parentElement.classList.remove("has-error");
                password.parentElement.parentElement.classList.add("has-success");
                document.getElementById('errPassword').innerHTML = "";
                return true;
            }
        }

        function validatePassword1() {
            
              //(?=.*\d)          // should contain at least one digit
              //(?=.*[a-z])       // should contain at least one lower case
              //(?=.*[A-Z])       // should contain at least one upper case
              //[a-zA-Z0-9]{8,}   // should contain at least 8 from the mentioned characters
            
            var password1 = document.getElementById('<%=txtPassword.ClientID%>');
            var password = document.getElementById('<%=txtPassword2.ClientID%>');
            var passwordRegex = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])[0-9a-zA-Z]{8,}$/;
            if (!passwordRegex.test(password.value)) {
                password.parentElement.parentElement.classList.add("has-error");
                document.getElementById('errPassword1').innerHTML = "Mật khẩu tối thiểu từ 8 ký tự, tối thiểu 1 ký tự số,  1 ký tự viết hoa,  1 ký tự viết thường";
                password.focus();
                return false;
            } else if (password.value.trim()!=password1.value.trim()) {
                password.parentElement.parentElement.classList.add("has-error");
                document.getElementById('errPassword1').innerHTML = "Mật khẩu nhập lại không đúng";
                password.focus();
                return false;
            } else {
                password.parentElement.parentElement.classList.remove("has-error");
                password.parentElement.parentElement.classList.add("has-success");
                document.getElementById('errPassword1').innerHTML = "";
                return true;
            }
        }

        function validatePhoneNumber() {
            var regexPhoneNumber = /^(0)([0-9]{8,10})*$/;
            var phoneNumber = document.getElementById('<%=txtPhoneNumber.ClientID%>');
            if (!regexPhoneNumber.test(phoneNumber.value)) {
                document.getElementById('errPhoneNumber').innerHTML = "Số điện thoại không đúng";
                phoneNumber.parentElement.parentElement.classList.add("has-error");
                phoneNumber.focus();
                return false;
            } else {
                document.getElementById('errPhoneNumber').innerHTML = "";
                phoneNumber.parentElement.parentElement.classList.remove("has-error");
                phoneNumber.parentElement.parentElement.classList.add("has-success");
                return true;
            }
        }
        function checkNotNull(id) {
            //alert(id);
            var value = document.getElementById(id);
            if (value.value.trim().length == 0) {
                document.getElementById("err" + id).innerHTML = "Không được bỏ trống trường giá trị";
                value.parentElement.parentElement.classList.add("has-error");
                return false;
            } else {
                document.getElementById("err" + id).innerHTML = "";
                value.parentElement.parentElement.classList.remove("has-error");
                value.parentElement.parentElement.classList.add("has-success");
                return true;
            }
        }

        function validateEmail() {
            var email = document.getElementById('<%=txtEmail.ClientID%>');
            var regexEmail = /^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$/;
            if (email.value.trim().length == 0) {
                document.getElementById('<%=errEmail.ClientID%>').innerHTML = "Email không được để trống";
                email.parentElement.parentElement.classList.add("has-error");
                email.focus();
                return false;
            } else if (!regexEmail.test(email.value)) {
                document.getElementById('<%=errEmail.ClientID%>').innerHTML = "Email không đúng định dạng <br /> Ví dụ: example@email.com";
                email.parentElement.parentElement.classList.add("has-error");
                email.focus();
                return false;
            } else {
                document.getElementById('<%=errEmail.ClientID%>').innerHTML = "";
                email.parentElement.parentElement.classList.remove("has-error");
                email.parentElement.parentElement.classList.add("has-success");
                return true;
            }
        }

        $(document).ready(
            function () {
                $("#<%=btnSubmit.ClientID%>").click(function () {
                    if (!checkNotNull("<%=txtFullName.ClientID%>")) return false;
                    if (!checkNotNull("<%=dateDob.ClientID%>")) return false;
                    if (!checkNotNull("<%=listGender.ClientID%>")) return false;
                    if (!checkNotNull("<%=txtAddress.ClientID%>")) return false;
                    if (!validatePhoneNumber()) return false;
                    if (!validateEmail()) return false;
                    if(!validateUsername()) return false;
                    if (!validatePassword()) return false;
                    if (!validatePassword1()) return false;
                    return true;
                });
            }
            );

    </script>
</asp:Content>
