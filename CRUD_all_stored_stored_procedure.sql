USE [master]
GO
/****** Object:  Database [student]    Script Date: 1/21/2024 3:49:06 PM ******/
CREATE DATABASE [student]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'student', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\student.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'student_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\student_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [student] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [student].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [student] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [student] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [student] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [student] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [student] SET ARITHABORT OFF 
GO
ALTER DATABASE [student] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [student] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [student] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [student] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [student] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [student] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [student] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [student] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [student] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [student] SET  ENABLE_BROKER 
GO
ALTER DATABASE [student] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [student] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [student] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [student] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [student] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [student] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [student] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [student] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [student] SET  MULTI_USER 
GO
ALTER DATABASE [student] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [student] SET DB_CHAINING OFF 
GO
ALTER DATABASE [student] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [student] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [student] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [student] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [student] SET QUERY_STORE = ON
GO
ALTER DATABASE [student] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [student]
GO
/****** Object:  Table [dbo].[Digree]    Script Date: 1/21/2024 3:49:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Digree](
	[gradutate] [int] NULL,
	[digree] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[student]    Script Date: 1/21/2024 3:49:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[student](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[fname] [varchar](50) NULL,
	[mname] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[phone] [varchar](50) NULL,
	[gender] [varchar](100) NULL,
	[addr] [varchar](800) NULL,
	[state] [varchar](300) NULL,
	[code] [varchar](800) NULL,
	[blood] [varchar](50) NULL,
	[courses] [varchar](100) NULL,
 CONSTRAINT [PK_student] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student_login]    Script Date: 1/21/2024 3:49:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_login](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](200) NULL,
	[Email] [varchar](200) NULL,
	[Pass] [varchar](800) NULL,
	[ImagePath] [varchar](max) NULL,
 CONSTRAINT [PK_Student_login] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[uplod_img]    Script Date: 1/21/2024 3:49:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[uplod_img](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](500) NULL,
	[image] [image] NULL,
 CONSTRAINT [PK_uplod_img] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[years]    Script Date: 1/21/2024 3:49:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[years](
	[years] [varchar](100) NULL,
	[gradutate] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[insert_img]    Script Date: 1/21/2024 3:49:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[insert_img](@email varchar(500),@image image)
as
begin
   insert into uplod_img values(@email,@image)
end
GO
/****** Object:  StoredProcedure [dbo].[insert_student]    Script Date: 1/21/2024 3:49:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[insert_student](@name varchar(50),@fname varchar(50),@mname varchar(50),@email varchar(100),@phone varchar(100),@gender varchar(50),@addr varchar(800),@state varchar(100),@code varchar(600),@blood varchar(50),@courses varchar(50))
as 
BEGIN
 Insert Into student values(@name,@fname,@mname,@email,@phone,@gender,@addr,@state,@code,@blood,@courses)
END
GO
/****** Object:  StoredProcedure [dbo].[Is_exit]    Script Date: 1/21/2024 3:49:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Is_exit](@email varchar(50),@password varchar(50),@isval varchar(10) output)
AS
BEGIN

  IF EXISTS(SELECT * FROM user_table WHERE email=@email and password=@password)
  BEGIN
  Set @isval = 0
	  Select @isval Status
  END
  ELSE
  BEGIN
	  Set @isval = 1
	  Select @isval Status
  END
END
GO
/****** Object:  StoredProcedure [dbo].[login_student]    Script Date: 1/21/2024 3:49:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[login_student](@email varchar(50),@password varchar(50),@isval varchar(10) output)
AS
BEGIN

  IF EXISTS(SELECT * FROM Student_login WHERE email=@email and pass=@password)
  BEGIN
  Set @isval = 1
	  Select @isval Status
  END
  ELSE
  BEGIN
	  Set @isval = 0
	  Select @isval Status
  END
END
GO
/****** Object:  StoredProcedure [dbo].[PRC_Get_StudentData_IDwise]    Script Date: 1/21/2024 3:49:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[PRC_Get_StudentData_IDwise]
@ID int
As
Begin
	select * from student where id  = @ID
ENd
GO
/****** Object:  StoredProcedure [dbo].[show_image]    Script Date: 1/21/2024 3:49:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[show_image]
as
begin
select * from uplod_img
end
GO
/****** Object:  StoredProcedure [dbo].[show_student]    Script Date: 1/21/2024 3:49:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[show_student]
as
begin
select * from student
end
GO
/****** Object:  StoredProcedure [dbo].[STD_REG]    Script Date: 1/21/2024 3:49:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--EXEC STD_REG 'Dipu Manna','dipu@gmail.com','78945696',''
CREATE PROC [dbo].[STD_REG](@name varchar(200),@email varchar(200),@pass varchar(800),@isval varchar(800) output)
AS
BEGIN
  BEGIN TRY
    BEGIN TRANSACTION;
	INSERT INTO Student_login values(@name,@email,@pass,'')
	Set @isval = 1
	COMMIT TRANSACTION;
     
   END TRY
   BEGIN CATCH
   ROLLBACK TRAN
     Set @isval = 0
	END CATCH;
	select @isval Status
END;
GO
/****** Object:  StoredProcedure [dbo].[std_show]    Script Date: 1/21/2024 3:49:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[std_show]
as
begin

select * from Student_login
end
GO
/****** Object:  StoredProcedure [dbo].[STD_UPLOD]    Script Date: 1/21/2024 3:49:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[STD_UPLOD](@name varchar(200),@email varchar(200),@pass varchar(800),@ImagePath varchar(Max),@isval varchar(800) output)
AS
BEGIN
  BEGIN TRY
    BEGIN TRANSACTION;
	INSERT INTO Student_login values(@name,@email,@pass,@ImagePath)
	Set @isval = 1
	COMMIT TRANSACTION;
     
   END TRY
   BEGIN CATCH
   ROLLBACK TRAN
     Set @isval = 0
	END CATCH;
	select @isval Status
END;
GO
/****** Object:  StoredProcedure [dbo].[STUDENT_DATA_dele]    Script Date: 1/21/2024 3:49:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- STUDENT_DATA_dele '35',''
CREATE PROC [dbo].[STUDENT_DATA_dele]
(@ID int,@image_path varchar(800) output)
AS
BEGIN
    Select @image_path=ImagePath from Student_login where id=@ID
	Delete from Student_login where id=@ID
	
	select @image_path status
END;
GO
/****** Object:  StoredProcedure [dbo].[STUDENT_DATA_DELETE]    Script Date: 1/21/2024 3:49:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--SELECT * FROM STUDENT
--EXEC STUDENT_DATA_DELETE 3
CREATE PROC [dbo].[STUDENT_DATA_DELETE] 
@ID int
as 
begin
--declare @status varchar(max)
--set @status='Delete Successfully'
--Select @status status
Delete from student where id=@ID 
end
GO
/****** Object:  StoredProcedure [dbo].[update_s]    Script Date: 1/21/2024 3:49:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[update_s](@id varchar(50),@name varchar(100),@fname varchar(100),@mname varchar(100),@email varchar(100),@phone varchar(50),@gender varchar(50),@addr varchar(800),@state varchar(50),@code varchar(50),@blood varchar(50),@course varchar(50))
as 
begin
update student set name=@name,fname=@fname,mname=@mname,email=@email,phone=@phone,gender=@gender,addr=@addr,state=@state,code=@code,blood=@blood,courses=@course where id=@id;
end
GO
/****** Object:  StoredProcedure [dbo].[update_slog]    Script Date: 1/21/2024 3:49:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[update_slog](@id varchar(50),@name varchar(100),@email varchar(100),@pass varchar(100))
as 
begin
update Student_login set Name=@name,Email=@email, Pass=@pass where id=@id;
end
GO
USE [master]
GO
ALTER DATABASE [student] SET  READ_WRITE 
GO
