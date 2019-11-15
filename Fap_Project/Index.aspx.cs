﻿using Fap_Project.App_Code.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FAP_Project
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Account"]==null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                Account account = (Account)Session["Account"];
                if (account.Type == 1)
                {
                    Response.Redirect("TeacherHome.aspx");
                }
                else
                {
                    Response.Redirect("StudentHome.aspx");
                }
            }
            if (!IsPostBack)
            {
                loadComponents();
            }
        }

        void loadComponents()
        {
            string load_control = "Components/Header.ascx";
            Header.Controls.Add(Page.LoadControl(load_control));
            load_control = "Components/Footer.ascx";
            Footer.Controls.Add(Page.LoadControl(load_control));
        }
    }
}