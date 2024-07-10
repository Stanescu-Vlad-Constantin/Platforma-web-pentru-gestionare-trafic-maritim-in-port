using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ProiectLicenta.Model;
using ProiectLicenta.Model.Database;

namespace ProiectLicenta.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class tblEchipajVasController : ControllerBase
    {
        private readonly ProjectDbContext _myProjectDbContext;
        public tblEchipajVasController(ProjectDbContext myProjectDbContext)
        {
            _myProjectDbContext = myProjectDbContext;
        }

        [HttpGet]
        public async Task<IActionResult> GetAsync()
        {

            var echipaj = await _myProjectDbContext.tblEchipajVas.ToListAsync();

            if (echipaj == null)
            {
                return NotFound("Equipment not found");
            }

            return Ok(echipaj);
        }

        [HttpGet("{id}")]
        public async Task<IActionResult> GetEquipmentByIdAsync(int id)
        {
            var echipaj = await _myProjectDbContext.tblEchipajVas.AsNoTracking().Where(ats => ats.id_MembruEchipaj == id).FirstOrDefaultAsync();

            if (echipaj == null)
            {
                return NotFound("ActualTask not found");
            }

            return Ok(echipaj);
        }

        [HttpPost]
        public async Task<IActionResult> PostAsync(tblEchipajVas echipaj)
        {
            if (echipaj == null)
            {
                return BadRequest("Request is incorrect");
            }
            _myProjectDbContext.tblEchipajVas.Add(echipaj);
            await _myProjectDbContext.SaveChangesAsync();
            return Created($"/id?id={echipaj.id_MembruEchipaj}", echipaj);
        }

        [HttpPut("{id}")]
        public async Task<IActionResult> PutAsync(int id, tblEchipajVas echipajToUpdate)
        {
            var echipaj = await _myProjectDbContext.tblEchipajVas.AsNoTracking().Where(ats => ats.id_MembruEchipaj == id).FirstOrDefaultAsync();


            if (echipaj == null)
            {
                return NotFound();
            }
            _myProjectDbContext.tblEchipajVas.Update(echipajToUpdate);
            await _myProjectDbContext.SaveChangesAsync();
            return NoContent();
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteAsync(int id)
        {
            var echipaj = await _myProjectDbContext.tblEchipajVas.FindAsync(id);
            if (echipaj == null)
            {
                return NotFound();
            }
            _myProjectDbContext.tblEchipajVas.Remove(echipaj);
            await _myProjectDbContext.SaveChangesAsync();
            return NoContent();
        }
    }
}
