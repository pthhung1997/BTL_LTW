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
            if ((bool)Session["login"])
            {
                Response.Write("<script>window.location='http://localhost:55872/HomePage.aspx';</script>");
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Users user = new Users();
            user.fullName = txtFullName.Text;
            user.gender = listGender.SelectedValue.ToString();
            user.dob = dateDob.Value;
            user.address = txtAddress.Text;
            user.email = txtEmail.Text;
            user.phoneNumber = txtPhoneNumber.Text;
            user.userName = txtUsername.Text;
            user.passWord = txtPassword.Text;
            Response.Write("<script> alert('"+user.gender+"');</script>");
            if (checkExist(user))
            {
                List<Users> users = (List<Users>)Application["users"];
                if (users == null) users = new List<Users>();
                users.Add(user);
                Application["users"] = users;
                ScriptManager.RegisterStartupScript(this, this.GetType(), "none",
                   "<script type=\"text/javascript\" language=\"Javascript\" >"
                   + "$('#regSuccess').modal('show');</script>", false);
                //Response.Write("<script> alert('Bạn đã đăng nhập thành công');" +
                //   "window.location='http://localhost:55872/HomePage.aspx';</script>");
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