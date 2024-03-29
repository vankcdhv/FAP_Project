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
GO
------------------------------------------------------------------------------------------------------------------
--Procedure get all by subjectid and studentid
CREATE PROC GetAllBySubjecIDtAndStudentID
@StudentID VARCHAR(50), @SubjectID VARCHAR(50)
AS
BEGIN
SELECT * FROM 
	dbo.ClassSubjects t1
	JOIN dbo.TimeTables t2 ON t1.ID = t2.ClassSubjectID AND t2.StudentID = @StudentID AND t1.SubjectID=@SubjectID
	ORDER BY t1.Day ASC
END

EXEC dbo.GetAllBySubjecIDtAndStudentID @StudentID = 'HE130952',
                                       @SubjectID = 'PRJ301' 
------------------------------------------------------------------------------------------------------------------
ALTER TABLE dbo.ClassSubjects ADD TeacherID VARCHAR(50) NULL

select * from Accounts
drop database FAP_Project


INSERT [dbo].[Accounts] ([Username], [Password], [Type]) VALUES ('anh1', 'anh1' , 0)
INSERT [dbo].[Accounts] ([Username], [Password], [Type]) VALUES ('anh2', 'anh2' , 0)
INSERT [dbo].[Accounts] ([Username], [Password], [Type]) VALUES ('anh3', 'anh3' , 0)
INSERT [dbo].[Accounts] ([Username], [Password], [Type]) VALUES ('anh4', 'anh4' , 0)
INSERT [dbo].[Accounts] ([Username], [Password], [Type]) VALUES ('anh5', 'anh5' , 0)

INSERT [dbo].[Accounts] ([Username], [Password], [Type]) VALUES ('dung1', 'dung1' , 0)
INSERT [dbo].[Accounts] ([Username], [Password], [Type]) VALUES ('dung2', 'dung2' , 0)
INSERT [dbo].[Accounts] ([Username], [Password], [Type]) VALUES ('dung3', 'dung3' , 0)
INSERT [dbo].[Accounts] ([Username], [Password], [Type]) VALUES ('dung4', 'dung4' , 0)
INSERT [dbo].[Accounts] ([Username], [Password], [Type]) VALUES ('dung5', 'dung5' , 0)

INSERT [dbo].[Accounts] ([Username], [Password], [Type]) VALUES ('hoang1', 'hoang1' , 0)
INSERT [dbo].[Accounts] ([Username], [Password], [Type]) VALUES ('hoang2', 'hoang2' , 0)
INSERT [dbo].[Accounts] ([Username], [Password], [Type]) VALUES ('hoang3', 'hoang3' , 0)
INSERT [dbo].[Accounts] ([Username], [Password], [Type]) VALUES ('hoang4', 'hoang4' , 0)
INSERT [dbo].[Accounts] ([Username], [Password], [Type]) VALUES ('hoang5', 'hoang5' , 0)

INSERT [dbo].[Accounts] ([Username], [Password], [Type]) VALUES ('van1', 'van1' , 0)
INSERT [dbo].[Accounts] ([Username], [Password], [Type]) VALUES ('van2', 'van2' , 0)
INSERT [dbo].[Accounts] ([Username], [Password], [Type]) VALUES ('van3', 'van3' , 0)
INSERT [dbo].[Accounts] ([Username], [Password], [Type]) VALUES ('van4', 'van4' , 0)
INSERT [dbo].[Accounts] ([Username], [Password], [Type]) VALUES ('van5', 'van5' , 0)

INSERT [dbo].[Accounts] ([Username], [Password], [Type]) VALUES ('chilp1', 'chilp1' , 0)
INSERT [dbo].[Accounts] ([Username], [Password], [Type]) VALUES ('chilp2', 'chilp2' , 0)
INSERT [dbo].[Accounts] ([Username], [Password], [Type]) VALUES ('chilp3', 'chilp3' , 0)
INSERT [dbo].[Accounts] ([Username], [Password], [Type]) VALUES ('chilp4', 'chilp4' , 0)
INSERT [dbo].[Accounts] ([Username], [Password], [Type]) VALUES ('chilp5', 'chilp5' , 0)

