USE [master]
GO
/****** Object:  Database [SE1502_ASSIGNMENT_GROUP_7]    Script Date: 3/9/2021 11:25:28 PM ******/
CREATE DATABASE [SE1502_ASSIGNMENT_GROUP_7]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SE1502_ASSIGNMENT_GROUP_7', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\SE1502_ASSIGNMENT_GROUP_7.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SE1502_ASSIGNMENT_GROUP_7_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\SE1502_ASSIGNMENT_GROUP_7_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [SE1502_ASSIGNMENT_GROUP_7] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SE1502_ASSIGNMENT_GROUP_7].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SE1502_ASSIGNMENT_GROUP_7] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SE1502_ASSIGNMENT_GROUP_7] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SE1502_ASSIGNMENT_GROUP_7] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SE1502_ASSIGNMENT_GROUP_7] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SE1502_ASSIGNMENT_GROUP_7] SET ARITHABORT OFF 
GO
ALTER DATABASE [SE1502_ASSIGNMENT_GROUP_7] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SE1502_ASSIGNMENT_GROUP_7] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SE1502_ASSIGNMENT_GROUP_7] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SE1502_ASSIGNMENT_GROUP_7] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SE1502_ASSIGNMENT_GROUP_7] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SE1502_ASSIGNMENT_GROUP_7] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SE1502_ASSIGNMENT_GROUP_7] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SE1502_ASSIGNMENT_GROUP_7] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SE1502_ASSIGNMENT_GROUP_7] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SE1502_ASSIGNMENT_GROUP_7] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SE1502_ASSIGNMENT_GROUP_7] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SE1502_ASSIGNMENT_GROUP_7] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SE1502_ASSIGNMENT_GROUP_7] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SE1502_ASSIGNMENT_GROUP_7] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SE1502_ASSIGNMENT_GROUP_7] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SE1502_ASSIGNMENT_GROUP_7] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SE1502_ASSIGNMENT_GROUP_7] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SE1502_ASSIGNMENT_GROUP_7] SET RECOVERY FULL 
GO
ALTER DATABASE [SE1502_ASSIGNMENT_GROUP_7] SET  MULTI_USER 
GO
ALTER DATABASE [SE1502_ASSIGNMENT_GROUP_7] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SE1502_ASSIGNMENT_GROUP_7] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SE1502_ASSIGNMENT_GROUP_7] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SE1502_ASSIGNMENT_GROUP_7] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SE1502_ASSIGNMENT_GROUP_7] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'SE1502_ASSIGNMENT_GROUP_7', N'ON'
GO
ALTER DATABASE [SE1502_ASSIGNMENT_GROUP_7] SET QUERY_STORE = OFF
GO
USE [SE1502_ASSIGNMENT_GROUP_7]
GO
/****** Object:  Table [dbo].[academicLevel]    Script Date: 3/9/2021 11:25:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[academicLevel](
	[levelId] [int] NOT NULL,
	[title] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_academicLevel] PRIMARY KEY CLUSTERED 
(
	[levelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[account]    Script Date: 3/9/2021 11:25:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[account](
	[accountId] [int] IDENTITY(1,1) NOT NULL,
	[activated] [bit] NOT NULL,
	[email] [varchar](255) NOT NULL,
	[password] [varchar](255) NOT NULL,
	[dateJoined] [date] NOT NULL,
	[accountTypeId] [int] NOT NULL,
	[phoneNumber] [varchar](16) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[imageUri] [varchar](255) NOT NULL,
 CONSTRAINT [PK__account__F267251E1A7E91BD] PRIMARY KEY CLUSTERED 
(
	[accountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[accountType]    Script Date: 3/9/2021 11:25:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[accountType](
	[accountTypeId] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK__accountT__37D76C47C3756709] PRIMARY KEY CLUSTERED 
(
	[accountTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[application]    Script Date: 3/9/2021 11:25:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[application](
	[applicationId] [int] IDENTITY(1,1) NOT NULL,
	[jobId] [int] NOT NULL,
	[resumeId] [int] NOT NULL,
	[createdDate] [date] NOT NULL,
	[message] [nvarchar](255) NOT NULL,
	[statusId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[applicationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[applicationStatus]    Script Date: 3/9/2021 11:25:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[applicationStatus](
	[statusId] [int] NOT NULL,
	[name] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_applicationStatus] PRIMARY KEY CLUSTERED 
(
	[statusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[company]    Script Date: 3/9/2021 11:25:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[company](
	[companyId] [int] NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[imageUri] [nchar](255) NOT NULL,
	[address] [nvarchar](255) NOT NULL,
	[description] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[companyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[field]    Script Date: 3/9/2021 11:25:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[field](
	[fieldId] [int] NOT NULL,
	[name] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_field] PRIMARY KEY CLUSTERED 
(
	[fieldId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[job]    Script Date: 3/9/2021 11:25:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[job](
	[jobId] [int] IDENTITY(1,1) NOT NULL,
	[jobTypeId] [int] NOT NULL,
	[title] [nvarchar](255) NOT NULL,
	[status] [bit] NOT NULL,
	[views] [int] NOT NULL,
	[description] [nvarchar](255) NOT NULL,
	[accountId] [int] NOT NULL,
	[startingSalary] [money] NOT NULL,
	[imageUri] [nchar](255) NOT NULL,
	[lastModified] [date] NOT NULL,
	[locationId] [int] NOT NULL,
	[fieldId] [int] NOT NULL,
	[levelId] [int] NOT NULL,
	[deleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[jobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[jobType]    Script Date: 3/9/2021 11:25:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[jobType](
	[jobTypeId] [int] NOT NULL,
	[name] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_jobType] PRIMARY KEY CLUSTERED 
(
	[jobTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[language]    Script Date: 3/9/2021 11:25:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[language](
	[languageId] [int] NOT NULL,
	[name] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_language] PRIMARY KEY CLUSTERED 
(
	[languageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[language_job]    Script Date: 3/9/2021 11:25:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[language_job](
	[languageId] [int] NOT NULL,
	[jobId] [int] NOT NULL,
 CONSTRAINT [PK_language_job] PRIMARY KEY CLUSTERED 
(
	[languageId] ASC,
	[jobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[language_resume]    Script Date: 3/9/2021 11:25:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[language_resume](
	[languageId] [int] NOT NULL,
	[resumeId] [int] NOT NULL,
 CONSTRAINT [language_resume_pk] PRIMARY KEY CLUSTERED 
(
	[languageId] ASC,
	[resumeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[location]    Script Date: 3/9/2021 11:25:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[location](
	[locationId] [int] NOT NULL,
	[name] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_location] PRIMARY KEY CLUSTERED 
(
	[locationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[resume]    Script Date: 3/9/2021 11:25:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[resume](
	[resumeId] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](255) NULL,
	[accountId] [int] NULL,
	[position] [nvarchar](255) NULL,
	[yearOfExperience] [int] NULL,
	[bio] [nvarchar](510) NULL,
	[lastModified] [date] NULL,
	[imageUri] [varchar](255) NULL,
	[locationId] [int] NULL,
	[fieldId] [int] NULL,
	[levelId] [int] NULL,
	[status] [bit] NULL,
	[views] [int] NULL,
	[deleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[resumeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[token]    Script Date: 3/9/2021 11:25:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[token](
	[value] [varchar](255) NOT NULL,
	[accountId] [int] NULL,
	[createdTimeMillis] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[value] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[academicLevel] ([levelId], [title]) VALUES (1, N'Không có')
INSERT [dbo].[academicLevel] ([levelId], [title]) VALUES (2, N'Tốt nghiệp cấp 1')
INSERT [dbo].[academicLevel] ([levelId], [title]) VALUES (3, N'Tốt nghiệp cấp 2')
INSERT [dbo].[academicLevel] ([levelId], [title]) VALUES (4, N'Tốt nghiệp cấp 3')
INSERT [dbo].[academicLevel] ([levelId], [title]) VALUES (5, N'Tốt nghiệp đại học')
INSERT [dbo].[academicLevel] ([levelId], [title]) VALUES (6, N'Thạc sĩ')
INSERT [dbo].[academicLevel] ([levelId], [title]) VALUES (7, N'Tiến sĩ')
GO
SET IDENTITY_INSERT [dbo].[account] ON 

INSERT [dbo].[account] ([accountId], [activated], [email], [password], [dateJoined], [accountTypeId], [phoneNumber], [name], [imageUri]) VALUES (3, 1, N'congntse151288@fpt.edu.vn', N'afa137f3f57141ca9cdf11a8928a8f355a6a103262f6cc3e416c947bd211ee31', CAST(N'2021-02-13' AS Date), 1, N'0857406604', N'Nguyễn Thành Công', N'images\1615272840650.jpg')
INSERT [dbo].[account] ([accountId], [activated], [email], [password], [dateJoined], [accountTypeId], [phoneNumber], [name], [imageUri]) VALUES (4, 1, N'inuyashathanhcongnguyen@gmail.com', N'afa137f3f57141ca9cdf11a8928a8f355a6a103262f6cc3e416c947bd211ee31', CAST(N'2021-02-13' AS Date), 2, N'0987894497', N'Thành Công', N'images/avatar.png')
INSERT [dbo].[account] ([accountId], [activated], [email], [password], [dateJoined], [accountTypeId], [phoneNumber], [name], [imageUri]) VALUES (5, 1, N'workerz0022@gmail.com', N'afa137f3f57141ca9cdf11a8928a8f355a6a103262f6cc3e416c947bd211ee31', CAST(N'2021-02-20' AS Date), 2, N'0833660779', N'Nguyễn Văn Tèo', N'images/avatar.png')
SET IDENTITY_INSERT [dbo].[account] OFF
GO
SET IDENTITY_INSERT [dbo].[accountType] ON 

INSERT [dbo].[accountType] ([accountTypeId], [name]) VALUES (1, N'Nhà tuyển dụng')
INSERT [dbo].[accountType] ([accountTypeId], [name]) VALUES (2, N'Người kiếm việc')
SET IDENTITY_INSERT [dbo].[accountType] OFF
GO
SET IDENTITY_INSERT [dbo].[application] ON 

INSERT [dbo].[application] ([applicationId], [jobId], [resumeId], [createdDate], [message], [statusId]) VALUES (4, 1, 13, CAST(N'2021-03-08' AS Date), N'Tôi muốn làm', 1)
INSERT [dbo].[application] ([applicationId], [jobId], [resumeId], [createdDate], [message], [statusId]) VALUES (5, 4, 15, CAST(N'2021-03-09' AS Date), N'Tôi tự tin mình có thể làm một Khá Xấu xịn xò :>', 1)
SET IDENTITY_INSERT [dbo].[application] OFF
GO
INSERT [dbo].[applicationStatus] ([statusId], [name]) VALUES (1, N'Đang duyệt')
INSERT [dbo].[applicationStatus] ([statusId], [name]) VALUES (2, N'Chấp nhận')
INSERT [dbo].[applicationStatus] ([statusId], [name]) VALUES (3, N'Từ chối')
INSERT [dbo].[applicationStatus] ([statusId], [name]) VALUES (4, N'Đã hủy')
GO
INSERT [dbo].[company] ([companyId], [name], [imageUri], [address], [description]) VALUES (3, N'Trùm thúy mai', N'images\1615016967799.jpg                                                                                                                                                                                                                                       ', N'037 Lê Văn Tám Khu Phố 3 Phường 2', N'Công ti tôi bán thảo dược tổng hợp đã 20 năm lành nghề')
GO
INSERT [dbo].[field] ([fieldId], [name]) VALUES (1, N'Accounting')
INSERT [dbo].[field] ([fieldId], [name]) VALUES (2, N'Construction')
INSERT [dbo].[field] ([fieldId], [name]) VALUES (3, N'Physical Labour')
INSERT [dbo].[field] ([fieldId], [name]) VALUES (4, N'Teaching')
INSERT [dbo].[field] ([fieldId], [name]) VALUES (5, N'Information Technology')
INSERT [dbo].[field] ([fieldId], [name]) VALUES (6, N'Agriculture')
INSERT [dbo].[field] ([fieldId], [name]) VALUES (7, N'Engineering')
INSERT [dbo].[field] ([fieldId], [name]) VALUES (8, N'Writing')
INSERT [dbo].[field] ([fieldId], [name]) VALUES (9, N'Logistics')
GO
SET IDENTITY_INSERT [dbo].[job] ON 

INSERT [dbo].[job] ([jobId], [jobTypeId], [title], [status], [views], [description], [accountId], [startingSalary], [imageUri], [lastModified], [locationId], [fieldId], [levelId], [deleted]) VALUES (1, 3, N'Công việc thời công nghệ 4.0', 1, 17, N'Công việc chuyên bốc vác, tuyển người khỏe mạnh', 3, 11500000.0000, N'images\1615284648352.jpg                                                                                                                                                                                                                                       ', CAST(N'2021-03-09' AS Date), 12, 2, 1, 0)
INSERT [dbo].[job] ([jobId], [jobTypeId], [title], [status], [views], [description], [accountId], [startingSalary], [imageUri], [lastModified], [locationId], [fieldId], [levelId], [deleted]) VALUES (4, 3, N'Khá Bảnh new Gen', 1, 17, N'Bắt chước Khá Bảnh với tên Khá Xấu', 3, 5000000000.0000, N'images\1614932639969.jpg                                                                                                                                                                                                                                       ', CAST(N'2021-03-05' AS Date), 62, 3, 7, 0)
SET IDENTITY_INSERT [dbo].[job] OFF
GO
INSERT [dbo].[jobType] ([jobTypeId], [name]) VALUES (1, N'Hợp đồng')
INSERT [dbo].[jobType] ([jobTypeId], [name]) VALUES (2, N'Freelance')
INSERT [dbo].[jobType] ([jobTypeId], [name]) VALUES (3, N'Toàn thời gian')
INSERT [dbo].[jobType] ([jobTypeId], [name]) VALUES (4, N'Thực tập')
INSERT [dbo].[jobType] ([jobTypeId], [name]) VALUES (5, N'Bán thời gian')
INSERT [dbo].[jobType] ([jobTypeId], [name]) VALUES (6, N'Remote')
INSERT [dbo].[jobType] ([jobTypeId], [name]) VALUES (7, N'Tạm thời')
GO
INSERT [dbo].[language] ([languageId], [name]) VALUES (1, N'English')
INSERT [dbo].[language] ([languageId], [name]) VALUES (2, N'Chinese')
INSERT [dbo].[language] ([languageId], [name]) VALUES (3, N'Vietnamese')
INSERT [dbo].[language] ([languageId], [name]) VALUES (4, N'Spanish')
INSERT [dbo].[language] ([languageId], [name]) VALUES (5, N'French')
INSERT [dbo].[language] ([languageId], [name]) VALUES (6, N'Arabic')
INSERT [dbo].[language] ([languageId], [name]) VALUES (7, N'Bengali')
INSERT [dbo].[language] ([languageId], [name]) VALUES (8, N'Russian')
INSERT [dbo].[language] ([languageId], [name]) VALUES (9, N'Portuguese')
INSERT [dbo].[language] ([languageId], [name]) VALUES (10, N'Indonesian')
INSERT [dbo].[language] ([languageId], [name]) VALUES (11, N'Japanese')
INSERT [dbo].[language] ([languageId], [name]) VALUES (12, N'Hindi')
GO
INSERT [dbo].[language_job] ([languageId], [jobId]) VALUES (1, 1)
INSERT [dbo].[language_job] ([languageId], [jobId]) VALUES (2, 1)
INSERT [dbo].[language_job] ([languageId], [jobId]) VALUES (3, 1)
GO
INSERT [dbo].[language_resume] ([languageId], [resumeId]) VALUES (3, 11)
INSERT [dbo].[language_resume] ([languageId], [resumeId]) VALUES (3, 14)
INSERT [dbo].[language_resume] ([languageId], [resumeId]) VALUES (4, 14)
GO
INSERT [dbo].[location] ([locationId], [name]) VALUES (1, N'An Giang')
INSERT [dbo].[location] ([locationId], [name]) VALUES (2, N'Bà Rịa - Vũng Tàu')
INSERT [dbo].[location] ([locationId], [name]) VALUES (3, N'Bắc Giang')
INSERT [dbo].[location] ([locationId], [name]) VALUES (4, N'Bắc Kạn')
INSERT [dbo].[location] ([locationId], [name]) VALUES (5, N'Bạc Liêu')
INSERT [dbo].[location] ([locationId], [name]) VALUES (6, N'Bắc Ninh')
INSERT [dbo].[location] ([locationId], [name]) VALUES (7, N'Bến Tre')
INSERT [dbo].[location] ([locationId], [name]) VALUES (8, N'Bình Định')
INSERT [dbo].[location] ([locationId], [name]) VALUES (9, N'Bình Dương')
INSERT [dbo].[location] ([locationId], [name]) VALUES (10, N'Bình Phước')
INSERT [dbo].[location] ([locationId], [name]) VALUES (11, N'Bình Thuận')
INSERT [dbo].[location] ([locationId], [name]) VALUES (12, N'Cà Mau')
INSERT [dbo].[location] ([locationId], [name]) VALUES (13, N'Cao Bằng')
INSERT [dbo].[location] ([locationId], [name]) VALUES (14, N'Đắk Lắk')
INSERT [dbo].[location] ([locationId], [name]) VALUES (15, N'Đắk Nông')
INSERT [dbo].[location] ([locationId], [name]) VALUES (16, N'Điện Biên')
INSERT [dbo].[location] ([locationId], [name]) VALUES (17, N'Đồng Nai')
INSERT [dbo].[location] ([locationId], [name]) VALUES (18, N'Đồng Tháp')
INSERT [dbo].[location] ([locationId], [name]) VALUES (19, N'Gia Lai')
INSERT [dbo].[location] ([locationId], [name]) VALUES (20, N'Hà Giang')
INSERT [dbo].[location] ([locationId], [name]) VALUES (21, N'Hà Nam')
INSERT [dbo].[location] ([locationId], [name]) VALUES (22, N'Hà Tĩnh')
INSERT [dbo].[location] ([locationId], [name]) VALUES (23, N'Hải Dương')
INSERT [dbo].[location] ([locationId], [name]) VALUES (24, N'Hậu Giang')
INSERT [dbo].[location] ([locationId], [name]) VALUES (25, N'Hòa Bình')
INSERT [dbo].[location] ([locationId], [name]) VALUES (26, N'Hưng Yên')
INSERT [dbo].[location] ([locationId], [name]) VALUES (27, N'Khánh Hòa')
INSERT [dbo].[location] ([locationId], [name]) VALUES (28, N'Kiên Giang')
INSERT [dbo].[location] ([locationId], [name]) VALUES (29, N'Kon Tum')
INSERT [dbo].[location] ([locationId], [name]) VALUES (30, N'Lai Châu')
INSERT [dbo].[location] ([locationId], [name]) VALUES (31, N'Lâm Đồng')
INSERT [dbo].[location] ([locationId], [name]) VALUES (32, N'Lạng Sơn')
INSERT [dbo].[location] ([locationId], [name]) VALUES (33, N'Lào Cai')
INSERT [dbo].[location] ([locationId], [name]) VALUES (34, N'Long An')
INSERT [dbo].[location] ([locationId], [name]) VALUES (35, N'Nam Định')
INSERT [dbo].[location] ([locationId], [name]) VALUES (36, N'Nghệ An')
INSERT [dbo].[location] ([locationId], [name]) VALUES (37, N'Ninh Bình')
INSERT [dbo].[location] ([locationId], [name]) VALUES (38, N'Ninh Thuận')
INSERT [dbo].[location] ([locationId], [name]) VALUES (39, N'Phú Thọ')
INSERT [dbo].[location] ([locationId], [name]) VALUES (40, N'Quảng Bình')
INSERT [dbo].[location] ([locationId], [name]) VALUES (41, N'Quảng Nam')
INSERT [dbo].[location] ([locationId], [name]) VALUES (42, N'Quảng Ngãi')
INSERT [dbo].[location] ([locationId], [name]) VALUES (43, N'Quảng Ninh')
INSERT [dbo].[location] ([locationId], [name]) VALUES (44, N'Quảng Trị')
INSERT [dbo].[location] ([locationId], [name]) VALUES (45, N'Sóc Trăng')
INSERT [dbo].[location] ([locationId], [name]) VALUES (46, N'Sơn La')
INSERT [dbo].[location] ([locationId], [name]) VALUES (47, N'Tây Ninh')
INSERT [dbo].[location] ([locationId], [name]) VALUES (48, N'Thái Bình')
INSERT [dbo].[location] ([locationId], [name]) VALUES (49, N'Thái Nguyên')
INSERT [dbo].[location] ([locationId], [name]) VALUES (50, N'Thanh Hóa')
INSERT [dbo].[location] ([locationId], [name]) VALUES (51, N'Thừa Thiên Huế')
INSERT [dbo].[location] ([locationId], [name]) VALUES (52, N'Tiền Giang')
INSERT [dbo].[location] ([locationId], [name]) VALUES (53, N'Trà Vinh')
INSERT [dbo].[location] ([locationId], [name]) VALUES (54, N'Tuyên Quang')
INSERT [dbo].[location] ([locationId], [name]) VALUES (55, N'Vĩnh Long')
INSERT [dbo].[location] ([locationId], [name]) VALUES (56, N'Vĩnh Phúc')
INSERT [dbo].[location] ([locationId], [name]) VALUES (57, N'Yên Bái')
INSERT [dbo].[location] ([locationId], [name]) VALUES (58, N'Phú Yên')
INSERT [dbo].[location] ([locationId], [name]) VALUES (59, N'Cần Thơ')
INSERT [dbo].[location] ([locationId], [name]) VALUES (60, N'Đà Nẵng')
INSERT [dbo].[location] ([locationId], [name]) VALUES (61, N'Hải Phòng')
INSERT [dbo].[location] ([locationId], [name]) VALUES (62, N'Hà Nội')
INSERT [dbo].[location] ([locationId], [name]) VALUES (63, N'TP HCM')
GO
SET IDENTITY_INSERT [dbo].[resume] ON 

INSERT [dbo].[resume] ([resumeId], [title], [accountId], [position], [yearOfExperience], [bio], [lastModified], [imageUri], [locationId], [fieldId], [levelId], [status], [views], [deleted]) VALUES (11, N'Thần bài xin việc', 5, N'Chia bài', 20, N'Tôi là trùm chơi bài. Bữa kia chơi 20 ván thắng hết :)', CAST(N'2021-03-04' AS Date), N'images\1614862052876.jpg', 10, 9, 1, 1, 27, 0)
INSERT [dbo].[resume] ([resumeId], [title], [accountId], [position], [yearOfExperience], [bio], [lastModified], [imageUri], [locationId], [fieldId], [levelId], [status], [views], [deleted]) VALUES (13, N'Một con vịt xòe ra 2 cái cánh', 4, N'Tổng thống', 2, N'Tôi là Donald Trump', CAST(N'2021-03-03' AS Date), N'images\1614780200275.jpg', 5, 4, 5, 1, 29, 0)
INSERT [dbo].[resume] ([resumeId], [title], [accountId], [position], [yearOfExperience], [bio], [lastModified], [imageUri], [locationId], [fieldId], [levelId], [status], [views], [deleted]) VALUES (14, N'This app is broken', 4, N'Lập trình viên', 3, N'Tôi biết viết code', CAST(N'2021-03-09' AS Date), N'images\1615295059502.jpg', 1, 1, 1, 1, 33, 0)
INSERT [dbo].[resume] ([resumeId], [title], [accountId], [position], [yearOfExperience], [bio], [lastModified], [imageUri], [locationId], [fieldId], [levelId], [status], [views], [deleted]) VALUES (15, N'Chuyên bán hàng rong', 4, N'Bán hàng', 2, N'Đã bán tại hơn 20 địa điểm trong cả xã', CAST(N'2021-03-03' AS Date), N'images\1614780220976.png', 14, 6, 2, 1, 9, 0)
SET IDENTITY_INSERT [dbo].[resume] OFF
GO
INSERT [dbo].[token] ([value], [accountId], [createdTimeMillis]) VALUES (N'1147CC22-E049-4AA0-A49B-70FAE3ED3C3B', 5, 1613808686536)
INSERT [dbo].[token] ([value], [accountId], [createdTimeMillis]) VALUES (N'320A709B-B84C-44D5-87D8-7FE8BA7C35C6', 4, 1613184881193)
INSERT [dbo].[token] ([value], [accountId], [createdTimeMillis]) VALUES (N'3C6F6956-37C2-4D7E-B9AC-85229F219AF6', 3, 1613184799414)
GO
ALTER TABLE [dbo].[account] ADD  CONSTRAINT [df_imageUri]  DEFAULT ('images/avatar.png') FOR [imageUri]
GO
ALTER TABLE [dbo].[job] ADD  CONSTRAINT [job_views_default]  DEFAULT ((0)) FOR [views]
GO
ALTER TABLE [dbo].[job] ADD  CONSTRAINT [df_job_deleted]  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[resume] ADD  CONSTRAINT [df_resume_deleted]  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[account]  WITH CHECK ADD  CONSTRAINT [FK__account__account__267ABA7A] FOREIGN KEY([accountTypeId])
REFERENCES [dbo].[accountType] ([accountTypeId])
GO
ALTER TABLE [dbo].[account] CHECK CONSTRAINT [FK__account__account__267ABA7A]
GO
ALTER TABLE [dbo].[application]  WITH CHECK ADD FOREIGN KEY([jobId])
REFERENCES [dbo].[job] ([jobId])
GO
ALTER TABLE [dbo].[application]  WITH CHECK ADD FOREIGN KEY([resumeId])
REFERENCES [dbo].[resume] ([resumeId])
GO
ALTER TABLE [dbo].[application]  WITH CHECK ADD FOREIGN KEY([statusId])
REFERENCES [dbo].[applicationStatus] ([statusId])
GO
ALTER TABLE [dbo].[company]  WITH CHECK ADD FOREIGN KEY([companyId])
REFERENCES [dbo].[account] ([accountId])
GO
ALTER TABLE [dbo].[job]  WITH CHECK ADD FOREIGN KEY([accountId])
REFERENCES [dbo].[account] ([accountId])
GO
ALTER TABLE [dbo].[job]  WITH CHECK ADD FOREIGN KEY([fieldId])
REFERENCES [dbo].[field] ([fieldId])
GO
ALTER TABLE [dbo].[job]  WITH CHECK ADD FOREIGN KEY([jobTypeId])
REFERENCES [dbo].[jobType] ([jobTypeId])
GO
ALTER TABLE [dbo].[job]  WITH CHECK ADD FOREIGN KEY([levelId])
REFERENCES [dbo].[academicLevel] ([levelId])
GO
ALTER TABLE [dbo].[job]  WITH CHECK ADD FOREIGN KEY([locationId])
REFERENCES [dbo].[location] ([locationId])
GO
ALTER TABLE [dbo].[language_job]  WITH CHECK ADD FOREIGN KEY([jobId])
REFERENCES [dbo].[job] ([jobId])
GO
ALTER TABLE [dbo].[language_job]  WITH CHECK ADD FOREIGN KEY([languageId])
REFERENCES [dbo].[language] ([languageId])
GO
ALTER TABLE [dbo].[language_resume]  WITH CHECK ADD  CONSTRAINT [fk_language] FOREIGN KEY([languageId])
REFERENCES [dbo].[language] ([languageId])
GO
ALTER TABLE [dbo].[language_resume] CHECK CONSTRAINT [fk_language]
GO
ALTER TABLE [dbo].[language_resume]  WITH CHECK ADD  CONSTRAINT [FK_resume] FOREIGN KEY([resumeId])
REFERENCES [dbo].[resume] ([resumeId])
GO
ALTER TABLE [dbo].[language_resume] CHECK CONSTRAINT [FK_resume]
GO
ALTER TABLE [dbo].[resume]  WITH CHECK ADD FOREIGN KEY([accountId])
REFERENCES [dbo].[account] ([accountId])
GO
ALTER TABLE [dbo].[resume]  WITH CHECK ADD FOREIGN KEY([fieldId])
REFERENCES [dbo].[field] ([fieldId])
GO
ALTER TABLE [dbo].[resume]  WITH CHECK ADD FOREIGN KEY([levelId])
REFERENCES [dbo].[academicLevel] ([levelId])
GO
ALTER TABLE [dbo].[resume]  WITH CHECK ADD FOREIGN KEY([locationId])
REFERENCES [dbo].[location] ([locationId])
GO
USE [master]
GO
ALTER DATABASE [SE1502_ASSIGNMENT_GROUP_7] SET  READ_WRITE 
GO
