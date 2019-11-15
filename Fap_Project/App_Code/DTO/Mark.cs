using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Fap_Project.App_Code.DTO
{
    public class Mark
    {
        private int id;
        private String studentID;
        private String subjectID;
        private String key;
        private double value;

        public Mark(int id, string studentID, string subjectID, string key, double value)
        {
            Id = id;
            StudentID = studentID;
            SubjectID = subjectID;
            Key = key;
            Value = value;
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

        public string StudentID
        {
            get
            {
                return studentID;
            }

            set
            {
                studentID = value;
            }
        }

        public string SubjectID
        {
            get
            {
                return subjectID;
            }

            set
            {
                subjectID = value;
            }
        }

        public string Key
        {
            get
            {
                return key;
            }

            set
            {
                key = value;
            }
        }

        public double Value
        {
            get
            {
                return value;
            }

            set
            {
                this.value = value;
            }
        }
    }
}