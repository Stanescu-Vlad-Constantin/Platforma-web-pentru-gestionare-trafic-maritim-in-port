using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ProiectLicenta.Model;
using ProiectLicenta.Model.Database;

namespace ProiectLicenta.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class tblUserController : ControllerBase
    {
        private readonly ProjectDbContext _myProjectDbContext;
        public tblUserController(ProjectDbContext myProjectDbContext)
        {
            _myProjectDbContext = myProjectDbContext;
        }

        [HttpGet]
        public async Task<IActionResult> GetAsync()
        {

            var user = await _myProjectDbContext.tblUser.ToListAsync();

            if (user == null)
            {
                return NotFound("Equipment not found");
            }

            return Ok(user);
        }

        [HttpGet("{id}")]
        public async Task<IActionResult> GetEquipmentByIdAsync(int id)
        {
            var user = await _myProjectDbContext.tblUser.AsNoTracking().Where(ats => ats.User_id == id).FirstOrDefaultAsync();

            if (user == null)
            {
                return NotFound("ActualTask not found");
            }

            return Ok(user);
        }

        [HttpPost]
        public async Task<IActionResult> PostAsync(Model.tblUser user)
        {
            if (user == null)
            {
                return BadRequest("Request is incorrect");
            }
            _myProjectDbContext.tblUser.Add(user);
            await _myProjectDbContext.SaveChangesAsync();
            return Created($"/id?id={user.User_id}", user);
        }

        [HttpPut("{id}")]
        public async Task<IActionResult> PutAsync(int id, Model.tblUser userToUpdate)
        {
            var user = await _myProjectDbContext.tblUser.AsNoTracking().Where(ats => ats.User_id == id).FirstOrDefaultAsync();

            if (user == null)
            {
                return NotFound();
            }
            _myProjectDbContext.tblUser.Update(userToUpdate);
            await _myProjectDbContext.SaveChangesAsync();
            return NoContent();
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteAsync(int id)
        {
            var user = await _myProjectDbContext.tblUser.FindAsync(id);
            if (user == null)
            {
                return NotFound();
            }
            _myProjectDbContext.tblUser.Remove(user);
            await _myProjectDbContext.SaveChangesAsync();
            return NoContent();
        }
    }
}