insert into Students(AccountID,RollNumber,Name,Mail,gender,DOB,Address,Image,Major,Year) values (1,'HE13873',N'Lê Đức Anh',
'anhldhe130873@fpt.edu.vn',1,'03/07/1999','Bac Ninh','','Software Engineering',3)
insert into Students(AccountID,RollNumber,Name,Mail,gender,DOB,Address,Image,Major,Year) values (2,'HE13083',N'Nguyễn Đức Việt',
'taochiu2313@fpt.edu.vn',1,'05/07/1999','Bac Ninh','','Software Engineering',3)
insert into Students(AccountID,RollNumber,Name,Mail,gender,DOB,Address,Image,Major,Year) values (3,'HE10873',N'Trần Đức Nam',
'helloCC@fpt.edu.vn',1,'02/04/1999','Bac Ninh','','Software Engineering',3)
insert into Students(AccountID,RollNumber,Name,Mail,gender,DOB,Address,Image,Major,Year) values (4,'HE30873',N'Lung Thị Linh',
'56asdd130873@fpt.edu.vn',1,'05/07/1999','Bac Ninh','','Software Engineering',3)
insert into Students(AccountID,RollNumber,Name,Mail,gender,DOB,Address,Image,Major,Year) values (5,'HE130893',N'Trần Đức Ôm',
'hsdf33@fpt.edu.vn',1,'05/07/1999','Bac Ninh','','Software Engineering',3)
insert into Students(AccountID,RollNumber,Name,Mail,gender,DOB,Address,Image,Major,Year) values (6,'HE130232',N'Hà Việt Dũng',
'532gy62@fpt.edu.vn',1,'07/28/1999','Ha Nam','','Software Engineering',3)
insert into Students(AccountID,RollNumber,Name,Mail,gender,DOB,Address,Image,Major,Year) values (7,'HE53243',N'Vũ Văn Dũng',
'5f4@fpt.edu.vn',1,'07/28/1999','Ha Nam','','Software Engineering',3)
insert into Students(AccountID,RollNumber,Name,Mail,gender,DOB,Address,Image,Major,Year) values (8,'HE65324',N'Lê Văn Luyện',
'43hg3f@fpt.edu.vn',1,'07/28/1999','Ha Nam','','Software Engineering',3)
insert into Students(AccountID,RollNumber,Name,Mail,gender,DOB,Address,Image,Major,Year) values (9,'HE7543',N'Khá Bảnh',
'g54gg@fpt.edu.vn',1,'07/28/1999','Ha Nam','','Software Engineering',3)
insert into Students(AccountID,RollNumber,Name,Mail,gender,DOB,Address,Image,Major,Year) values (10,'HE7643',N'Dũng Trọc',
'54h3@fpt.edu.vn',1,'07/28/1999','Ha Nam','','Software Engineering',3)
insert into Students(AccountID,RollNumber,Name,Mail,gender,DOB,Address,Image,Major,Year) values (11,'HE08754',N'Huấn Rose',
'344g5@fpt.edu.vn',1,'06/20/1999','Ha Noi','','Software Engineering',3)
insert into Students(AccountID,RollNumber,Name,Mail,gender,DOB,Address,Image,Major,Year) values (12,'HE1241',N'Lão Hạc',
'g654h@fpt.edu.vn',1,'06/20/1999','Ha Noi','','Software Engineering',3)
insert into Students(AccountID,RollNumber,Name,Mail,gender,DOB,Address,Image,Major,Year) values (13,'HE54264',N'Bá Kiến',
'54g34g@fpt.edu.vn',1,'06/20/1999','Ha Noi','','Software Engineering',3)
insert into Students(AccountID,RollNumber,Name,Mail,gender,DOB,Address,Image,Major,Year) values (14,'HE63433',N'A Phủ',
'f43gf@fpt.edu.vn',1,'06/20/1999','Ha Noi','','Software Engineering',3)
insert into Students(AccountID,RollNumber,Name,Mail,gender,DOB,Address,Image,Major,Year) values (15,'HE85352',N'Chí Phèo',
'54jhg@fpt.edu.vn',1,'06/20/1999','Ha Noi','','Software Engineering',3)
insert into Students(AccountID,RollNumber,Name,Mail,gender,DOB,Address,Image,Major,Year) values (16,'HE83520',N'Thị Nở',
'5g34g@fpt.edu.vn',1,'05/03/1999','Ha Noi','','Software Engineering',3)
insert into Students(AccountID,RollNumber,Name,Mail,gender,DOB,Address,Image,Major,Year) values (17,'HE154',N'Cậu Vàng',
'mtyhr56@fpt.edu.vn',1,'05/03/1999','Ha Noi','','Software Engineering',3)
insert into Students(AccountID,RollNumber,Name,Mail,gender,DOB,Address,Image,Major,Year) values (18,'HE63424',N'Chị Dậu',
'6j5hg@fpt.edu.vn',1,'05/03/1999','Ha Noi','','Software Engineering',3)
insert into Students(AccountID,RollNumber,Name,Mail,gender,DOB,Address,Image,Major,Year) values (19,'HE76423',N'Tí Gì Đó',
'56hg@fpt.edu.vn',1,'05/03/1999','Ha Noi','','Software Engineering',3)
insert into Students(AccountID,RollNumber,Name,Mail,gender,DOB,Address,Image,Major,Year) values (20,'HE14354',N'Lê Thiện Văn',
'g54hgf@fpt.edu.vn',1,'05/03/1999','Ha Noi','','Software Engineering',3)


