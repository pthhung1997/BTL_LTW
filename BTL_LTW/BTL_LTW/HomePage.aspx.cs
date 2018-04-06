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
            Product product = null;
            Button btn = (Button)sender;
            int id = Convert.ToInt32(btn.CommandArgument.ToString());
            List<CustomProduct> carts = (List<CustomProduct>)Session["carts"];
            if (carts == null) carts = new List<CustomProduct>();
            
            for (int i = 0; i < products.Count; ++i)
            {
                if (products[i].Id == id)
                {
                    product = products[i];
                    break;
                }
            }
            int count = (int)Session["cartsCount"];

            carts = CustomProduct.addAProduct(product, carts);
            count++;

            Session["cartsCount"] = count;
            Session["carts"] = carts;
            Response.Write("<script> alert('Thêm vào giỏ hàng thành công!'); window.location='http://localhost:55872/HomePage.aspx';</script>");
        }

        protected void btnDetail_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            Response.Redirect("DetailPage.aspx?id=" + btn.CommandArgument.ToString());
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            String price = "";
            int fPrice = 0;
            int maxPrice = int.MaxValue;
            String name = "";
            List<Product> products = (List<Product>)Application["products"];
            List<Product> result = new List<Product>();
            if (rbPrice.SelectedItem != null)
            {
                price = rbPrice.SelectedItem.Value.ToString();
                fPrice = int.Parse(price);
                fPrice *= 1000000;
                maxPrice = fPrice + 5000000;
                if (fPrice == 20000000) maxPrice = int.MaxValue;
            }
            if(txtNameProduct.Text.Trim() != null || txtNameProduct.Text.Trim().Count() > 0)
            {
                name = txtNameProduct.Text.Trim();
            }

            foreach(Product product in products)
            {
                if (product.Name.ToLower().Contains(name.ToLower()) && (product.Price >= fPrice && product.Price <= maxPrice)) result.Add(product);
            }


           // Response.Write("<script> alert('"+price + name +"');</script>");

            btnCanceSearch.Visible = true;
            lwHomePage.DataSource = result;
            lwHomePage.DataBind();
        }

        protected void btnCanceSearch_Click(object sender, EventArgs e)
        {
            btnCanceSearch.Visible = false;
            txtNameProduct.Text = "";
            rbPrice.SelectedValue = null;
            List<Product> products = (List<Product>)Application["products"];
            lwHomePage.DataSource = products;
            lwHomePage.DataBind();
        }

    }
}