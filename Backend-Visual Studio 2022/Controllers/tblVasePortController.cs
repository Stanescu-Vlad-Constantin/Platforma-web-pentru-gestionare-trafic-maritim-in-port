using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ProiectLicenta.Model;
using ProiectLicenta.Model.Database;

namespace ProiectLicenta.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class tblVasePortController : ControllerBase
    {
        private readonly ProjectDbContext _myProjectDbContext;
        public tblVasePortController(ProjectDbContext myProjectDbContext)
        {
            _myProjectDbContext = myProjectDbContext;
        }

        [HttpGet]
        public async Task<IActionResult> GetAsync()
        {

            var vaseprezente = await _myProjectDbContext.tblVasePort.Include(x=>x.idPortDestinatie).ToListAsync();

            if (vaseprezente == null)
            {
                return NotFound("Equipment not found");
            }

            return Ok(vaseprezente);
        }

        [HttpGet("{id}")]
        public async Task<IActionResult> GetEquipmentByIdAsync(int id)
        {
            var vaseprezente = await _myProjectDbContext.tblVasePort.AsNoTracking().Where(ats => ats.id_Vas == id).FirstOrDefaultAsync();

            if (vaseprezente == null)
            {
                return NotFound("ActualTask not found");
            }

            return Ok(vaseprezente);
        }

        [HttpPost]
        public async Task<IActionResult> PostAsync(tblVasePort vaseprezente)
        {
            if (vaseprezente == null)
            {
                return BadRequest("Request is incorrect");
            }
            _myProjectDbContext.tblVasePort.Add(vaseprezente);
            await _myProjectDbContext.SaveChangesAsync();
            return Created($"/id?id={vaseprezente.id_Vas}", vaseprezente);
        }

        [HttpPut("{id}")]
        public async Task<IActionResult> PutAsync(int id, tblVasePort vaseprezenteToUpdate)
        {
            var vaseprezente = await _myProjectDbContext.tblVasePort.AsNoTracking().Where(ats => ats.id_Vas == id).FirstOrDefaultAsync();


            if (vaseprezente == null)
            {
                return NotFound();
            }
            _myProjectDbContext.tblVasePort.Update(vaseprezenteToUpdate);
            await _myProjectDbContext.SaveChangesAsync();
            return NoContent();
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteAsync(int id)
        {
            var vaseprezente = await _myProjectDbContext.tblVasePort.FindAsync(id);
            if (vaseprezente == null)
            {
                return NotFound();
            }
            _myProjectDbContext.tblVasePort.Remove(vaseprezente);
            await _myProjectDbContext.SaveChangesAsync();
            return NoContent();
        }
    }
}