insert into Teachers (AccountID,RollNumber,Name,Mail,Dob,Address,Image) values (21,'ChiLP','Le Phuong Chi','chilp@fpt.edu.vn','06/25/1990',
'Ha Noi','')
insert into Teachers (AccountID,RollNumber,Name,Mail,Dob,Address,Image) values (22,'BanTQ','Tran Quy Ban','bantq@fpt.edu.vn','06/25/1990',
'Ha Noi','')
insert into Teachers (AccountID,RollNumber,Name,Mail,Dob,Address,Image) values (23,'TuanVM','Vu Manh Tuan','tuanvm@fpt.edu.vn','06/25/1990',
'Ha Noi','')
insert into Teachers (AccountID,RollNumber,Name,Mail,Dob,Address,Image) values (24,'SonNQ','Nguyen Quy Son','sonnq@fpt.edu.vn','06/25/1990',
'Ha Noi','')
insert into Teachers (AccountID,RollNumber,Name,Mail,Dob,Address,Image) values (25,'SonNT','Ngo Tung Son','sonnt@fpt.edu.vn','06/25/1990',
'Ha Noi','')

insert into Subjects(SubjectID,Name) values ('SWT301','Software Testing')  
insert into Subjects(SubjectID,Name) values ('PRN292','.NET and C#')  
insert into Subjects(SubjectID,Name) values ('JPD131','Elementary Japanese 2.1')  
insert into Subjects(SubjectID,Name) values ('SWR302','	Software Requirement')
insert into Subjects(SubjectID,Name) values ('LAB231','	Web LAB')

insert into Classes(Name , Startdate , Enddate) values ('SE1311' ,  CAST('2019-11-19' AS DATE),   NULL )
insert into Classes(Name , Startdate , Enddate) values ('SE1327' ,  CAST('2019-10-15' AS DATE),   NULL )
insert into Classes(Name , Startdate , Enddate) values ('SE1349' ,  CAST('2019-06-09' AS DATE),   NULL )

INSERT dbo.ClassSubjects (ClassID,SubjectID,Room,Day,Slot,TeacherID) VALUES (1, 'PRN292','A202L',CAST('2019-11-20' AS DATE),  5,'ChiLP')
INSERT dbo.ClassSubjects (ClassID,SubjectID,Room,Day,Slot,TeacherID) VALUES (1, 'PRN292','A202L',CAST('2019-11-22' AS DATE),  5,'ChiLP')
INSERT dbo.ClassSubjects (ClassID,SubjectID,Room,Day,Slot,TeacherID) VALUES (1, 'PRN292','A202L',CAST('2019-11-24' AS DATE),  5,'ChiLP')
INSERT dbo.ClassSubjects (ClassID,SubjectID,Room,Day,Slot,TeacherID) VALUES (1, 'PRN292','A202L',CAST('2019-11-26' AS DATE),  5,'ChiLP')
INSERT dbo.ClassSubjects (ClassID,SubjectID,Room,Day,Slot,TeacherID) VALUES (1, 'PRN292','A202L',CAST('2019-11-28' AS DATE),  5,'ChiLP')

