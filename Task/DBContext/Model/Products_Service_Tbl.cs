namespace Task.DBContext.Model
{
    public class Products_Service_Tbl:BaseModel
    {
        public string Name { get; set; }
        public string Type { get; set; }
        public long Quantities { get; set; }
        public string Unit { get; set; }
    }
}
