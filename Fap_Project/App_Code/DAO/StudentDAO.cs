using Fap_Project.App_Code.DTO;
using FAP_Project.App_Code.DAO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Fap_Project.App_Code.DAO
{
    public class StudentDAO
    {

        //Dũng : getStudentByAccountID
        public Student getStudentByAccountID(int accountID)
        {
            string query = "Select * from Students where AccountID = " + accountID;
            DataTable data = DataProvider.Instance.excuteQuery(query, null);
            foreach (DataRow dr in data.Rows)
            {
                //int accountID = Convert.ToInt32(dr["AccountID"]);
                string rollNumber = dr["RollNumber"].ToString();
                string name = dr["Name"].ToString();
                string mail = dr["Mail"].ToString();
                int gender = Convert.ToInt32(dr["Gender"]);
                DateTime dob = Convert.ToDateTime(dr["Dob"]);
                string address = dr["Address"].ToString();
                string image = dr["Image"].ToString();
                string major = dr["Major"].ToString();
                int year = Convert.ToInt32(dr["Year"]);
                Student std = new Student(accountID, rollNumber, name, mail, gender, dob, address, image, major, year);
                return std;
            }
            return null;
        }


    }


}