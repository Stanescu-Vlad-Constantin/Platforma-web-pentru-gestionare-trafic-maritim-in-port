using System.ComponentModel.DataAnnotations;

namespace ProiectLicenta.Model
{

    public enum Status_vase
    {
        Sosire,
        Plecare
    }
    public class tblVaseAsteptate
    {
        [Key]
        public int id_Vas_nou { get; set;}
        public string nrIdentificareIMO { get; set;}
        public string nrIdentificareMMSI { get; set;}
        public string indicativ_vas { get; set; }
        public string tara_de_provenienta { get; set;}
        public string numeVas {  get; set;}
        public string tipVas { get; set; }
        public DateTime timpEstimatSosire { get; set;}
        public DateTime timpExactSosire { get; set; }
        public int portProvenienta { get; set;}
        public tblPorturi idPortProvenienta { get; set; }
        public List<tblEscalaVase> VaseEscala { get; } = new List<tblEscalaVase>();
    }
}
