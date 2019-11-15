using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using Fap_Project.App_Code.DTO;
using FAP_Project.App_Code.DAO;

namespace Fap_Project.App_Code.DAO
{
    public class MarkDAO
    {
        private MarkDAO() { }

        private static MarkDAO instance;

        public static MarkDAO Instance
        {
            get
            {
                if (instance == null) instance = new MarkDAO();
                return instance;
            }

            private set
            {
                instance = value;
            }
        }
        // Function By Nguyen Huy Hoang
        public List<Mark> getMarkBySubjectIDAndStudentID(string subjectID, string studentID)
        {
            List<Mark> list = new List<Mark>();
            string query = @"SELECT *
                        FROM Marks
                        WHERE StudentID = '"+ studentID + "' and SubjectID = '" +  subjectID +"' ";
            DataTable data = DataProvider.Instance.excuteQuery(query, null);
            foreach (DataRow dr in data.Rows)
            {
                int id = Convert.ToInt32(dr["id"]);
                string subID = dr["SubjectID"].ToString();
                string stuID = dr["StudentID"].ToString();
                string key = dr["key"].ToString();
                double value = Convert.ToDouble(dr["value"]);
                Mark m = new Mark(id, stuID, subID, key, value);
                list.Add(m);
            }
            return list;
        }
        



    }
}