﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FAP_Project
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string load_control = "Components/Header.ascx";
            Header.Controls.Add(Page.LoadControl(load_control));
            Session["account"] = null;
        }
    }
}