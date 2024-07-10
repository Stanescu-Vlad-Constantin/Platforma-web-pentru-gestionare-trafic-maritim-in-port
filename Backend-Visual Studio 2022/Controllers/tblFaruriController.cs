using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ProiectLicenta.Model;
using ProiectLicenta.Model.Database;

namespace ProiectLicenta.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class tblFaruriController : ControllerBase
    {
        private readonly ProjectDbContext _myProjectDbContext;
        public tblFaruriController(ProjectDbContext myProjectDbContext)
        {
            _myProjectDbContext = myProjectDbContext;
        }

        [HttpGet]
        public async Task<IActionResult> GetAsync()
        {

            var far = await _myProjectDbContext.tblFaruri.ToListAsync();

            if (far == null)
            {
                return NotFound("Equipment not found");
            }

            return Ok(far);
        }

        [HttpGet("{id}")]
        public async Task<IActionResult> GetEquipmentByIdAsync(int id)
        {
            var far = await _myProjectDbContext.tblFaruri.AsNoTracking().Where(ats => ats.id_Far == id).FirstOrDefaultAsync();

            if (far == null)
            {
                return NotFound("ActualTask not found");
            }

            return Ok(far);
        }

        [HttpPost]
        public async Task<IActionResult> PostAsync(tblFaruri far)
        {
            if (far == null)
            {
                return BadRequest("Request is incorrect");
            }
            _myProjectDbContext.tblFaruri.Add(far);
            await _myProjectDbContext.SaveChangesAsync();
            return Created($"/id?id={far.id_Far}", far);
        }

        [HttpPut("{id}")]
        public async Task<IActionResult> PutAsync(int id, tblFaruri farToUpdate)
        {
            var far = await _myProjectDbContext.tblFaruri.AsNoTracking().Where(ats => ats.id_Far == id).FirstOrDefaultAsync();


            if (far == null)
            {
                return NotFound();
            }
            _myProjectDbContext.tblFaruri.Update(farToUpdate);
            await _myProjectDbContext.SaveChangesAsync();
            return NoContent();
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteAsync(int id)
        {
            var far = await _myProjectDbContext.tblFaruri.FindAsync(id);
            if (far == null)
            {
                return NotFound();
            }
            _myProjectDbContext.tblFaruri.Remove(far);
            await _myProjectDbContext.SaveChangesAsync();
            return NoContent();
        }
    }
}
