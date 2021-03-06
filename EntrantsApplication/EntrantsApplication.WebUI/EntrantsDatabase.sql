USE [master]
GO
/****** Object:  Database [EntrantsDatabase]    Script Date: 21.01.2018 23:13:37 ******/
CREATE DATABASE [EntrantsDatabase]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EntrantsDatabase', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\EntrantsDatabase.mdf' , SIZE = 5312KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'EntrantsDatabase_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\EntrantsDatabase_log.LDF' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [EntrantsDatabase] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EntrantsDatabase].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EntrantsDatabase] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EntrantsDatabase] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EntrantsDatabase] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EntrantsDatabase] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EntrantsDatabase] SET ARITHABORT OFF 
GO
ALTER DATABASE [EntrantsDatabase] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [EntrantsDatabase] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [EntrantsDatabase] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EntrantsDatabase] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EntrantsDatabase] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EntrantsDatabase] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EntrantsDatabase] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EntrantsDatabase] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EntrantsDatabase] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EntrantsDatabase] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EntrantsDatabase] SET  ENABLE_BROKER 
GO
ALTER DATABASE [EntrantsDatabase] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EntrantsDatabase] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EntrantsDatabase] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EntrantsDatabase] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EntrantsDatabase] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EntrantsDatabase] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EntrantsDatabase] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EntrantsDatabase] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [EntrantsDatabase] SET  MULTI_USER 
GO
ALTER DATABASE [EntrantsDatabase] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EntrantsDatabase] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EntrantsDatabase] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EntrantsDatabase] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [EntrantsDatabase]
GO
/****** Object:  Table [dbo].[Entrant]    Script Date: 21.01.2018 23:13:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Entrant](
	[EntrantId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[SecondName] [nvarchar](50) NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[DateOfTheBirth] [datetime2](7) NOT NULL,
	[EducationFee] [nvarchar](50) NOT NULL,
	[SpecialityId] [int] NOT NULL,
	[SpecialityName] [nvarchar](150) NOT NULL,
	[HomeAddress] [nvarchar](150) NOT NULL,
	[MobilePhone] [nvarchar](15) NOT NULL,
	[HasPrivileges] [bit] NOT NULL,
	[Privileges] [nvarchar](250) NULL,
	[NeedsDormitory] [bit] NOT NULL,
	[School] [nvarchar](100) NOT NULL,
	[YearOfFinishingTheSchool] [int] NOT NULL,
	[AverageSchoolScore] [float] NOT NULL,
	[ForeignLanguage] [nvarchar](30) NOT NULL,
	[HasMother] [bit] NOT NULL,
	[MotherName] [nvarchar](50) NULL,
	[MotherSecondName] [nvarchar](50) NULL,
	[MotherSurname] [nvarchar](50) NULL,
	[MotherDateofTheBirth] [datetime2](7) NULL,
	[MotherHomeAddress] [nvarchar](150) NULL,
	[MotherMobilePhone] [nvarchar](15) NULL,
	[MotherPlaceOfWork] [nvarchar](100) NULL,
	[HasFather] [bit] NOT NULL,
	[FatherName] [nvarchar](50) NULL,
	[FatherSecondName] [nvarchar](50) NULL,
	[FatherSurname] [nvarchar](50) NULL,
	[FatherDateofTheBirth] [datetime2](7) NULL,
	[FatherHomeAddress] [nvarchar](150) NULL,
	[FatherMobilePhone] [nvarchar](15) NULL,
	[FatherPlaceOfWork] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[EntrantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Faculties]    Script Date: 21.01.2018 23:13:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Faculties](
	[FacultyId] [int] NOT NULL,
	[FacultyName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[FacultyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Specialities]    Script Date: 21.01.2018 23:13:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Specialities](
	[SpecialityId] [int] IDENTITY(1,1) NOT NULL,
	[SpecialityName] [nvarchar](150) NOT NULL,
	[FacultyId] [int] NOT NULL,
	[IsFree] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SpecialityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Entrant] ON 

INSERT [dbo].[Entrant] ([EntrantId], [Name], [SecondName], [Surname], [DateOfTheBirth], [EducationFee], [SpecialityId], [SpecialityName], [HomeAddress], [MobilePhone], [HasPrivileges], [Privileges], [NeedsDormitory], [School], [YearOfFinishingTheSchool], [AverageSchoolScore], [ForeignLanguage], [HasMother], [MotherName], [MotherSecondName], [MotherSurname], [MotherDateofTheBirth], [MotherHomeAddress], [MotherMobilePhone], [MotherPlaceOfWork], [HasFather], [FatherName], [FatherSecondName], [FatherSurname], [FatherDateofTheBirth], [FatherHomeAddress], [FatherMobilePhone], [FatherPlaceOfWork]) VALUES (1, N'Fred', N'George', N'Adams', CAST(0x0700000000003B240B AS DateTime2), N'Paid', 13, N'Automated Data Processing Systems', N'Somewhere', N'+6545354321', 0, NULL, 0, N'CW School', 2016, 8.6, N'Arabic', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Entrant] ([EntrantId], [Name], [SecondName], [Surname], [DateOfTheBirth], [EducationFee], [SpecialityId], [SpecialityName], [HomeAddress], [MobilePhone], [HasPrivileges], [Privileges], [NeedsDormitory], [School], [YearOfFinishingTheSchool], [AverageSchoolScore], [ForeignLanguage], [HasMother], [MotherName], [MotherSecondName], [MotherSurname], [MotherDateofTheBirth], [MotherHomeAddress], [MotherMobilePhone], [MotherPlaceOfWork], [HasFather], [FatherName], [FatherSecondName], [FatherSurname], [FatherDateofTheBirth], [FatherHomeAddress], [FatherMobilePhone], [FatherPlaceOfWork]) VALUES (2, N'Patrick', N'Ryan', N'Johns', CAST(0x070000000000F0240B AS DateTime2), N'Free', 9, N'Military Systems', N'Somewhere', N'+3417443175', 1, N'An orphan', 1, N'NMC School', 2016, 6.9, N'Chinese', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Entrant] ([EntrantId], [Name], [SecondName], [Surname], [DateOfTheBirth], [EducationFee], [SpecialityId], [SpecialityName], [HomeAddress], [MobilePhone], [HasPrivileges], [Privileges], [NeedsDormitory], [School], [YearOfFinishingTheSchool], [AverageSchoolScore], [ForeignLanguage], [HasMother], [MotherName], [MotherSecondName], [MotherSurname], [MotherDateofTheBirth], [MotherHomeAddress], [MotherMobilePhone], [MotherPlaceOfWork], [HasFather], [FatherName], [FatherSecondName], [FatherSurname], [FatherDateofTheBirth], [FatherHomeAddress], [FatherMobilePhone], [FatherPlaceOfWork]) VALUES (6, N'Lucy', N'Marie', N'Smith', CAST(0x07000000000032260B AS DateTime2), N'Free', 4, N'Design and Manifacture of Software-Controlled Electronic Devices', N'Somewhere', N'+6545354321', 0, NULL, 0, N'MFD School', 2018, 7.8, N'Spanish', 1, N'Margaret', N'Cathrine', N'Smith', CAST(0x07000000000032040B AS DateTime2), N'Somewhere', N'+75359663156', N'Local Shop', 1, N'Edward', N'Harold', N'Smith', CAST(0x070000000000AAFF0A AS DateTime2), N'Somewhere', N'+3553622647', N'BF Inc')
INSERT [dbo].[Entrant] ([EntrantId], [Name], [SecondName], [Surname], [DateOfTheBirth], [EducationFee], [SpecialityId], [SpecialityName], [HomeAddress], [MobilePhone], [HasPrivileges], [Privileges], [NeedsDormitory], [School], [YearOfFinishingTheSchool], [AverageSchoolScore], [ForeignLanguage], [HasMother], [MotherName], [MotherSecondName], [MotherSurname], [MotherDateofTheBirth], [MotherHomeAddress], [MotherMobilePhone], [MotherPlaceOfWork], [HasFather], [FatherName], [FatherSecondName], [FatherSurname], [FatherDateofTheBirth], [FatherHomeAddress], [FatherMobilePhone], [FatherPlaceOfWork]) VALUES (7, N'Nicole', N'Julia', N'Morisson', CAST(0x0700000000004B220B AS DateTime2), N'Paid', 14, N'Artificial Intelligence', N'Somewhere', N'+375295456264', 0, NULL, 0, N'ESF School', 2016, 8.3, N'English', 1, N'Dina', N'Caroline', N'Morisson', CAST(0x070000000000CF080B AS DateTime2), N'Somewhere', N'+7265782246', N'Passat Inc', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Entrant] ([EntrantId], [Name], [SecondName], [Surname], [DateOfTheBirth], [EducationFee], [SpecialityId], [SpecialityName], [HomeAddress], [MobilePhone], [HasPrivileges], [Privileges], [NeedsDormitory], [School], [YearOfFinishingTheSchool], [AverageSchoolScore], [ForeignLanguage], [HasMother], [MotherName], [MotherSecondName], [MotherSurname], [MotherDateofTheBirth], [MotherHomeAddress], [MotherMobilePhone], [MotherPlaceOfWork], [HasFather], [FatherName], [FatherSecondName], [FatherSurname], [FatherDateofTheBirth], [FatherHomeAddress], [FatherMobilePhone], [FatherPlaceOfWork]) VALUES (8, N'Frederick', N'Leroy', N'Rodgers', CAST(0x070000000000D3220B AS DateTime2), N'Free', 5, N'Electronic Instrumentation and Control Systems of Physical Installations', N'Somewhere', N'+477744345', 1, N'The winner of youth olympics in swimming', 1, N'CDS School', 2017, 6.3, N'German', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Entrant] ([EntrantId], [Name], [SecondName], [Surname], [DateOfTheBirth], [EducationFee], [SpecialityId], [SpecialityName], [HomeAddress], [MobilePhone], [HasPrivileges], [Privileges], [NeedsDormitory], [School], [YearOfFinishingTheSchool], [AverageSchoolScore], [ForeignLanguage], [HasMother], [MotherName], [MotherSecondName], [MotherSurname], [MotherDateofTheBirth], [MotherHomeAddress], [MotherMobilePhone], [MotherPlaceOfWork], [HasFather], [FatherName], [FatherSecondName], [FatherSurname], [FatherDateofTheBirth], [FatherHomeAddress], [FatherMobilePhone], [FatherPlaceOfWork]) VALUES (9, N'George', N'Mark', N'Morgan', CAST(0x07000000000013260B AS DateTime2), N'Free', 7, N'Informatics', N'Somewhere', N'+7423685347', 1, N'The winner of informatics olympiad', 1, N'JF Kennedy School', 2018, 9.8, N'French', 1, N'Taira', N'Jennifer', N'Morgan', CAST(0x07000000000056090B AS DateTime2), N'Somewhere', N'+7578973432', N'CD shop', 1, N'Paul', N'Vince', N'Morgan', CAST(0x0700000000003A070B AS DateTime2), N'Somewhere', N'+5423252376', N'MS Inc')
INSERT [dbo].[Entrant] ([EntrantId], [Name], [SecondName], [Surname], [DateOfTheBirth], [EducationFee], [SpecialityId], [SpecialityName], [HomeAddress], [MobilePhone], [HasPrivileges], [Privileges], [NeedsDormitory], [School], [YearOfFinishingTheSchool], [AverageSchoolScore], [ForeignLanguage], [HasMother], [MotherName], [MotherSecondName], [MotherSurname], [MotherDateofTheBirth], [MotherHomeAddress], [MotherMobilePhone], [MotherPlaceOfWork], [HasFather], [FatherName], [FatherSecondName], [FatherSurname], [FatherDateofTheBirth], [FatherHomeAddress], [FatherMobilePhone], [FatherPlaceOfWork]) VALUES (10, N'Natalie', N'Kiera', N'Jackson', CAST(0x070000000000D6250B AS DateTime2), N'Paid', 17, N'Information Technology Software', N'Somewhere', N'+8232354652', 0, NULL, 1, N'FD School', 2018, 7.6, N'English', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, N'Andros', N'Michael', N'Jackson', CAST(0x070000000000C4F50A AS DateTime2), N'Somewhere', N'+254677357', N'CB Inc')
INSERT [dbo].[Entrant] ([EntrantId], [Name], [SecondName], [Surname], [DateOfTheBirth], [EducationFee], [SpecialityId], [SpecialityName], [HomeAddress], [MobilePhone], [HasPrivileges], [Privileges], [NeedsDormitory], [School], [YearOfFinishingTheSchool], [AverageSchoolScore], [ForeignLanguage], [HasMother], [MotherName], [MotherSecondName], [MotherSurname], [MotherDateofTheBirth], [MotherHomeAddress], [MotherMobilePhone], [MotherPlaceOfWork], [HasFather], [FatherName], [FatherSecondName], [FatherSurname], [FatherDateofTheBirth], [FatherHomeAddress], [FatherMobilePhone], [FatherPlaceOfWork]) VALUES (11, N'Helen', N'Judy', N'Richards', CAST(0x070000000000BA210B AS DateTime2), N'Free', 11, N'Economics in Electronic Business', N'Somewhere', N'+1465867867', 1, N'The winner of BSUIR competition in foreign language', 1, N'GC School', 2015, 9.5, N'French', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Entrant] OFF
INSERT [dbo].[Faculties] ([FacultyId], [FacultyName]) VALUES (1, N'Faculty of Computer-Aided Design')
INSERT [dbo].[Faculties] ([FacultyId], [FacultyName]) VALUES (2, N'Faculty of Information Technologies and Control')
INSERT [dbo].[Faculties] ([FacultyId], [FacultyName]) VALUES (3, N'Faculty of Radioengineering and Electronics')
INSERT [dbo].[Faculties] ([FacultyId], [FacultyName]) VALUES (4, N'Faculty of Infocommunications')
INSERT [dbo].[Faculties] ([FacultyId], [FacultyName]) VALUES (5, N'Faculty of Computer Systems and Networks')
INSERT [dbo].[Faculties] ([FacultyId], [FacultyName]) VALUES (6, N'Military Faculty')
INSERT [dbo].[Faculties] ([FacultyId], [FacultyName]) VALUES (7, N'Faculty of Engineering and Economics')
SET IDENTITY_INSERT [dbo].[Specialities] ON 

INSERT [dbo].[Specialities] ([SpecialityId], [SpecialityName], [FacultyId], [IsFree]) VALUES (1, N'Automated Data Processing Systems', 2, 1)
INSERT [dbo].[Specialities] ([SpecialityId], [SpecialityName], [FacultyId], [IsFree]) VALUES (2, N'Artificial Intelligence', 2, 1)
INSERT [dbo].[Specialities] ([SpecialityId], [SpecialityName], [FacultyId], [IsFree]) VALUES (3, N'Computer Engineering', 1, 1)
INSERT [dbo].[Specialities] ([SpecialityId], [SpecialityName], [FacultyId], [IsFree]) VALUES (4, N'Design and Manifacture of Software-Controlled Electronic Devices', 1, 1)
INSERT [dbo].[Specialities] ([SpecialityId], [SpecialityName], [FacultyId], [IsFree]) VALUES (5, N'Electronic Instrumentation and Control Systems of Physical Installations', 3, 1)
INSERT [dbo].[Specialities] ([SpecialityId], [SpecialityName], [FacultyId], [IsFree]) VALUES (6, N'ADS', 4, 1)
INSERT [dbo].[Specialities] ([SpecialityId], [SpecialityName], [FacultyId], [IsFree]) VALUES (7, N'Informatics', 5, 1)
INSERT [dbo].[Specialities] ([SpecialityId], [SpecialityName], [FacultyId], [IsFree]) VALUES (8, N'Information Technology Software', 5, 1)
INSERT [dbo].[Specialities] ([SpecialityId], [SpecialityName], [FacultyId], [IsFree]) VALUES (9, N'Military Systems', 6, 1)
INSERT [dbo].[Specialities] ([SpecialityId], [SpecialityName], [FacultyId], [IsFree]) VALUES (10, N'Digital Marketing', 7, 1)
INSERT [dbo].[Specialities] ([SpecialityId], [SpecialityName], [FacultyId], [IsFree]) VALUES (11, N'Economics in Electronic Business', 7, 1)
INSERT [dbo].[Specialities] ([SpecialityId], [SpecialityName], [FacultyId], [IsFree]) VALUES (12, N'Gaming Industry', 2, 0)
INSERT [dbo].[Specialities] ([SpecialityId], [SpecialityName], [FacultyId], [IsFree]) VALUES (13, N'Automated Data Processing Systems', 2, 0)
INSERT [dbo].[Specialities] ([SpecialityId], [SpecialityName], [FacultyId], [IsFree]) VALUES (14, N'Artificial Intelligence', 2, 0)
INSERT [dbo].[Specialities] ([SpecialityId], [SpecialityName], [FacultyId], [IsFree]) VALUES (16, N'Informatics', 5, 0)
INSERT [dbo].[Specialities] ([SpecialityId], [SpecialityName], [FacultyId], [IsFree]) VALUES (17, N'Information Technology Software', 5, 0)
SET IDENTITY_INSERT [dbo].[Specialities] OFF
USE [master]
GO
ALTER DATABASE [EntrantsDatabase] SET  READ_WRITE 
GO
