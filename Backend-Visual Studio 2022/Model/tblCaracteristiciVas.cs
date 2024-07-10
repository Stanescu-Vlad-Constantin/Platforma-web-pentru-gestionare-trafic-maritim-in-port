using System.ComponentModel.DataAnnotations;

namespace ProiectLicenta.Model
{
    public class tblCaracteristiciVas
    {
            [Key]
            public short id_Caracteristici  { get; set; }
            public int vas {  get; set; }
            public string producator { get; set; }
            public string tipVas { get; set; }
            public decimal tonaj_brut { get; set; }
            public decimal latime { get; set; }
            public decimal adancime { get; set; }
            public short anulConstruirii { get; set; } = 0;
            public tblVasePort idVas { get; set; }

    }
}
