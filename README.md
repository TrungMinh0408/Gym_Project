# Gym_Project

Dự án quản lý phòng gym gồm 3 phần:
- Web (quản trị hệ thống)
- Mobile App (khách hàng)
- REST API (xử lý nghiệp vụ và kết nối cơ sở dữ liệu)

Mục tiêu của hệ thống là hỗ trợ quản lý hội viên, gói tập, huấn luyện viên, hóa đơn và lịch tập.

Cấu hình set up: 
-tải SSMS (dùng SQL Server Management Studio 20) rồi chạy file Gym.sql để tạo csdl.

-tại \Gym_Project\WebAPI\BackendAPI\appsettings.json : 
    tìm dòng và sửa lại như sau"DefaultConnection": "Server=<Nhập Server Name>;Database=gymdb;Trusted_Connection=True;TrustServerCertificate=True;"
-tại \Gym_Project\WebAPI\BackendAPI\Properties\launchSettings.json :       
    tìm dòng và sửa lại như sau"applicationUrl": "http://localhost:5180;http://<Nhập IPv4 wifi>:5180;http://0.0.0.0:5180;https://localhost:7191",
-tại \Gym_Project\AppGym\Gym\AppConfig.cs :
    tìm dòng và sửa lại như sau : _settings["ApiBaseUrl"] = "http://<Nhập IPv4 wifi>:5180"; // Real Device

Sau đó chạy API trước , rồi mới chạy App và Web sau 