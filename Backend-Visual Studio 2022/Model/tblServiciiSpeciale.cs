using System.ComponentModel.DataAnnotations;

namespace ProiectLicenta.Model
{
    public enum Servicii_Speciale
    {
        Scaun_cu_rotile,
        Asistenta_pentru_handicap,
        Imbarcare_prioritara

    }
    public class tblServiciiSpeciale
    {
        [Key]
        public int idServiciu {  get; set; }
        public int id_pasager_serviciu { get; set; }
        public string TipServicii_Speciale { get; set; }
        public tblPasageri idPasagerServicii { get; set; }
    }
}
