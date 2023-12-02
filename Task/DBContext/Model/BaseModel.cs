using System.ComponentModel.DataAnnotations;

namespace Task.DBContext.Model
{
    public class BaseModel
    {
        [Key]
        public long id { get; set; }
        public DateTime? createAt { get; set; } 
        public DateTime? updateAt { get; set; }
        public bool isDelete { get; set; }

    }
}
