using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ProiectLicenta.Model;
using ProiectLicenta.Model.Database;

namespace ProiectLicenta.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class tblDocumentePasageriController : ControllerBase
    {
        private readonly ProjectDbContext _myProjectDbContext;
        public tblDocumentePasageriController(ProjectDbContext myProjectDbContext)
        {
            _myProjectDbContext = myProjectDbContext;
        }

        [HttpGet]
        public async Task<IActionResult> GetAsync()
        {

            var pasageridoc = await _myProjectDbContext.tblDocumentePasageri.ToListAsync();

            if (pasageridoc == null)
            {
                return NotFound("Equipment not found");
            }

            return Ok(pasageridoc);
        }

        [HttpGet("{id}")]
        public async Task<IActionResult> GetEquipmentByIdAsync(int id)
        {
            var pasageridoc = await _myProjectDbContext.tblDocumentePasageri.AsNoTracking().Where(ats => ats.document_id_pasager == id).FirstOrDefaultAsync();

            if (pasageridoc == null)
            {
                return NotFound("ActualTask not found");
            }

            return Ok(pasageridoc);
        }

        [HttpPost]
        public async Task<IActionResult> PostAsync(tblDocumentePasageri pasageridoc)
        {
            if (pasageridoc == null)
            {
                return BadRequest("Request is incorrect");
            }
            _myProjectDbContext.tblDocumentePasageri.Add(pasageridoc);
            await _myProjectDbContext.SaveChangesAsync();
            return Created($"/id?id={pasageridoc.document_id_pasager}", pasageridoc);
        }

        [HttpPut("{id}")]
        public async Task<IActionResult> PutAsync(int id, tblDocumentePasageri pasageridocToUpdate)
        {
            var pasageridoc = await _myProjectDbContext.tblDocumentePasageri.AsNoTracking().Where(ats => ats.document_id_pasager == id).FirstOrDefaultAsync();


            if (pasageridoc == null)
            {
                return NotFound();
            }
            _myProjectDbContext.tblDocumentePasageri.Update(pasageridocToUpdate);
            await _myProjectDbContext.SaveChangesAsync();
            return NoContent();
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteAsync(int id)
        {
            var pasageridoc = await _myProjectDbContext.tblDocumentePasageri.FindAsync(id);
            if (pasageridoc == null)
            {
                return NotFound();
            }
            _myProjectDbContext.tblDocumentePasageri.Remove(pasageridoc);
            await _myProjectDbContext.SaveChangesAsync();
            return NoContent();
        }
    }
}
