using System.ComponentModel.DataAnnotations;

namespace ProiectLicenta.Model
{
    public enum SexAngajatPort
    {
        Masculin,
        Feminin
    }
    public class tblAngajatiPort
    {
        [Key]
        public int IdAngajat {  get; set; }
        public string Rol {  get; set; }
        public string numeAngajat { get; set; }
        public string prenumeAngajat { get; set; }
        public string departament {  get; set; }
        public string nationalitate {  get; set; }
        public DateOnly Data_angajarii { get; set; }
        public string nrTelefon {  get; set; }
        public string Sex_AngajatPort { get; set; }
  
    }
}
