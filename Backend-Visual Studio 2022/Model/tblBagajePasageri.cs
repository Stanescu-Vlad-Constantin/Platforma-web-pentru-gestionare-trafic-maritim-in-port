using System.ComponentModel.DataAnnotations;

namespace ProiectLicenta.Model
{

    public enum Tip_bagaj
    {
        Rucsac,
        Valiza
    }
    public class tblBagajePasageri
    {
        [Key]
        public int id_bagaj {  get; set; }
        public int id_pasager_bagaje { get; set; }
        public decimal greutate { get; set; }
        public string Tip_bagaj { get; set; }
        public tblPasageri idPasagerbagaj { get; set; }
    }
}
