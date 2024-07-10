using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ProiectLicenta.Model;
using ProiectLicenta.Model.Database;

namespace ProiectLicenta.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class tblAngajatiPortController : ControllerBase
    {
        private readonly ProjectDbContext _myProjectDbContext;
        public tblAngajatiPortController(ProjectDbContext myProjectDbContext)
        {
            _myProjectDbContext = myProjectDbContext;
        }

        [HttpGet]
        public async Task<IActionResult> GetAsync()
        {

            var angajatiportgalati = await _myProjectDbContext.tblAngajatiPort.ToListAsync();

            if (angajatiportgalati == null)
            {
                return NotFound("Equipment not found");
            }

            return Ok(angajatiportgalati);
        }

        [HttpGet("{id}")]
        public async Task<IActionResult> GetEquipmentByIdAsync(int id)
        {
            var angajatiportgalati = await _myProjectDbContext.tblAngajatiPort.AsNoTracking().Where(ats => ats.IdAngajat == id).FirstOrDefaultAsync();

            if (angajatiportgalati == null)
            {
                return NotFound("ActualTask not found");
            }

            return Ok(angajatiportgalati);
        }

        [HttpPost]
        public async Task<IActionResult> PostAsync(Model.tblAngajatiPort angajatiportgalati)
        {
            if (angajatiportgalati == null)
            {
                return BadRequest("Request is incorrect");
            }
            _myProjectDbContext.tblAngajatiPort.Add(angajatiportgalati);
            await _myProjectDbContext.SaveChangesAsync();
            return Created($"/id?id={angajatiportgalati.IdAngajat}", angajatiportgalati);
        }

        [HttpPut("{id}")]
        public async Task<IActionResult> PutAsync(int id, Model.tblAngajatiPort angajatiportgalatiToUpdate)
        {
            var angajatiportgalati = await _myProjectDbContext.tblAngajatiPort.AsNoTracking().Where(ats => ats.IdAngajat == id).FirstOrDefaultAsync();

            if (angajatiportgalati == null)
            {
                return NotFound();
            }
            _myProjectDbContext.tblAngajatiPort.Update(angajatiportgalatiToUpdate);
            await _myProjectDbContext.SaveChangesAsync();
            return NoContent();
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteAsync(int id)
        {
            var angajatiportgalati = await _myProjectDbContext.tblAngajatiPort.FindAsync(id);
            if (angajatiportgalati == null)
            {
                return NotFound();
            }
            _myProjectDbContext.tblAngajatiPort.Remove(angajatiportgalati);
            await _myProjectDbContext.SaveChangesAsync();
            return NoContent();
        }
    }
}
