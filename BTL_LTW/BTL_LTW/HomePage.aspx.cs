using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_LTW
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                List<Product> products = (List<Product>)Application["products"];
                lwHomePage.DataSource = products;
                lwHomePage.DataBind();
            }
        }

        protected void btnAddToCarts_Click(object sender, EventArgs e)
        {
            List<Product> products = (List<Product>)Application["products"];
            Button btn = (Button)sender;
            int id = Convert.ToInt32(btn.CommandArgument.ToString());
            List<Product> carts = (List<Product>)Session["carts"];
            if (carts == null) carts = new List<Product>();
            
            for (int i = 0; i < products.Count; ++i)
            {
                if (products[i].Id == id)
                {
                    carts.Add(products[i]);
                    break;
                }
            }

            Session["carts"] = carts;
            Response.Write("<script> alert('Thêm vào giỏ hàng thành công!'); </script>");
        }

        protected void btnDetail_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            Response.Redirect("DetailPage.aspx?id=" + btn.CommandArgument.ToString());
        }

    }
}