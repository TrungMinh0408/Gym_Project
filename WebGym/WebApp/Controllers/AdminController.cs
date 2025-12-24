using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Filters;
using Microsoft.AspNetCore.Mvc.Rendering;
using Newtonsoft.Json;
using System.Security.Claims;
using System.Text;
using WebApp.Attributes;
using WebApp.Models;
using static System.Net.WebRequestMethods;

namespace WebApp.Controllers
{
    [AuthorizeRole("Admin")]
    public class AdminController : Controller
    {
        private readonly HttpClient _httpClient = new HttpClient();
        private const string ApiBaseUrl = "https://localhost:7191"; // đổi đúng PORT API


       
        private readonly string _apiPlanUrl = "https://localhost:7191/api/MembershipPlans";
        private readonly string _apiRegUrl = "https://localhost:7191/api/Registration";

        public AdminController()
        {
            _httpClient = new HttpClient();
        }

        public override void OnActionExecuting(ActionExecutingContext context)
        {
            if (HttpContext.Session.GetString("UserId") == null)
            {
                context.Result = RedirectToAction("Index", "Login");
            }
            base.OnActionExecuting(context);
        }


        // ======================= USER SECTION ==========================
        public async Task<IActionResult> Statistics()
        {
            var stats = new UserStatistics();
            var users = new List<User>();

            var r1 = await _httpClient.GetAsync($"{_apiUserUrl}/statistics");
            if (r1.IsSuccessStatusCode)
                stats = JsonConvert.DeserializeObject<UserStatistics>(await r1.Content.ReadAsStringAsync());

            var r2 = await _httpClient.GetAsync(_apiUserUrl);
            if (r2.IsSuccessStatusCode)
                users = JsonConvert.DeserializeObject<List<User>>(await r2.Content.ReadAsStringAsync());

            ViewBag.Statistics = stats;
            return View(users);
        }

        public async Task<IActionResult> UserManagement(string search = "", string role = "All", int page = 1)
        {
            int pageSize = 10;

            var res = await _httpClient.GetAsync($"{_apiUserUrl}/filter?search={search}&role={role}&page={page}&pageSize={pageSize}");
            var result = new UserFilterResult();

            if (res.IsSuccessStatusCode)
                result = JsonConvert.DeserializeObject<UserFilterResult>(await res.Content.ReadAsStringAsync());

            ViewBag.Search = search;
            ViewBag.Role = role;
            ViewBag.Page = page;
            ViewBag.PageSize = pageSize;

            return View(result);
        }

        public async Task<IActionResult> Detail(int id)
        {
            var res = await _httpClient.GetAsync($"{_apiUserUrl}/{id}");
            if (!res.IsSuccessStatusCode) return NotFound();

            return View(JsonConvert.DeserializeObject<User>(await res.Content.ReadAsStringAsync()));
        }

        [HttpGet]
        public IActionResult Create() => View();

        [HttpPost]
        public async Task<IActionResult> Create(User user)
        {
            var json = JsonConvert.SerializeObject(user);
            var res = await _httpClient.PostAsync(_apiUserUrl, new StringContent(json, Encoding.UTF8, "application/json"));

            if (res.IsSuccessStatusCode) return RedirectToAction("Statistics");
            ViewBag.Error = "Không thể thêm user!";
            return View(user);
        }

        [HttpGet]
        public async Task<IActionResult> Edit(int id)
        {
            var res = await _httpClient.GetAsync($"{_apiUserUrl}/{id}");
            if (!res.IsSuccessStatusCode) return NotFound();

            return View(JsonConvert.DeserializeObject<User>(await res.Content.ReadAsStringAsync()));
        }

        [HttpPost]
        public async Task<IActionResult> Edit(User user)
        {
            var json = JsonConvert.SerializeObject(user);
            var res = await _httpClient.PutAsync($"{_apiUserUrl}/{user.Id}", new StringContent(json, Encoding.UTF8, "application/json"));

            if (res.IsSuccessStatusCode) return RedirectToAction("Statistics");
            ViewBag.Error = "Cập nhật thất bại!";
            return View(user);
        }

        public async Task<IActionResult> Delete(int id)
        {
            await _httpClient.DeleteAsync($"{_apiUserUrl}/{id}");
            return RedirectToAction("Statistics");
        }

        // ======================= PT SECTION ==========================
        private readonly string _apiPTUrl = "https://localhost:7191/api/PT";
        private readonly string _apiUserUrl = "https://localhost:7191/api/User";


        // 📋 Danh sách PT
        public async Task<IActionResult> PTStatistics()
        {
            var res = await _httpClient.GetAsync(_apiPTUrl);
            var list = new List<PTStatistics>();

            if (res.IsSuccessStatusCode)
            {
                var json = await res.Content.ReadAsStringAsync();
                list = JsonConvert.DeserializeObject<List<PTStatistics>>(json) ?? new List<PTStatistics>();
            }
            else
                ViewBag.Error = $"API lỗi: {res.StatusCode}";

            return View(list);
        }


