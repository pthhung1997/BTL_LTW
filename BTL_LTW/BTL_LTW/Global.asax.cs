﻿using System;
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
            for (int i = 1; i <= 9; ++i)
            {
                products.Add(new Product() { Id = i, Name = "Bàn Phím " + i.ToString() , Path = "image\\" + i + ".jpg", Describe = "Bàn phím hịn nhấp shop" , Price = (i % 10) * 1000000 + 500000});
            }
            for (int i = 10; i <= 19; ++i)
            {
                products.Add(new Product() { Id = i, Name = "RAM " + i.ToString(), Path = "image\\" + i + ".jpg", Describe = "Ram phím hịn nhất shop", Price = (i % 10) * 1000000 + 500000 });
            }
            for (int i = 20; i <= 24; ++i)
            {
                products.Add(new Product() { Id = i, Name = "Ổ cứng " + i.ToString(), Path = "image\\" + i + ".jpg", Describe = "Ổ cứng SSD nhất shop", Price = (i / 10) * 10000000 + 500000 });
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