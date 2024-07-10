using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ProiectLicenta.Model;
using ProiectLicenta.Model.Database;

namespace ProiectLicenta.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class tblStatisticiVaseController : ControllerBase
    {
        private readonly ProjectDbContext _myProjectDbContext;
        public tblStatisticiVaseController(ProjectDbContext myProjectDbContext)
        {
            _myProjectDbContext = myProjectDbContext;
        }

        [HttpGet]
        public async Task<IActionResult> GetAsync()
        {

            var statistici = await _myProjectDbContext.tblStatisticiVase.ToListAsync();

            if (statistici == null)
            {
                return NotFound("Equipment not found");
            }

            return Ok(statistici);
        }

        [HttpGet("{id}")]
        public async Task<IActionResult> GetEquipmentByIdAsync(int id)
        {
            var statistici = await _myProjectDbContext.tblStatisticiVase.AsNoTracking().Where(ats => ats.id_Statistici == id).FirstOrDefaultAsync();

            if (statistici == null)
            {
                return NotFound("ActualTask not found");
            }

            return Ok(statistici);
        }

        [HttpPost]
        public async Task<IActionResult> PostAsync(tblStatisticiVase statistici)
        {
            if (statistici == null)
            {
                return BadRequest("Request is incorrect");
            }
            _myProjectDbContext.tblStatisticiVase.Add(statistici);
            await _myProjectDbContext.SaveChangesAsync();
            return Created($"/id?id={statistici.id_Statistici}", statistici);
        }

        [HttpPut("{id}")]
        public async Task<IActionResult> PutAsync(int id, tblStatisticiVase statisticiToUpdate)
        {
            var statistici = await _myProjectDbContext.tblStatisticiVase.AsNoTracking().Where(ats => ats.id_Statistici == id).FirstOrDefaultAsync();


            if (statistici == null)
            {
                return NotFound();
            }
            _myProjectDbContext.tblStatisticiVase.Update(statisticiToUpdate);
            await _myProjectDbContext.SaveChangesAsync();
            return NoContent();
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteAsync(int id)
        {
            var statistici = await _myProjectDbContext.tblStatisticiVase.FindAsync(id);
            if (statistici == null)
            {
                return NotFound();
            }
            _myProjectDbContext.tblStatisticiVase.Remove(statistici);
            await _myProjectDbContext.SaveChangesAsync();
            return NoContent();
        }
    }
}
