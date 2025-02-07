USE [master]
GO
/****** Object:  Database [web_customer_tracker]    Script Date: 4/17/2022 4:29:35 PM ******/
CREATE DATABASE [web_customer_tracker]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'web_customer_tracker', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.VIVI\MSSQL\DATA\web_customer_tracker.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'web_customer_tracker_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.VIVI\MSSQL\DATA\web_customer_tracker_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [web_customer_tracker] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [web_customer_tracker].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [web_customer_tracker] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [web_customer_tracker] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [web_customer_tracker] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [web_customer_tracker] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [web_customer_tracker] SET ARITHABORT OFF 
GO
ALTER DATABASE [web_customer_tracker] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [web_customer_tracker] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [web_customer_tracker] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [web_customer_tracker] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [web_customer_tracker] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [web_customer_tracker] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [web_customer_tracker] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [web_customer_tracker] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [web_customer_tracker] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [web_customer_tracker] SET  DISABLE_BROKER 
GO
ALTER DATABASE [web_customer_tracker] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [web_customer_tracker] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [web_customer_tracker] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [web_customer_tracker] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [web_customer_tracker] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [web_customer_tracker] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [web_customer_tracker] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [web_customer_tracker] SET RECOVERY FULL 
GO
ALTER DATABASE [web_customer_tracker] SET  MULTI_USER 
GO
ALTER DATABASE [web_customer_tracker] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [web_customer_tracker] SET DB_CHAINING OFF 
GO
ALTER DATABASE [web_customer_tracker] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [web_customer_tracker] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [web_customer_tracker] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [web_customer_tracker] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'web_customer_tracker', N'ON'
GO
ALTER DATABASE [web_customer_tracker] SET QUERY_STORE = OFF
GO
USE [web_customer_tracker]
GO
/****** Object:  Table [dbo].[bill]    Script Date: 4/17/2022 4:29:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bill](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[total] [money] NULL,
	[number] [int] NULL,
	[customer_id] [int] NOT NULL,
 CONSTRAINT [PK_bill] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customer]    Script Date: 4/17/2022 4:29:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [nvarchar](50) NULL,
	[last_name] [nvarchar](50) NULL,
	[email] [text] NULL,
 CONSTRAINT [PK_customer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[bill] ON 

INSERT [dbo].[bill] ([id], [total], [number], [customer_id]) VALUES (1, 20000.0000, 5, 1)
INSERT [dbo].[bill] ([id], [total], [number], [customer_id]) VALUES (2, 10000.0000, 2, 1)
INSERT [dbo].[bill] ([id], [total], [number], [customer_id]) VALUES (3, 12000.0000, 1, 2)
SET IDENTITY_INSERT [dbo].[bill] OFF
GO
SET IDENTITY_INSERT [dbo].[customer] ON 

INSERT [dbo].[customer] ([id], [first_name], [last_name], [email]) VALUES (4, N'Do', N'Tuong Vi', N'dothituongviplic@gmail.com')
INSERT [dbo].[customer] ([id], [first_name], [last_name], [email]) VALUES (5, N'Phung', N'Nghia', N'nghia@gmail.com')
SET IDENTITY_INSERT [dbo].[customer] OFF
GO
USE [master]
GO
ALTER DATABASE [web_customer_tracker] SET  READ_WRITE 
GO
