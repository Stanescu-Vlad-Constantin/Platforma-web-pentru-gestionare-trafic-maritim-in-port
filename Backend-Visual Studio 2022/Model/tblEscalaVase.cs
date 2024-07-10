using System.ComponentModel.DataAnnotations;

namespace ProiectLicenta.Model
{
    public class tblEscalaVase
    {
        [Key]
        public int id_escala {  get; set; }
        public int id_Vas_escala { get; set; }
        public int id_Port_escala { get; set; }
        public string numePortEscala { get; set; }
        public DateOnly data_escala { get; set; }
        public string motiv_escala { get; set; }
        public tblVaseAsteptate idVasEscala { get; set; }
        public tblPorturi idPortEscala { get; set; }
    }
}
