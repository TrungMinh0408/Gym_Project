-- 🧱 T-SQL: CƠ SỞ DỮ LIỆU GYM MỚI NHẤT
CREATE DATABASE gymdb;
GO
USE gymdb;
GO

-- 0️⃣ USERS
CREATE TABLE dbo.Users (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(100) NOT NULL,
	Age INT NULL,
	Gender NVARCHAR(10) NULL,
    Email NVARCHAR(100) NOT NULL UNIQUE,
    Password NVARCHAR(255) NOT NULL,
    Role NVARCHAR(20) NOT NULL CONSTRAINT DF_Users_Role DEFAULT ('Customer'),
    CreatedAt DATETIME2 NOT NULL CONSTRAINT DF_Users_CreatedAt DEFAULT (SYSUTCDATETIME())
);
GO

-- 1️⃣ PT PROFILES
CREATE TABLE dbo.PTProfiles (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    UserId INT NOT NULL UNIQUE,
    Specialty NVARCHAR(100),
    ExperienceYears INT,
    FOREIGN KEY (UserId) REFERENCES dbo.Users(Id)
);
GO

-- 2️⃣ ROOMS
CREATE TABLE dbo.Rooms (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    RoomName NVARCHAR(50) NOT NULL,
    Capacity INT NOT NULL,
    Status NVARCHAR(20) DEFAULT 'Available'
);
GO

-- 3️⃣ EQUIPMENTS
CREATE TABLE dbo.Equipments (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    EquipmentName NVARCHAR(100) NOT NULL,
    Quantity INT NOT NULL,
    ConditionStatus NVARCHAR(50) DEFAULT 'Good',
    RoomId INT NULL,
    FOREIGN KEY (RoomId) REFERENCES dbo.Rooms(Id)
);
GO

-- 4️⃣ MEMBERSHIP PLANS
CREATE TABLE dbo.MembershipPlans (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    PlanName NVARCHAR(100) NOT NULL,
    DurationMonths INT NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    Description NVARCHAR(255),
    CreatedAt DATETIME2 DEFAULT SYSUTCDATETIME()
);
GO

-- 5️⃣ PAYMENTS
CREATE TABLE dbo.Payments (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    UserId INT NOT NULL,
    PlanId INT NOT NULL,
    Amount DECIMAL(10,2) NOT NULL,
    PaymentDate DATETIME2 DEFAULT SYSUTCDATETIME(),
    FOREIGN KEY (UserId) REFERENCES dbo.Users(Id),
    FOREIGN KEY (PlanId) REFERENCES dbo.MembershipPlans(Id)
);
GO

-- 6️⃣ TRANSACTIONS
CREATE TABLE dbo.Transactions (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    PaymentId INT,
    TransactionType NVARCHAR(50),
    Amount DECIMAL(10,2),
    CreatedAt DATETIME2 DEFAULT SYSUTCDATETIME(),
    FOREIGN KEY (PaymentId) REFERENCES dbo.Payments(Id)
);
GO

-- 7️⃣ CLASSES (có thời gian cố định)
CREATE TABLE dbo.Classes (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    ClassName NVARCHAR(100) NOT NULL,
    PTUserId INT NULL,
    RoomId INT NULL,
    MaxParticipants INT,
	Status NVARCHAR(20) DEFAULT 'Pending', -- Pending, Active, Finished
    FOREIGN KEY (PTUserId) REFERENCES dbo.Users(Id),
    FOREIGN KEY (RoomId) REFERENCES dbo.Rooms(Id)
);
GO

-- 🔒 Trigger: chỉ Trainer được gán PTUserId
CREATE TRIGGER trg_Classes_OnlyTrainerAllowed
ON dbo.Classes
AFTER INSERT, UPDATE
AS
BEGIN
    IF EXISTS (
        SELECT 1
        FROM inserted i
        JOIN dbo.Users u ON i.PTUserId = u.Id
        WHERE u.Role <> 'Trainer'
    )
    BEGIN
        RAISERROR('Chỉ user có Role = Trainer mới được gán vào lớp.', 16, 1);
        ROLLBACK TRANSACTION;
    END
END;
GO

