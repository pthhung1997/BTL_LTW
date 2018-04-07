using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_LTW
{
    public partial class saveProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!(bool)Session["login"])
            {
                Response.Write("<script>alert('Bạn chưa đăng nhập');window.location='http://localhost:55872/LoginPage.aspx';</script>");
            }
            Users user = (Users)Session["user"];
            user.fullName = Request.Form["ctl00$content$txtFullName"];
            user.gender = Request.Form["ctl00$content$listGender"];
            user.dob = Request.Form["ctl00$content$dateDob"];
            user.address = Request.Form["ctl00$content$txtAddress"];
            user.phoneNumber = Request.Form["ctl00$content$txtPhoneNumber"];
            Session["user"] = user;
            List<Users> users = (List<Users>)Application["users"];
            for (int i = 0; i < users.Count; ++i)
            {
                if (users[i].userName.Equals(user.userName))
                {
                    users[i] = user;
                    break;
                }
            }

            ScriptManager.RegisterStartupScript(this, this.GetType(), "none",
                   "<script type=\"text/javascript\" language=\"Javascript\" >"
                   + "window.location='http://localhost:55872/ProfilePage.aspx';</script>", false);
        }
    }
}