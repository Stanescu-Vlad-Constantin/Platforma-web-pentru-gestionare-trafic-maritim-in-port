using System.ComponentModel.DataAnnotations;

namespace ProiectLicenta.Model
{

    public enum Sex_membruEchipaj
    {
        Masculin,
        Feminin
    }
    public class tblEchipajVas
    {
        [Key]
        public int id_MembruEchipaj {  get; set; }
        public int id_Vas_Echipaj { get; set; }
        public string Rol {  get; set; }
        public string numeMembruEchipaj { get; set; }
        public string prenumeMembruEchipaj { get; set; }
        public  byte nrAni_Experienta { get; set; } = 0;
        public string nationalitate {  get; set; }
        public DateOnly data_de_nastere { get; set; }
        public string nrTelefon { get; set; }
        public string Sex_MembruEchipaj { get; set; }
        public tblVasePort idVasEchipaj { get; set; }
        public List<tblDocumenteEchipajVas> Doc_Echipaj { get; } = new List<tblDocumenteEchipajVas>();
  
    }
}
