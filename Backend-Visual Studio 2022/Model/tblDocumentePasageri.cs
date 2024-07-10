using System.ComponentModel.DataAnnotations;

namespace ProiectLicenta.Model
{
    public enum Tip_document_pasager
    {
        Pasaport,
        Certificat_de_nastere,
        Viza
    }
    public class tblDocumentePasageri
    {
        [Key]
        public int document_id_pasager {  get; set; }
        public int id_Pasager_doc {  get; set; }
        public string numar_Document { get; set; }
        public string autoritatea_emitenta { get; set; }
        public DateOnly data_emiterii { get; set; }
        public DateOnly data_expirarii { get; set; }
        public string Tip_document_pasager { get; set; }
        public tblPasageri idPasagerdoc { get; set; }
    }
}
