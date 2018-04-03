using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_LTW
{
    public partial class RegPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Users user = new Users();
            user.fullName = txtFullName.Text;
            user.gender = litsGender.SelectedValue.ToString();
            user.dob = dateDob.ToString();
            user.address = txtAddress.Text;
            user.email = txtEmail.Text;
            user.phoneNumber = txtPhoneNumber.Text;
            user.userName = txtUsername.Text;
            user.passWord = txtPassword.Text;

            if (checkExist(user))
            {
                List<Users> users = (List<Users>)Application["users"];
                if (users == null) users = new List<Users>();
                users.Add(user);
                Session["users"] = users;
                Response.Write("<script> alert('Bạn đã đăng kí thành công');" +
                    "window.location='http://localhost:55872/LoginPage.aspx';</script>");
            }
        }

        private bool checkExist(Users data)
        {
            bool res = true;
            List<Users> users = (List<Users>)Application["users"];
            if (users == null || users.Count == 0) return res;
            Users user;
            for (int i = 0; i < users.Count; ++i)
            {
                user = users[i];
                if (data.email.Equals(user.email))
                {
                    res = false;
                    errEmail.Text = "Email đã được sử dụng!";
                }else { errEmail.Text = ""; }
                if (data.userName.Equals(user.userName))
                {
                    res = false;
                    errUsername.Text = "Tên đăng nhập đã được sử dụng!";
                }
                else { errUsername.Text = ""; }
            }
            return res;
        }
    }
}