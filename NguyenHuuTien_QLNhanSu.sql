USE [master]
GO
/****** Object:  Database [TTNhom_QLNhanSu]    Script Date: 2/9/2020 9:21:28 AM ******/
CREATE DATABASE [TTNhom_QLNhanSu]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TTNhom_QLNhanSu', FILENAME = N'D:\CSDL\MSSQL14.MSSQLSERVER\MSSQL\DATA\TTNhom_QLNhanSu.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TTNhom_QLNhanSu_log', FILENAME = N'D:\CSDL\MSSQL14.MSSQLSERVER\MSSQL\DATA\TTNhom_QLNhanSu_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [TTNhom_QLNhanSu] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TTNhom_QLNhanSu].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TTNhom_QLNhanSu] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TTNhom_QLNhanSu] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TTNhom_QLNhanSu] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TTNhom_QLNhanSu] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TTNhom_QLNhanSu] SET ARITHABORT OFF 
GO
ALTER DATABASE [TTNhom_QLNhanSu] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TTNhom_QLNhanSu] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TTNhom_QLNhanSu] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TTNhom_QLNhanSu] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TTNhom_QLNhanSu] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TTNhom_QLNhanSu] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TTNhom_QLNhanSu] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TTNhom_QLNhanSu] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TTNhom_QLNhanSu] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TTNhom_QLNhanSu] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TTNhom_QLNhanSu] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TTNhom_QLNhanSu] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TTNhom_QLNhanSu] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TTNhom_QLNhanSu] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TTNhom_QLNhanSu] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TTNhom_QLNhanSu] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TTNhom_QLNhanSu] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TTNhom_QLNhanSu] SET RECOVERY FULL 
GO
ALTER DATABASE [TTNhom_QLNhanSu] SET  MULTI_USER 
GO
ALTER DATABASE [TTNhom_QLNhanSu] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TTNhom_QLNhanSu] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TTNhom_QLNhanSu] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TTNhom_QLNhanSu] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TTNhom_QLNhanSu] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'TTNhom_QLNhanSu', N'ON'
GO
ALTER DATABASE [TTNhom_QLNhanSu] SET QUERY_STORE = OFF
GO
USE [TTNhom_QLNhanSu]
GO
/****** Object:  Table [dbo].[group_role]    Script Date: 2/9/2020 9:21:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[group_role](
	[gr_id] [int] IDENTITY(1,1) NOT NULL,
	[gr_name] [nvarchar](20) NULL,
	[gr_thumbnail] [varchar](45) NULL,
	[gr_description] [text] NULL,
	[gr_status] [tinyint] NULL,
 CONSTRAINT [PK_group_role] PRIMARY KEY CLUSTERED 
(
	[gr_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[position]    Script Date: 2/9/2020 9:21:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[position](
	[pos_id] [int] IDENTITY(1,1) NOT NULL,
	[pos_name] [nvarchar](250) NULL,
	[pos_competence] [nvarchar](50) NULL,
	[pos_abilty] [nvarchar](150) NULL,
	[pos_authority] [nvarchar](50) NULL,
	[pos_responsibility] [nvarchar](250) NULL,
	[pos_description] [nvarchar](250) NULL,
 CONSTRAINT [PK_position] PRIMARY KEY CLUSTERED 
(
	[pos_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[staff]    Script Date: 2/9/2020 9:21:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[staff](
	[sta_id] [int] IDENTITY(1,1) NOT NULL,
	[sta_code] [varchar](50) NULL,
	[sta_thumbnai] [varchar](120) NULL,
	[sta_fullname] [nvarchar](45) NULL,
	[sta_username] [varchar](45) NULL,
	[sta_password] [varchar](120) NULL,
	[sta_sex] [tinyint] NULL,
	[sta_birthday] [datetime] NULL,
	[sta_email] [varchar](30) NULL,
	[sta_status] [tinyint] NULL,
	[sta_aboutme] [nvarchar](500) NULL,
	[sta_mobile] [varchar](11) NULL,
	[sta_identity_card] [varchar](20) NULL,
	[sta_identity_card_date] [datetime] NULL,
	[sta_address] [nvarchar](120) NULL,
	[sta_created_date] [datetime] NULL,
	[department_id] [int] NULL,
	[group_role_id] [int] NULL,
	[social_id] [int] NULL,
	[sta_hometown] [nvarchar](120) NULL,
	[position_id] [int] NULL,
	[sta_leader_id] [int] NULL,
 CONSTRAINT [PK_staff_1] PRIMARY KEY CLUSTERED 
(
	[sta_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[staff_activity]    Script Date: 2/9/2020 9:21:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[staff_activity](
	[sa_id] [int] IDENTITY(1,1) NOT NULL,
	[sa_status] [nchar](10) NULL,
	[sa_log] [nchar](10) NULL,
	[sa_action] [nchar](10) NULL,
	[satff_id] [int] NULL,
 CONSTRAINT [PK_staff_activity] PRIMARY KEY CLUSTERED 
(
	[sa_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ticket]    Script Date: 2/9/2020 9:21:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ticket](
	[ti_id] [int] IDENTITY(1,1) NOT NULL,
	[ti_type] [nchar](10) NULL,
	[ti_title] [nchar](10) NULL,
	[ti_content] [nchar](10) NULL,
	[ti_create_date] [nchar](10) NULL,
	[ti_end_date] [nchar](10) NULL,
	[ti_priority] [nchar](10) NULL,
	[ti_status] [nchar](10) NULL,
	[staff_id] [int] NULL,
 CONSTRAINT [PK_ticket] PRIMARY KEY CLUSTERED 
(
	[ti_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[staff]  WITH CHECK ADD  CONSTRAINT [FK_staff_group_role] FOREIGN KEY([group_role_id])
REFERENCES [dbo].[group_role] ([gr_id])
GO
ALTER TABLE [dbo].[staff] CHECK CONSTRAINT [FK_staff_group_role]
GO
ALTER TABLE [dbo].[staff]  WITH CHECK ADD  CONSTRAINT [FK_staff_position] FOREIGN KEY([position_id])
REFERENCES [dbo].[position] ([pos_id])
GO
ALTER TABLE [dbo].[staff] CHECK CONSTRAINT [FK_staff_position]
GO
ALTER TABLE [dbo].[staff_activity]  WITH CHECK ADD  CONSTRAINT [FK_staff_activity_staff] FOREIGN KEY([satff_id])
REFERENCES [dbo].[staff] ([sta_id])
GO
ALTER TABLE [dbo].[staff_activity] CHECK CONSTRAINT [FK_staff_activity_staff]
GO
ALTER TABLE [dbo].[ticket]  WITH CHECK ADD  CONSTRAINT [FK_ticket_staff] FOREIGN KEY([staff_id])
REFERENCES [dbo].[staff] ([sta_id])
GO
ALTER TABLE [dbo].[ticket] CHECK CONSTRAINT [FK_ticket_staff]
GO
USE [master]
GO
ALTER DATABASE [TTNhom_QLNhanSu] SET  READ_WRITE 
GO
