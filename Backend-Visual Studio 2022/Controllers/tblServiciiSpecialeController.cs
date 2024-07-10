using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ProiectLicenta.Model;
using ProiectLicenta.Model.Database;

namespace ProiectLicenta.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class tblServiciiSpecialeController : ControllerBase
    {
        private readonly ProjectDbContext _myProjectDbContext;
        public tblServiciiSpecialeController(ProjectDbContext myProjectDbContext)
        {
            _myProjectDbContext = myProjectDbContext;
        }

        [HttpGet]
        public async Task<IActionResult> GetAsync()
        {

            var serviciispeciale = await _myProjectDbContext.tblServiciiSpeciale.ToListAsync();

            if (serviciispeciale == null)
            {
                return NotFound("Equipment not found");
            }

            return Ok(serviciispeciale);
        }

        [HttpGet("{id}")]
        public async Task<IActionResult> GetEquipmentByIdAsync(int id)
        {
            var serviciispeciale = await _myProjectDbContext.tblServiciiSpeciale.AsNoTracking().Where(ats => ats.idServiciu == id).FirstOrDefaultAsync();

            if (serviciispeciale == null)
            {
                return NotFound("ActualTask not found");
            }

            return Ok(serviciispeciale);
        }

        [HttpPost]
        public async Task<IActionResult> PostAsync(tblServiciiSpeciale serviciispeciale)
        {
            if (serviciispeciale == null)
            {
                return BadRequest("Request is incorrect");
            }
            _myProjectDbContext.tblServiciiSpeciale.Add(serviciispeciale);
            await _myProjectDbContext.SaveChangesAsync();
            return Created($"/id?id={serviciispeciale.idServiciu}", serviciispeciale);
        }

        [HttpPut("{id}")]
        public async Task<IActionResult> PutAsync(int id, tblServiciiSpeciale serviciispecialeToUpdate)
        {
            var serviciispeciale = await _myProjectDbContext.tblServiciiSpeciale.AsNoTracking().Where(ats => ats.idServiciu == id).FirstOrDefaultAsync();


            if (serviciispeciale == null)
            {
                return NotFound();
            }
            _myProjectDbContext.tblServiciiSpeciale.Update(serviciispecialeToUpdate);
            await _myProjectDbContext.SaveChangesAsync();
            return NoContent();
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteAsync(int id)
        {
            var serviciispeciale = await _myProjectDbContext.tblServiciiSpeciale.FindAsync(id);
            if (serviciispeciale == null)
            {
                return NotFound();
            }
            _myProjectDbContext.tblServiciiSpeciale.Remove(serviciispeciale);
            await _myProjectDbContext.SaveChangesAsync();
            return NoContent();
        }
    }
}
