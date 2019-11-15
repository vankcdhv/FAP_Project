﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Fap_Project.App_Code.DTO;
using Fap_Project.App_Code.DAO;

namespace Fap_Project
{
    public partial class StudentGrade : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
            {
                Account account = (Account)Session["Account"];
                LoadDataForListBox();
                LoadDataForDGV();
                lbStudent.Text = Account
            }
        }

        private void LoadDataForListBox()
        {
            lbSubject.DataTextField = "name";
            lbSubject.DataValueField = "id";
            lbSubject.DataSource = SubjectDAO.Instance.getAllSubjects();
            lbSubject.SelectedIndex = 0;
            lbSubject.DataBind();
            
        }

        private void LoadDataForDGV()
        {
            string studentID = "HE130395";
            string subjectID = lbSubject.SelectedValue;
            List<Mark> list = MarkDAO.Instance.getMarkBySubjectIDAndStudentID(subjectID, studentID);
            dgvListMark.DataSource = list;
            dgvListMark.DataBind();

            // Calculate Average Mark
            int i = 0;
            double sum = 0;
            foreach(Mark m in list)
            {
                sum += m.Value;
                i++;
            }
            double average = (double)(sum / i);
            lbAverage.Text = average.ToString();
            if (average > 5.0)
            {
                lbStatus.Text = "PASSED";
            }
            else
            {
                lbStatus.Text = "NOT PASSED";
            }

        }

        protected void lbSubject_SelectedIndexChanged1(object sender, EventArgs e)
        {
            LoadDataForDGV();
        }
    }
}