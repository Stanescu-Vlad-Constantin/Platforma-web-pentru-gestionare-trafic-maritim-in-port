using System.ComponentModel.DataAnnotations;

namespace ProiectLicenta.Model
{
    public class tblUser
    {
        [Key]
        public int User_id { get; set; }
        public string Username { get; set;}
        public string Password { get; set;}
        public string Email { get; set;}
    }
}
