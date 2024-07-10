using System.ComponentModel.DataAnnotations;

namespace ProiectLicenta.Model
{
    public enum Tip_document_echipaj
    {
        Pasaport,
        Documentul_de_Identificare_a_Navigatorului,
        Certificat_de_Competenta
    }
    public class tblDocumenteEchipajVas
    {
        [Key]
        public int document_id_echipaj { get; set; }
        public int id_MembruEchipaj_doc { get; set; }
        public string numar_Document { get; set; }
        public string autoritatea_emitenta { get; set; }
        public DateOnly data_expirarii { get; set; }
        public DateOnly data_emiterii { get; set; }
        public string Tip_document_echipaj { get; set; }
        public tblEchipajVas idMembruEchipajdoc { get; set; }
    }
}
