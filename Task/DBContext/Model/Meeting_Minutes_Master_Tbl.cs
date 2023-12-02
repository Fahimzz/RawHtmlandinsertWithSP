namespace Task.DBContext.Model
{
    public class Meeting_Minutes_Master_Tbl:BaseModel
    {
        public long CustomerId { get; set; }
        public string? MeetingDate { get; set; }
        public string? MeetingTime { get; set; }
        public string? AttendesFromClient { get; set; }
        public string? AttendesFromHost { get; set; }
        public string? MeetingAgenda { get; set; }
        public string? MeetingDecision { get; set; }

        public string? MeetingDiscussion { get; set; }



    }
}
