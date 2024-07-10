using System.ComponentModel.DataAnnotations;

namespace ProiectLicenta.Model
{
    public class tblStatisticiVase
    {
        [Key]
        public short id_Statistici {  get; set; }
        public DateTime data_curenta { get; set; }
        public short nr_vasePortGalati { get; set; }
        public short nr_vasePlecateLast24h { get; set; }
        public short nr_vaseSositeLast24h { get; set; }
        public short nr_vaseAsteptateNext24h { get; set; }
    }
}
