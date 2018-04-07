using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_LTW
{
    public partial class LoginPage : System.Web.UI.Page
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
            string username = txtUsername.Text;
            string password = txtPassword.Text;

            if(checkLogin(username, password))
            {
                Session["login"] = true;
                Session["username"] = username;
                //Response.Write("<script> alert('Bạn đã đăng nhập thành công');" +
                //   "window.location='http://localhost:55872/HomePage.aspx';</script>");
                ScriptManager.RegisterStartupScript(this, this.GetType(), "none",
                   "<script type=\"text/javascript\" language=\"Javascript\" >"
                   + "$('#loginSuccess').modal('show');</script>", false);
            }
            else
            {
                    Response.Write("<script> alert('Tài khoản hoặc mật khẩu không đúng ')</script>");
                
            }
        }

        private bool checkLogin(string username, string password)
        {
            bool res = false;
            List<Users> users = (List<Users>)Application["users"];
            for(int i = 0; i < users.Count; ++i)
            {
                if(users[i].userName.Equals(username) && users[i].passWord.Equals(password))
                {
                    Session["user"] = users[i];
                    res = true;
                    break;
                }
            }
            return res;
        }
    }
}