-- 8️⃣ SCHEDULES
CREATE TABLE dbo.Schedules (
    Id INT IDENTITY(1,1) PRIMARY KEY,
ClassId INT NOT NULL,
    StartTime DATETIME2 NOT NULL,
    EndTime DATETIME2 NOT NULL,
    FOREIGN KEY (ClassId) REFERENCES dbo.Classes(Id)
);
GO

-- 9️⃣ USER SCHEDULES
CREATE TABLE dbo.UserSchedules (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    UserId INT NOT NULL,
    ScheduleId INT NOT NULL,
    FOREIGN KEY (UserId) REFERENCES dbo.Users(Id),
    FOREIGN KEY (ScheduleId) REFERENCES dbo.Schedules(Id)
);
GO

-- 🔟 ATTENDANCE
CREATE TABLE dbo.Attendance (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    UserScheduleId INT NOT NULL,
    AttendanceDate DATE DEFAULT CAST(GETDATE() AS DATE),
    IsPresent BIT DEFAULT 1,
    FOREIGN KEY (UserScheduleId) REFERENCES dbo.UserSchedules(Id)
);
GO

-- 11️⃣ REGISTRATIONS
CREATE TABLE dbo.Registrations (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    UserId INT NOT NULL,
    ClassId INT NULL,
    PlanId INT NULL,
    StartDate DATE NULL,
    EndDate DATE NULL,
    Status NVARCHAR(20) DEFAULT 'Active',
    FOREIGN KEY (UserId) REFERENCES dbo.Users(Id),
    FOREIGN KEY (ClassId) REFERENCES dbo.Classes(Id),
    FOREIGN KEY (PlanId) REFERENCES dbo.MembershipPlans(Id)
);
GO

-- 12️⃣ PT ASSIGNMENTS
CREATE TABLE dbo.PTAssignments (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    PTUserId INT NOT NULL,
    TraineeUserId INT NOT NULL,
    AssignedDate DATETIME2 DEFAULT SYSUTCDATETIME(),
    FOREIGN KEY (PTUserId) REFERENCES dbo.Users(Id),
    FOREIGN KEY (TraineeUserId) REFERENCES dbo.Users(Id)
);
GO

-- 13️⃣ FEEDBACK
CREATE TABLE dbo.Feedback (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    UserId INT NOT NULL,
    PTUserId INT NULL,
    Comment NVARCHAR(255),
    Rating INT CHECK (Rating BETWEEN 1 AND 5),
    CreatedAt DATETIME2 DEFAULT SYSUTCDATETIME(),
    FOREIGN KEY (UserId) REFERENCES dbo.Users(Id),
    FOREIGN KEY (PTUserId) REFERENCES dbo.Users(Id)
);
GO

-- 14️⃣ CHALLENGES
CREATE TABLE dbo.Challenges (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Title NVARCHAR(100) NOT NULL,
    Description NVARCHAR(255),
    RewardPoints INT DEFAULT 0,
    StartDate DATE,
    EndDate DATE
);
GO

-- 15️⃣ CHALLENGE PARTICIPANTS
CREATE TABLE dbo.ChallengeParticipants (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    ChallengeId INT NOT NULL,
    UserId INT NOT NULL,
	CurrentPoints INT NOT NULL DEFAULT 0,
    ProgressValue FLOAT NOT NULL DEFAULT 0,   -- % tiến độ (0 → 100)
    IsCompleted BIT NOT NULL DEFAULT 0,
    CompletedAt DATETIME2 NULL,
    Status NVARCHAR(20) NOT NULL DEFAULT 'Active',
    JoinedAt DATETIME2 DEFAULT SYSUTCDATETIME(),
    FOREIGN KEY (ChallengeId) REFERENCES dbo.Challenges(Id),
    FOREIGN KEY (UserId) REFERENCES dbo.Users(Id)
);
GO

   



-- 16️⃣ POSTS
CREATE TABLE dbo.Posts (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    UserId INT NOT NULL,
    Title NVARCHAR(100),
    Content NVARCHAR(MAX),
    CreatedAt DATETIME2 DEFAULT SYSUTCDATETIME(),
    FOREIGN KEY (UserId) REFERENCES dbo.Users(Id)
);
GO

