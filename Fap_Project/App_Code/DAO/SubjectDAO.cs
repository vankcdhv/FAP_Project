using System;
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

    }
}