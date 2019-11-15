using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Fap_Project.App_Code.DTO
{
    public class Account
    {
        private int id;
        private String username;
        private String password;
        private int type;

        public Account()
        {

        }

        public Account(int id, string username, string password, int type)
        {
            this.Id = id;
            this.Username = username;
            this.Password = password;
            this.Type = type;
        }

        public int Id
        {
            get
            {
                return id;
            }

            set
            {
                id = value;
            }
        }

        public string Username
        {
            get
            {
                return username;
            }

            set
            {
                username = value;
            }
        }

        public string Password
        {
            get
            {
                return password;
            }

            set
            {
                password = value;
            }
        }

        public int Type
        {
            get
            {
                return type;
            }

            set
            {
                type = value;
            }
        }
    }
}