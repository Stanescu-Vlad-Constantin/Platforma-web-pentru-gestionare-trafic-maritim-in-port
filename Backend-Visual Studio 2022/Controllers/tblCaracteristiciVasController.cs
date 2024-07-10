using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ProiectLicenta.Model;
using ProiectLicenta.Model.Database;

namespace ProiectLicenta.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class tblCaracteristiciVasController : ControllerBase
    {
        private readonly ProjectDbContext _myProjectDbContext;
        public tblCaracteristiciVasController(ProjectDbContext myProjectDbContext)
        {
            _myProjectDbContext = myProjectDbContext;
        }

        [HttpGet]
        public async Task<IActionResult> GetAsync()
        {

            var caracteristicivas = await _myProjectDbContext.tblCaracteristiciVas.ToListAsync();

            if (caracteristicivas == null)
            {
                return NotFound("Equipment not found");
            }

            return Ok(caracteristicivas);
        }

        [HttpGet("{id}")]
        public async Task<IActionResult> GetEquipmentByIdAsync(int id)
        {
            var caracteristicivas = await _myProjectDbContext.tblCaracteristiciVas.AsNoTracking().Where(ats => ats.id_Caracteristici == id).FirstOrDefaultAsync();

            if (caracteristicivas == null)
            {
                return NotFound("ActualTask not found");
            }

            return Ok(caracteristicivas);
        }

        [HttpPost]
        public async Task<IActionResult> PostAsync(tblCaracteristiciVas caracteristicivas)
        {
            if (caracteristicivas == null)
            {
                return BadRequest("Request is incorrect");
            }
            _myProjectDbContext.tblCaracteristiciVas.Add(caracteristicivas);
            await _myProjectDbContext.SaveChangesAsync();
            return Created($"/id?id={caracteristicivas.id_Caracteristici}", caracteristicivas);
        }

        [HttpPut("{id}")]
        public async Task<IActionResult> PutAsync(int id, tblCaracteristiciVas caracteristicivasToUpdate)
        {
            var caracteristicivas = await _myProjectDbContext.tblCaracteristiciVas.AsNoTracking().Where(ats => ats.id_Caracteristici == id).FirstOrDefaultAsync();


            if (caracteristicivas == null)
            {
                return NotFound();
            }
            _myProjectDbContext.tblCaracteristiciVas.Update(caracteristicivasToUpdate);
            await _myProjectDbContext.SaveChangesAsync();
            return NoContent();
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteAsync(int id)
        {
            var caracteristicivas = await _myProjectDbContext.tblCaracteristiciVas.FindAsync(id);
            if (caracteristicivas == null)
            {
                return NotFound();
            }
            _myProjectDbContext.tblCaracteristiciVas.Remove(caracteristicivas);
            await _myProjectDbContext.SaveChangesAsync();
            return NoContent();
        }
    }
}
