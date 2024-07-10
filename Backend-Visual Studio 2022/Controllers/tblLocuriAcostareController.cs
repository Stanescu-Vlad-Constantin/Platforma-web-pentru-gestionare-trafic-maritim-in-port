using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ProiectLicenta.Model;
using ProiectLicenta.Model.Database;

namespace ProiectLicenta.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class tblLocuriAcostareController : ControllerBase
    {
        private readonly ProjectDbContext _myProjectDbContext;
        public tblLocuriAcostareController(ProjectDbContext myProjectDbContext)
        {
            _myProjectDbContext = myProjectDbContext;
        }

        [HttpGet]
        public async Task<IActionResult> GetAsync()
        {

            var locuriacostare = await _myProjectDbContext.tblLocuriAcostare.ToListAsync();

            if (locuriacostare == null)
            {
                return NotFound("Equipment not found");
            }

            return Ok(locuriacostare);
        }

        [HttpGet("{id}")]
        public async Task<IActionResult> GetEquipmentByIdAsync(int id)
        {
            var locuriacostare = await _myProjectDbContext.tblLocuriAcostare.AsNoTracking().Where(ats => ats.doc_id == id).FirstOrDefaultAsync();

            if (locuriacostare == null)
            {
                return NotFound("ActualTask not found");
            }

            return Ok(locuriacostare);
        }

        [HttpPost]
        public async Task<IActionResult> PostAsync(tblLocuriAcostare locuriacostare)
        {
            if (locuriacostare == null)
            {
                return BadRequest("Request is incorrect");
            }
            _myProjectDbContext.tblLocuriAcostare.Add(locuriacostare);
            await _myProjectDbContext.SaveChangesAsync();
            return Created($"/id?id={locuriacostare.doc_id}", locuriacostare);
        }

        [HttpPut("{id}")]
        public async Task<IActionResult> PutAsync(int id, tblLocuriAcostare locuriacostareToUpdate)
        {
            var locuriacostare = await _myProjectDbContext.tblLocuriAcostare.AsNoTracking().Where(ats => ats.doc_id == id).FirstOrDefaultAsync();


            if (locuriacostare == null)
            {
                return NotFound();
            }
            _myProjectDbContext.tblLocuriAcostare.Update(locuriacostareToUpdate);
            await _myProjectDbContext.SaveChangesAsync();
            return NoContent();
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteAsync(int id)
        {
            var locuriacostare = await _myProjectDbContext.tblLocuriAcostare.FindAsync(id);
            if (locuriacostare == null)
            {
                return NotFound();
            }
            _myProjectDbContext.tblLocuriAcostare.Remove(locuriacostare);
            await _myProjectDbContext.SaveChangesAsync();
            return NoContent();
        }
    }
}
