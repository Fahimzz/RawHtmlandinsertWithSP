namespace Task.Models
{
    public class ProductServiceResponseModel
    {
        public long id { get; set; }
        public DateTime? createAt { get; set; }
        public string Name { get; set; }
        public string Type { get; set; }
        public long Quantities { get; set; }
        public string Unit { get; set; }

    }
}
