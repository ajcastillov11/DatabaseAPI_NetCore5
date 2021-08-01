CREATE DATABASE DBWEBAPITEST
GO

USE [DBWEBAPITEST]
GO
ALTER TABLE [dbo].[Products] DROP CONSTRAINT [FK_Products_Category_CategoryId]
GO
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF__Users__Password__30F848ED]
GO
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF__Users__UserName__300424B4]
GO
/****** Object:  Index [IX_Products_CategoryId]    Script Date: 1/08/2021 12:54:19 a. m. ******/
DROP INDEX [IX_Products_CategoryId] ON [dbo].[Products]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 1/08/2021 12:54:19 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
DROP TABLE [dbo].[Users]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 1/08/2021 12:54:19 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
DROP TABLE [dbo].[Products]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 1/08/2021 12:54:19 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Category]') AND type in (N'U'))
DROP TABLE [dbo].[Category]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 1/08/2021 12:54:19 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[__EFMigrationsHistory]') AND type in (N'U'))
DROP TABLE [dbo].[__EFMigrationsHistory]
GO
USE [master]
GO
/****** Object:  Database [DBWEBAPITEST]    Script Date: 1/08/2021 12:54:19 a. m. ******/
DROP DATABASE [DBWEBAPITEST]
GO
/****** Object:  Database [DBWEBAPITEST]    Script Date: 1/08/2021 12:54:19 a. m. ******/
CREATE DATABASE [DBWEBAPITEST]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBWEBAPITEST', FILENAME = N'C:\Users\ecm4658h\DBWEBAPITEST.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DBWEBAPITEST_log', FILENAME = N'C:\Users\ecm4658h\DBWEBAPITEST_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [DBWEBAPITEST] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBWEBAPITEST].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBWEBAPITEST] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBWEBAPITEST] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBWEBAPITEST] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBWEBAPITEST] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBWEBAPITEST] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBWEBAPITEST] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DBWEBAPITEST] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBWEBAPITEST] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBWEBAPITEST] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBWEBAPITEST] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBWEBAPITEST] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBWEBAPITEST] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBWEBAPITEST] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBWEBAPITEST] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBWEBAPITEST] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DBWEBAPITEST] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBWEBAPITEST] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBWEBAPITEST] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBWEBAPITEST] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBWEBAPITEST] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBWEBAPITEST] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DBWEBAPITEST] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBWEBAPITEST] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DBWEBAPITEST] SET  MULTI_USER 
GO
ALTER DATABASE [DBWEBAPITEST] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBWEBAPITEST] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBWEBAPITEST] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBWEBAPITEST] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DBWEBAPITEST] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DBWEBAPITEST] SET QUERY_STORE = OFF
GO
USE [DBWEBAPITEST]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [DBWEBAPITEST]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 1/08/2021 12:54:20 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 1/08/2021 12:54:20 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 1/08/2021 12:54:20 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](255) NOT NULL,
	[IntroductionDate] [nvarchar](255) NULL,
	[Price] [nvarchar](100) NULL,
	[Url] [nvarchar](400) NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 1/08/2021 12:54:20 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](255) NOT NULL,
	[Password] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210731153946_AddModel1', N'5.0.8')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210731154522_AddModel2', N'5.0.8')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210731215927_updateModel', N'5.0.8')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210801030450_updateModel2', N'5.0.8')
GO
SET IDENTITY_INSERT [dbo].[Category] ON 
GO
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (1, N'Services')
GO
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (2, N'Training')
GO
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (3, N'Information')
GO
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (4, N'Informatic Security')
GO
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (5, N'Data Mining')
GO
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 
GO
INSERT [dbo].[Products] ([ProductId], [ProductName], [IntroductionDate], [Price], [Url], [CategoryId]) VALUES (1, N'VB.NET Development Standards', N'2015-04-01', N'555.5', N'https://www.academia.edu/14903374/VB.Net_Coding_Standards', 3)
GO
INSERT [dbo].[Products] ([ProductId], [ProductName], [IntroductionDate], [Price], [Url], [CategoryId]) VALUES (3, N'WPF for the Business Programmer', N'2020-03-15', N'455', N'http://bit.ly/1UF858z', 1)
GO
INSERT [dbo].[Products] ([ProductId], [ProductName], [IntroductionDate], [Price], [Url], [CategoryId]) VALUES (4, N'Build HTML Helper Library for ASP.NET MVC 5', N'2016-11-05', N'102', N'http://bit.ly/1myXBwj', 2)
GO
INSERT [dbo].[Products] ([ProductId], [ProductName], [IntroductionDate], [Price], [Url], [CategoryId]) VALUES (5, N'The art of computer security', N'2020-5-10', N'499.5', N'https://harvardx-onlinecourses.getsmarter.com/presentations/lp/harvard-cybersecurity-online-short-course', 4)
GO
INSERT [dbo].[Products] ([ProductId], [ProductName], [IntroductionDate], [Price], [Url], [CategoryId]) VALUES (6, N'Data Mining as a set of statistical techniques', N'2021-03-03', N'450', N'http://halweb.uc3m.es/esp/Personal/personas/jmmarin/esp/DM/introduccion-DM.pdf', 5)
GO
INSERT [dbo].[Products] ([ProductId], [ProductName], [IntroductionDate], [Price], [Url], [CategoryId]) VALUES (7, N'Only at Cybrary | Online CISSP', N'2021-01-21', N'800', N'https://www.cybrary.it/cissp', 4)
GO
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 
GO
INSERT [dbo].[Users] ([UserId], [UserName], [Password]) VALUES (1, N'ajcv11', N'12345')
GO
INSERT [dbo].[Users] ([UserId], [UserName], [Password]) VALUES (2, N'juanv', N'P@ssw0rd')
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
/****** Object:  Index [IX_Products_CategoryId]    Script Date: 1/08/2021 12:54:20 a. m. ******/
CREATE NONCLUSTERED INDEX [IX_Products_CategoryId] ON [dbo].[Products]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (N'') FOR [UserName]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (N'') FOR [Password]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Category_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([CategoryId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Category_CategoryId]
GO
USE [master]
GO
ALTER DATABASE [DBWEBAPITEST] SET  READ_WRITE 
GO
