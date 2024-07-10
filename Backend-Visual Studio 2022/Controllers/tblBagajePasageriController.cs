using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ProiectLicenta.Model;
using ProiectLicenta.Model.Database;

namespace ProiectLicenta.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class tblBagajePasageriController : ControllerBase
    {
        private readonly ProjectDbContext _myProjectDbContext;
        public tblBagajePasageriController(ProjectDbContext myProjectDbContext)
        {
            _myProjectDbContext = myProjectDbContext;
        }

        [HttpGet]
        public async Task<IActionResult> GetAsync()
        {

            var bagajepasageri = await _myProjectDbContext.tblBagajePasageri.ToListAsync();

            if (bagajepasageri == null)
            {
                return NotFound("Equipment not found");
            }

            return Ok(bagajepasageri);
        }

        [HttpGet("{id}")]
        public async Task<IActionResult> GetEquipmentByIdAsync(int id)
        {
            var bagajepasageri = await _myProjectDbContext.tblBagajePasageri.AsNoTracking().Where(ats => ats.id_bagaj == id).FirstOrDefaultAsync();
                
            if (bagajepasageri == null)
            {
                return NotFound("ActualTask not found");
            }

            return Ok(bagajepasageri);
        }

        [HttpPost]
        public async Task<IActionResult> PostAsync(tblBagajePasageri bagajepasageri)
        {
            if (bagajepasageri == null)
            {
                return BadRequest("Request is incorrect");
            }
            _myProjectDbContext.tblBagajePasageri.Add(bagajepasageri);
            await _myProjectDbContext.SaveChangesAsync();
            return Created($"/id?id={bagajepasageri.id_bagaj}", bagajepasageri);
        }

        [HttpPut("{id}")]
        public async Task<IActionResult> PutAsync(int id, tblBagajePasageri bagajepasageriToUpdate)
        {
            var bagajepasageri = await _myProjectDbContext.tblBagajePasageri.AsNoTracking().Where(ats => ats.id_bagaj == id).FirstOrDefaultAsync();


            if (bagajepasageri == null)
            {
                return NotFound();
            }
            _myProjectDbContext.tblBagajePasageri.Update(bagajepasageriToUpdate);
            await _myProjectDbContext.SaveChangesAsync();
            return NoContent();
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteAsync(int id)
        {
            var bagajepasageri = await _myProjectDbContext.tblBagajePasageri.FindAsync(id);
            if (bagajepasageri == null)
            {
                return NotFound();
            }
            _myProjectDbContext.tblBagajePasageri.Remove(bagajepasageri);
            await _myProjectDbContext.SaveChangesAsync();
            return NoContent();
        }
    }
}
