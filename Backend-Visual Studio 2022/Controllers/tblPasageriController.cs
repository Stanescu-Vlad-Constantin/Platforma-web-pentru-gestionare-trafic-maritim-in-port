using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ProiectLicenta.Model;
using ProiectLicenta.Model.Database;

namespace ProiectLicenta.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class tblPasageriController : ControllerBase
    {
        private readonly ProjectDbContext _myProjectDbContext;
        public tblPasageriController(ProjectDbContext myProjectDbContext)
        {
            _myProjectDbContext = myProjectDbContext;
        }

        [HttpGet]
        public async Task<IActionResult> GetAsync()
        {

            var pasageri = await _myProjectDbContext.tblPasageri.ToListAsync();

            if (pasageri == null)
            {
                return NotFound("Equipment not found");
            }

            return Ok(pasageri);
        }

        [HttpGet("{id}")]
        public async Task<IActionResult> GetEquipmentByIdAsync(int id)
        {
            var pasageri = await _myProjectDbContext.tblPasageri.AsNoTracking().Where(ats => ats.id_Pasager == id).FirstOrDefaultAsync();

            if (pasageri == null)
            {
                return NotFound("ActualTask not found");
            }

            return Ok(pasageri);
        }

        [HttpPost]
        public async Task<IActionResult> PostAsync(tblPasageri pasageri)
        {
            if (pasageri == null)
            {
                return BadRequest("Request is incorrect");
            }
            _myProjectDbContext.tblPasageri.Add(pasageri);
            await _myProjectDbContext.SaveChangesAsync();
            return Created($"/id?id={pasageri.id_Pasager}", pasageri);
        }

        [HttpPut("{id}")]
        public async Task<IActionResult> PutAsync(int id, tblPasageri pasageriToUpdate)
        {
            var pasageri = await _myProjectDbContext.tblPasageri.AsNoTracking().Where(ats => ats.id_Pasager == id).FirstOrDefaultAsync();


            if (pasageri == null)
            {
                return NotFound();
            }
            _myProjectDbContext.tblPasageri.Update(pasageriToUpdate);
            await _myProjectDbContext.SaveChangesAsync();
            return NoContent();
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteAsync(int id)
        {
            var pasageri = await _myProjectDbContext.tblPasageri.FindAsync(id);
            if (pasageri == null)
            {
                return NotFound();
            }
            _myProjectDbContext.tblPasageri.Remove(pasageri);
            await _myProjectDbContext.SaveChangesAsync();
            return NoContent();
        }
    }
}
