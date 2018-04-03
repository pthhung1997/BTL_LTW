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
            List<Product> carts = (List<Product>)Session["carts"];
            float prices = 0;
            for(int i = 0; i < carts.Count; ++i)
            {
                prices += carts[i].Price;
            }
            Users user = (Users)Session["user"];
            lblPrice.Text = prices.ToString();
            lblAddress.Text = user.address;
            Session["carts"] = new List<Product>();
        }

        protected void btnHomePage_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }
    }
}