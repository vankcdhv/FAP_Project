using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Fap_Project.App_Code.DTO
{
    public class Student
    {
        private int accountID;
        private String rollnumber;
        private String name;
        private String mail;
        private int gender;
        private DateTime dob;
        private String address;
        private String image;
        private String major;
        private int year;

        public Student() { }

        public Student(int accountID, string rollnumber, string name, string mail, int gender, DateTime dob, string address, string image, string major, int year)
        {
            AccountID = accountID;
            Rollnumber = rollnumber;
            Name = name;
            Mail = mail;
            Gender = gender;
            Dob = dob;
            Address = address;
            Image = image;
            Major = major;
            Year = year;
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

        public int Gender
        {
            get
            {
                return gender;
            }

            set
            {
                gender = value;
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

        public string Major
        {
            get
            {
                return major;
            }

            set
            {
                major = value;
            }
        }

        public int Year
        {
            get
            {
                return year;
            }

            set
            {
                year = value;
            }
        }
    }
}