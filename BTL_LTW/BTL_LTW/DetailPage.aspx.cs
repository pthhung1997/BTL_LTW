using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_LTW
{
    public partial class DetailPage : System.Web.UI.Page
    {
        private int iId;
        protected void Page_Load(object sender, EventArgs e)
        {
           
            try
            {
                string id = Request.QueryString["id"].ToString();
                iId = Convert.ToInt32(id);
                List<Product> products = (List<Product>)Application["products"];
                Product product = products[iId - 1];
                img.ImageUrl = product.Path;
                lblName.Text = product.Name;
                lblDescribe.Text = product.Describe;
                lblPrices.Text = product.Price.ToString();
            } catch (Exception ex)
            {
                Response.Write("<script> alert('Chọn 1 sản phẩm để xem!');" +
                   "window.location='http://localhost:55872/HomePage.aspx';</script>");
            }
            
            
            
        }

        protected void btnAddToCarts_Click(object sender, EventArgs e)
        {
            List<Product> carts = (List<Product>)Session["carts"];
            List<Product> products = (List<Product>)Application["products"];
            if (carts == null) carts = new List<Product>();
            for (int i = 0; i < products.Count; ++i)
            {
                if (products[i].Id == iId)
                {
                    carts.Add(products[i]);
                    break;
                }
            }
            int count = (int)Session["cartsCount"];
            if (count == null) count = 0;
            count++;
            Session["cartsCount"] = count;
            Session["carts"] = carts;
            Response.Write("<script> alert('Thêm vào giỏ hàng thành công!');"+
                "window.location='http://localhost:55872/HomePage.aspx';</script>");
        }
    }
}