using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Fap_Project.App_Code.DTO
{
    public class TimeTable
    {
        private int id;
        private int classSubjectID;
        private String studentID;
        private bool attended;

        public TimeTable(int id, int classSubjectID, string studentID, bool attended)
        {
            Id = id;
            ClassSubjectID = classSubjectID;
            StudentID = studentID;
            Attended = attended;
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

        public int ClassSubjectID
        {
            get
            {
                return classSubjectID;
            }

            set
            {
                classSubjectID = value;
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

        public bool Attended
        {
            get
            {
                return attended;
            }

            set
            {
                attended = value;
            }
        }
    }
}