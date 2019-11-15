using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Fap_Project.App_Code.DTO
{
    public class ClassSubject
    {
        private int id;
        private int classID;
        private String subjectID;
        private String room;
        private DateTime day;
        private int slot;

        public ClassSubject(int id, int classID, string subjectID, string room, DateTime day, int slot)
        {
            Id = id;
            ClassID = classID;
            SubjectID = subjectID;
            Room = room;
            Day = day;
            Slot = slot;
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

        public int ClassID
        {
            get
            {
                return classID;
            }

            set
            {
                classID = value;
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

        public string Room
        {
            get
            {
                return room;
            }

            set
            {
                room = value;
            }
        }

        public DateTime Day
        {
            get
            {
                return day;
            }

            set
            {
                day = value;
            }
        }

        public int Slot
        {
            get
            {
                return slot;
            }

            set
            {
                slot = value;
            }
        }
    }
}