CREATE TABLE dbo.PostMedia (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    PostId INT NOT NULL,
    MediaType NVARCHAR(10) NOT NULL,   -- 'image' hoặc 'video'
    Url NVARCHAR(500) NOT NULL,
    CreatedAt DATETIME2 DEFAULT SYSUTCDATETIME(),
    FOREIGN KEY (PostId) REFERENCES dbo.Posts(Id) ON DELETE CASCADE
);

-- ============================
-- 🧩 DỮ LIỆU MẪU MỚI NHẤT
-- ============================

-- 🔹 USERS
GO

INSERT INTO dbo.Users (Name, Age, Gender, Email, Password, Role)
VALUES
(N'Nguyễn Văn A', 28, N'Nam',   'a@gmail.com',      '123456',  'Customer'),
(N'Lê Thị B',      25, N'Nữ',   'b@gmail.com',      '123456',  'Customer'),
(N'Trần Minh PT',  30, N'Nam',  'pt1@gmail.com',    '123456',  'Trainer'),
(N'Phạm Quốc C',   32, N'Nam',  'c@gmail.com',      '123456',  'Customer'),
(N'Admin',         35, N'Nam',  'admin@gym.com',    'admin123','Admin'),
(N'Đặng Hoàng D',  27, N'Nam',  'd@gmail.com',      '123456',  'Customer'),
(N'Võ Mỹ E',       24, N'Nữ',   'e@gmail.com',      '123456',  'Customer'),
(N'Bùi Gia F',     29, N'Nam',  'f@gmail.com',      '123456',  'Customer');
GO


-- PT PROFILE
INSERT INTO dbo.PTProfiles (UserId, Specialty, ExperienceYears)
VALUES (3, N'Giảm cân & tăng cơ', 5);
GO

-- ROOMS
INSERT INTO dbo.Rooms (RoomName, Capacity, Status)
VALUES
(N'Phòng Cardio', 20, 'Available'),
(N'Phòng Yoga', 15, 'Available'),
(N'Phòng Tạ', 25, 'Available');
GO

-- EQUIPMENTS
INSERT INTO dbo.Equipments (EquipmentName, Quantity, ConditionStatus, RoomId)
VALUES
(N'Máy chạy bộ', 5, 'Good', 1),
(N'Tạ đơn 10kg', 10, 'Good', 3),
(N'Thảm tập yoga', 15, 'Good', 2);
GO

-- MEMBERSHIP PLANS
INSERT INTO dbo.MembershipPlans (PlanName, DurationMonths, Price, Description)
VALUES
(N'Gói 1 tháng', 1, 300000, N'Tập không giới hạn trong 1 tháng'),
(N'Gói 3 tháng', 3, 800000, N'Tiết kiệm hơn khi đăng ký 3 tháng'),
(N'Gói năm', 12, 2500000, N'Ưu đãi lớn cho hội viên lâu dài');
GO

-- CLASSES
INSERT INTO dbo.Classes (ClassName, PTUserId, RoomId, MaxParticipants,Status)
VALUES
(N'Yoga buổi sáng', 3, 2, 15, 'Pending'),
(N'Cardio cường độ cao', 3, 1, 20, 'Pending'),
(N'Tập tạ nâng cao', 3, 3, 10, 'Pending');
GO

-- SCHEDULES
INSERT INTO dbo.Schedules (ClassId, StartTime, EndTime)
VALUES
(1, '2025-11-06T07:00:00', '2025-11-06T08:00:00'),
(2, '2025-11-06T09:00:00', '2025-11-06T10:30:00'),
(3, '2025-11-06T17:00:00', '2025-11-06T18:30:00');
GO

-- REGISTRATIONS 
INSERT INTO dbo.Registrations (UserId, ClassId, PlanId, StartDate, EndDate, Status)
VALUES
(6, 1, NULL, '2025-11-01', '2025-11-30', 'Active'),
(7, 2, NULL, '2025-11-01', '2025-11-30', 'Active'),
(8, 3, NULL, '2025-11-01', '2025-11-30', 'Active'),
(1, NULL, 1, '2025-11-01', '2025-11-30', 'Active'),
(2, NULL, 2, '2025-11-01', '2026-01-31', 'Active'),
(4, NULL, 3, '2025-11-01', '2026-10-31', 'Active');
GO

