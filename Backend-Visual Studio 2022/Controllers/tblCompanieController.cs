using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ProiectLicenta.Model;
using ProiectLicenta.Model.Database;

namespace ProiectLicenta.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class tblCompanieController : ControllerBase
    {
        private readonly ProjectDbContext _myProjectDbContext;
        public tblCompanieController(ProjectDbContext myProjectDbContext)
        {
            _myProjectDbContext = myProjectDbContext;
        }

        [HttpGet]
        public async Task<IActionResult> GetAsync()
        {

            var companii = await _myProjectDbContext.tblCompanie.ToListAsync();

            if (companii == null)
            {
                return NotFound("Equipment not found");
            }

            return Ok(companii);
        }

        [HttpGet("{id}")]
        public async Task<IActionResult> GetEquipmentByIdAsync(int id)
        {
            var companii = await _myProjectDbContext.tblCompanie.AsNoTracking().Where(ats => ats.id_Companie == id).FirstOrDefaultAsync();

            if (companii == null)
            {
                return NotFound("ActualTask not found");
            }

            return Ok(companii);
        }

        [HttpPost]
        public async Task<IActionResult> PostAsync(tblCompanie companii)
        {
            if (companii == null)
            {
                return BadRequest("Request is incorrect");
            }
            _myProjectDbContext.tblCompanie.Add(companii);
            await _myProjectDbContext.SaveChangesAsync();
            return Created($"/id?id={companii.id_Companie}", companii);
        }

        [HttpPut("{id}")]
        public async Task<IActionResult> PutAsync(int id, tblCompanie companiiToUpdate)
        {
            var companii = await _myProjectDbContext.tblCompanie.AsNoTracking().Where(ats => ats.id_Companie == id).FirstOrDefaultAsync();


            if (companii == null)
            {
                return NotFound();
            }
            _myProjectDbContext.tblCompanie.Update(companiiToUpdate);
            await _myProjectDbContext.SaveChangesAsync();
            return NoContent();
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteAsync(int id)
        {
            var companii = await _myProjectDbContext.tblCompanie.FindAsync(id);
            if (companii == null)
            {
                return NotFound();
            }
            _myProjectDbContext.tblCompanie.Remove(companii);
            await _myProjectDbContext.SaveChangesAsync();
            return NoContent();
        }
    }
}