INSERT dbo.ClassSubjects (ClassID,SubjectID,Room,Day,Slot,TeacherID) VALUES (2, 'PRN292','A404L',CAST('2019-11-20' AS DATE),  3,'ChiLP')
INSERT dbo.ClassSubjects (ClassID,SubjectID,Room,Day,Slot,TeacherID) VALUES (2, 'PRN292','A404L',CAST('2019-11-22' AS DATE),  3,'ChiLP')
INSERT dbo.ClassSubjects (ClassID,SubjectID,Room,Day,Slot,TeacherID) VALUES (2, 'PRN292','A404L',CAST('2019-11-24' AS DATE),  3,'ChiLP')
INSERT dbo.ClassSubjects (ClassID,SubjectID,Room,Day,Slot,TeacherID) VALUES (2, 'PRN292','A404L',CAST('2019-11-26' AS DATE),  3,'ChiLP')
INSERT dbo.ClassSubjects (ClassID,SubjectID,Room,Day,Slot,TeacherID) VALUES (2, 'PRN292','A404L',CAST('2019-11-28' AS DATE),  3,'ChiLP')

INSERT dbo.ClassSubjects (ClassID,SubjectID,Room,Day,Slot,TeacherID) VALUES (1, 'SWT301','A303L',CAST('2019-11-20' AS DATE),  2,'BanTQ')
INSERT dbo.ClassSubjects (ClassID,SubjectID,Room,Day,Slot,TeacherID) VALUES (1, 'SWT301','A303L',CAST('2019-11-22' AS DATE),  2,'BanTQ')
INSERT dbo.ClassSubjects (ClassID,SubjectID,Room,Day,Slot,TeacherID) VALUES (1, 'SWT301','A303L',CAST('2019-11-24' AS DATE),  2,'BanTQ')
INSERT dbo.ClassSubjects (ClassID,SubjectID,Room,Day,Slot,TeacherID) VALUES (1, 'SWT301','A303L',CAST('2019-11-26' AS DATE),  2,'BanTQ')
INSERT dbo.ClassSubjects (ClassID,SubjectID,Room,Day,Slot,TeacherID) VALUES (1, 'SWT301','A303L',CAST('2019-11-28' AS DATE),  2,'BanTQ')

INSERT dbo.ClassSubjects (ClassID,SubjectID,Room,Day,Slot,TeacherID) VALUES (3, 'SWT301','A302L',CAST('2019-11-20' AS DATE),  4,'BanTQ')
INSERT dbo.ClassSubjects (ClassID,SubjectID,Room,Day,Slot,TeacherID) VALUES (3, 'SWT301','A302L',CAST('2019-11-22' AS DATE),  4,'BanTQ')
INSERT dbo.ClassSubjects (ClassID,SubjectID,Room,Day,Slot,TeacherID) VALUES (3, 'SWT301','A302L',CAST('2019-11-24' AS DATE),  4,'BanTQ')
INSERT dbo.ClassSubjects (ClassID,SubjectID,Room,Day,Slot,TeacherID) VALUES (3, 'SWT301','A302L',CAST('2019-11-26' AS DATE),  4,'BanTQ')
INSERT dbo.ClassSubjects (ClassID,SubjectID,Room,Day,Slot,TeacherID) VALUES (3, 'SWT301','A302L',CAST('2019-11-28' AS DATE),  4,'BanTQ')

