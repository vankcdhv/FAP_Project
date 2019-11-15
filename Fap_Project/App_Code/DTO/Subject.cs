using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Fap_Project.App_Code.DTO
{
    public class Subject
    {
        private String id;
        private String name;

        public Subject(string id, string name)
        {
            Id = id;
            Name = name;
        }

        public string Id
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
    }
}