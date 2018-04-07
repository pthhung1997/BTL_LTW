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
                List<CustomProduct> products = (List<CustomProduct>)Session["carts"];
                if (products == null || products.Count == 0)
                {
                    lblErr.Text = "Giỏ hàng của bạn trống!";
                    btnBuy.Visible = false;
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

                }
            }
        }


        protected void btnBuy_Click(object sender, EventArgs e)
        {
            if ((bool)Session["login"])
            {
                Response.Redirect("BillPage.aspx");
            }
            else
            {
                Response.Write("<script> alert('Bạn chưa đăng nhập. Vui lòng đăng nhập để thanh toán!');" +
                   "window.location='http://localhost:55872/LoginPage.aspx';</script>");
            }
        }

        protected void btnDeleteAProduct_Click(object sender, EventArgs e)
        {
            ImageButton btn = (ImageButton)sender;
            int count = 0;
            int id = Convert.ToInt32(btn.CommandArgument.ToString());
            List<CustomProduct> carts = (List<CustomProduct>)Session["carts"];
            Product product = new Product();
            foreach (CustomProduct custom in carts)
            {
                if (custom.product.Id == id)
                {
                    product = custom.product;
                    count = custom.Count;
                    break;
                }
            }

            if (count == 1)
            {
                btnDel.CommandArgument = Convert.ToString(id);
                ScriptManager.RegisterStartupScript(this, this.GetType(), "none",
                   "<script type=\"text/javascript\" language=\"Javascript\" >"
                   + "$('#myModal').modal('show');</script>", false);
                return;
            }
            carts = CustomProduct.removeAProduct(product, carts);

            int cartsCount = (int)Session["cartsCount"];
            cartsCount--;

            Session["cartsCount"] = cartsCount;
            Session["carts"] = carts;

            resetValue();

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            int id = Convert.ToInt32(btn.CommandArgument.ToString());
            int count = 0;
            List<CustomProduct> carts = (List<CustomProduct>)Session["carts"];
            Product product = new Product();
            foreach (CustomProduct custom in carts)
            {
                if (custom.product.Id == id)
                {
                    product = custom.product;
                    count = custom.Count;
                    break;
                }
            }
            
            btnDel.CommandArgument = Convert.ToString(id);
            ScriptManager.RegisterStartupScript(this, this.GetType(), "none",
               "<script type=\"text/javascript\" language=\"Javascript\" >"
               + "$('#myModal').modal('show');</script>", false);


        }
        protected void btnDetail_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            Response.Redirect("DetailPage.aspx?id=" + btn.CommandArgument.ToString());
        }

        protected void btnAddAProduct_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton btn = (ImageButton)sender;
            int id = Convert.ToInt32(btn.CommandArgument.ToString());
            List<CustomProduct> carts = (List<CustomProduct>)Session["carts"];
            Product product = new Product();
            foreach (CustomProduct custom in carts)
            {
                if (custom.product.Id == id)
                {
                    product = custom.product;
                    break;
                }
            }

            carts = CustomProduct.addAProduct(product, carts);

            int cartsCount = (int)Session["cartsCount"];
            cartsCount++;

            Session["cartsCount"] = cartsCount;
            Session["carts"] = carts;

            resetValue();
        }

        private void resetValue()
        {
            int prices = 0;
            int cartsCount = (int)Session["cartsCount"];
            List<CustomProduct> carts = (List<CustomProduct>)Session["carts"];
            foreach (CustomProduct customProduct in carts)
            {
                prices += customProduct.Count * customProduct.product.Price;
            }

            lblPrices.Text = prices.ToString("0,0") + " VND";
            Label lblCartCount = (Label)Master.FindControl("lblCartCount");
            lblCartCount.Text = cartsCount.ToString();
            lwCarts.DataSource = carts;
            lwCarts.DataBind();
        }

        protected void btnDel_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;

            int id = Convert.ToInt32(btn.CommandArgument.ToString());
            int count = 0;
            List<CustomProduct> carts = (List<CustomProduct>)Session["carts"];
            Product product = new Product();
            foreach (CustomProduct custom in carts)
            {
                if (custom.product.Id == id)
                {
                    product = custom.product;
                    count = custom.Count;
                    break;
                }
            }

            carts = CustomProduct.removeAllProduct(product, carts);

            int cartsCount = (int)Session["cartsCount"];
            cartsCount -= count;

            Session["cartsCount"] = cartsCount;
            Session["carts"] = carts;

            resetValue();
        }
    }
}