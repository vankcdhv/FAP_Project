using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FAP_Project.Components
{
    public partial class Header1 : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Add("account", "Le Thien Van");
        }
    }
}