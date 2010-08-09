using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TimeSheetProject
{
    public class Project
    {
        public string Description { get; set; }
    }

    public class DailyTaskHours
    {
        public Int16 MonTimeHours { get; set; }
        public Int16 TusTimeHours { get; set; }
        public Int16 WedTimeHours { get; set; }
        public Int16 ThuTimeHours { get; set; }
        public Int16 FriTimeHours { get; set; }
    }
}