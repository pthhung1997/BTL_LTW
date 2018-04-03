using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace BTL_LTW
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            List<Product> products = new List<Product>();
            Product p;
            for(int i = 1; i <= 7; ++i)
            {
                p = new Product();
                p.Id = i;
                p.Name = "Bàn Phím " + i;
                p.Path = "image\\" + i + ".jpg";
                p.Describe = "Bàn phím hịn nhất shop!";
                p.Price = 1000000;
                products.Add(p);
            }
            
            Application["products"] = products;
            Application["users"] = new List<Users>();
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Session["login"] = false;
            Session["username"] = "";
            Session["cartsCount"] = 0;
            Session["carts"] = new List<Product>();
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}