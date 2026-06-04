using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineCakeShop.User
{
    public partial class User : System.Web.UI.MasterPage
    {
        private object txtUsername;
        private object Text;

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Request.Url.AbsoluteUri.ToString().Contains("Default.aspx"))
            {
                form1.Attributes.Add("class", "sub_page");
            }
            else
            {
                form1.Attributes.Remove("class");


                Control SliderUserControl = (Control)Page.LoadControl("SliderUserControl.ascx");


                pnlSliderUC.Controls.Add(SliderUserControl);

                Control categoriesUserControl = (Control)Page.LoadControl("categoriesUserControl.ascx");


                pnlCategoriesUC.Controls.Add(categoriesUserControl);

                Control AboutUserControl = (Control)Page.LoadControl("AboutUserControl.ascx");


                pnlAboutUC.Controls.Add(AboutUserControl);
            }

            if (Session["userId"] != null)
            {
                lbLoginOrLogout.Text = "Logout";
                lbSignUp.Text = "Welcome !!!" ;
            }
            else
            {
                lbLoginOrLogout.Text = "Login";
                lbSignUp.Text = "SignUp";
            }

           

        }

        protected void lbRegisterOrProfile_Click(object sender, EventArgs e)
        {

        }

       

        protected void lbLoginOrLogout_Click1(object sender, EventArgs e)
        {
            if (Session["userId"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                Session.Abandon();
                Response.Redirect("Login.aspx");
            }
        }

        protected void lbSignUp_Click(object sender, EventArgs e)
        {
            if (Session["userId"] == null)
            {
                Response.Redirect("Registration.aspx");
            }
            else
            {
                Session.Abandon();
                Response.Redirect("Registration.aspx");
            }
        }
    }
}