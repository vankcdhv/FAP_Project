using Fap_Project.App_Code.DAO;
using Fap_Project.App_Code.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fap_Project
{
    public partial class Attendance_Report : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Account"] == null)
                Response.Redirect("Login.aspx");
            if (!IsPostBack)
            {
                loadComponents();
                loadDataListBox();
                showAttendanceReport();
            }
        }

        public void loadDataListBox()
        {
            Account account = (Account)Session["Account"];
            int accountID = account.Id;

            Student temp = StudentDAO.Instance.getStudentByAccountID(accountID);


            lbSubject.DataTextField = "Name";
            lbSubject.DataValueField = "Id";

            List<Subject> list = new List<Subject>();
            
            list.AddRange(SubjectDAO.Instance.getAllSubjectIDByStudent(temp));
            lbSubject.DataSource = list;
            lbSubject.SelectedIndex = 0;
            lbSubject.DataBind();

            
        }

        public void showAttendanceReport()
        {
            Account account = (Account)Session["Account"];
            int accountID = account.Id;

            Student temp = StudentDAO.Instance.getStudentByAccountID(accountID);
            String studentID = temp.Rollnumber;
            //String studentID = "HE130952";

            String subjectID = lbSubject.SelectedValue.ToString();
            //String subjectID = "PRJ301";
            DataTable dtb = SubjectDAO.Instance.getCourseInfo(studentID, subjectID);
            dgv.DataSource = dtb;
            dgv.DataBind();
            for(int i =0; i< dtb.Rows.Count;i++)
            {
                DateTime date = Convert.ToDateTime(dtb.Rows[i]["Day"]);
                dgv.Rows[i].Cells[0].Text = date.ToShortDateString();
            }
        }

        protected void lbSubject_SelectedIndexChanged(object sender, EventArgs e)
        {
            showAttendanceReport();
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