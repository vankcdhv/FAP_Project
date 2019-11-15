using Fap_Project.App_Code.DAO;
using Fap_Project.App_Code.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fap_Project
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session["Account"] = null;
            }
            loadComponents();
        }

        void loadComponents()
        {
            string load_control = "Components/Header.ascx";
            Header.Controls.Add(Page.LoadControl(load_control));
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            String username = tbusername.Text;
            String password = tbpassword.Text;
            Account account = AccountDAO.Instance.Login(username, password);
            if (account == null)
            {
                Response.Write("<script>alert('Wrong username or password')</script>");
                return;
            }
            else
            {
                Session["Account"] = account;
                Response.Redirect("Index.aspx");
            }
        }
    }
}