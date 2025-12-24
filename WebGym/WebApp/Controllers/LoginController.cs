using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using WebApp.Models;

namespace WebApp.Controllers
{
    public class LoginController : Controller
    {
        private readonly IHttpClientFactory _clientFactory;

        public LoginController(IHttpClientFactory clientFactory)
        {
            _clientFactory = clientFactory;
        }

        [HttpGet]
        public IActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> Index(string email, string password)
        {
            var client = _clientFactory.CreateClient("GymAPI");

            HttpResponseMessage response = await client.GetAsync("api/User");

            if (!response.IsSuccessStatusCode)
            {
                ViewBag.Message = "Không thể kết nối đến API.";
                ViewBag.Color = "red";
                return View();
            }

            var json = await response.Content.ReadAsStringAsync();
            var users = JsonConvert.DeserializeObject<List<User>>(json);

            var user = users?.FirstOrDefault(u =>
                u.Email.Equals(email, StringComparison.OrdinalIgnoreCase)
                && u.Password == password
            );

            if (user != null)
            {
                // ✅ Lưu Session
                HttpContext.Session.SetString("UserId", user.Id.ToString());
                HttpContext.Session.SetString("UserName", user.Name);
                HttpContext.Session.SetString("UserRole", user.Role);

                // ✅ Redirect theo Role
                if (user.Role == "Admin")
                    return RedirectToAction("Statistics", "Admin");          

                return RedirectToAction("Index", "Login");
            }

            ViewBag.Message = "Sai email hoặc mật khẩu.";
            ViewBag.Color = "red";
            return View();
        }

        public IActionResult Logout()
        {
            HttpContext.Session.Clear();
            return RedirectToAction("Index");
        }
    }
}
