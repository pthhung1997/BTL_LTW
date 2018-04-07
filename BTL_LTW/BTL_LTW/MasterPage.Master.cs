using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_LTW
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(( bool)Session["login"])
              lblUsername.Text =  (String)Session["username"];
              lblCartCount.Text = ((int)Session["cartsCount"]).ToString();
        }
    }
}