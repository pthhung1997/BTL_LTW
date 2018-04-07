using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_LTW
{
    public partial class ProfilePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!(bool)Session["login"])
            {
                Response.Write("<script>alert('Bạn chưa đăng nhập');window.location='http://localhost:55872/LoginPage.aspx';</script>");
            }
            Users user = (Users)Session["user"];
            txtAddress.Text = user.address;
            txtFullName.Text = user.fullName;
            txtPhoneNumber.Text = user.phoneNumber;
            listGender.SelectedValue = user.gender;
            dateDob.Value = user.dob;
        }

        //protected void btnSubmit_Click(object sender, EventArgs e)
        //{

        //ScriptManager.RegisterStartupScript(this, this.GetType(), "none",
        //       "<script type=\"text/javascript\" language=\"Javascript\" >"
        //       + "$('#saveProfile').modal('show');</script>", false);
        //}
    }
}