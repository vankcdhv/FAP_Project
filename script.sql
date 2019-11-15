USE [master]
GO
/****** Object:  Database [FAP_Project]    Script Date: 11/15/2019 10:02:37 AM ******/
CREATE DATABASE [FAP_Project]
GO
USE [FAP_Project]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 11/15/2019 10:02:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Type] [bit] NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Classes]    Script Date: 11/15/2019 10:02:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Classes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Startdate] [date] NULL,
	[Enddate] [date] NULL,
 CONSTRAINT [PK_Classes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClassSubjects]    Script Date: 11/15/2019 10:02:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClassSubjects](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ClassID] [int] NOT NULL,
	[SubjectID] [varchar](50) NOT NULL,
	[Room] [varchar](50) NOT NULL,
	[Day] [date] NOT NULL,
	[Slot] [int] NOT NULL,
 CONSTRAINT [PK_ClassSubject] PRIMARY KEY CLUSTERED 
(
	[Room] ASC,
	[Day] ASC,
	[Slot] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [Check_Unique] UNIQUE NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Marks]    Script Date: 11/15/2019 10:02:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Marks](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StudentID] [varchar](50) NOT NULL,
	[SubjectID] [varchar](50) NOT NULL,
	[Key] [varchar](50) NOT NULL,
	[Value] [float] NULL,
 CONSTRAINT [PK_Marks] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC,
	[SubjectID] ASC,
	[Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 11/15/2019 10:02:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[AccountID] [int] NOT NULL,
	[RollNumber] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Mail] [varchar](50) NOT NULL,
	[Gender] [bit] NOT NULL,
	[Dob] [date] NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[Image] [varchar](50) NOT NULL,
	[Major] [varchar](50) NOT NULL,
	[Year] [int] NOT NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[RollNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subjects]    Script Date: 11/15/2019 10:02:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subjects](
	[SubjectID] [varchar](50) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[SubjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teachers]    Script Date: 11/15/2019 10:02:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teachers](
	[AccountID] [int] NOT NULL,
	[RollNumber] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Mail] [varchar](50) NOT NULL,
	[Dob] [date] NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[Image] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Teachers] PRIMARY KEY CLUSTERED 
(
	[RollNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeTables]    Script Date: 11/15/2019 10:02:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeTables](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ClassSubjectID] [int] NOT NULL,
	[StudentID] [varchar](50) NOT NULL,
	[Attended] [bit] NOT NULL,
 CONSTRAINT [PK_TimeTable] PRIMARY KEY CLUSTERED 
(
	[ClassSubjectID] ASC,
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ClassSubjects]  WITH CHECK ADD  CONSTRAINT [FK_ClassSubjects_Classes] FOREIGN KEY([ClassID])
REFERENCES [dbo].[Classes] ([ID])
GO
ALTER TABLE [dbo].[ClassSubjects] CHECK CONSTRAINT [FK_ClassSubjects_Classes]
GO
ALTER TABLE [dbo].[ClassSubjects]  WITH CHECK ADD  CONSTRAINT [FK_ClassSubjects_Subjects] FOREIGN KEY([SubjectID])
REFERENCES [dbo].[Subjects] ([SubjectID])
GO
ALTER TABLE [dbo].[ClassSubjects] CHECK CONSTRAINT [FK_ClassSubjects_Subjects]
GO
ALTER TABLE [dbo].[Marks]  WITH CHECK ADD  CONSTRAINT [FK_Marks_Students] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Students] ([RollNumber])
GO
ALTER TABLE [dbo].[Marks] CHECK CONSTRAINT [FK_Marks_Students]
GO
ALTER TABLE [dbo].[Marks]  WITH CHECK ADD  CONSTRAINT [FK_Marks_Subjects] FOREIGN KEY([SubjectID])
REFERENCES [dbo].[Subjects] ([SubjectID])
GO
ALTER TABLE [dbo].[Marks] CHECK CONSTRAINT [FK_Marks_Subjects]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Student_Account] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Accounts] ([ID])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Student_Account]
GO
ALTER TABLE [dbo].[Teachers]  WITH CHECK ADD  CONSTRAINT [FK_Teachers_Account] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Accounts] ([ID])
GO
ALTER TABLE [dbo].[Teachers] CHECK CONSTRAINT [FK_Teachers_Account]
GO
ALTER TABLE [dbo].[TimeTables]  WITH CHECK ADD  CONSTRAINT [FK_TimeTables_ClassSubjects] FOREIGN KEY([ClassSubjectID])
REFERENCES [dbo].[ClassSubjects] ([ID])
GO
ALTER TABLE [dbo].[TimeTables] CHECK CONSTRAINT [FK_TimeTables_ClassSubjects]
GO
ALTER TABLE [dbo].[TimeTables]  WITH CHECK ADD  CONSTRAINT [FK_TimeTables_Students] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Students] ([RollNumber])
GO
ALTER TABLE [dbo].[TimeTables] CHECK CONSTRAINT [FK_TimeTables_Students]
GO
------------------------------------------------------------------------------------------------------------------
--Procedure check account to login
CREATE PROC Login
@username VARCHAR(50), @password VARCHAR(50)
AS
BEGIN
    SELECT * FROM dbo.Accounts WHERE Username = @username AND Password = @password
END

DROP PROC dbo.Login

EXEC dbo.Login @username = 'test', -- varchar(50)
               @password = '1'  -- varchar(50)
GO
------------------------------------------------------------------------------------------------------------------
--Procedure get subjectid of an student
CREATE PROC getSubjectIDByStudentID
@StudentID VARCHAR(50)
AS
BEGIN
	SELECT * FROM dbo.Subjects 
	WHERE SubjectID IN 
	(
	SELECT DISTINCT(t1.SubjectID) FROM 
	dbo.ClassSubjects t1
	JOIN dbo.TimeTables t2 ON t1.ID = t2.ClassSubjectID AND t2.StudentID = @StudentID
	)
END

EXEC dbo.getSubjectIDByStudentID @StudentID = 'HE130820' -- varchar(50)
