using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ProiectLicenta.Model;
using ProiectLicenta.Model.Database;

namespace ProiectLicenta.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class tblPorturiController : ControllerBase
    {
        private readonly ProjectDbContext _myProjectDbContext;
        public tblPorturiController(ProjectDbContext myProjectDbContext)
        {
            _myProjectDbContext = myProjectDbContext;
        }

        [HttpGet]
        public async Task<IActionResult> GetAsync()
        {

            var port = await _myProjectDbContext.tblPorturi.ToListAsync();

            if (port == null)
            {
                return NotFound("Equipment not found");
            }

            return Ok(port);
        }

        [HttpGet("{id}")]
        public async Task<IActionResult> GetEquipmentByIdAsync(int id)
        {
            var port = await _myProjectDbContext.tblPorturi.AsNoTracking().Where(ats => ats.id_Port == id).FirstOrDefaultAsync();

            if (port == null)
            {
                return NotFound("ActualTask not found");
            }

            return Ok(port);
        }

        [HttpPost]
        public async Task<IActionResult> PostAsync(tblPorturi port)
        {
            if (port == null)
            {
                return BadRequest("Request is incorrect");
            }
            _myProjectDbContext.tblPorturi.Add(port);
            await _myProjectDbContext.SaveChangesAsync();
            return Created($"/id?id={port.id_Port}", port);
        }

        [HttpPut("{id}")]
        public async Task<IActionResult> PutAsync(int id, tblPorturi portToUpdate)
        {
            var port = await _myProjectDbContext.tblPorturi.AsNoTracking().Where(ats => ats.id_Port == id).FirstOrDefaultAsync();


            if (port == null)
            {
                return NotFound();
            }
            _myProjectDbContext.tblPorturi.Update(portToUpdate);
            await _myProjectDbContext.SaveChangesAsync();
            return NoContent();
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteAsync(int id)
        {
            var port = await _myProjectDbContext.tblPorturi.FindAsync(id);
            if (port == null)
            {
                return NotFound();
            }
            _myProjectDbContext.tblPorturi.Remove(port);
            await _myProjectDbContext.SaveChangesAsync();
            return NoContent();
        }
    }
}
