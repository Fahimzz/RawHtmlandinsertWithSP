USE [master]
GO
/****** Object:  Database [TaskDB]    Script Date: 12/2/2023 11:05:29 AM ******/
CREATE DATABASE [TaskDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TaskDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\TaskDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TaskDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\TaskDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [TaskDB] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TaskDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TaskDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TaskDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TaskDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TaskDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TaskDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [TaskDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TaskDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TaskDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TaskDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TaskDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TaskDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TaskDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TaskDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TaskDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TaskDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TaskDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TaskDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TaskDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TaskDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TaskDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TaskDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TaskDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TaskDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TaskDB] SET  MULTI_USER 
GO
ALTER DATABASE [TaskDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TaskDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TaskDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TaskDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TaskDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TaskDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [TaskDB] SET QUERY_STORE = ON
GO
ALTER DATABASE [TaskDB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [TaskDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 12/2/2023 11:05:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Corporate_Customer_Tbl]    Script Date: 12/2/2023 11:05:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Corporate_Customer_Tbl](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[createAt] [datetime2](7) NULL,
	[updateAt] [datetime2](7) NULL,
	[isDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Corporate_Customer_Tbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Individual_Customer_Tbl]    Script Date: 12/2/2023 11:05:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Individual_Customer_Tbl](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[createAt] [datetime2](7) NULL,
	[updateAt] [datetime2](7) NULL,
	[isDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Individual_Customer_Tbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Meeting_Minutes_Master_Tbls]    Script Date: 12/2/2023 11:05:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Meeting_Minutes_Master_Tbls](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[CustomerId] [bigint] NOT NULL,
	[MeetingDate] [nvarchar](max) NULL,
	[MeetingTime] [nvarchar](max) NULL,
	[AttendesFromClient] [nvarchar](max) NULL,
	[AttendesFromHost] [nvarchar](max) NULL,
	[MeetingAgenda] [nvarchar](max) NULL,
	[MeetingDecision] [nvarchar](max) NULL,
	[MeetingDiscussion] [nvarchar](max) NULL,
	[createAt] [datetime2](7) NULL,
	[updateAt] [datetime2](7) NULL,
	[isDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Meeting_Minutes_Master_Tbls] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products_Service_Tbls]    Script Date: 12/2/2023 11:05:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products_Service_Tbls](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Type] [nvarchar](max) NOT NULL,
	[Quantities] [bigint] NOT NULL,
	[Unit] [nvarchar](max) NOT NULL,
	[createAt] [datetime2](7) NULL,
	[updateAt] [datetime2](7) NULL,
	[isDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Products_Service_Tbls] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231201134016_initial migration', N'7.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231201141950_new table Products_Service_Tbl', N'7.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231201204025_new table', N'7.0.4')
GO
SET IDENTITY_INSERT [dbo].[Corporate_Customer_Tbl] ON 

INSERT [dbo].[Corporate_Customer_Tbl] ([id], [Name], [createAt], [updateAt], [isDelete]) VALUES (5, N'MR. X', CAST(N'2021-03-21T19:36:22.6400000' AS DateTime2), NULL, 0)
SET IDENTITY_INSERT [dbo].[Corporate_Customer_Tbl] OFF
GO
SET IDENTITY_INSERT [dbo].[Individual_Customer_Tbl] ON 

INSERT [dbo].[Individual_Customer_Tbl] ([id], [Name], [createAt], [updateAt], [isDelete]) VALUES (1, N'MR.Y', CAST(N'2021-03-21T19:36:22.6400000' AS DateTime2), NULL, 0)
SET IDENTITY_INSERT [dbo].[Individual_Customer_Tbl] OFF
GO
SET IDENTITY_INSERT [dbo].[Meeting_Minutes_Master_Tbls] ON 

INSERT [dbo].[Meeting_Minutes_Master_Tbls] ([id], [CustomerId], [MeetingDate], [MeetingTime], [AttendesFromClient], [AttendesFromHost], [MeetingAgenda], [MeetingDecision], [MeetingDiscussion], [createAt], [updateAt], [isDelete]) VALUES (2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Meeting_Minutes_Master_Tbls] ([id], [CustomerId], [MeetingDate], [MeetingTime], [AttendesFromClient], [AttendesFromHost], [MeetingAgenda], [MeetingDecision], [MeetingDiscussion], [createAt], [updateAt], [isDelete]) VALUES (3, 0, N'string', N'string', N'string', N'string', N'string', N'string', N'string', NULL, NULL, 0)
INSERT [dbo].[Meeting_Minutes_Master_Tbls] ([id], [CustomerId], [MeetingDate], [MeetingTime], [AttendesFromClient], [AttendesFromHost], [MeetingAgenda], [MeetingDecision], [MeetingDiscussion], [createAt], [updateAt], [isDelete]) VALUES (4, 0, N'string', N'string', N'string', N'string', N'string', N'string', N'string', NULL, NULL, 0)
INSERT [dbo].[Meeting_Minutes_Master_Tbls] ([id], [CustomerId], [MeetingDate], [MeetingTime], [AttendesFromClient], [AttendesFromHost], [MeetingAgenda], [MeetingDecision], [MeetingDiscussion], [createAt], [updateAt], [isDelete]) VALUES (5, 5, N'', N'', N'rer', N'err', N'rer', N'rer', N'rer', NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[Meeting_Minutes_Master_Tbls] OFF
GO
SET IDENTITY_INSERT [dbo].[Products_Service_Tbls] ON 

INSERT [dbo].[Products_Service_Tbls] ([id], [Name], [Type], [Quantities], [Unit], [createAt], [updateAt], [isDelete]) VALUES (1, N'Demo', N'Product', 100, N'KG', CAST(N'2021-03-21T19:36:22.6400000' AS DateTime2), NULL, 0)
INSERT [dbo].[Products_Service_Tbls] ([id], [Name], [Type], [Quantities], [Unit], [createAt], [updateAt], [isDelete]) VALUES (2, N'Demo 1', N'Service', 200, N'Per', CAST(N'2021-03-21T19:36:22.6400000' AS DateTime2), NULL, 0)
SET IDENTITY_INSERT [dbo].[Products_Service_Tbls] OFF
GO
/****** Object:  StoredProcedure [dbo].[SaveMeetingMinutes]    Script Date: 12/2/2023 11:05:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SaveMeetingMinutes]
    @CustomerId BIGINT,
    @MeetingDate NVARCHAR(MAX),
    @MeetingTime NVARCHAR(MAX),
    @AttendesFromClient NVARCHAR(MAX),
    @AttendesFromHost NVARCHAR(MAX),
    @MeetingAgenda NVARCHAR(MAX),
    @MeetingDecision NVARCHAR(MAX),
    @MeetingDiscussion NVARCHAR(MAX),
	@isDelete BIT
AS
BEGIN
    INSERT INTO [dbo].[Meeting_Minutes_Master_Tbls] (
        CustomerId,
        MeetingDate,
        MeetingTime,
        AttendesFromClient,
        AttendesFromHost,
        MeetingAgenda,
        MeetingDecision,
        MeetingDiscussion,
		isDelete
    )
    VALUES (
        @CustomerId,
        @MeetingDate,
        @MeetingTime,
        @AttendesFromClient,
        @AttendesFromHost,
        @MeetingAgenda,
        @MeetingDecision,
        @MeetingDiscussion,
		@isDelete
		
    );
END;
GO
USE [master]
GO
ALTER DATABASE [TaskDB] SET  READ_WRITE 
GO
