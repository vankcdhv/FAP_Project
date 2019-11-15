﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using Fap_Project.App_Code.DTO;
using FAP_Project.App_Code.DAO;

namespace Fap_Project.App_Code.DAO
{
    public class SubjectDAO
    {
        private SubjectDAO() { }

        private static SubjectDAO instance;

        public static SubjectDAO Instance
        {
            get
            {
                if (instance == null) instance = new SubjectDAO();
                return instance;
            }

            private set
            {
                instance = value;
            }
        }
        // Function By Nguyen Huy Hoang
        public List<Subject> getAllSubjects()
        {
            List<Subject> list = new List<Subject>();
            String query = "SELECT * FROM  Subjects ";
            DataTable data = DataProvider.Instance.excuteQuery(query, null);
            foreach (DataRow dr in data.Rows)
            {
                string id = dr["SubjectID"].ToString();
                string name = dr["Name"].ToString();
                Subject s = new Subject(id, name);
                list.Add(s);
            }
            return list;
        }

        // Function By Nguyen Huy Hoang
        public List<Subject> getSubjectByClassID(int classID)
        {
            List<Subject> list = new List<Subject>();
            String query = @"SELECT DISTINCT s.SubjectID ,s.Name
                            FROM ClassSubjects cs, Subjects s
                            WHERE  cs.SubjectID = s.SubjectID  and cs.ClassID =  " + classID;
            DataTable data = DataProvider.Instance.excuteQuery(query, null);
            foreach (DataRow dr in data.Rows)
            {
                string id = dr["SubjectID"].ToString();
                string name = dr["Name"].ToString();
                Subject s = new Subject(id, name);
                list.Add(s);
            }
            return list;
        }

        //Dũng , getAllSubject by Student
        public List<Subject> getAllSubjectIDByStudent(Student std)
        {
            List<Subject> list = new List<Subject>();
            String studentID = std.Rollnumber;

            String query = "EXEC dbo.getSubjectIDByStudentID @StudentID = " + studentID;

            DataTable data = DataProvider.Instance.excuteQuery(query, null);
            foreach (DataRow dr in data.Rows)
            {
                string id = dr["SubjectID"].ToString();
                string name = dr["Name"].ToString();
                Subject s = new Subject(id, name);
                list.Add(s);
            }

            return list;
        }

        public DataTable getCourseInfo(String studentID, String subjectID)
        {
            //DataTable data = null;
            String query = "EXEC dbo.GetAllBySubjecIDtAndStudentID @StudentID = " + studentID + ", @SubjectID = " + subjectID;
            DataTable data = DataProvider.Instance.excuteQuery(query, null);

            return data;

        }
    

}
}