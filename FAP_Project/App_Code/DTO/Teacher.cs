using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Fap_Project.App_Code.DTO
{
    public class Teacher
    {
        private int accountID;
        private String rollnumber;
        private String name;
        private String mail;
        private DateTime dob;
        private String address;
        private String image;

        public Teacher()
        {

        }

        public Teacher(int accountID, string rollnumber, string name, string mail, DateTime dob, string address, string image)
        {
            AccountID = accountID;
            Rollnumber = rollnumber;
            Name = name;
            Mail = mail;
            Dob = dob;
            Address = address;
            Image = image;
        }

        public int AccountID
        {
            get
            {
                return accountID;
            }

            set
            {
                accountID = value;
            }
        }

        public string Rollnumber
        {
            get
            {
                return rollnumber;
            }

            set
            {
                rollnumber = value;
            }
        }

        public string Name
        {
            get
            {
                return name;
            }

            set
            {
                name = value;
            }
        }

        public string Mail
        {
            get
            {
                return mail;
            }

            set
            {
                mail = value;
            }
        }

        public DateTime Dob
        {
            get
            {
                return dob;
            }

            set
            {
                dob = value;
            }
        }

        public string Address
        {
            get
            {
                return address;
            }

            set
            {
                address = value;
            }
        }

        public string Image
        {
            get
            {
                return image;
            }

            set
            {
                image = value;
            }
        }
    }
}