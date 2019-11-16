using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FAP_Project.App_Code.DAO;
using Fap_Project.App_Code.DTO;
using System.Data;

namespace Fap_Project.App_Code.DAO
{
    public class TeacherDAO
    {
        private TeacherDAO() { }

        private static TeacherDAO instance;

        public static TeacherDAO Instance
        {
            get
            {
                if (instance == null) instance = new TeacherDAO();
                return instance;
            }

            private set
            {
                instance = value;
            }
        }

        //Function By Hoang
        public Teacher getTeacherByAccountID(int accountID)
        {
            string query = "Select * from Teachers where AccountID = " + accountID;
            DataTable data = DataProvider.Instance.excuteQuery(query, null);
            foreach (DataRow dr in data.Rows)
            {
                string rollNumber = dr["RollNumber"].ToString();
                string name = dr["Name"].ToString();
                string mail = dr["Mail"].ToString();
                DateTime dob = Convert.ToDateTime(dr["Dob"]);
                string address = dr["Address"].ToString();
                string image = dr["Image"].ToString();
                Teacher t = new Teacher(accountID, rollNumber, name, mail, dob, address, image);
                return t;
            }
            return null;
        }
    }
}