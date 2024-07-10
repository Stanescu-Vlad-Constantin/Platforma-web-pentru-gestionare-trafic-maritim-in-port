using System.ComponentModel.DataAnnotations;

namespace ProiectLicenta.Model
{

    public enum Status_disponibilitate
    {
        Atribuit,
        Disponibil,
        Disfunctional
    }
    public class tblLocuriAcostare
    {
        [Key]
        public int doc_id {  get; set; }
        public string nr_loc {  get; set; }
        public decimal lungime_doc { get; set; }
        public decimal adancime_maxima { get; set; }
        public string Status_disponibilitate { get; set; }

    }
}
