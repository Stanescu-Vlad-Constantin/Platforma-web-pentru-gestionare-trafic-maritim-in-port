using System.ComponentModel.DataAnnotations;

namespace ProiectLicenta.Model
{
    public class tblPorturi
    {
        [Key]
        public int id_Port {  get; set; }
        public string UNLOCODE { get; set; }
        public string numePort { get; set; }
        public string tara {  get; set; }
        public string oras { get; set; }
        public DateTimeOffset fusOrar { get; set; }
        public string tipPort { get; set; }
        public decimal latitudine { get; set; }
        public decimal longitudine { get; set; }
        public string informatii_de_contact { get; set; }
        public List<tblVaseAsteptate> PortProvenienta { get; } = new List<tblVaseAsteptate>();
        public List<tblVasePort> PortDestinatie { get; } = new List<tblVasePort>();
        public List<tblEscalaVase> PortEscalaVase { get; } = new List<tblEscalaVase>();

    }
}
