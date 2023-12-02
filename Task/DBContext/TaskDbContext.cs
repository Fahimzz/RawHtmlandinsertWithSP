using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;
using Task.DBContext.Model;

namespace Task.DBContext
{
    public class TaskDbContext: DbContext
    {
        public TaskDbContext(DbContextOptions options) : base(options) { }

        public DbSet<Individual_Customer_Tbl> Individual_Customer_Tbl { get; set; }
        public DbSet<Corporate_Customer_Tbl> Corporate_Customer_Tbl { get; set; }
        public DbSet<Products_Service_Tbl> Products_Service_Tbls { get; set; }
        public DbSet<Meeting_Minutes_Master_Tbl> Meeting_Minutes_Master_Tbls { get; set; }


        public virtual async Task<int> SaveMeetingMinutesAsync(
        long customerId,
        string meetingDate,
        string meetingTime,
        string attendesFromClient,
        string attendesFromHost,
        string meetingAgenda,
        string meetingDecision,
        string meetingDiscussion)
        {
            var parameters = new[]
            {
            new SqlParameter("@CustomerId", customerId),
            new SqlParameter("@MeetingDate", meetingDate),
            new SqlParameter("@MeetingTime", meetingTime),
            new SqlParameter("@AttendesFromClient", attendesFromClient),
            new SqlParameter("@AttendesFromHost", attendesFromHost),
            new SqlParameter("@MeetingAgenda", meetingAgenda),
            new SqlParameter("@MeetingDecision", meetingDecision),
            new SqlParameter("@MeetingDiscussion", meetingDiscussion),
            new SqlParameter("@isDelete", false)

        };

            return await Database.ExecuteSqlRawAsync("EXEC SaveMeetingMinutes @CustomerId, @MeetingDate, @MeetingTime, @AttendesFromClient, @AttendesFromHost, @MeetingAgenda, @MeetingDecision, @MeetingDiscussion,@isDelete", parameters);
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {

        }
    }
}
