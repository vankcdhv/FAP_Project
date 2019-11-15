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
    public partial class Attendance_Report : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Account"] == null)
                Response.Redirect("Login.aspx");

            loadDataListBox();
            showAttendanceReport();
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

            String subjectID = lbSubject.SelectedValue.ToString();
            dgv.DataSource = SubjectDAO.Instance.getCourseInfo(subjectID, subjectID);
            dgv.DataBind();
        }

        protected void lbSubject_SelectedIndexChanged(object sender, EventArgs e)
        {
            showAttendanceReport();
        }
    }
}