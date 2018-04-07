using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_LTW
{
    public partial class BillPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                List<CustomProduct> products = (List<CustomProduct>)Session["carts"];
                if (!(bool)Session["login"])
                {
                    Response.Write("<script>alert('Bạn chưa đăng nhập');window.location='http://localhost:55872/LoginPage.aspx';</script>");
                }
                if (products == null || products.Count == 0)
                {
                    lblErr.Text = "Giỏ hàng của bạn trống!";
                    btnSubmit.Visible = false;
                }
                else
                {
                    int prices = 0;
                    lwCarts.DataSource = products;
                    lwCarts.DataBind();
                    foreach (CustomProduct customProduct in products)
                    {
                        prices += customProduct.Count * customProduct.product.Price;
                    }

                    lblPrices.Text = prices.ToString("0,0") + " VND";
                    Users user = (Users)Session["user"];
                    lblName.Text = user.fullName;
                    lblAddress.Text = user.address;
                    lblPhoneNumber.Text = user.phoneNumber;
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if ((bool)Session["login"])
            {
                Response.Redirect("BuySuccessPage.aspx");
            }

        }
    }
}