-- USER SCHEDULES
INSERT INTO dbo.UserSchedules (UserId, ScheduleId)
VALUES
(6, 1),
(7, 2),
(8, 3);
GO

-- ATTENDANCE
INSERT INTO dbo.Attendance (UserScheduleId, IsPresent)
VALUES
(1, 1),
(2, 1),
(3, 0);
GO

-- PT ASSIGNMENTS
INSERT INTO dbo.PTAssignments (PTUserId, TraineeUserId)
VALUES
(3, 1),
(3, 2),
(3, 4);
GO

-- FEEDBACK
INSERT INTO dbo.Feedback (UserId, PTUserId, Comment, Rating)
VALUES
(6, 3, N'PT rất nhiệt tình, buổi học rất hiệu quả!', 5),
(7, 3, N'Hướng dẫn rõ ràng, dễ hiểu.', 4);
GO

-- CHALLENGES
INSERT INTO dbo.Challenges (Title, Description, RewardPoints, StartDate, EndDate)
VALUES
(N'Thử thách 7 ngày tập liên tục', N'Tập đều 7 ngày để nhận thưởng', 100, '2025-11-01', '2025-11-07'),
(N'Thử thách giảm 2kg', N'Tập cardio và ăn kiêng hợp lý', 200, '2025-11-01', '2025-11-30');
GO
-- CHALLENGE PARTICIPANTS
INSERT INTO dbo.ChallengeParticipants (ChallengeId, UserId)
VALUES
(1, 6),
(1, 7),
(2, 8);
GO

-- POSTS
INSERT INTO dbo.Posts (UserId, Title, Content)
VALUES
(6, N'Hành trình tập gym của tôi', N'Ngày đầu đến phòng gym, hơi mệt nhưng rất vui.'),
(2, N'Mẹo tập đúng cách', N'Luôn khởi động kỹ, giữ form chuẩn để tránh chấn thương.'),
(7, N'Gợi ý chọn lớp phù hợp', N'Mình chọn lớp cardio vì muốn giảm mỡ nhanh.');
GO

--User ProgressHistory
CREATE TABLE dbo.UserProgressHistory (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    UserId INT NOT NULL,                 -- Khách hàng
    ScheduleId INT NULL,                 -- Buổi tập tương ứng (có thể bỏ nếu không cần)
    Weight DECIMAL(5,2) NULL,
    BodyFat DECIMAL(5,2) NULL,
    MuscleMass DECIMAL(5,2) NULL,
	Height DECIMAL(5,2) NULL,      -- chiều cao (cm)
    Waist DECIMAL(5,2) NULL,       -- vòng eo (cm)
    Hip DECIMAL(5,2) NULL,         -- vòng mông (cm)
    Chest DECIMAL(5,2) NULL,       -- vòng ngực (cm)
    PTUserId INT NULL,                   -- Ai nhập dữ liệu (NULL nếu tự nhập)
    Note NVARCHAR(255) NULL,             -- Ghi chú buổi tập
    CreatedAt DATETIME2 NOT NULL CONSTRAINT DF_UserProgressHistory_CreatedAt DEFAULT SYSUTCDATETIME(),
    FOREIGN KEY (UserId) REFERENCES dbo.Users(Id),
    FOREIGN KEY (PTUserId) REFERENCES dbo.Users(Id),
    FOREIGN KEY (ScheduleId) REFERENCES dbo.Schedules(Id)
);
INSERT INTO dbo.UserProgressHistory 
(UserId, ScheduleId, Weight, BodyFat, MuscleMass, Height, Waist, Hip, Chest, PTUserId, Note, CreatedAt)
VALUES
--------------------------------------------------
-- UserId = 1
--------------------------------------------------
(1, NULL, 73.5, 20.5, 34.5, 175.0, 88.0, 96.0, 98.0, 3, N'Buổi tập đầu tiên', '2025-11-22T08:00:00'),
(1, NULL, 72.8, 20.0, 35.0, 175.0, 86.0, 95.5, 97.5, 3, N'Buổi tập thứ 2', '2025-11-24T08:00:00'),
(1, NULL, 71.9, 19.3, 35.8, 175.0, 84.5, 95.0, 97.0, 3, N'Buổi tập thứ 3', '2025-11-26T08:00:00'),
--------------------------------------------------
-- UserId = 2 
--------------------------------------------------
(2, NULL, 65.0, 22.0, 30.0, 168.0, 82.0, 94.0, 92.0, 3, N'Buổi tập đầu tiên', '2025-11-22T10:30:00'),
(2, NULL, 64.2, 21.5, 30.5, 168.0, 80.5, 93.5, 92.5, 3, N'Buổi tập thứ 2', '2025-11-24T10:30:00'),
(2, NULL, 63.6, 21.0, 31.0, 168.0, 79.0, 93.0, 93.0, 3, N'Buổi tập thứ 3', '2025-11-26T10:30:00'),

