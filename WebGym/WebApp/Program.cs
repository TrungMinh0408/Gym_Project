var builder = WebApplication.CreateBuilder(args);

// Thêm dịch vụ MVC (Controller + View)
builder.Services.AddControllersWithViews();

// Thêm HttpClient để WebApp gọi sang API
builder.Services.AddHttpClient("GymAPI", client =>
{
    client.BaseAddress = new Uri("https://localhost:7191/");
});
builder.Services.AddSession();

var app = builder.Build();

// Cấu hình pipeline xử lý HTTP
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Home/Error"); // Trang lỗi mặc định khi chạy Production
    app.UseHsts(); // Bật HSTS cho bảo mật HTTPS
}

app.UseHttpsRedirection(); // Tự động chuyển http -> https
app.UseStaticFiles(); // Cho phép sử dụng file tĩnh (css, js, image)

app.UseRouting(); // Kích hoạt routing
app.UseSession();

app.UseAuthorization(); // Kích hoạt kiểm tra phân quyền

// Cấu hình route mặc định
app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Admin}/{action=Statistics}/{id?}");

app.Run(); // Chạy ứng dụng