INSERT dbo.ClassSubjects (ClassID,SubjectID,Room,Day,Slot,TeacherID) VALUES (2, 'JPD131','A201L',CAST('2019-11-20' AS DATE),  7,'TuanVM')
INSERT dbo.ClassSubjects (ClassID,SubjectID,Room,Day,Slot,TeacherID) VALUES (2, 'JPD131','A201L',CAST('2019-11-22' AS DATE),  7,'TuanVM')
INSERT dbo.ClassSubjects (ClassID,SubjectID,Room,Day,Slot,TeacherID) VALUES (2, 'JPD131','A201L',CAST('2019-11-24' AS DATE),  7,'TuanVM')
INSERT dbo.ClassSubjects (ClassID,SubjectID,Room,Day,Slot,TeacherID) VALUES (2, 'JPD131','A201L',CAST('2019-11-26' AS DATE),  7,'TuanVM')
INSERT dbo.ClassSubjects (ClassID,SubjectID,Room,Day,Slot,TeacherID) VALUES (2, 'JPD131','A201L',CAST('2019-11-28' AS DATE),  7,'TuanVM')

INSERT dbo.ClassSubjects (ClassID,SubjectID,Room,Day,Slot,TeacherID) VALUES (3, 'SWR302','A504L',CAST('2019-11-20' AS DATE),  6,'SonNQ')
INSERT dbo.ClassSubjects (ClassID,SubjectID,Room,Day,Slot,TeacherID) VALUES (3, 'SWR302','A504L',CAST('2019-11-22' AS DATE),  6,'SonNQ')
INSERT dbo.ClassSubjects (ClassID,SubjectID,Room,Day,Slot,TeacherID) VALUES (3, 'SWR302','A504L',CAST('2019-11-24' AS DATE),  6,'SonNQ')
INSERT dbo.ClassSubjects (ClassID,SubjectID,Room,Day,Slot,TeacherID) VALUES (3, 'SWR302','A504L',CAST('2019-11-26' AS DATE),  6,'SonNQ')
INSERT dbo.ClassSubjects (ClassID,SubjectID,Room,Day,Slot,TeacherID) VALUES (3, 'SWR302','A504L',CAST('2019-11-28' AS DATE),  6,'SonNQ')

Insert into TimeTables(ClassSubjectID,StudentID,Attended)VALUES (1,'HE13873', 1)
Insert into TimeTables(ClassSubjectID,StudentID,Attended)VALUES (1,'HE13083', 1)
Insert into TimeTables(ClassSubjectID,StudentID,Attended)VALUES (1,'HE10873', 1)
Insert into TimeTables(ClassSubjectID,StudentID,Attended)VALUES (1,'HE30873', 1)
Insert into TimeTables(ClassSubjectID,StudentID,Attended)VALUES (1,'HE130893', 1)

Insert into TimeTables(ClassSubjectID,StudentID,Attended)VALUES (2,'HE130232', 1)
Insert into TimeTables(ClassSubjectID,StudentID,Attended)VALUES (2,'HE53243', 1)
Insert into TimeTables(ClassSubjectID,StudentID,Attended)VALUES (2,'HE65324', 1)
Insert into TimeTables(ClassSubjectID,StudentID,Attended)VALUES (2,'HE7543', 1)
Insert into TimeTables(ClassSubjectID,StudentID,Attended)VALUES (2,'HE7643', 1)

Insert into TimeTables(ClassSubjectID,StudentID,Attended)VALUES (3,'HE08754', 1)
Insert into TimeTables(ClassSubjectID,StudentID,Attended)VALUES (3,'HE1241', 1)
Insert into TimeTables(ClassSubjectID,StudentID,Attended)VALUES (3,'HE54264', 1)
Insert into TimeTables(ClassSubjectID,StudentID,Attended)VALUES (3,'HE63433', 1)
Insert into TimeTables(ClassSubjectID,StudentID,Attended)VALUES (3,'HE85352', 1)

Insert into TimeTables(ClassSubjectID,StudentID,Attended)VALUES (4,'HE83520', 1)
Insert into TimeTables(ClassSubjectID,StudentID,Attended)VALUES (4,'HE154', 1)
Insert into TimeTables(ClassSubjectID,StudentID,Attended)VALUES (4,'HE63424', 1)
Insert into TimeTables(ClassSubjectID,StudentID,Attended)VALUES (4,'HE76423', 1)
Insert into TimeTables(ClassSubjectID,StudentID,Attended)VALUES (4,'HE14354', 1)

