using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Fap_Project.App_Code.DTO
{
    public class Class
    {
        private int id;
        private String name;
        private DateTime startdate;
        private DateTime enddate;

        public Class(int id, string name, DateTime startdate, DateTime enddate)
        {
            Id = id;
            Name = name;
            Startdate = startdate;
            Enddate = enddate;
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

        public DateTime Startdate
        {
            get
            {
                return startdate;
            }

            set
            {
                startdate = value;
            }
        }

        public DateTime Enddate
        {
            get
            {
                return enddate;
            }

            set
            {
                enddate = value;
            }
        }
    }
}