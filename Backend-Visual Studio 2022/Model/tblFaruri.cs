using System.ComponentModel.DataAnnotations;

namespace ProiectLicenta.Model
{

    public enum Tip_iluminare
    {
        fix,
        intermitent,
        directional,
        avertizare
    }
    public class tblFaruri
    {
        

        [Key]
        public short id_Far {  get; set; }
        public string Cod_ARLHS { get; set; }
        public string numeFar { get; set; }
        public string tara { get; set; }
        public string zonaLocalizare { get; set; }
        public int anulConstruirii { get; set; } = 0;
        public short nr_flashuri { get; set; }
        public string culori_semnal_luminos { get; set; }
        public string inaltimea_focala { get; set; }
        public string distanta_focalizare_lumini { get; set; }
        public string Tip_iluminare { get; set;}
        public decimal latitudine {  get; set; }
        public decimal longitudine { get; set; }
    }
}
