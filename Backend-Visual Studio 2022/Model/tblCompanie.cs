using System.ComponentModel.DataAnnotations;

namespace ProiectLicenta.Model
{
    public class tblCompanie
    {
        [Key]
        public short id_Companie {  get; set; }    
        public string numeCompanie { get; set; }
        public short nrVaseDetinute { get; set; } = 0;
        public string sectorBusiness { get; set; }
        public string adresa { get; set; }
        public string website { get; set; }
        public short anulFondarii { get; set; }
        public short nrAngajati { get; set; } = 0;
        public string nrTelefon { get; set; }
        public string email { get; set; }
    }
}