--------------------------------------------------
-- UserId = 4
--------------------------------------------------
(4, NULL, 82.0, 24.0, 36.0, 178.0, 94.0, 100.0, 102.0, 3, N'Buổi tập đầu tiên', '2025-11-22T18:30:00'),
(4, NULL, 81.1, 23.3, 36.5, 178.0, 92.5, 99.5, 102.5, 3, N'Buổi tập thứ 2', '2025-11-24T18:30:00'),
(4, NULL, 80.0, 22.7, 37.2, 178.0, 91.0, 99.0, 103.0, 3, N'Buổi tập thứ 3', '2025-11-26T18:30:00'),

--------------------------------------------------
-- UserId = 6
--------------------------------------------------
(6, 1, 75.0, 23.0, 33.0, 172.0, 90.0, 98.0, 100.0, 3, N'Buổi tập đầu tiên', '2025-11-22T10:30:00'),
(6, 1, 74.2, 22.4, 33.5, 172.0, 88.5, 97.5, 100.5, 3, N'Buổi tập thứ 2', '2025-11-24T10:30:00'),
(6, 1, 73.5, 21.9, 34.0, 172.0, 87.0, 97.0, 101.0, 3, N'Buổi tập thứ 3', '2025-11-26T10:30:00'),

--------------------------------------------------
-- UserId = 7
--------------------------------------------------
(7, 2, 58.0, 28.0, 24.0, 160.0, 78.0, 96.0, 88.0, 3, N'Buổi tập đầu tiên', '2025-11-22T18:30:00'),
(7, 2, 57.5, 27.5, 24.5, 160.0, 77.0, 95.5, 88.5, 3, N'Buổi tập thứ 2', '2025-11-24T18:30:00'),
(7, 2, 56.8, 27.0, 25.0, 160.0, 76.0, 95.0, 89.0, 3, N'Buổi tập thứ 3', '2025-11-26T18:30:00'),

--------------------------------------------------
-- UserId = 8 
--------------------------------------------------
(8, 3, 70.0, 26.0, 30.0, 170.0, 88.0, 98.0, 96.0, 3, N'Buổi tập đầu tiên', '2025-11-22T10:30:00'),
(8, 3, 69.3, 25.4, 30.6, 170.0, 86.5, 97.5, 96.5, 3, N'Buổi tập thứ 2', '2025-11-24T10:30:00'),
(8, 3, 68.7, 24.9, 31.2, 170.0, 85.0, 97.0, 97.0, 3, N'Buổi tập thứ 3', '2025-11-26T10:30:00');


-- ======================
-- ✅ KIỂM TRA KẾT QUẢ
-- ======================
SELECT * FROM dbo.Users;
SELECT * FROM dbo.Registrations;
SELECT * FROM dbo.Classes;
SELECT * FROM dbo.Schedules;
SELECT * FROM dbo.UserSchedules;
SELECT * FROM dbo.Attendance;
SELECT * FROM dbo.PTAssignments;
SELECT * FROM dbo.Equipments;
SELECT * FROM dbo.Rooms;
SELECT * FROM dbo.UserProgressHistory;
GO
SELECT * FROM MembershipPlans;

 -- Đặt database về SINGLE_USER và tự động ngắt các kết nối khác
-- ALTER DATABASE gymdb 
-- SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
-- GO
-- drop database gymdb


