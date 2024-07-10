using System.ComponentModel.DataAnnotations;

namespace ProiectLicenta.Model
{

    public enum Sex_Pasager
    {
        Masculin,
        Feminin
    }
    public class tblPasageri
    {
        [Key]
        public int id_Pasager { get; set; }
        public int id_Vas_Pasageri { get; set; }
        public string numePasager { get; set; }
        public string prenumePasager { get; set; }
        public string Cod_de_bare_Bilet { get; set; }
        public string nrLoc_Scaun {  get; set; }
        public string nationalitate { get; set; }
        public string port_imbarcare {  get; set; }
        public DateOnly data_de_nastere { get; set; }
        public string nrTelefon { get; set; }
        public string Sex_Pasager { get; set; }
        public string email { get; set; }
        public tblVasePort idVasPasageri { get; set; }
        public List<tblDocumentePasageri> Doc_Pasageri { get; } = new List<tblDocumentePasageri>();
        public List<tblBagajePasageri> Bagaj { get; } = new List<tblBagajePasageri>();
        public List<tblServiciiSpeciale> Servicii { get; } = new List<tblServiciiSpeciale>();
    }
}
