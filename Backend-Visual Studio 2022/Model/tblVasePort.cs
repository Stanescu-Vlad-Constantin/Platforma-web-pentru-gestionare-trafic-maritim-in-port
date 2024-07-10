using System.ComponentModel.DataAnnotations;

namespace ProiectLicenta.Model
{
    public class tblVasePort
    {
            [Key]
            public int id_Vas { get; set; }
            public string nrIdentificareIMO { get; set; }
            public string nrIdentificareMMSI { get; set; }
            public string tara_de_provenienta { get; set; }
            public string numeVas { get; set; }
            public string tipVas { get; set; }
            public DateTime TimpEstimatPlecare { get; set; }
            public DateTime TimpExactPlecare { get; set; }
            public string indicativ_vas { get; set; }
            public int portDestinatie { get; set; }
            public tblPorturi idPortDestinatie { get; set; }
            public List<tblCaracteristiciVas> Caracteristici { get; } = new List<tblCaracteristiciVas>();
            public List<tblEchipajVas> EchipajVas { get; } = new List<tblEchipajVas>();
            public List<tblPasageri> Pasageri { get; } = new List<tblPasageri>();

    }
}
