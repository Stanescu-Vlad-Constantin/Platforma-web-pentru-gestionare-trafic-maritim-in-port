using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ProiectLicenta.Model;
using ProiectLicenta.Model.Database;

namespace ProiectLicenta.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class tblDocumenteEchipajVasController : ControllerBase
    {
        private readonly ProjectDbContext _myProjectDbContext;
        public tblDocumenteEchipajVasController(ProjectDbContext myProjectDbContext)
        {
            _myProjectDbContext = myProjectDbContext;
        }

        [HttpGet]
        public async Task<IActionResult> GetAsync()
        {

            var echipajdoc = await _myProjectDbContext.tblDocumenteEchipajVas.ToListAsync();

            if (echipajdoc == null)
            {
                return NotFound("Equipment not found");
            }

            return Ok(echipajdoc);
        }

        [HttpGet("{id}")]
        public async Task<IActionResult> GetEquipmentByIdAsync(int id)
        {
            var echipajdoc = await _myProjectDbContext.tblDocumenteEchipajVas.AsNoTracking().Where(ats => ats.document_id_echipaj == id).FirstOrDefaultAsync();

            if (echipajdoc == null)
            {
                return NotFound("ActualTask not found");
            }

            return Ok(echipajdoc);
        }

        [HttpPost]
        public async Task<IActionResult> PostAsync(tblDocumenteEchipajVas echipajdoc)
        {
            if (echipajdoc == null)
            {
                return BadRequest("Request is incorrect");
            }
            _myProjectDbContext.tblDocumenteEchipajVas.Add(echipajdoc);
            await _myProjectDbContext.SaveChangesAsync();
            return Created($"/id?id={echipajdoc.document_id_echipaj}", echipajdoc);
        }

        [HttpPut("{id}")]
        public async Task<IActionResult> PutAsync(int id, tblDocumenteEchipajVas echipajdocToUpdate)
        {
            var echipajdoc = await _myProjectDbContext.tblDocumenteEchipajVas.AsNoTracking().Where(ats => ats.document_id_echipaj == id).FirstOrDefaultAsync();


            if (echipajdoc == null)
            {
                return NotFound();
            }
            _myProjectDbContext.tblDocumenteEchipajVas.Update(echipajdocToUpdate);
            await _myProjectDbContext.SaveChangesAsync();
            return NoContent();
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteAsync(int id)
        {
            var echipajdoc = await _myProjectDbContext.tblDocumenteEchipajVas.FindAsync(id);
            if (echipajdoc == null)
            {
                return NotFound();
            }
            _myProjectDbContext.tblDocumenteEchipajVas.Remove(echipajdoc);
            await _myProjectDbContext.SaveChangesAsync();
            return NoContent();
        }
    }
}
