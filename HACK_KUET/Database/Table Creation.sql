CREATE TABLE Members
(
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(100),
    Position NVARCHAR(100),
    ImageUrl NVARCHAR(255)
);

CREATE TABLE ContactMessages
(
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(100),
    Email NVARCHAR(100),
    Subject NVARCHAR(200),
    Message NVARCHAR(MAX),
    CreatedAt DATETIME DEFAULT GETDATE()
);

CREATE TABLE Events (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Title NVARCHAR(200) NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE NOT NULL,
    Location NVARCHAR(200) NOT NULL,
    ImageUrl NVARCHAR(500) NULL,
    Description NVARCHAR(MAX) NULL
);

CREATE TABLE Projects (
    ProjectID INT IDENTITY(1,1) PRIMARY KEY,
    Title NVARCHAR(200) NOT NULL,
    ShortDescription NVARCHAR(300),
    FullDescription NVARCHAR(MAX),
    ImageUrl NVARCHAR(500),
    Category NVARCHAR(100),
    IsFeatured BIT DEFAULT 0,
    CreatedDate DATETIME DEFAULT GETDATE()
);