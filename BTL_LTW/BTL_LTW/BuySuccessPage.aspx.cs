using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_LTW
{
    public partial class BuySuccessPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!(bool)Session["login"])
            {
                Response.Write("<script>alert('Bạn chưa đăng nhập');window.location='http://localhost:55872/LoginPage.aspx';</script>");
            }
            Session["carts"] = new List<CustomProduct>();
        }

        protected void btnHomePage_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }
    }
}