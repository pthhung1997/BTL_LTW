using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_LTW
{
    public partial class CartPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                List<Product> products = (List<Product>)Session["carts"];
                if (products == null || products.Count == 0)
                {
                    lblErr.Text = "Giỏ hàng của bạn trống!";
                    //btnBuy.Visible = false;
                }
                else
                {
                    lwCarts.DataSource = products;
                    lwCarts.DataBind();

                }
            }
        }

        protected void btnHomePage_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }

        protected void btnBuy_Click(object sender, EventArgs e)
        {
            if ((bool)Session["login"])
            {
                Response.Redirect("BuySuccessPage.aspx");
            }
            else
            {
                Response.Write("<script> alert('Bạn chưa đăng nhập thành công, vui lòng đăng nhập để thanh toán!');" +
                   "window.location='http://localhost:55872/LoginPage.aspx';</script>");
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            int id = Convert.ToInt32(btn.CommandArgument.ToString());
            List<Product> carts = (List<Product>)Session["carts"];
            for (int i = carts.Count - 1; i >= 0; --i)
            {
                if (carts[i].Id == id)
                {
                    carts.RemoveAt(i);
                    break;
                }
            }
            Session["carts"] = carts;
            Response.Write("<script> alert('Thêm vào giỏ hàng thành công!'); </script>");
            Response.Redirect("CartPage.aspx");
        }
    }
}