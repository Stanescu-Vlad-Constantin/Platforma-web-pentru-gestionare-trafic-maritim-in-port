using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ProiectLicenta.Model;
using ProiectLicenta.Model.Database;

namespace ProiectLicenta.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class tblEscalaVaseController : ControllerBase
    {
        private readonly ProjectDbContext _myProjectDbContext;
        public tblEscalaVaseController(ProjectDbContext myProjectDbContext)
        {
            _myProjectDbContext = myProjectDbContext;
        }

        [HttpGet]
        public async Task<IActionResult> GetAsync()
        {

            var escala = await _myProjectDbContext.tblEscalaVase.ToListAsync();

            if (escala == null)
            {
                return NotFound("Equipment not found");
            }

            return Ok(escala);
        }

        [HttpGet("{id}")]
        public async Task<IActionResult> GetEquipmentByIdAsync(int id)
        {
            var escala = await _myProjectDbContext.tblEscalaVase.AsNoTracking().Where(ats => ats.id_escala == id).FirstOrDefaultAsync();

            if (escala == null)
            {
                return NotFound("ActualTask not found");
            }

            return Ok(escala);
        }

        [HttpPost]
        public async Task<IActionResult> PostAsync(tblEscalaVase escala)
        {
            if (escala == null)
            {
                return BadRequest("Request is incorrect");
            }
            _myProjectDbContext.tblEscalaVase.Add(escala);
            await _myProjectDbContext.SaveChangesAsync();
            return Created($"/id?id={escala.id_escala}", escala);
        }

        [HttpPut("{id}")]
        public async Task<IActionResult> PutAsync(int id, tblEscalaVase escalaToUpdate)
        {
            var escala = await _myProjectDbContext.tblEscalaVase.AsNoTracking().Where(ats => ats.id_escala == id).FirstOrDefaultAsync();


            if (escala == null)
            {
                return NotFound();
            }
            _myProjectDbContext.tblEscalaVase.Update(escalaToUpdate);
            await _myProjectDbContext.SaveChangesAsync();
            return NoContent();
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteAsync(int id)
        {
            var escala = await _myProjectDbContext.tblEscalaVase.FindAsync(id);
            if (escala == null)
            {
                return NotFound();
            }
            _myProjectDbContext.tblEscalaVase.Remove(escala);
            await _myProjectDbContext.SaveChangesAsync();
            return NoContent();
        }
    }
}