Insert into TimeTables(ClassSubjectID,StudentID,Attended)VALUES (5,'HE13873', 1)
Insert into TimeTables(ClassSubjectID,StudentID,Attended)VALUES (5,'HE13083', 1)
Insert into TimeTables(ClassSubjectID,StudentID,Attended)VALUES (5,'HE10873', 1)
Insert into TimeTables(ClassSubjectID,StudentID,Attended)VALUES (5,'HE30873', 1)
Insert into TimeTables(ClassSubjectID,StudentID,Attended)VALUES (5,'HE130893', 1)

Insert into TimeTables(ClassSubjectID,StudentID,Attended)VALUES (6,'HE130232', 1)
Insert into TimeTables(ClassSubjectID,StudentID,Attended)VALUES (6,'HE53243', 1)
Insert into TimeTables(ClassSubjectID,StudentID,Attended)VALUES (6,'HE65324', 1)
Insert into TimeTables(ClassSubjectID,StudentID,Attended)VALUES (6,'HE7543', 1)
Insert into TimeTables(ClassSubjectID,StudentID,Attended)VALUES (6,'HE7643', 1)

Insert into TimeTables(ClassSubjectID,StudentID,Attended)VALUES (11,'HE08754', 1)
Insert into TimeTables(ClassSubjectID,StudentID,Attended)VALUES (11,'HE1241', 1)
Insert into TimeTables(ClassSubjectID,StudentID,Attended)VALUES (11,'HE54264', 1)
Insert into TimeTables(ClassSubjectID,StudentID,Attended)VALUES (11,'HE63433', 1)
Insert into TimeTables(ClassSubjectID,StudentID,Attended)VALUES (11,'HE85352', 1)


Insert into TimeTables(ClassSubjectID,StudentID,Attended)VALUES (16,'HE08754', 1)
Insert into TimeTables(ClassSubjectID,StudentID,Attended)VALUES (16,'HE1241', 1)
Insert into TimeTables(ClassSubjectID,StudentID,Attended)VALUES (16,'HE54264', 1)
Insert into TimeTables(ClassSubjectID,StudentID,Attended)VALUES (16,'HE63433', 1)
Insert into TimeTables(ClassSubjectID,StudentID,Attended)VALUES (16,'HE85352', 1)

Insert into TimeTables(ClassSubjectID,StudentID,Attended)VALUES (21,'HE83520', 1)
Insert into TimeTables(ClassSubjectID,StudentID,Attended)VALUES (21,'HE154', 1)
Insert into TimeTables(ClassSubjectID,StudentID,Attended)VALUES (21,'HE63424', 1)
Insert into TimeTables(ClassSubjectID,StudentID,Attended)VALUES (21,'HE76423', 1)
Insert into TimeTables(ClassSubjectID,StudentID,Attended)VALUES (21,'HE14354', 1)

Insert into TimeTables(ClassSubjectID,StudentID,Attended)VALUES (26,'HE13873', 1)
Insert into TimeTables(ClassSubjectID,StudentID,Attended)VALUES (26,'HE13083', 1)
Insert into TimeTables(ClassSubjectID,StudentID,Attended)VALUES (26,'HE10873', 1)
Insert into TimeTables(ClassSubjectID,StudentID,Attended)VALUES (26,'HE30873', 1)
Insert into TimeTables(ClassSubjectID,StudentID,Attended)VALUES (26,'HE130893', 1)



insert into Marks (SubjectID,StudentID,[Key],Value) values ('PRN292','HE13873','LAB1',10)
insert into Marks (SubjectID,StudentID,[Key],Value) values ('PRN292','HE13873','LAB2',10)
insert into Marks (SubjectID,StudentID,[Key],Value) values ('PRN292','HE13873','LAB3',10)
insert into Marks (SubjectID,StudentID,[Key],Value) values ('PRN292','HE13873','Presentation',10)
insert into Marks (SubjectID,StudentID,[Key],Value) values ('PRN292','HE13873','Progress Test 1',6)
insert into Marks (SubjectID,StudentID,[Key],Value) values ('PRN292','HE13873','Progress Test 2',6)
insert into Marks (SubjectID,StudentID,[Key],Value) values ('PRN292','HE13873','Practice Exam',5)
insert into Marks (SubjectID,StudentID,[Key],Value) values ('PRN292','HE13873','Final Exam',4)

