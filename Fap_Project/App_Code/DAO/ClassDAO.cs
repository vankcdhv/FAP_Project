using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using Fap_Project.App_Code.DTO;
using FAP_Project.App_Code.DAO;

namespace Fap_Project.App_Code.DAO
{
    public class ClassDAO
    {
        // By Nguyen Huy Hoang
        private ClassDAO() { }

        private static ClassDAO instance;

        public static ClassDAO Instance
        {
            get
            {
                if (instance == null) instance = new ClassDAO();
                return instance;
            }

            private set
            {
                instance = value;
            }
        }

        //Function By Nguyen Huy Hoang
        public List<Class> getAllClasses()
        {
            List<Class> list = new List<Class>();
            string query = @"SELECT * FROM Classes";
            DataTable data = DataProvider.Instance.excuteQuery(query, null);
            foreach (DataRow dr in data.Rows)
            {
                int id = Convert.ToInt32(dr["id"]);
                string name = dr["Name"].ToString();
                DateTime startdate = Convert.ToDateTime(dr["Startdate"]);
                // set enddate because DateTime field can not be null
                Class c = new Class(id, name, startdate, Convert.ToDateTime("2019/11/15"));
                list.Add(c);
            }
            return list;
        }
    }
}