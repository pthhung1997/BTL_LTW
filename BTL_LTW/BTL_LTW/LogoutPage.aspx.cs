using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_LTW
{
    public partial class LogoutPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!(bool)Session["login"])
            {
                Response.Write("<script>alert('Bạn chưa đăng nhập');window.location='http://localhost:55872/LoginPage.aspx';</script>");
            }
            Session["login"] = false;
            Session["username"] = "";
            Session["user"] = null;
            Response.Write("<script> alert('Bạn đã đăng xuất thành công');" +
                   "window.location='http://localhost:55872/HomePage.aspx';</script>");
        }

        protected void btnHomePage_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }
    }
    
}