using BackendAPI.Data;
using BackendAPI.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace BackendAPI.Controllers
{

    [Route("api/[controller]")]
    [ApiController]
    public class ClassController : ControllerBase
    {
        private readonly AppDbContext _context;

        public ClassController(AppDbContext context)
        {
            _context = context;
        }

        // GET: api/class
        [HttpGet]
        public async Task<ActionResult<IEnumerable<object>>> GetClasses()
        {
            var data = await (
                from c in _context.Classes
                join r in _context.Rooms on c.RoomId equals r.Id into roomJoin
                from room in roomJoin.DefaultIfEmpty()
                join pt in _context.PTProfiles on c.PTUserId equals pt.UserId into ptJoin
                from pt in ptJoin.DefaultIfEmpty()
                join u in _context.Users on pt.UserId equals u.Id into userJoin
                from u in userJoin.DefaultIfEmpty()
                select new
                {
                    c.Id,
                    c.ClassName,
                    RoomName = room != null ? room.RoomName : "Chưa có phòng",
                    PTName = u != null ? u.Name : "Chưa có PT",
                    PTEmail = u != null ? u.Email : "",
                    pt.Specialty,
                    pt.ExperienceYears,
                    c.MaxParticipants,
                    c.Status
                }
            ).ToListAsync();

            return Ok(data);
        }

        // GET: api/class/{id}
        [HttpGet("{id}")]
        public async Task<ActionResult<object>> GetClass(int id)
        {
            var item = await (
                from c in _context.Classes
                where c.Id == id
                join r in _context.Rooms on c.RoomId equals r.Id into roomJoin
                from room in roomJoin.DefaultIfEmpty()
                join pt in _context.PTProfiles on c.PTUserId equals pt.UserId into ptJoin
                from pt in ptJoin.DefaultIfEmpty()
                join u in _context.Users on pt.UserId equals u.Id into userJoin
                from u in userJoin.DefaultIfEmpty()
                select new
                {
                    c.Id,
                    c.ClassName,
                    RoomName = room != null ? room.RoomName : "Chưa có phòng",
                    PTName = u != null ? u.Name : "Chưa có PT",
                    PTEmail = u != null ? u.Email : "",
                    pt.Specialty,
                    pt.ExperienceYears,
                    c.MaxParticipants
                }
            ).FirstOrDefaultAsync();

            if (item == null) return NotFound();
            return Ok(item);
        }


        // POST: api/Class
        [HttpPost]
        public async Task<ActionResult<Class>> CreateClass([FromBody] Class newClass)
        {
            Console.WriteLine("API da đc goi");

            if (newClass == null)
                return BadRequest("Lớp không hợp lệ.");

            try
            {
                // 👉 FIX STATUS
                newClass.Status = string.IsNullOrEmpty(newClass.Status)
                    ? "Pending"
                    : newClass.Status;

                // Check Room
                if (newClass.RoomId.HasValue)
                {
                    var roomExists = await _context.Rooms
                        .AnyAsync(r => r.Id == newClass.RoomId.Value);
                    if (!roomExists)
                        return BadRequest($"Phòng với ID = {newClass.RoomId} không tồn tại.");
                }

                // Check PT
                if (newClass.PTUserId.HasValue)
                {
                    var ptUser = await _context.Users
                        .FirstOrDefaultAsync(u => u.Id == newClass.PTUserId.Value);

                    if (ptUser == null)
                        return BadRequest($"PT với ID = {newClass.PTUserId} không tồn tại.");

                    if (!ptUser.Role.Equals("Trainer", StringComparison.OrdinalIgnoreCase))
                        return BadRequest("Chỉ user có Role = 'Trainer' mới được gán vào lớp.");
                }
                Console.WriteLine($"RoomId={newClass.RoomId}, PTUserId={newClass.PTUserId}");

                _context.Classes.Add(newClass);
                await _context.SaveChangesAsync();

                return CreatedAtAction(nameof(GetClass), new { id = newClass.Id }, newClass);
            }
            catch (Exception ex)
            {
                return StatusCode(500, ex.InnerException?.Message ?? ex.Message);
            }
        }


        // PUT: api/Class/{id}
        [HttpPut("{id}")]
        public async Task<IActionResult> UpdateClass(int id, [FromBody] Class updated)
        {
            if (id != updated.Id)
                return BadRequest("ID không khớp.");

            var existing = await _context.Classes.FindAsync(id);
            if (existing == null)
                return NotFound("Không tìm thấy lớp.");

            // Kiểm tra Room
            if (updated.RoomId.HasValue)
            {
                var roomExists = await _context.Rooms
                    .AnyAsync(r => r.Id == updated.RoomId.Value);
                if (!roomExists)
                    return BadRequest("Phòng không tồn tại.");
            }

            // Kiểm tra PT
            if (updated.PTUserId.HasValue)
            {
                var ptUser = await _context.Users
                    .FirstOrDefaultAsync(u => u.Id == updated.PTUserId.Value);

                if (ptUser == null)
                    return BadRequest("PT không tồn tại.");

                if (!string.Equals(ptUser.Role, "Trainer", StringComparison.OrdinalIgnoreCase))
                    return BadRequest("Chỉ user có Role = 'Trainer' mới được gán vào lớp.");
            }

            existing.ClassName = updated.ClassName;
            existing.PTUserId = updated.PTUserId;
            existing.RoomId = updated.RoomId;
            existing.MaxParticipants = updated.MaxParticipants;

            await _context.SaveChangesAsync();
            return NoContent();
        }

        // DELETE: api/class/{id}
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteClass(int id)
        {
            var existing = await _context.Classes.FindAsync(id);
            if (existing == null)
                return NotFound();

            _context.Classes.Remove(existing);
            await _context.SaveChangesAsync();
            return NoContent();
        }

        [HttpGet("details")]
        public async Task<ActionResult<IEnumerable<ClassDetailDto>>> GetClassDetails()
        {
            var query = from c in _context.Classes
                        join u in _context.Users on c.PTUserId equals u.Id into pu
                        from u in pu.DefaultIfEmpty()
                        join pt in _context.PTProfiles on c.PTUserId equals pt.UserId into ptp
                        from pt in ptp.DefaultIfEmpty()
                        join r in _context.Rooms on c.RoomId equals r.Id into rm
                        from r in rm.DefaultIfEmpty()
                        select new ClassDetailDto
                        {
                            Id = c.Id,
                            ClassName = c.ClassName,
                            MaxParticipants = c.MaxParticipants,
                            PTUserId = u != null ? (int?)u.Id : null,
                            PTName = u != null ? u.Name : null,
                            Specialty = pt != null ? pt.Specialty : null,
                            ExperienceYears = pt != null ? (int?)pt.ExperienceYears : null,
                            RoomId = r != null ? (int?)r.Id : null,
                            RoomName = r != null ? r.RoomName : null,
                            Capacity = r != null ? (int?)r.Capacity : null
                        };

            return Ok(await query.ToListAsync());
        }

    }
}