        // ➕ GET: Thêm PT
        [HttpGet]
        public async Task<IActionResult> CreatePT()
        {
            // 🔹 Gọi API lấy danh sách user
            var res = await _httpClient.GetAsync(_apiUserUrl);

            // 🔹 Khởi tạo biến users ở ngoài IF → luôn tồn tại
            List<User> users = new List<User>();

            if (res.IsSuccessStatusCode)
            {
                var json = await res.Content.ReadAsStringAsync();
                users = JsonConvert.DeserializeObject<List<User>>(json) ?? new List<User>();
            }

            // 🔹 Lọc user có Role = "Trainer"
            var trainers = users
                .Where(u => u.Role == "Trainer")
                .ToList();

            // Nếu bạn muốn chỉ lọc user chưa có trong PTProfile: nói mình viết tiếp cho
            ViewBag.Trainers = trainers;
            return View(new PTStatistics());
        }


        // ➕ POST: Thêm PT
        [HttpPost]
        public async Task<IActionResult> CreatePT(PTStatistics model)
        {
            // 🔍 Lấy danh sách PT hiện có để kiểm tra trùng
            var resPTs = await _httpClient.GetAsync(_apiPTUrl); // GET /api/PT
            var existingPTs = JsonConvert.DeserializeObject<List<PTStatistics>>(
                await resPTs.Content.ReadAsStringAsync()
            ) ?? new List<PTStatistics>();

            if (existingPTs.Any(p => p.UserId == model.UserId))
            {
                ViewBag.Error = "❌ Tài khoản này đã là huấn luyện viên rồi!";

                // Load lại danh sách user để dropdown không bị trống
                var resUsers = await _httpClient.GetAsync(_apiUserUrl);
                ViewBag.Trainers = JsonConvert.DeserializeObject<List<User>>(
                    await resUsers.Content.ReadAsStringAsync()
                );

                return View(model);
            }

            // 🚀 Tiếp tục thêm nếu hợp lệ
            var json = JsonConvert.SerializeObject(model);
            var res = await _httpClient.PostAsync(
                _apiPTUrl,
                new StringContent(json, Encoding.UTF8, "application/json")
            );

            if (res.IsSuccessStatusCode)
                return RedirectToAction(nameof(PTStatistics));

            ViewBag.Error = "⚠ Không thể thêm PT.";
            return View(model);
        }


        // ✏ GET: Sửa PT
        [HttpGet]
        public async Task<IActionResult> EditPT(int id)
        {
            var res = await _httpClient.GetAsync($"{_apiPTUrl}/{id}");
            if (!res.IsSuccessStatusCode)
                return NotFound();

            var model = JsonConvert.DeserializeObject<PTStatistics>(await res.Content.ReadAsStringAsync());
            return View(model);
        }


        // ✏ POST: Cập nhật PT
        [HttpPost]
        public async Task<IActionResult> EditPT(PTStatistics model)
        {
            var json = JsonConvert.SerializeObject(model);
            var res = await _httpClient.PutAsync(
                $"{_apiPTUrl}/{model.Id}",
                new StringContent(json, Encoding.UTF8, "application/json"));

            if (res.IsSuccessStatusCode)
                return RedirectToAction(nameof(PTStatistics));

            ViewBag.Error = "Cập nhật thất bại!";
            return View(model);
        }


        // 🗑 Xóa PT
        public async Task<IActionResult> DeletePT(int id)
        {
            await _httpClient.DeleteAsync($"{_apiPTUrl}/{id}");
            return RedirectToAction(nameof(PTStatistics));
        }



        // ======================= ROOM SECTION ==========================

        public async Task<IActionResult> RoomStatistics()
        {
            var res = await _httpClient.GetAsync(_apiRoomUrl);
            if (!res.IsSuccessStatusCode)
                return View(new List<RoomStatistics>());

            return View(JsonConvert.DeserializeObject<List<RoomStatistics>>(await res.Content.ReadAsStringAsync()));
        }

        [HttpGet]
        public IActionResult CreateRoom() => View(new RoomStatistics());

        [HttpPost]
        public async Task<IActionResult> CreateRoom(RoomStatistics room)
        {
            if (string.IsNullOrEmpty(room.Status))
                room.Status = "Available";

            var json = JsonConvert.SerializeObject(room);
            var res = await _httpClient.PostAsync(_apiRoomUrl, new StringContent(json, Encoding.UTF8, "application/json"));

            if (res.IsSuccessStatusCode) return RedirectToAction("RoomStatistics");

            ViewBag.Error = "Thêm phòng thất bại!";
            return View(room);
        }

