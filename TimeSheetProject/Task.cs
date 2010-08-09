using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TimeSheetProject
{

    public class Task
    {
        public string Description { get; set; }
        public Project Project { get; set; }
        public Int16 MonTimeHours { get; set; }
        public Int16 TueTimeHours { get; set; }
        public Int16 WedTimeHours { get; set; }
        public Int16 ThuTimeHours { get; set; }
        public Int16 FriTimeHours { get; set; }
        public Int16 SatTimeHours { get; set; }
        public Int16 SunTimeHours { get; set; }

        public static List<Task> GetTasks()
        {
            var tasks = new List<Task> {
                new Task {Description = "Developmrnt", Project = new Project {Description = "Portal"},MonTimeHours = 1,TueTimeHours = 2,WedTimeHours = 4,FriTimeHours = 5,ThuTimeHours = 6,SatTimeHours = 7,SunTimeHours = 8},
                new Task {Description = "Build", Project = new Project {Description = "Portal"},MonTimeHours = 1,TueTimeHours = 2,WedTimeHours = 4,FriTimeHours = 5,ThuTimeHours = 6,SatTimeHours = 7,SunTimeHours = 8},
                new Task {Description = "Test", Project = new Project {Description = "Portal"},MonTimeHours = 1,TueTimeHours = 2,WedTimeHours = 4,FriTimeHours = 5,ThuTimeHours = 6,SatTimeHours = 7,SunTimeHours = 8},
                new Task {Description = "Deploy", Project = new Project {Description = "Portal"},MonTimeHours = 1,TueTimeHours = 2,WedTimeHours = 4,FriTimeHours = 5,ThuTimeHours = 6,SatTimeHours = 7,SunTimeHours = 8},
                new Task {Description = "Developmrnt ", Project = new Project {Description = "SPI"},MonTimeHours = 1,TueTimeHours = 2,WedTimeHours = 4,FriTimeHours = 5,ThuTimeHours = 6,SatTimeHours = 7,SunTimeHours = 8},
                new Task {Description = "Build", Project = new Project {Description = "SPI"},MonTimeHours = 1,TueTimeHours = 2,WedTimeHours = 4,FriTimeHours = 5,ThuTimeHours = 6,SatTimeHours = 7,SunTimeHours = 8},
                new Task {Description = "Test", Project = new Project {Description = "SPI"},MonTimeHours = 1,TueTimeHours = 2,WedTimeHours = 4,FriTimeHours = 5,ThuTimeHours = 6,SatTimeHours = 7,SunTimeHours = 8},
                  new Task {Description = "Build", Project = new Project {Description = "Portal"},MonTimeHours = 1,TueTimeHours = 2,WedTimeHours = 4,FriTimeHours = 5,ThuTimeHours = 6,SatTimeHours = 7,SunTimeHours = 8},
                new Task {Description = "Test", Project = new Project {Description = "Portal"},MonTimeHours = 1,TueTimeHours = 2,WedTimeHours = 4,FriTimeHours = 5,ThuTimeHours = 6,SatTimeHours = 7,SunTimeHours = 8},
                new Task {Description = "Deploy", Project = new Project {Description = "Portal"},MonTimeHours = 1,TueTimeHours = 2,WedTimeHours = 4,FriTimeHours = 5,ThuTimeHours = 6,SatTimeHours = 7,SunTimeHours = 8},
                new Task {Description = "Developmrnt ", Project = new Project {Description = "SPI"},MonTimeHours = 1,TueTimeHours = 2,WedTimeHours = 4,FriTimeHours = 5,ThuTimeHours = 6,SatTimeHours = 7,SunTimeHours = 8},
                new Task {Description = "Build", Project = new Project {Description = "SPI"},MonTimeHours = 1,TueTimeHours = 2,WedTimeHours = 4,FriTimeHours = 5,ThuTimeHours = 6,SatTimeHours = 7,SunTimeHours = 8},
                new Task {Description = "Test", Project = new Project {Description = "SPI"},MonTimeHours = 1,TueTimeHours = 2,WedTimeHours = 4,FriTimeHours = 5,ThuTimeHours = 6,SatTimeHours = 7,SunTimeHours = 8},
                new Task {Description = "Deploy", Project = new Project {Description = "SPI"},MonTimeHours = 1,TueTimeHours = 2,WedTimeHours = 4,FriTimeHours = 5,ThuTimeHours = 6,SatTimeHours = 7,SunTimeHours = 8}
                            };

            return tasks;
        }

    }
}