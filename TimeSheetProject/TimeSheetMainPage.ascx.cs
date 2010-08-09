using System;
using System.Web.UI.WebControls;


namespace TimeSheetProject
{
    public partial class TimeSheetMainPage : System.Web.UI.UserControl
    {
        protected DateTime TaskStartDate { get; set; }
       

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DateTime startOfWeek = StartofWeekDate();
                lblDate.Text = startOfWeek.ToShortDateString();
                TaskStartDate = Convert.ToDateTime(lblDate.Text);
                var tasks = Task.GetTasks();
                rptTasks.DataSource = tasks;
                rptTasks.DataBind();

                TeamMemberDetailList();
                
                //lblRemarks.Text = "No remarks for this item.";
               

            }
        }

        private static DateTime StartofWeekDate()
        {
            System.Globalization.CultureInfo ci =
      System.Threading.Thread.CurrentThread.CurrentCulture;
            DayOfWeek fdow = ci.DateTimeFormat.FirstDayOfWeek;
            DayOfWeek today = DateTime.Now.DayOfWeek;
            DateTime startofWeek= DateTime.Now.AddDays(-(today - fdow)).Date;
            return startofWeek.AddDays(1);
        }

        private void TeamMemberDetailList()
        {
            listBoxTeamMembers.Items.Add("Brijesh Sharma");
            listBoxTeamMembers.Items.Add("Mehak");
            listBoxTeamMembers.Items.Add("Saurabh");
            listBoxTeamMembers.Items.Add("Anand");
            listBoxTeamMembers.Items.Add("Mohit");
            
        }

        protected void BtnPreviousWeekClick(object sender, EventArgs e)
        {
            DateTime startOfWeek = Convert.ToDateTime(lblDate.Text);
            DateTime startOfLastWeek = startOfWeek.Subtract(TimeSpan.FromDays(7));
            lblDate.Text = startOfLastWeek.ToShortDateString();
            TaskStartDate = Convert.ToDateTime(lblDate.Text);
        }

        protected void BtnNextWeekClick(object sender, EventArgs e)
        {
            DateTime startOfWeek = Convert.ToDateTime(lblDate.Text);
            DateTime startOfNextWeek = startOfWeek.AddDays(7);
            lblDate.Text = startOfNextWeek.ToShortDateString();
            TaskStartDate = Convert.ToDateTime(lblDate.Text);
        }

        protected void UpdateRemarks(object sender, EventArgs e)
        {
            lblRemarks.Text = "This text box is focused";
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string s = txtHidd.Value.Trim(';');
            int firstIndex = s.IndexOf(';');
            int lastIndex = s.LastIndexOf(';');
            int length = lastIndex - firstIndex;

            s = s.Substring(s.IndexOf(';'), length).Trim();
            s = s.Trim(',');
        }

        


    }
}