        [HttpGet]
        public async Task<IActionResult> EditRoom(int id)
        {
            var res = await _httpClient.GetAsync($"{_apiRoomUrl}/{id}");
            if (!res.IsSuccessStatusCode) return NotFound();

            return View(JsonConvert.DeserializeObject<RoomStatistics>(await res.Content.ReadAsStringAsync()));
        }

        [HttpPost]
        public async Task<IActionResult> EditRoom(RoomStatistics room)
        {
            var json = JsonConvert.SerializeObject(room);
            var res = await _httpClient.PutAsync($"{_apiRoomUrl}/{room.Id}", new StringContent(json, Encoding.UTF8, "application/json"));

            if (res.IsSuccessStatusCode) return RedirectToAction("RoomStatistics");

            ViewBag.Error = "Cập nhật phòng thất bại!";
            return View(room);
        }
        [HttpPost]
        public async Task<IActionResult> DeleteRoom(int id)
        {
            var res = await _httpClient.DeleteAsync($"{_apiRoomUrl}/{id}");

            if (!res.IsSuccessStatusCode)
            {
                TempData["Error"] = "Xóa phòng thất bại!";
            }

            return RedirectToAction("RoomStatistics");
        }

        // ======================= MEMBERSHIP PLAN SECTION ==========================
        [HttpGet]
        public async Task<IActionResult> MembershipPlans()
        {
            var res = await _httpClient.GetAsync("https://localhost:7191/api/MembershipPlan");

            if (!res.IsSuccessStatusCode)
            {
                ViewBag.Error = $"API MembershipPlans lỗi: {(int)res.StatusCode} - {res.ReasonPhrase}";
                return View(new List<MembershipPlanViewModel>());
            }

            var json = await res.Content.ReadAsStringAsync();
            var plans = JsonConvert.DeserializeObject<List<MembershipPlanViewModel>>(json)
                        ?? new List<MembershipPlanViewModel>();

            return View(plans);
        }
        [HttpGet]
        public IActionResult CreateMembershipPlan()
        {
            return View(new MembershipPlanViewModel());
        }

        [HttpPost]
        public async Task<IActionResult> CreateMembershipPlan(MembershipPlanViewModel model)
        {
            if (!ModelState.IsValid)
                return View(model);

            var settings = new JsonSerializerSettings
            {
                NullValueHandling = NullValueHandling.Ignore
            };

            var json = JsonConvert.SerializeObject(model, settings);

            var content = new StringContent(json, Encoding.UTF8, "application/json");

            var res = await _httpClient.PostAsync(
                "https://localhost:7191/api/MembershipPlan",
                content
            );

            if (!res.IsSuccessStatusCode)
            {
                ModelState.AddModelError("", "Không tạo được gói tập");
                return View(model);
            }

            return RedirectToAction(nameof(MembershipPlans));
        }

