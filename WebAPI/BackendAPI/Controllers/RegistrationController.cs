using BackendAPI.Data;
using BackendAPI.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace BackendAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class RegistrationController : ControllerBase
    {
        private readonly AppDbContext _context;

        public RegistrationController(AppDbContext context)
        {
            _context = context;
        }

        // ✅ Lấy tất cả đăng ký (projection nhẹ, bao gồm thông tin user, lớp, gói)
        [HttpGet]
        public async Task<ActionResult<IEnumerable<object>>> GetRegistrations()
        {
            var result = await _context.Registrations
                .Include(r => r.User)
                .Include(r => r.Class)
                .Include(r => r.Plan)
                .Select(r => new
                {
                    r.Id,
                    UserName = r.User != null ? r.User.Name : null,
                    ClassName = r.Class != null ? r.Class.ClassName : null,
                    PlanName = r.Plan != null ? r.Plan.PlanName : null,
                    r.StartDate,
                    r.EndDate,
                    r.Status
                })
                .ToListAsync();

            return Ok(result);
        }

        // ✅ Lấy danh sách đăng ký theo UserId
        [HttpGet("User/{userId}")]
        public async Task<ActionResult<IEnumerable<Registration>>> GetRegistrationsByUser(int userId)
        {
            var registrations = await _context.Registrations
                .Where(r => r.UserId == userId)
                .Include(r => r.Plan)
                .Include(r => r.Class)
                .Include(r => r.User)
                .ToListAsync();

            return Ok(registrations);
        }

        // ✅ Lấy đăng ký theo ID
        [HttpGet("{id}")]
        public async Task<ActionResult<Registration>> GetRegistration(int id)
        {
            var registration = await _context.Registrations
                .Include(r => r.User)
                .Include(r => r.Class)
                .Include(r => r.Plan)
                .FirstOrDefaultAsync(r => r.Id == id);

            if (registration == null)
                return NotFound();

            return Ok(registration);
        }

        // ✅ Tạo mới đăng ký
        [HttpPost]
        public async Task<ActionResult<Registration>> CreateRegistration(Registration registration)
        {
            // Bắt đầu transaction EF
            using var dbTransaction = await _context.Database.BeginTransactionAsync();

            try
            {
                // 1️⃣ Kiểm tra UserId có tồn tại không
                var userExists = await _context.Users.AnyAsync(u => u.Id == registration.UserId);
                if (!userExists)
                    return BadRequest($"UserId {registration.UserId} không tồn tại");

                // 2️⃣ Nếu đăng ký Membership, kiểm tra PlanId
                MembershipPlan? plan = null;
                if (registration.PlanId.HasValue)
                {
                    plan = await _context.MembershipPlans.FindAsync(registration.PlanId.Value);
                    if (plan == null)
                        return BadRequest($"PlanId {registration.PlanId.Value} không tồn tại");

                    // Tính EndDate
                    registration.EndDate = registration.StartDate.AddMonths(plan.DurationMonths);
                }

                // 3️⃣ Lưu Registration
                _context.Registrations.Add(registration);
                await _context.SaveChangesAsync(); // Lưu để có Registration.Id

                // 4️⃣ Nếu đăng ký Membership => tạo Payment + Transaction
                if (plan != null)
                {
                    var payment = new Payment
                    {
                        UserId = registration.UserId,
                        PlanId = plan.Id,
                        Amount = plan.Price,
                        PaymentDate = DateTime.UtcNow
                    };
                    _context.Payments.Add(payment);
                    await _context.SaveChangesAsync(); // Lưu để có Payment.Id

                    var transaction = new Transaction
                    {
                        PaymentId = payment.Id,
                        TransactionType = "Membership",
                        Amount = payment.Amount,
                        CreatedAt = DateTime.UtcNow
                    };
                    _context.Transactions.Add(transaction);
                    await _context.SaveChangesAsync();
                }

                // 5️⃣ Commit transaction
                await dbTransaction.CommitAsync();

                return CreatedAtAction(nameof(GetRegistration), new { id = registration.Id }, registration);
            }
            catch (DbUpdateException dbEx)
            {
                await dbTransaction.RollbackAsync();
                var inner = dbEx.InnerException != null ? dbEx.InnerException.Message : dbEx.Message;
                return BadRequest($"Lỗi khi lưu vào DB: {inner}");
            }
            catch (Exception ex)
            {
                await dbTransaction.RollbackAsync();
                return BadRequest($"Lỗi chung: {ex.Message}");
            }
        }



        // ✅ Cập nhật đăng ký
        [HttpPut("{id}")]
        public async Task<IActionResult> UpdateRegistration(int id, Registration registration)
        {
            if (id != registration.Id)
                return BadRequest("ID không khớp.");

            var existing = await _context.Registrations.FindAsync(id);
            if (existing == null)
                return NotFound("Không tìm thấy đăng ký.");

            // Cho phép cập nhật status, class, plan
            existing.Status = registration.Status ?? existing.Status;
            existing.ClassId = registration.ClassId ?? existing.ClassId;
            existing.PlanId = registration.PlanId ?? existing.PlanId;
            existing.StartDate = registration.StartDate == default ? existing.StartDate : registration.StartDate;
            existing.EndDate = registration.EndDate ?? existing.EndDate;

            await _context.SaveChangesAsync();
            return NoContent();
        }

        // ✅ Xóa đăng ký
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteRegistration(int id)
        {
            var registration = await _context.Registrations.FindAsync(id);
            if (registration == null)
                return NotFound("Không tìm thấy đăng ký cần xóa.");

            _context.Registrations.Remove(registration);
            await _context.SaveChangesAsync();
            return NoContent();
        }
    }
}
