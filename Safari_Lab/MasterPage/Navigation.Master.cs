using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Safari_Lab
{
    public partial class Navigation : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void ddListHome_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(ddListHome.SelectedValue == "Home")
            {
                Response.Redirect("masterHome.aspx");
            }    
            else if(ddListHome.SelectedValue == "\\/")
            {
                ddListHome.SelectedValue = "Home";
            }
            else
            {
                System.Diagnostics.Process.Start("https://traveltriangle.com/blog/zoos-in-canada/");
                ddListHome.SelectedValue = "Home";
            }

        }

        protected void ddListPages_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(ddListPages.SelectedValue == "Pages")
            {
                Response.Redirect("masterPages.aspx");
            }
            else if(ddListPages.SelectedValue == "Park Safari")
            {
                ddListPages.SelectedValue = "Pages";
                System.Diagnostics.Process.Start("https://parcsafari.com/en/");
            }
            else
            {
                ddListPages.SelectedValue = "Pages";
                System.Diagnostics.Process.Start("https://zoodegranby.com/en/");
            }
        }
    }
}