        [HttpGet]
        public async Task<IActionResult> EditMembershipPlan(int id)
        {
            var res = await _httpClient.GetAsync($"https://localhost:7191/api/MembershipPlan/{id}");
            if (!res.IsSuccessStatusCode)
                return RedirectToAction(nameof(MembershipPlans));

            var json = await res.Content.ReadAsStringAsync();
            var plan = JsonConvert.DeserializeObject<MembershipPlanViewModel>(json);

            if (plan == null)
                return RedirectToAction(nameof(MembershipPlans));

            return View(plan);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> EditMembershipPlan(MembershipPlanViewModel model)
        {
            if (!ModelState.IsValid)
                return View(model);

            var json = JsonConvert.SerializeObject(model);
            var content = new StringContent(json, Encoding.UTF8, "application/json");

            var res = await _httpClient.PutAsync(
                $"https://localhost:7191/api/MembershipPlan/{model.Id}", content);

            if (!res.IsSuccessStatusCode)
            {
                ModelState.AddModelError("", "Cập nhật gói tập thất bại.");
                return View(model);
            }

            return RedirectToAction(nameof(MembershipPlans));
        }
        [HttpPost]
        public async Task<IActionResult> DeleteMembershipPlan(int id)
        {
            var res = await _httpClient.DeleteAsync($"https://localhost:7191/api/MembershipPlan/{id}");

            //if (!res.IsSuccessStatusCode)
            //{
            //    var content = await res.Content.ReadAsStringAsync();
            //    TempData["Error"] = $"Xóa thất bại: {res.StatusCode} - {content}";
            //}

            return RedirectToAction(nameof(MembershipPlans));
        }


        // ======================= REGISTRATION SECTION ==========================

        [HttpGet]
        public async Task<IActionResult> Transactions(DateTime? from, DateTime? to)
        {
            var toDate = to ?? DateTime.Today;
            var fromDate = from ?? toDate.AddDays(-60);

            ViewBag.From = fromDate.ToString("yyyy-MM-dd");
            ViewBag.To = toDate.ToString("yyyy-MM-dd");

            var url = $"https://localhost:7191/api/Transaction/filter?from={fromDate:yyyy-MM-dd}&to={toDate:yyyy-MM-dd}";

            var res = await _httpClient.GetAsync(url);
            if (!res.IsSuccessStatusCode)
            {
                return View(new TransactionListViewModel
                {
                    From = fromDate,
                    To = toDate
                });
            }

            var json = await res.Content.ReadAsStringAsync();

            // ÉP KIỂU CHUẨN NHƯ NÀY
            var items = JsonConvert.DeserializeObject<List<WebApp.Models.TransactionViewModel>>(json)
                        ?? new List<WebApp.Models.TransactionViewModel>();

            var model = new TransactionListViewModel
            {
                From = fromDate,
                To = toDate,
                Items = items,
                TotalAmount = items.Sum(x => x.Amount),
                TotalCount = items.Count
            };

            return View(model);
        }

        
        // ======================= TRACK REVENUE ==========================

        [HttpGet]
        public async Task<IActionResult> TrackRevenue(DateTime? from, DateTime? to)
        {
            // Nếu user không chọn gì thì lấy 30 ngày gần nhất
            var toDate = to ?? DateTime.Today;
            var fromDate = from ?? toDate.AddDays(-30);

            // Đẩy lại ra view để fill vào input type="date"
            ViewBag.From = fromDate.ToString("yyyy-MM-dd");
            ViewBag.To = toDate.ToString("yyyy-MM-dd");

            HttpResponseMessage res;

            // Nếu người dùng có chọn khoảng ngày (hoặc bạn muốn luôn dùng filter)
            res = await _httpClient.GetAsync(
                $"https://localhost:7191/api/Revenue/filter?start={fromDate:yyyy-MM-dd}&end={toDate:yyyy-MM-dd}");

            // Nếu API tổng không cần filter thì bạn có thể làm:
            // if (!from.HasValue && !to.HasValue)
            //     res = await _httpClient.GetAsync("https://localhost:7191/api/Revenue");
            // else
            //     res = await _httpClient.GetAsync($"https://localhost:7191/api/Revenue/filter?start={fromDate:yyyy-MM-dd}&end={toDate:yyyy-MM-dd}");

            if (!res.IsSuccessStatusCode)
            {
                // API lỗi thì trả về model trống, tránh null
                return View(new RevenueViewModel());
            }

            var json = await res.Content.ReadAsStringAsync();
            var model = JsonConvert.DeserializeObject<RevenueViewModel>(json);

            // Nếu API trả về null thì cũng tránh null
            if (model == null)
            {
                model = new RevenueViewModel();
            }

            return View(model);
        }

        // ======================= VIEW TRANSACTIONS ==========================
        public async Task<IActionResult> Transactions()
        {
            var res = await _httpClient.GetAsync("https://localhost:7191/api/Transactions/");
            if (!res.IsSuccessStatusCode)
                return View(new List<TransactionViewModel>());

            return View(JsonConvert.DeserializeObject<List<TransactionViewModel>>(await res.Content.ReadAsStringAsync()));
        }



        // ======================= MANAGE CLASS ==========================
        // URL API
        private readonly string _apiClassUrl = "https://localhost:7191/api/Class";
        private readonly string _apiRoomUrl = "https://localhost:7191/api/Rooms";

        // 📋 Hiển thị danh sách lớp học
        public async Task<IActionResult> ClassList()
        {
            var res = await _httpClient.GetAsync(_apiClassUrl);
            var list = new List<ClassViewModel>();

            if (res.IsSuccessStatusCode)
            {
                list = JsonConvert.DeserializeObject<List<ClassViewModel>>(
                    await res.Content.ReadAsStringAsync()
                ) ?? new List<ClassViewModel>();
            }

            return View(list);
        }

        // 📌 Load dữ liệu cần (phòng + PT)
        private async Task LoadClassOptionsAsync()
        {
            var ptRes = await _httpClient.GetAsync(_apiPTUrl);
            ViewBag.PTs = JsonConvert.DeserializeObject<List<PTStatistics>>(
                await ptRes.Content.ReadAsStringAsync()
            ) ?? new List<PTStatistics>();

            var roomRes = await _httpClient.GetAsync(_apiRoomUrl);
            ViewBag.Rooms = JsonConvert.DeserializeObject<List<RoomStatistics>>(
                await roomRes.Content.ReadAsStringAsync()
            ) ?? new List<RoomStatistics>();
        }

        // ➕ GET: Thêm lớp
        [HttpGet]
        public async Task<IActionResult> CreateClass()
        {
            await LoadClassOptionsAsync();
            return View(new ClassViewModel());
        }

        // ➕ POST: Thêm lớp
        [HttpPost]
        public async Task<IActionResult> CreateClass(ClassCreateViewModel model)
        {
            if (!ModelState.IsValid)
            {
                await LoadClassOptionsAsync();
                return View(model);
            }

            var json = JsonConvert.SerializeObject(model);

            var response = await _httpClient.PostAsync(
                _apiClassUrl,
                new StringContent(json, Encoding.UTF8, "application/json")
            );

            if (response.IsSuccessStatusCode)
                return RedirectToAction(nameof(ClassList));

            var error = await response.Content.ReadAsStringAsync();
            ViewBag.Error = error;

            await LoadClassOptionsAsync();
            return View(model);
        }



        // ✏ GET: Sửa lớp
        [HttpGet]
        public async Task<IActionResult> EditClass(int id)
        {
            var res = await _httpClient.GetAsync($"{_apiClassUrl}/{id}");
            if (!res.IsSuccessStatusCode) return NotFound();

            var model = JsonConvert.DeserializeObject<ClassViewModel>(
                await res.Content.ReadAsStringAsync());

            await LoadClassOptionsAsync();
            return View(model);
        }

        // ✏ POST: Cập nhật lớp
        [HttpPost]
        public async Task<IActionResult> EditClass(ClassViewModel model)
        {
            if (!ModelState.IsValid)
            {
                await LoadClassOptionsAsync();
                return View(model);
            }

            var json = JsonConvert.SerializeObject(model);
            var response = await _httpClient.PutAsync(
                $"{_apiClassUrl}/{model.Id}",       // 👈 Phải gửi đúng đường dẫn chứa ID
                new StringContent(json, Encoding.UTF8, "application/json")
            );

            if (response.IsSuccessStatusCode)
                return RedirectToAction(nameof(ClassList));

            ViewBag.Error = "⚠ Cập nhật thất bại!";
            await LoadClassOptionsAsync();
            return View(model);
        }


        // 🗑 Xóa lớp
        public async Task<IActionResult> DeleteClass(int id)
        {
            await _httpClient.DeleteAsync($"{_apiClassUrl}/{id}");
            return RedirectToAction(nameof(ClassList));
        }


        // ======================= MANAGE EQUIPMENT ==========================
        private async Task LoadEquipmentRoomsAsync()
        {
            var res = await _httpClient.GetAsync(_apiRoomUrl);
            if (res.IsSuccessStatusCode)
            {
                ViewBag.Rooms = JsonConvert.DeserializeObject<List<RoomStatistics>>(
                    await res.Content.ReadAsStringAsync()
                );
            }
            else
            {
                ViewBag.Rooms = new List<RoomStatistics>();
            }
        }

        private readonly string _apiEquipmentUrl = "https://localhost:7191/api/Equipment";
        // nếu chưa có thì thêm

        // GET: /Admin/Equipment
        [HttpGet]
        public async Task<IActionResult> Equipment()
        {
            var res = await _httpClient.GetAsync(_apiEquipmentUrl);

            if (!res.IsSuccessStatusCode)
            {
                ViewBag.Error = $"API lỗi: {(int)res.StatusCode} - {res.ReasonPhrase}";
                return View(new List<EquipmentViewModel>());
            }

            var json = await res.Content.ReadAsStringAsync();
            var data = JsonConvert.DeserializeObject<List<EquipmentViewModel>>(json)
                       ?? new List<EquipmentViewModel>();

            return View(data);
        }
        // GET: /Admin/CreateEquipment
        [HttpGet]
        public async Task<IActionResult> CreateEquipment()
        {
            await LoadEquipmentRoomsAsync();     // ⬅ BẮT BUỘC
            return View(new EquipmentViewModel());
        }

        [HttpPost]
        public async Task<IActionResult> CreateEquipment(EquipmentViewModel model)
        {
            if (!ModelState.IsValid)
            {
                await LoadEquipmentRoomsAsync(); // ⬅ KHI LỖI VALIDATION, PHẢI LOAD LẠI
                return View(model);
            }

            var json = JsonConvert.SerializeObject(model);
            var res = await _httpClient.PostAsync(
                _apiEquipmentUrl,
                new StringContent(json, Encoding.UTF8, "application/json")
            );

            if (res.IsSuccessStatusCode)
                return RedirectToAction("Equipment");

            ViewBag.Error = "Thêm thiết bị thất bại!";
            await LoadEquipmentRoomsAsync();
            return View(model);
        }

        // GET: /Admin/EditEquipment/5
        [HttpGet]
        public async Task<IActionResult> EditEquipment(int id)
        {
            var res = await _httpClient.GetAsync($"{_apiEquipmentUrl}/{id}");
            if (!res.IsSuccessStatusCode) return NotFound();

            var json = await res.Content.ReadAsStringAsync();
            var model = JsonConvert.DeserializeObject<EquipmentViewModel>(json);

            await LoadEquipmentRoomsAsync();
            return View(model);
        }

        // POST: /Admin/EditEquipment
        [HttpPost]
        public async Task<IActionResult> EditEquipment(EquipmentViewModel model)
        {
            if (!ModelState.IsValid)
            {
                await LoadEquipmentRoomsAsync();
                return View(model);
            }

            var json = JsonConvert.SerializeObject(model);
            var res = await _httpClient.PutAsync(
                $"{_apiEquipmentUrl}/{model.Id}",
                new StringContent(json, Encoding.UTF8, "application/json")
            );

            if (res.IsSuccessStatusCode)
                return RedirectToAction("Equipment");

            ViewBag.Error = "Cập nhật thiết bị thất bại!";
            await LoadEquipmentRoomsAsync();
            return View(model);
        }

        // GET: /Admin/DeleteEquipment/5
        [HttpGet]
        public async Task<IActionResult> DeleteEquipment(int id)
        {
            await _httpClient.DeleteAsync($"{_apiEquipmentUrl}/{id}");
            return RedirectToAction("Equipment");
        }




        // ======================= MANAGE SCHEDULES ==========================
        // Đặt chung với các API khác đang dùng 7191
        private readonly string _apiScheduleUrl = "https://localhost:7191/api/Schedule";

        [HttpGet]
        public async Task<IActionResult> ScheduleCalendar(int? userId, DateTime? weekStart)
        {
            Console.WriteLine("da goi ScheduleCalendar");

            try
            {
                // 1️⃣ Gọi API lấy danh sách user cho dropdown
                var usersRes = await _httpClient.GetAsync("https://localhost:7191/api/User");

                var usersList = new List<SelectListItem>();
                if (usersRes.IsSuccessStatusCode)
                {
                    var usersJson = await usersRes.Content.ReadAsStringAsync();
                    var users = JsonConvert.DeserializeObject<List<User>>(usersJson) ?? new List<User>();
                    usersList = users.Select(u => new SelectListItem
                    {
                        Value = u.Id.ToString(),
                        Text = u.Name
                    }).ToList();
                }
                else
                {
                    // Log nếu API lỗi
                    Console.WriteLine($"API /users lỗi: {usersRes.StatusCode}");
                }

                // Nếu userId chưa chọn, lấy mặc định là user đầu tiên
                if (!userId.HasValue && usersList.Any())
                    userId = int.Parse(usersList.First().Value);

                // 2️⃣ Xác định tuần bắt đầu
                DateTime start = (weekStart ?? DateTime.Today).StartOfWeek(DayOfWeek.Monday);

                // 3️⃣ Gọi API lấy lịch user
                var res = await _httpClient.GetAsync($"https://localhost:7191/api/schedule/calendar/user/{userId}");
                var schedules = new List<UserScheduleDto>();
                if (res.IsSuccessStatusCode)
                {
                    var json = await res.Content.ReadAsStringAsync();
                    schedules = JsonConvert.DeserializeObject<List<UserScheduleDto>>(json) ?? new List<UserScheduleDto>();
                }
                else
                {
                    // Log nếu API lỗi
                    Console.WriteLine($"API /schedule/calendar/user/{userId} lỗi: {res.StatusCode}");
                }

                // 4️⃣ Chỉ lấy lịch trong tuần
                schedules = schedules
                    .Where(s => s.StartTime.Date >= start && s.StartTime.Date <= start.AddDays(6))
                    .ToList();

                // Debug: kiểm tra kiểu dữ liệu và số lượng schedules
                Console.WriteLine($"userId: {userId}, schedules.Count: {schedules.Count}, schedules type: {schedules.GetType()}");

                // 5️⃣ Tạo model view
                var model = new ScheduleCalendarViewModel
                {
                    UserId = userId,
                    WeekStart = start,
                    Users = usersList,
                    Schedules = schedules
                };

                // Debug: kiểm tra kiểu model trước khi trả về view
                Console.WriteLine($"Model type: {model.GetType()}");

                return View(model); // ✅ đúng kiểu ScheduleCalendarViewModel
            }
            catch (Exception ex)
            {
                // Log toàn bộ lỗi
                Console.WriteLine("Lỗi ScheduleCalendar: " + ex);
                // Có thể show view lỗi hoặc trả về BadRequest
                return View("Error", ex);
            }
        }

        // LIST
        [HttpGet]
        public async Task<IActionResult> Schedules()
        {
            var res = await _httpClient.GetAsync(_apiScheduleUrl);
            var list = new List<Schedule>();

            if (res.IsSuccessStatusCode)
            {
                var json = await res.Content.ReadAsStringAsync();
                list = JsonConvert.DeserializeObject<List<Schedule>>(json) ?? new List<Schedule>();
            }

            return View(list);
        }


        // GET: Admin/CreateSchedule
        [HttpGet]
        public async Task<IActionResult> CreateSchedule()
        {
            // Classes
            var classesRes = await _httpClient.GetAsync("https://localhost:7191/api/Class");
            var classes = JsonConvert.DeserializeObject<List<ClassDTO>>(
                await classesRes.Content.ReadAsStringAsync()
            );

            ViewBag.Classes = classes.Select(c => new SelectListItem
            {
                Value = c.Id.ToString(),
                Text = c.ClassName
            }).ToList();

            // ⭐ Users
            var usersRes = await _httpClient.GetAsync("https://localhost:7191/api/User");
            var users = JsonConvert.DeserializeObject<List<User>>(
                await usersRes.Content.ReadAsStringAsync()
            );

            ViewBag.Users = users.Select(u => new SelectListItem
            {
                Value = u.Id.ToString(),
                Text = u.Name
            }).ToList();

            return View(new Schedule());
        }


        // POST: Admin/CreateSchedule
        // POST: Admin/CreateSchedule
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> CreateSchedule(Schedule model, int userId)
        {
            if (!ModelState.IsValid)
            {
                await ReloadDropdowns();
                return View(model);
            }

            var json = JsonConvert.SerializeObject(model);
            var content = new StringContent(json, Encoding.UTF8, "application/json");

            // ⭐⭐ GỬI userId LÊN API
            var res = await _httpClient.PostAsync(
                $"{_apiScheduleUrl}?userId={userId}",
                content
            );

            if (res.IsSuccessStatusCode)
                return RedirectToAction(nameof(Schedules));

            var body = await res.Content.ReadAsStringAsync();
            ModelState.AddModelError("", body);

            await ReloadDropdowns();
            return View(model);
        }
        private async Task ReloadDropdowns()
        {
            var classesRes = await _httpClient.GetAsync("https://localhost:7191/api/Class");
            var classes = JsonConvert.DeserializeObject<List<ClassDTO>>(
                await classesRes.Content.ReadAsStringAsync()
            );

            ViewBag.Classes = classes.Select(c => new SelectListItem
            {
                Value = c.Id.ToString(),
                Text = c.ClassName
            }).ToList();

            var usersRes = await _httpClient.GetAsync("https://localhost:7191/api/user");
            var users = JsonConvert.DeserializeObject<List<User>>(
                await usersRes.Content.ReadAsStringAsync()
            );

            ViewBag.Users = users.Select(u => new SelectListItem
            {
                Value = u.Id.ToString(),
                Text = u.Name
            }).ToList();
        }



        // EDIT
        [HttpGet]
        public async Task<IActionResult> EditSchedule(int id)
        {
            var res = await _httpClient.GetAsync($"{_apiScheduleUrl}/{id}");
            if (!res.IsSuccessStatusCode) return NotFound();

            var json = await res.Content.ReadAsStringAsync();
            var model = JsonConvert.DeserializeObject<Schedule>(json);

            return View(model);
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> EditSchedule(Schedule model)
        {
            if (!ModelState.IsValid)
                return View(model);

            var json = JsonConvert.SerializeObject(model);
            var content = new StringContent(json, Encoding.UTF8, "application/json");

            var res = await _httpClient.PutAsync(
                $"{_apiScheduleUrl}/{model.Id}", content);

            if (res.IsSuccessStatusCode)
                return RedirectToAction(nameof(Schedules));

            var body = await res.Content.ReadAsStringAsync();
            ModelState.AddModelError("", $"Cập nhật lịch thất bại. API: {(int)res.StatusCode} - {body}");

            return View(model);
        }

        // DELETE
        [HttpPost]
        public async Task<IActionResult> DeleteSchedule(int id)
        {
            await _httpClient.DeleteAsync(
                $"https://localhost:7191/api/schedule/userschedule/{id}"
            );

            return RedirectToAction(nameof(ScheduleCalendar));
        }



        private readonly string _apiUserProgressUrl = "https://localhost:7191/api/UserProgressHistory";
        // ======================= MANAGE USER PROGRESS ==========================

        // 📋 Danh sách tiến trình theo User
        [HttpGet]
        public async Task<IActionResult> UserProgress()
        {
            var list = new List<UserProgressHistoryViewModel>();

            var res = await _httpClient.GetAsync($"{_apiUserProgressUrl}");

            if (res.IsSuccessStatusCode)
            {
                var json = await res.Content.ReadAsStringAsync();
                list = JsonConvert.DeserializeObject<List<UserProgressHistoryViewModel>>(json)
                       ?? new List<UserProgressHistoryViewModel>();
            }
            else
            {
                ViewBag.Error = $"API lỗi: {res.StatusCode}";
            }

            return View(list);
        }


        // ➕ GET: Thêm tiến trình
        [HttpGet]
        public IActionResult CreateUserProgress(int userId)
        {
            var model = new UserProgressHistoryViewModel
            {
                UserId = userId,
                CreatedAt = DateTime.Today,
                PTUserId = int.Parse(User.FindFirst("UserId")!.Value) // PT đang login
            };

            return View(model);
        }


        // ➕ POST: Thêm (gọi SaveProgress bên API — tự upsert theo ngày)
        [HttpPost]
        public async Task<IActionResult> CreateUserProgress(UserProgressHistoryViewModel model)
        {
            if (!ModelState.IsValid)
                return View(model);

            var json = JsonConvert.SerializeObject(model);

            var res = await _httpClient.PostAsync(
                _apiUserProgressUrl, // api/UserProgress
                new StringContent(json, Encoding.UTF8, "application/json")
            );

            if (res.IsSuccessStatusCode)
                return RedirectToAction(nameof(UserProgress), new { userId = model.UserId });

            ViewBag.Error = "Không thể lưu tiến trình";
            return View(model);
        }


        // ✏ GET: Sửa tiến trình
        [HttpGet]
        public async Task<IActionResult> EditUserProgress(int id, int userId)
        {
            // API hiện chỉ có GET theo userId, nên lấy list rồi chọn đúng id
            var res = await _httpClient.GetAsync($"{_apiUserProgressUrl}/{userId}");
            if (!res.IsSuccessStatusCode)
                return NotFound();

            var json = await res.Content.ReadAsStringAsync();
            var list = JsonConvert.DeserializeObject<List<UserProgressHistoryViewModel>>(json)
                       ?? new List<UserProgressHistoryViewModel>();

            var item = list.FirstOrDefault(x => x.Id == id);
            if (item == null)
                return NotFound();

            ViewBag.UserId = userId;
            return View(item); // View: Views/Admin/EditUserProgress.cshtml
        }

        // ✏ POST: Sửa (gọi PUT /api/UserProgressHistory/{id})
        [HttpPost]
        public async Task<IActionResult> EditUserProgress(UserProgressHistoryViewModel model)
        {
            if (!ModelState.IsValid)
                return View(model);

            var json = JsonConvert.SerializeObject(model);
            var res = await _httpClient.PutAsync(
                $"{_apiUserProgressUrl}/{model.Id}",
                new StringContent(json, Encoding.UTF8, "application/json")
            );

            if (res.IsSuccessStatusCode)
                return RedirectToAction(nameof(UserProgress), new { userId = model.UserId });

            ViewBag.Error = "Cập nhật tiến trình thất bại.";
            return View(model);
        }

        // 🗑 Xóa tiến trình
        [HttpGet]
        public async Task<IActionResult> DeleteUserProgress(int id, int userId)
        {
            await _httpClient.DeleteAsync($"{_apiUserProgressUrl}/{id}");
            return RedirectToAction(nameof(UserProgress), new { userId });
        }

        // ======================= ASSIGN PT TO CLASS ==========================
        public async Task<IActionResult> AssignPT(int classId, int ptId)
        {
            await _httpClient.PostAsync($"https://localhost:7191/api/Class/{classId}/assign-pt/{ptId}", null);
            return RedirectToAction("ClassList");
        }




        private readonly string _baseUrl = "https://localhost:7191";

        // =========================
        // 1️⃣ DANH SÁCH CHALLENGE
        // =========================
        public async Task<IActionResult> ChallengeList()
        {
            var list = await _httpClient.GetFromJsonAsync<List<Challenges>>(
                $"{_baseUrl}/api/challenge");

            return View(list);
        }

        // =========================
        // 2️⃣ EDIT CHALLENGE
        // =========================
        [HttpGet]
        public async Task<IActionResult> EditChallenge(int id)
        {
            var challenge = await _httpClient.GetFromJsonAsync<Challenges>(
                $"{_baseUrl}/api/challenge/{id}");

            return View(challenge);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> EditChallenge(Challenges model)
        {
            var res = await _httpClient.PutAsJsonAsync(
                $"{_baseUrl}/api/challenge/{model.Id}", model);

            if (res.IsSuccessStatusCode)
                return RedirectToAction(nameof(Index));

            ModelState.AddModelError("", "Cập nhật thất bại");
            return View(model);
        }

        // =========================
        // 3️⃣ USER THAM GIA + TIẾN TRÌNH
        // =========================
        public async Task<IActionResult> Participants(int challengeId)
        {
            var list = await _httpClient.GetFromJsonAsync<List<ChallengeParticipantDto>>(
                $"{_baseUrl}/api/challenge/participants/{challengeId}");

            ViewBag.ChallengeId = challengeId;
            return View(list);
        }

        [HttpPost]
        public async Task<IActionResult> UpdateProgress(int participantId, int points)
        {
            var res = await _httpClient.PutAsJsonAsync(
                $"{_baseUrl}/api/challenge/participant/{participantId}/progress",
                points);

            if (!res.IsSuccessStatusCode)
                TempData["Error"] = "Cập nhật thất bại";

            return Redirect(Request.Headers["Referer"].ToString());
        }

    }


}