insert into Marks (SubjectID,StudentID,[Key],Value) values ('SWT301','HE13873','LAB1',10)
insert into Marks (SubjectID,StudentID,[Key],Value) values ('SWT301','HE13873','LAB2',10)
insert into Marks (SubjectID,StudentID,[Key],Value) values ('SWT301','HE13873','LAB3',10)
insert into Marks (SubjectID,StudentID,[Key],Value) values ('SWT301','HE13873','Presentation',10)
insert into Marks (SubjectID,StudentID,[Key],Value) values ('SWT301','HE13873','Progress Test 1',6)
insert into Marks (SubjectID,StudentID,[Key],Value) values ('SWT301','HE13873','Progress Test 2',6)
insert into Marks (SubjectID,StudentID,[Key],Value) values ('SWT301','HE13873','Practice Exam',5)
insert into Marks (SubjectID,StudentID,[Key],Value) values ('SWT301','HE13873','Final Exam',4)

insert into Marks (SubjectID,StudentID,[Key],Value) values ('SWR302','HE13873','LAB1',10)
insert into Marks (SubjectID,StudentID,[Key],Value) values ('SWR302','HE13873','LAB2',10)
insert into Marks (SubjectID,StudentID,[Key],Value) values ('SWR302','HE13873','LAB3',10)
insert into Marks (SubjectID,StudentID,[Key],Value) values ('SWR302','HE13873','Presentation',10)
insert into Marks (SubjectID,StudentID,[Key],Value) values ('SWR302','HE13873','Progress Test 1',6)
insert into Marks (SubjectID,StudentID,[Key],Value) values ('SWR302','HE13873','Progress Test 2',6)
insert into Marks (SubjectID,StudentID,[Key],Value) values ('SWR302','HE13873','Practice Exam',5)
insert into Marks (SubjectID,StudentID,[Key],Value) values ('SWR302','HE13873','Final Exam',4)

insert into Marks (SubjectID,StudentID,[Key],Value) values ('JPD131','HE13873','LAB1',10)
insert into Marks (SubjectID,StudentID,[Key],Value) values ('JPD131','HE13873','LAB2',10)
insert into Marks (SubjectID,StudentID,[Key],Value) values ('JPD131','HE13873','LAB3',10)
insert into Marks (SubjectID,StudentID,[Key],Value) values ('JPD131','HE13873','Presentation',10)
insert into Marks (SubjectID,StudentID,[Key],Value) values ('JPD131','HE13873','Progress Test 1',6)
insert into Marks (SubjectID,StudentID,[Key],Value) values ('JPD131','HE13873','Progress Test 2',6)
insert into Marks (SubjectID,StudentID,[Key],Value) values ('JPD131','HE13873','Practice Exam',5)
insert into Marks (SubjectID,StudentID,[Key],Value) values ('JPD131','HE13873','Final Exam',4)

insert into Marks (SubjectID,StudentID,[Key],Value) values ('LAB231','HE13873','LAB1',10)
insert into Marks (SubjectID,StudentID,[Key],Value) values ('LAB231','HE13873','LAB2',10)
insert into Marks (SubjectID,StudentID,[Key],Value) values ('LAB231','HE13873','LAB3',10)
insert into Marks (SubjectID,StudentID,[Key],Value) values ('LAB231','HE13873','Presentation',10)
insert into Marks (SubjectID,StudentID,[Key],Value) values ('LAB231','HE13873','Progress Test 1',6)
insert into Marks (SubjectID,StudentID,[Key],Value) values ('LAB231','HE13873','Progress Test 2',6)
insert into Marks (SubjectID,StudentID,[Key],Value) values ('LAB231','HE13873','Practice Exam',5)
insert into Marks (SubjectID,StudentID,[Key],Value) values ('LAB231','HE13873','Final Exam',4)

select * from Students