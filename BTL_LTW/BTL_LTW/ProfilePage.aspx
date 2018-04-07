<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ProfilePage.aspx.cs" Inherits="BTL_LTW.ProfilePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <link href="css/ProfilePageCss.css" rel="stylesheet" />
    <script src="scripts/bootstrap.min.js"></script>
    <div class="container">
        <h1 style="text-align: center">Thông tin cá nhân</h1>
        <form id="formReg" runat="server" action="saveProfile.aspx" method="post">
            <div class="container col-md-offset-2 col-md-10">
                <div class="form-group row">
                    <label for="<%=txtFullName.ClientID%>" class="col-md-2 control-label">Họ và tên </label>
                    <div class="col-md-5">
                        <asp:TextBox required ID="txtFullName" name="txtUsername" runat="server" class="form-control" placeholder="Họ và tên" onChange="checkNotNull(this.id)" ></asp:TextBox>
                    </div>
                    <span id="err<%=txtFullName.ClientID%>" class="help-block col-md-4" text=""></span>
                </div>

                <div class="form-group row">
                    <label for="<%=dateDob.ClientID%>" class="col-md-2 control-label">Ngày sinh</label>
                    <div class="col-md-5">
                        <input required type="date" name="dateDob" id="dateDob" class="form-control" runat="server" placeholder="Ngày sinh" onchange="checkNotNull(this.id)" />
                    </div>
                    <span id="err<%=dateDob.ClientID%>" class="help-block col-md-4" text=""></span>
                </div>

                <div class="form-group row">
                    <label for="<%=listGender.ClientID%>" class="col-md-2 control-label">Giới tính</label>
                    <div class="col-md-5">
                        <asp:DropDownList required ID="listGender" name="listGender" runat="server" onChange="checkNotNull(this.id)" class="form-control" placeholder="Chọn giới tính">
                            <asp:ListItem Value="nam">Nam</asp:ListItem>
                            <asp:ListItem Value="nu">Nữ</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <span id="err<%=listGender.ClientID%>" class="help-block col-md-4" text=""></span>
                </div>

                <div class="form-group row">
                    <label for="<%=txtAddress.ClientID%>" class="col-md-2 control-label">Địa chỉ</label>
                    <div class="col-md-5">
                        <asp:TextBox required ID="txtAddress" name="txtAddress" runat="server" class="form-control" onChange="checkNotNull(this.id)" placeholder="Địa chỉ"></asp:TextBox>
                    </div>
                    <span id="err<%=txtAddress.ClientID%>" class="help-block col-md-4" text=""></span>
                </div>

                <div class="form-group row">
                    <label for="<%=txtPhoneNumber.ClientID%>" class="col-md-2 control-label">Số điện thoại</label>
                    <div class="col-md-5">
                        <asp:TextBox required ID="txtPhoneNumber" name="txtPhoneNumber" class="form-control" runat="server" placeholder="Số điện thoại" onChange="validatePhoneNumber()"></asp:TextBox>
                    </div>
                    <span id="errPhoneNumber" class="help-block col-md-4" text=""></span>
                </div>

                
                <div class="row">
                    <div class="col-md-offset-6">
                        
                        <input type="submit" class="btn btn-default"value="Lưu" />
                    </div>
                </div>

            </div>
           <%-- <div class="modal fade" id="saveProfile" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title" id="myModalLabel">Lưu thành công</h4>
                        </div>
                        <div class="modal-footer">
                            <a type="button" class="btn btn-default" href="/HomePage.aspx">Trang chủ</a>
                        </div>
                    </div>
                </div>
            </div>--%>
        </form>

        <script type="text/javascript"> 
        <%--var username = document.getElementById('<%=txtPassword.ClientID %>');
        username.parentElement.parentElement.classList.add("has-error");--%>
        
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

  <%--  $(document).ready(
        function () {
            $("#<%=btnSubmit.ClientID%>").click(function () {
                if (!checkNotNull("<%=txtFullName.ClientID%>")) return false;
                if (!checkNotNull("<%=dateDob.ClientID%>")) return false;
                if (!checkNotNull("<%=listGender.ClientID%>")) return false;
                if (!checkNotNull("<%=txtAddress.ClientID%>")) return false;
                if (!validatePhoneNumber()) return false;
                return true;
            });
        }
            );--%>

    </script>
    </div>
</asp:Content>
