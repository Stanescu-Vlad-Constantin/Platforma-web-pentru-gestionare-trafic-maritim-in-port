using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ProiectLicenta.Model;
using ProiectLicenta.Model.Database;

namespace ProiectLicenta.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class tblVaseAsteptateController : ControllerBase
    {
        private readonly ProjectDbContext _myProjectDbContext;
        public tblVaseAsteptateController(ProjectDbContext myProjectDbContext)
        {
            _myProjectDbContext = myProjectDbContext;
        }

        [HttpGet]
        public async Task<IActionResult> GetAsync()
        {

            var vasenoi = await _myProjectDbContext.tblVaseAsteptate.ToListAsync();

            if (vasenoi == null)
            {
                return NotFound("Equipment not found");
            }

            return Ok(vasenoi);
        }

        [HttpGet("{id}")]
        public async Task<IActionResult> GetEquipmentByIdAsync(int id)
        {
            var vasenoi = await _myProjectDbContext.tblVaseAsteptate.AsNoTracking().Where(ats => ats.id_Vas_nou == id).FirstOrDefaultAsync();

            if (vasenoi == null)
            {
                return NotFound("ActualTask not found");
            }

            return Ok(vasenoi);
        }

        [HttpPost]
        public async Task<IActionResult> PostAsync(tblVaseAsteptate vasenoi)
        {
            if (vasenoi == null)
            {
                return BadRequest("Request is incorrect");
            }
            _myProjectDbContext.tblVaseAsteptate.Add(vasenoi);
            await _myProjectDbContext.SaveChangesAsync();
            return Created($"/id?id={vasenoi.id_Vas_nou}", vasenoi);
        }

        [HttpPut("{id}")]
        public async Task<IActionResult> PutAsync(int id, tblVaseAsteptate vasenoiToUpdate)
        {
            var vasenoi = await _myProjectDbContext.tblVaseAsteptate.AsNoTracking().Where(ats => ats.id_Vas_nou == id).FirstOrDefaultAsync();


            if (vasenoi == null)
            {
                return NotFound();
            }
            _myProjectDbContext.tblVaseAsteptate.Update(vasenoiToUpdate);
            await _myProjectDbContext.SaveChangesAsync();
            return NoContent();
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteAsync(int id)
        {
            var vasenoi = await _myProjectDbContext.tblVaseAsteptate.FindAsync(id);
            if (vasenoi == null)
            {
                return NotFound();
            }
            _myProjectDbContext.tblVaseAsteptate.Remove(vasenoi);
            await _myProjectDbContext.SaveChangesAsync();
            return NoContent();
        }
    }
}
