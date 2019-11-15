using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Fap_Project.App_Code.DAO;
using Fap_Project.App_Code.DTO;

namespace Fap_Project
{
    public partial class AddMark : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Account)Session["Account"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                Account account = (Account)Session["Account"];
                if (account.Type != 1)
                {
                    Response.Redirect("Login.aspx");
                }
                else
                {
                    
                }
            }

        }

        protected void lbClass_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void lbSubject_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        void loadComponents()
        {
            string load_control = "Components/Header.ascx";
            Header.Controls.Add(Page.LoadControl(load_control));
        }

    }
}