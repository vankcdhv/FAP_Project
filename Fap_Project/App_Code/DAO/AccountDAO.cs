using Fap_Project.App_Code.DTO;
using FAP_Project.App_Code.DAO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Fap_Project.App_Code.DAO
{
    public class AccountDAO
    {
        private AccountDAO() { }

        private static AccountDAO instance;

        public static AccountDAO Instance
        {
            get
            {
                if (instance == null) instance = new AccountDAO();
                return instance;
            }

            private set
            {
                instance = value;
            }
        }

        public Account Login(String username, String password)
        {
            String query = "EXEC dbo.Login @username , @password";
            DataTable data = DataProvider.Instance.excuteQuery(query, new object[] { username, password });
            foreach (DataRow dr in data.Rows)
            {
                int id = Convert.ToInt32(dr["id"]);
                int type = Convert.ToInt32(dr["type"]);
                return new Account(id, username, password, type);
            }
            return null;
        }
    }
}