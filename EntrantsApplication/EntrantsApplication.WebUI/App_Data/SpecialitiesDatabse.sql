USE [EntrantsDatabase]
GO
/****** Object:  Table [dbo].[EducationFees]    Script Date: 30.01.2018 20:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EducationFees](
	[EducationFeeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[ThePayotPercentage] [int] NOT NULL,
 CONSTRAINT [PK_EducationFees_EducationFeeId] PRIMARY KEY CLUSTERED 
(
	[EducationFeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EducationForms]    Script Date: 30.01.2018 20:55:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EducationForms](
	[EducationFormId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_EducationForms_EducationFormId] PRIMARY KEY CLUSTERED 
(
	[EducationFormId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EducationPeriods]    Script Date: 30.01.2018 20:55:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EducationPeriods](
	[EducationPeriodId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[TheNumberOfYears] [int] NOT NULL,
 CONSTRAINT [PK_EducationPeriods_EducationPeriodId] PRIMARY KEY CLUSTERED 
(
	[EducationPeriodId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EntranceTests]    Script Date: 30.01.2018 20:55:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EntranceTests](
	[EntranceTestsId] [int] IDENTITY(1,1) NOT NULL,
	[TheFirstSubjectName] [nvarchar](150) NOT NULL,
	[TheFirstSubjectMinScore] [int] NOT NULL,
	[TheSecondSubjectName] [nvarchar](150) NOT NULL,
	[TheSecondSubjectMinScore] [int] NOT NULL,
	[TheLanguagetMinScore] [int] NOT NULL,
 CONSTRAINT [PK_EntranceTests_EntranceTestsId] PRIMARY KEY CLUSTERED 
(
	[EntranceTestsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EntrantsApplications]    Script Date: 30.01.2018 20:55:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EntrantsApplications](
	[ApplicationId] [int] IDENTITY(1,1) NOT NULL,
	[Speciality1Id] [int] NOT NULL,
	[Speciality2Id] [int] NULL,
	[Speciality3Id] [int] NULL,
	[Speciality4Id] [int] NULL,
	[Speciality5Id] [int] NULL,
	[Speciality6Id] [int] NULL,
	[Speciality7Id] [int] NULL,
	[Speciality8Id] [int] NULL,
	[Speciality9Id] [int] NULL,
	[Speciality10Id] [int] NULL,
	[Speciality11Id] [int] NULL,
	[Speciality12Id] [int] NULL,
	[Speciality13Id] [int] NULL,
	[Speciality14Id] [int] NULL,
	[Speciality15Id] [int] NULL,
	[Speciality16Id] [int] NULL,
	[Speciality17Id] [int] NULL,
	[Speciality18Id] [int] NULL,
	[Speciality19Id] [int] NULL,
	[Speciality20Id] [int] NULL,
	[Speciality21Id] [int] NULL,
	[Speciality22Id] [int] NULL,
	[Speciality23Id] [int] NULL,
	[Speciality24Id] [int] NULL,
	[Speciality25Id] [int] NULL,
	[Speciality26Id] [int] NULL,
	[Speciality27Id] [int] NULL,
	[Speciality28Id] [int] NULL,
	[Speciality29Id] [int] NULL,
	[Speciality30Id] [int] NULL,
 CONSTRAINT [PK_EntrantsApplications] PRIMARY KEY CLUSTERED 
(
	[ApplicationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Speciality]    Script Date: 30.01.2018 20:55:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Speciality](
	[UniversityId] [int] NOT NULL,
	[EducationFormId] [int] NOT NULL,
	[SpecialityNameId] [int] NOT NULL,
	[EducationPeriodId] [int] NOT NULL,
	[EducationFeeId] [int] NOT NULL,
	[TheTotalNumberOfPlaces] [int] NOT NULL,
	[TheDuration] [date] NOT NULL,
	[TheNumberOfPlacesForOrphans] [int] NOT NULL,
	[TheNumberOfPlacesForHonourGuard] [int] NOT NULL,
	[TheSpecialityColor] [nvarchar](50) NOT NULL,
	[EntranceTestsId] [int] NOT NULL,
	[SpecialityId] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Speciality] PRIMARY KEY CLUSTERED 
(
	[SpecialityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SpecialityGroups]    Script Date: 30.01.2018 20:55:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SpecialityGroups](
	[SpecialityGroupId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_SpecialityGroups_SpecialityGroupId] PRIMARY KEY CLUSTERED 
(
	[SpecialityGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SpecialityNames]    Script Date: 30.01.2018 20:55:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SpecialityNames](
	[SpecialityNameId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[SpecialityGroupId] [int] NOT NULL,
	[SpecialityCode] [varchar](20) NOT NULL,
 CONSTRAINT [PK_SpecialityNames_SpecialityNameId] PRIMARY KEY CLUSTERED 
(
	[SpecialityNameId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Universities]    Script Date: 30.01.2018 20:55:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Universities](
	[UniversityId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_Universities_UniversityId] PRIMARY KEY CLUSTERED 
(
	[UniversityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[EducationFees] ON 

INSERT [dbo].[EducationFees] ([EducationFeeId], [Name], [ThePayotPercentage]) VALUES (1, N'Free', 0)
INSERT [dbo].[EducationFees] ([EducationFeeId], [Name], [ThePayotPercentage]) VALUES (2, N'Paid', 100)
SET IDENTITY_INSERT [dbo].[EducationFees] OFF
SET IDENTITY_INSERT [dbo].[EducationForms] ON 

INSERT [dbo].[EducationForms] ([EducationFormId], [Name]) VALUES (1, N'Day Full-time')
INSERT [dbo].[EducationForms] ([EducationFormId], [Name]) VALUES (2, N'Evening Full-time')
INSERT [dbo].[EducationForms] ([EducationFormId], [Name]) VALUES (3, N'Extramural')
INSERT [dbo].[EducationForms] ([EducationFormId], [Name]) VALUES (4, N'Remote')
SET IDENTITY_INSERT [dbo].[EducationForms] OFF
SET IDENTITY_INSERT [dbo].[EducationPeriods] ON 

INSERT [dbo].[EducationPeriods] ([EducationPeriodId], [Name], [TheNumberOfYears]) VALUES (1, N'Full ', 4)
INSERT [dbo].[EducationPeriods] ([EducationPeriodId], [Name], [TheNumberOfYears]) VALUES (2, N'Abridged', 3)
SET IDENTITY_INSERT [dbo].[EducationPeriods] OFF
SET IDENTITY_INSERT [dbo].[EntranceTests] ON 

INSERT [dbo].[EntranceTests] ([EntranceTestsId], [TheFirstSubjectName], [TheFirstSubjectMinScore], [TheSecondSubjectName], [TheSecondSubjectMinScore], [TheLanguagetMinScore]) VALUES (1, N'Math', 15, N'Physics', 10, 10)
INSERT [dbo].[EntranceTests] ([EntranceTestsId], [TheFirstSubjectName], [TheFirstSubjectMinScore], [TheSecondSubjectName], [TheSecondSubjectMinScore], [TheLanguagetMinScore]) VALUES (2, N'Physics', 15, N'Math', 10, 10)
INSERT [dbo].[EntranceTests] ([EntranceTestsId], [TheFirstSubjectName], [TheFirstSubjectMinScore], [TheSecondSubjectName], [TheSecondSubjectMinScore], [TheLanguagetMinScore]) VALUES (3, N'Math', 15, N'Foreign Language', 10, 10)
INSERT [dbo].[EntranceTests] ([EntranceTestsId], [TheFirstSubjectName], [TheFirstSubjectMinScore], [TheSecondSubjectName], [TheSecondSubjectMinScore], [TheLanguagetMinScore]) VALUES (4, N'Biology', 15, N'Chemistry', 10, 10)
INSERT [dbo].[EntranceTests] ([EntranceTestsId], [TheFirstSubjectName], [TheFirstSubjectMinScore], [TheSecondSubjectName], [TheSecondSubjectMinScore], [TheLanguagetMinScore]) VALUES (5, N'Biology', 15, N'Geography', 10, 10)
INSERT [dbo].[EntranceTests] ([EntranceTestsId], [TheFirstSubjectName], [TheFirstSubjectMinScore], [TheSecondSubjectName], [TheSecondSubjectMinScore], [TheLanguagetMinScore]) VALUES (6, N'World History', 15, N'History of Belarus', 10, 10)
INSERT [dbo].[EntranceTests] ([EntranceTestsId], [TheFirstSubjectName], [TheFirstSubjectMinScore], [TheSecondSubjectName], [TheSecondSubjectMinScore], [TheLanguagetMinScore]) VALUES (7, N'Biology', 15, N'History of Belarus', 10, 10)
INSERT [dbo].[EntranceTests] ([EntranceTestsId], [TheFirstSubjectName], [TheFirstSubjectMinScore], [TheSecondSubjectName], [TheSecondSubjectMinScore], [TheLanguagetMinScore]) VALUES (8, N'Physical Culture', 30, N'Biology', 10, 10)
INSERT [dbo].[EntranceTests] ([EntranceTestsId], [TheFirstSubjectName], [TheFirstSubjectMinScore], [TheSecondSubjectName], [TheSecondSubjectMinScore], [TheLanguagetMinScore]) VALUES (9, N'Belarusian Literature', 20, N'History of Belarus', 10, 10)
INSERT [dbo].[EntranceTests] ([EntranceTestsId], [TheFirstSubjectName], [TheFirstSubjectMinScore], [TheSecondSubjectName], [TheSecondSubjectMinScore], [TheLanguagetMinScore]) VALUES (10, N'Russian Literature', 20, N'History of Belarus', 10, 10)
INSERT [dbo].[EntranceTests] ([EntranceTestsId], [TheFirstSubjectName], [TheFirstSubjectMinScore], [TheSecondSubjectName], [TheSecondSubjectMinScore], [TheLanguagetMinScore]) VALUES (11, N'Pedagogy', 20, N'Psychology', 10, 10)
INSERT [dbo].[EntranceTests] ([EntranceTestsId], [TheFirstSubjectName], [TheFirstSubjectMinScore], [TheSecondSubjectName], [TheSecondSubjectMinScore], [TheLanguagetMinScore]) VALUES (12, N'Information Technology Basics', 20, N'Computers Organization', 10, 10)
INSERT [dbo].[EntranceTests] ([EntranceTestsId], [TheFirstSubjectName], [TheFirstSubjectMinScore], [TheSecondSubjectName], [TheSecondSubjectMinScore], [TheLanguagetMinScore]) VALUES (13, N'Materials Science', 20, N'Processing of Materials', 10, 10)
INSERT [dbo].[EntranceTests] ([EntranceTestsId], [TheFirstSubjectName], [TheFirstSubjectMinScore], [TheSecondSubjectName], [TheSecondSubjectMinScore], [TheLanguagetMinScore]) VALUES (14, N'Art', 20, N'History of Belarus', 10, 10)
INSERT [dbo].[EntranceTests] ([EntranceTestsId], [TheFirstSubjectName], [TheFirstSubjectMinScore], [TheSecondSubjectName], [TheSecondSubjectMinScore], [TheLanguagetMinScore]) VALUES (15, N'Vocal', 20, N'Harmony', 10, 10)
INSERT [dbo].[EntranceTests] ([EntranceTestsId], [TheFirstSubjectName], [TheFirstSubjectMinScore], [TheSecondSubjectName], [TheSecondSubjectMinScore], [TheLanguagetMinScore]) VALUES (16, N'Drawing', 20, N'Composition', 10, 10)
INSERT [dbo].[EntranceTests] ([EntranceTestsId], [TheFirstSubjectName], [TheFirstSubjectMinScore], [TheSecondSubjectName], [TheSecondSubjectMinScore], [TheLanguagetMinScore]) VALUES (17, N'History of Belarus', 15, N'Social Science', 10, 10)
INSERT [dbo].[EntranceTests] ([EntranceTestsId], [TheFirstSubjectName], [TheFirstSubjectMinScore], [TheSecondSubjectName], [TheSecondSubjectMinScore], [TheLanguagetMinScore]) VALUES (19, N'Method of Language Teaching', 20, N'Method of Teaching Literary Reading', 10, 10)
INSERT [dbo].[EntranceTests] ([EntranceTestsId], [TheFirstSubjectName], [TheFirstSubjectMinScore], [TheSecondSubjectName], [TheSecondSubjectMinScore], [TheLanguagetMinScore]) VALUES (20, N'Foreign language', 15, N'History of Belarus', 10, 10)
INSERT [dbo].[EntranceTests] ([EntranceTestsId], [TheFirstSubjectName], [TheFirstSubjectMinScore], [TheSecondSubjectName], [TheSecondSubjectMinScore], [TheLanguagetMinScore]) VALUES (21, N'Foreign language', 15, N'Social Science', 10, 10)
INSERT [dbo].[EntranceTests] ([EntranceTestsId], [TheFirstSubjectName], [TheFirstSubjectMinScore], [TheSecondSubjectName], [TheSecondSubjectMinScore], [TheLanguagetMinScore]) VALUES (22, N'Mathematics', 15, N'Social Science', 10, 10)
INSERT [dbo].[EntranceTests] ([EntranceTestsId], [TheFirstSubjectName], [TheFirstSubjectMinScore], [TheSecondSubjectName], [TheSecondSubjectMinScore], [TheLanguagetMinScore]) VALUES (23, N'Marketing', 15, N'Economics', 10, 10)
INSERT [dbo].[EntranceTests] ([EntranceTestsId], [TheFirstSubjectName], [TheFirstSubjectMinScore], [TheSecondSubjectName], [TheSecondSubjectMinScore], [TheLanguagetMinScore]) VALUES (24, N'Geography', 15, N'Mathematics', 10, 10)
INSERT [dbo].[EntranceTests] ([EntranceTestsId], [TheFirstSubjectName], [TheFirstSubjectMinScore], [TheSecondSubjectName], [TheSecondSubjectMinScore], [TheLanguagetMinScore]) VALUES (25, N'Chemistry', 15, N'Mathematics', 10, 10)
INSERT [dbo].[EntranceTests] ([EntranceTestsId], [TheFirstSubjectName], [TheFirstSubjectMinScore], [TheSecondSubjectName], [TheSecondSubjectMinScore], [TheLanguagetMinScore]) VALUES (26, N'Machines for agriculture', 20, N'Diagnostics of Argiculture Machines', 10, 10)
INSERT [dbo].[EntranceTests] ([EntranceTestsId], [TheFirstSubjectName], [TheFirstSubjectMinScore], [TheSecondSubjectName], [TheSecondSubjectMinScore], [TheLanguagetMinScore]) VALUES (27, N'Mathematics', 15, N'Information Technology Basics', 10, 10)
INSERT [dbo].[EntranceTests] ([EntranceTestsId], [TheFirstSubjectName], [TheFirstSubjectMinScore], [TheSecondSubjectName], [TheSecondSubjectMinScore], [TheLanguagetMinScore]) VALUES (28, N'Art', 15, N'Mathematics', 10, 10)
SET IDENTITY_INSERT [dbo].[EntranceTests] OFF
SET IDENTITY_INSERT [dbo].[EntrantsApplications] ON 

INSERT [dbo].[EntrantsApplications] ([ApplicationId], [Speciality1Id], [Speciality2Id], [Speciality3Id], [Speciality4Id], [Speciality5Id], [Speciality6Id], [Speciality7Id], [Speciality8Id], [Speciality9Id], [Speciality10Id], [Speciality11Id], [Speciality12Id], [Speciality13Id], [Speciality14Id], [Speciality15Id], [Speciality16Id], [Speciality17Id], [Speciality18Id], [Speciality19Id], [Speciality20Id], [Speciality21Id], [Speciality22Id], [Speciality23Id], [Speciality24Id], [Speciality25Id], [Speciality26Id], [Speciality27Id], [Speciality28Id], [Speciality29Id], [Speciality30Id]) VALUES (15, 39, 66, 59, 73, 59, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[EntrantsApplications] ([ApplicationId], [Speciality1Id], [Speciality2Id], [Speciality3Id], [Speciality4Id], [Speciality5Id], [Speciality6Id], [Speciality7Id], [Speciality8Id], [Speciality9Id], [Speciality10Id], [Speciality11Id], [Speciality12Id], [Speciality13Id], [Speciality14Id], [Speciality15Id], [Speciality16Id], [Speciality17Id], [Speciality18Id], [Speciality19Id], [Speciality20Id], [Speciality21Id], [Speciality22Id], [Speciality23Id], [Speciality24Id], [Speciality25Id], [Speciality26Id], [Speciality27Id], [Speciality28Id], [Speciality29Id], [Speciality30Id]) VALUES (16, 183, 176, 165, 164, 180, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[EntrantsApplications] ([ApplicationId], [Speciality1Id], [Speciality2Id], [Speciality3Id], [Speciality4Id], [Speciality5Id], [Speciality6Id], [Speciality7Id], [Speciality8Id], [Speciality9Id], [Speciality10Id], [Speciality11Id], [Speciality12Id], [Speciality13Id], [Speciality14Id], [Speciality15Id], [Speciality16Id], [Speciality17Id], [Speciality18Id], [Speciality19Id], [Speciality20Id], [Speciality21Id], [Speciality22Id], [Speciality23Id], [Speciality24Id], [Speciality25Id], [Speciality26Id], [Speciality27Id], [Speciality28Id], [Speciality29Id], [Speciality30Id]) VALUES (19, 71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[EntrantsApplications] OFF
SET IDENTITY_INSERT [dbo].[Speciality] ON 

INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (7, 1, 18, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'1', 1, 1)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (7, 1, 19, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'2', 2, 2)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (7, 1, 15, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'3', 4, 3)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (7, 1, 16, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'4', 5, 5)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (7, 1, 3, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'5', 6, 6)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (7, 1, 1, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'7', 7, 7)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (7, 1, 2, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'6', 7, 8)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (7, 1, 29, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'8', 7, 10)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (7, 1, 25, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'78', 7, 11)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (7, 1, 28, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'7887', 7, 12)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (7, 1, 26, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'1234', 7, 13)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (7, 1, 27, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'333', 7, 15)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (7, 1, 24, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'45678', 8, 16)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (7, 1, 5, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'21', 9, 17)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (7, 1, 9, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'4567', 10, 18)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (7, 3, 3, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'54', 6, 19)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (7, 3, 1, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'789', 7, 20)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (7, 3, 2, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'5467', 7, 21)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (7, 3, 29, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'6789', 7, 22)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (7, 3, 25, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'909', 7, 23)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (7, 3, 26, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'7870', 7, 24)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (7, 3, 27, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'221', 7, 25)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (7, 3, 28, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'7654', 7, 26)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (7, 3, 5, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'567', 9, 27)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (7, 3, 9, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'481', 10, 28)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (7, 3, 1, 2, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'76890', 11, 29)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (7, 3, 2, 2, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'999', 11, 30)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (3, 1, 31, 2, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'568371', 12, 31)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (2, 1, 31, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'868', 2, 32)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (2, 3, 31, 2, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'8899', 13, 33)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (16, 1, 37, 1, 1, 30, CAST(0xA93E0B00 AS Date), 9, 3, N'111', 14, 34)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (16, 1, 38, 1, 1, 30, CAST(0xA93E0B00 AS Date), 9, 3, N'42', 14, 35)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (16, 1, 39, 1, 1, 15, CAST(0xA93E0B00 AS Date), 5, 2, N'86754', 14, 36)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (16, 1, 40, 1, 1, 25, CAST(0xA93E0B00 AS Date), 8, 3, N'5431', 14, 37)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (16, 1, 41, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'7878', 14, 38)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (5, 1, 41, 1, 1, 10, CAST(0xA93E0B00 AS Date), 3, 1, N'821', 14, 39)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (17, 1, 42, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'78785', 14, 40)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (17, 1, 43, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'712', 14, 41)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (17, 1, 44, 1, 1, 30, CAST(0xA93E0B00 AS Date), 9, 3, N'6572', 14, 42)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (17, 1, 45, 1, 1, 35, CAST(0xA93E0B00 AS Date), 12, 4, N'872', 14, 43)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (17, 1, 46, 1, 1, 15, CAST(0xA93E0B00 AS Date), 5, 2, N'098', 14, 44)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (17, 1, 47, 1, 1, 30, CAST(0xA93E0B00 AS Date), 9, 3, N'80', 14, 45)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (17, 1, 48, 1, 1, 24, CAST(0xA93E0B00 AS Date), 8, 3, N'321', 14, 46)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (17, 1, 49, 1, 1, 50, CAST(0xA93E0B00 AS Date), 15, 5, N'213', 14, 47)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (5, 1, 49, 1, 1, 30, CAST(0xA93E0B00 AS Date), 9, 3, N'2131', 14, 48)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (16, 1, 51, 1, 1, 30, CAST(0xA93E0B00 AS Date), 9, 3, N'1121', 14, 49)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (16, 3, 51, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'785434', 14, 50)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (16, 1, 52, 1, 1, 30, CAST(0xA93E0B00 AS Date), 9, 3, N'2123', 14, 51)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (16, 3, 52, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'41', 14, 52)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (17, 1, 52, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'7892', 14, 53)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (16, 1, 53, 1, 1, 30, CAST(0xA93E0B00 AS Date), 9, 3, N'7718273', 14, 54)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (16, 1, 53, 1, 2, 40, CAST(0xA93E0B00 AS Date), 12, 4, N'71t2', 14, 55)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (16, 1, 54, 1, 1, 30, CAST(0xA93E0B00 AS Date), 9, 3, N'213e2', 14, 56)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (5, 1, 55, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'2913', 14, 57)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (5, 1, 55, 2, 1, 30, CAST(0xA93E0B00 AS Date), 9, 3, N'32167', 14, 59)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (5, 3, 55, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'7821y', 14, 60)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (17, 1, 56, 1, 1, 30, CAST(0xA93E0B00 AS Date), 9, 3, N'uiw212', 14, 61)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (5, 1, 56, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'yuqe9uq2', 14, 62)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (5, 1, 57, 1, 1, 30, CAST(0xA93E0B00 AS Date), 9, 3, N'e19u12', 14, 64)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (5, 3, 57, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'87213yw2', 14, 65)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (5, 1, 58, 1, 1, 25, CAST(0xA93E0B00 AS Date), 8, 3, N'89123494', 14, 66)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (5, 3, 58, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'ey882q', 14, 67)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (5, 1, 58, 2, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'y8w2', 15, 68)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (16, 1, 59, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'hfue8743', 14, 69)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (16, 1, 59, 1, 2, 40, CAST(0xA93E0B00 AS Date), 12, 4, N'u91', 14, 70)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (1, 1, 59, 1, 1, 30, CAST(0xA93E0B00 AS Date), 9, 3, N'0uo1', 14, 71)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (1, 1, 59, 1, 2, 50, CAST(0xA93E0B00 AS Date), 15, 5, N'fje2', 14, 72)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (1, 1, 59, 2, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'fhywe3', 16, 73)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (1, 1, 61, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'hu3', 17, 74)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (1, 1, 62, 1, 1, 25, CAST(0xA93E0B00 AS Date), 8, 3, N'fhu32h', 17, 75)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (1, 1, 62, 1, 2, 30, CAST(0xA93E0B00 AS Date), 9, 3, N'yu21', 17, 76)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (1, 3, 62, 1, 1, 10, CAST(0xA93E0B00 AS Date), 3, 1, N'uyuy', 17, 77)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (1, 1, 63, 1, 1, 30, CAST(0xA93E0B00 AS Date), 9, 3, N'uy123', 6, 78)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (1, 3, 63, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'eytq21', 6, 79)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (16, 1, 65, 1, 1, 15, CAST(0xA93E0B00 AS Date), 5, 2, N'ygu213y', 14, 80)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (17, 1, 65, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'yu12g', 14, 81)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (1, 1, 64, 1, 1, 30, CAST(0xA93E0B00 AS Date), 9, 3, N'huy1', 17, 82)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (5, 1, 65, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'ty196', 14, 83)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (5, 1, 64, 1, 1, 30, CAST(0xA93E0B00 AS Date), 9, 3, N'yu823y', 17, 84)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (5, 3, 64, 1, 1, 25, CAST(0xA93E0B00 AS Date), 8, 3, N'uyg1248', 17, 85)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (1, 1, 67, 1, 1, 50, CAST(0xA93E0B00 AS Date), 15, 5, N'dwgqu8', 9, 86)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (1, 1, 68, 1, 1, 50, CAST(0xA93E0B00 AS Date), 15, 5, N'tyf1y2f', 10, 87)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (1, 3, 68, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'jh23hg', 10, 88)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (1, 3, 68, 2, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'y78ytgfu', 19, 89)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (1, 1, 69, 1, 1, 30, CAST(0xA93E0B00 AS Date), 9, 3, N'ke48g45', 20, 90)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (11, 1, 69, 1, 1, 50, CAST(0xA93E0B00 AS Date), 15, 5, N'3287h23', 20, 91)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (11, 1, 69, 1, 2, 50, CAST(0xA93E0B00 AS Date), 15, 5, N'ug2y3r', 20, 92)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (13, 1, 69, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'gyu26', 20, 93)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (7, 1, 71, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'g7328', 7, 94)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (7, 3, 71, 1, 1, 10, CAST(0xA93E0B00 AS Date), 3, 1, N'g1813g', 7, 95)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (1, 1, 74, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'g88g8h', 14, 96)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (1, 1, 74, 1, 2, 30, CAST(0xA93E0B00 AS Date), 9, 3, N'hi7823h1', 14, 97)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (1, 1, 71, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'gu2', 7, 98)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (1, 1, 72, 1, 1, 30, CAST(0xA93E0B00 AS Date), 9, 3, N'hu8473', 17, 99)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (1, 3, 72, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'yug23eu', 17, 100)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (1, 1, 76, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'yue32', 6, 101)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (1, 3, 76, 1, 1, 30, CAST(0xA93E0B00 AS Date), 9, 3, N'hu32i', 6, 102)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (1, 1, 70, 1, 1, 10, CAST(0xA93E0B00 AS Date), 3, 1, N'riu43i', 21, 103)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (1, 1, 70, 1, 2, 60, CAST(0xA93E0B00 AS Date), 18, 6, N'uwh3', 21, 104)
GO
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (1, 1, 73, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'fjgefe4', 22, 105)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (5, 1, 75, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'2r2', 17, 106)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (5, 3, 75, 1, 1, 30, CAST(0xA93E0B00 AS Date), 9, 3, N'rui4', 17, 107)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (10, 1, 71, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'hu22iu', 17, 108)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (10, 1, 72, 1, 1, 30, CAST(0xA93E0B00 AS Date), 9, 3, N'32hy', 17, 109)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (10, 1, 73, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'freg43', 17, 110)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (1, 1, 77, 1, 1, 30, CAST(0xA93E0B00 AS Date), 9, 3, N'uij34', 21, 111)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (1, 1, 78, 1, 1, 30, CAST(0xA93E0B00 AS Date), 9, 3, N'hihu1', 22, 112)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (1, 1, 78, 1, 2, 50, CAST(0xA93E0B00 AS Date), 15, 5, N'hdweh21e', 22, 113)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (10, 1, 78, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'djwei', 22, 114)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (12, 1, 78, 1, 2, 30, CAST(0xA93E0B00 AS Date), 9, 3, N'fer34rj', 21, 115)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (12, 1, 77, 1, 2, 30, CAST(0xA93E0B00 AS Date), 9, 3, N'weuifj', 21, 116)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (1, 1, 79, 1, 1, 25, CAST(0xA93E0B00 AS Date), 8, 3, N'hwed21', 22, 117)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (1, 1, 80, 1, 1, 30, CAST(0xA93E0B00 AS Date), 9, 3, N'duwj23', 3, 118)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (1, 1, 81, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'ydhuw', 3, 119)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (10, 1, 82, 1, 1, 30, CAST(0xA93E0B00 AS Date), 9, 3, N'dwie', 3, 120)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (10, 1, 82, 1, 2, 50, CAST(0xA93E0B00 AS Date), 15, 5, N'wed', 3, 121)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (10, 3, 82, 1, 1, 10, CAST(0xA93E0B00 AS Date), 3, 1, N'w2e', 3, 122)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (10, 3, 82, 2, 1, 10, CAST(0xA93E0B00 AS Date), 3, 1, N'dwedwe', 3, 123)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (10, 1, 83, 1, 1, 30, CAST(0xA93E0B00 AS Date), 9, 3, N'32ie23', 3, 124)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (10, 1, 83, 1, 2, 100, CAST(0xA93E0B00 AS Date), 30, 10, N'dw32qw', 3, 125)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (10, 1, 85, 1, 1, 40, CAST(0xA93E0B00 AS Date), 12, 4, N'fw3rw', 3, 126)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (8, 1, 87, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'feuyge2he', 3, 127)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (8, 3, 87, 2, 1, 10, CAST(0xA93E0B00 AS Date), 3, 1, N'ytwr43f', 23, 128)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (1, 1, 86, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'gdyw21', 3, 129)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (1, 1, 88, 1, 1, 40, CAST(0xA93E0B00 AS Date), 12, 4, N'dw3ed', 3, 130)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (1, 1, 87, 1, 1, 30, CAST(0xA93E0B00 AS Date), 9, 3, N'defef763', 3, 131)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (10, 1, 86, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'yu2', 3, 132)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (10, 1, 87, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'gyu1', 3, 133)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (10, 1, 88, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'hyufre23', 3, 134)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (2, 1, 86, 1, 1, 10, CAST(0xA93E0B00 AS Date), 3, 1, N'hufe23', 3, 135)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (2, 1, 87, 1, 1, 30, CAST(0xA93E0B00 AS Date), 9, 3, N'ifer43', 3, 136)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (12, 1, 87, 1, 2, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'hywf32', 3, 137)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (12, 1, 88, 1, 2, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'hwei4w', 3, 138)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (1, 1, 89, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'daaw', 4, 139)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (1, 1, 90, 1, 1, 30, CAST(0xA93E0B00 AS Date), 9, 3, N'uji13jiu', 24, 140)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (1, 3, 90, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'jh22hi', 24, 141)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (1, 1, 91, 1, 1, 30, CAST(0xA93E0B00 AS Date), 9, 3, N'dwejh3', 1, 142)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (1, 1, 92, 1, 1, 30, CAST(0xA93E0B00 AS Date), 9, 3, N'hj24jb3', 1, 143)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (1, 1, 93, 1, 1, 30, CAST(0xA93E0B00 AS Date), 9, 3, N'hbyui1', 1, 144)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (1, 1, 93, 1, 2, 40, CAST(0xA93E0B00 AS Date), 12, 4, N'uihu124', 1, 145)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (1, 1, 94, 1, 1, 30, CAST(0xA93E0B00 AS Date), 9, 3, N'ouij23', 1, 146)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (10, 1, 94, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'gy12', 1, 147)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (1, 1, 95, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'rhy23', 2, 148)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (1, 1, 96, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'gyu23', 25, 149)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (1, 1, 97, 1, 1, 30, CAST(0xA93E0B00 AS Date), 9, 3, N'hy23u4', 4, 150)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (1, 1, 99, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'hue23i', 4, 151)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (2, 1, 100, 1, 1, 30, CAST(0xA93E0B00 AS Date), 9, 3, N'hii123', 2, 152)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (2, 1, 101, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'gyu31ug4', 1, 153)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (2, 1, 101, 1, 2, 30, CAST(0xA93E0B00 AS Date), 9, 3, N'jteio43ji', 1, 154)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (2, 1, 102, 1, 1, 30, CAST(0xA93E0B00 AS Date), 9, 3, N'ujrij3i4', 1, 155)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (3, 1, 103, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'buhyr34', 2, 156)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (8, 1, 104, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'yhu32r', 2, 157)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (8, 3, 104, 1, 1, 30, CAST(0xA93E0B00 AS Date), 9, 3, N'uihui121', 2, 158)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (8, 3, 104, 2, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'uhferi43', 26, 159)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (2, 1, 105, 1, 1, 30, CAST(0xA93E0B00 AS Date), 9, 3, N'hir3iurh', 2, 160)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (2, 1, 106, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'hifw32', 2, 161)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (2, 1, 107, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'hu1', 2, 162)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (3, 1, 108, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'urihi43hr', 2, 163)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (3, 1, 109, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'hru43ihr3i', 2, 164)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (3, 1, 110, 1, 1, 70, CAST(0xA93E0B00 AS Date), 21, 7, N'huyeuy23', 1, 165)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (3, 1, 110, 1, 2, 100, CAST(0xA93E0B00 AS Date), 30, 10, N'uri43', 1, 166)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (8, 1, 110, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'huyu123', 1, 167)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (3, 4, 110, 1, 2, 30, CAST(0xA93E0B00 AS Date), 9, 3, N'j3i4ri3', 1, 168)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (3, 3, 110, 2, 1, 30, CAST(0xA93E0B00 AS Date), 9, 3, N'j321i4', 27, 169)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (3, 2, 110, 2, 1, 30, CAST(0xA93E0B00 AS Date), 9, 3, N'jr23o2', 27, 170)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (2, 1, 110, 1, 1, 30, CAST(0xA93E0B00 AS Date), 9, 3, N'uehuh1ui', 1, 171)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (2, 3, 110, 1, 1, 40, CAST(0xA93E0B00 AS Date), 12, 4, N'jri34rio3', 1, 172)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (3, 1, 111, 1, 1, 50, CAST(0xA93E0B00 AS Date), 15, 5, N'hei23ue', 1, 173)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (3, 1, 111, 1, 2, 100, CAST(0xA93E0B00 AS Date), 30, 10, N'kior3o2', 1, 174)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (3, 4, 111, 1, 2, 30, CAST(0xA93E0B00 AS Date), 9, 3, N'fijwow2', 1, 175)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (3, 1, 112, 1, 1, 50, CAST(0xA93E0B00 AS Date), 15, 5, N'w1hu1', 1, 176)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (3, 1, 112, 1, 2, 100, CAST(0xA93E0B00 AS Date), 30, 10, N'jr2oi', 1, 177)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (3, 2, 112, 1, 1, 10, CAST(0xA93E0B00 AS Date), 3, 1, N'oik1', 1, 178)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (3, 3, 112, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'juji2i1', 1, 179)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (3, 1, 113, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'uhih12', 1, 180)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (2, 1, 114, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'bhj21', 2, 181)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (2, 1, 115, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'hi12ui', 2, 182)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (4, 1, 116, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'kmkj12', 1, 183)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (2, 1, 116, 1, 1, 30, CAST(0xA93E0B00 AS Date), 9, 3, N'uiuih21', 1, 184)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (2, 1, 117, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'hiih12i', 28, 185)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (2, 1, 118, 1, 1, 50, CAST(0xA93E0B00 AS Date), 15, 5, N'huih1i23', 2, 186)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (2, 1, 119, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'uhyu12', 2, 187)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (2, 1, 120, 1, 1, 20, CAST(0xA93E0B00 AS Date), 6, 2, N'jiu2123kj', 2, 188)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (6, 1, 123, 1, 1, 30, CAST(0xA93E0B00 AS Date), 9, 3, N'hyu2i13', 4, 189)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (6, 1, 123, 1, 2, 100, CAST(0xA93E0B00 AS Date), 30, 10, N'hhuhy12', 4, 190)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (6, 1, 124, 1, 1, 30, CAST(0xA93E0B00 AS Date), 9, 3, N'hi1i2u', 4, 192)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (6, 1, 125, 1, 1, 30, CAST(0xA93E0B00 AS Date), 9, 3, N'njhj12', 4, 193)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (6, 1, 125, 1, 2, 100, CAST(0xA93E0B00 AS Date), 30, 10, N'joi123', 4, 194)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (7, 1, 126, 1, 1, 30, CAST(0xA93E0B00 AS Date), 9, 3, N'ij12', 7, 195)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (1, 1, 126, 1, 1, 30, CAST(0xA93E0B00 AS Date), 9, 3, N'hj13j12', 7, 197)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (7, 1, 127, 1, 1, 30, CAST(0xA93E0B00 AS Date), 9, 3, N'hi1i23', 8, 198)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (9, 1, 127, 1, 1, 30, CAST(0xA93E0B00 AS Date), 9, 3, N'jii123oi', 8, 199)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (7, 1, 128, 1, 1, 30, CAST(0xA93E0B00 AS Date), 9, 3, N'h31i23', 8, 200)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (9, 1, 128, 1, 1, 30, CAST(0xA93E0B00 AS Date), 9, 3, N'h123i124', 8, 201)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (7, 1, 129, 1, 1, 30, CAST(0xA93E0B00 AS Date), 9, 3, N'hy123', 8, 202)
INSERT [dbo].[Speciality] ([UniversityId], [EducationFormId], [SpecialityNameId], [EducationPeriodId], [EducationFeeId], [TheTotalNumberOfPlaces], [TheDuration], [TheNumberOfPlacesForOrphans], [TheNumberOfPlacesForHonourGuard], [TheSpecialityColor], [EntranceTestsId], [SpecialityId]) VALUES (9, 1, 129, 1, 1, 30, CAST(0xA93E0B00 AS Date), 9, 3, N'ju1oi31o2', 8, 203)
SET IDENTITY_INSERT [dbo].[Speciality] OFF
SET IDENTITY_INSERT [dbo].[SpecialityGroups] ON 

INSERT [dbo].[SpecialityGroups] ([SpecialityGroupId], [Name]) VALUES (1, N'Group1')
INSERT [dbo].[SpecialityGroups] ([SpecialityGroupId], [Name]) VALUES (2, N'Group2')
INSERT [dbo].[SpecialityGroups] ([SpecialityGroupId], [Name]) VALUES (3, N'Group3')
INSERT [dbo].[SpecialityGroups] ([SpecialityGroupId], [Name]) VALUES (4, N'Group4')
INSERT [dbo].[SpecialityGroups] ([SpecialityGroupId], [Name]) VALUES (5, N'Group5')
INSERT [dbo].[SpecialityGroups] ([SpecialityGroupId], [Name]) VALUES (6, N'Group6')
INSERT [dbo].[SpecialityGroups] ([SpecialityGroupId], [Name]) VALUES (7, N'Group7')
INSERT [dbo].[SpecialityGroups] ([SpecialityGroupId], [Name]) VALUES (8, N'Group8')
INSERT [dbo].[SpecialityGroups] ([SpecialityGroupId], [Name]) VALUES (9, N'Group9')
INSERT [dbo].[SpecialityGroups] ([SpecialityGroupId], [Name]) VALUES (10, N'Group10')
INSERT [dbo].[SpecialityGroups] ([SpecialityGroupId], [Name]) VALUES (11, N'Group11')
INSERT [dbo].[SpecialityGroups] ([SpecialityGroupId], [Name]) VALUES (12, N'Group12')
INSERT [dbo].[SpecialityGroups] ([SpecialityGroupId], [Name]) VALUES (13, N'Group13')
SET IDENTITY_INSERT [dbo].[SpecialityGroups] OFF
SET IDENTITY_INSERT [dbo].[SpecialityNames] ON 

INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (1, N'Preschool education', 1, N'01 01 01')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (2, N'Elementary education', 1, N'01 02 01')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (3, N'History', 1, N'02 01 01')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (4, N'World and national culture', 1, N'02 02 01')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (5, N'The Belarusian Language and Literature', 1, N'02 03 01')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (9, N'The Russian Language and Literature', 1, N'02 03 02')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (10, N'The English Language. The German Language', 1, N'02 03 06-01')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (12, N'The German Language. The English Language', 1, N'02 03 06-02')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (13, N'The English Language. The French Language', 1, N'02 03 06-03')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (14, N'The French Language. The English Language', 1, N'02 03 06-04')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (15, N'Biology', 1, N'02 04 01')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (16, N'Geography', 1, N'02 04 02')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (17, N'Chemistry', 1, N'02 04 03')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (18, N'Mathematics', 1, N'02 05 01')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (19, N'Physics', 1, N'02 05 02')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (20, N'Informatics. Additional Speciality', 1, N'02 05 05')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (21, N'Technology', 1, N'02 06 01')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (22, N'Art', 1, N'03 01 01')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (23, N'Musical Art', 1, N'03 01 02')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (24, N'Physical Culture', 1, N'03 02 01')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (25, N'Speech Therapy', 1, N'03 03 01')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (26, N'Surdopedagogy. Additional Speciality', 1, N'03 03 06')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (27, N'Tiflopedagogy. Additional Speciality', 1, N'03 03 07')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (28, N'Oligophrenopedagogy. Additional Speciality', 1, N'03 03 08')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (29, N'Social Pedagogy', 1, N'03 04 01')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (30, N'Practical Psychology', 1, N'03 04 03')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (31, N'Vocational Training (by directions)', 2, N'08 01 01')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (33, N'Theory and Methodology of Preschool Education', 2, N'08 80 01')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (34, N'Theory and Methodology of Vocational Education', 2, N'08 80 03')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (35, N'Correctional Pedagogy', 2, N'08 80 05')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (36, N'General Pedagogy, History of Pedagogy and Education', 2, N'08 80 06')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (37, N'Painting (by directions)', 3, N'15 01 01')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (38, N'Monumental and Decorative Art (by directions)', 3, N'15 01 02')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (39, N'Sculpture', 3, N'15 01 03')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (40, N'Graphics', 3, N'15 01 04')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (41, N'Decorative and Applied Art (by directions)', 3, N'15 02 01')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (42, N'Composition', 3, N'16 01 01')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (43, N'Conducting (by directions)', 3, N'16 01 02')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (44, N'Piano', 3, N'16 01 03')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (45, N'Stringed Bowed Instruments (by directions)', 3, N'16 01 04')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (46, N'Harp', 3, N'16 01 05')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (47, N'Wind Instruments (by directions)', 3, N'16 01 06')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (48, N'Percussion Instruments', 3, N'16 01 07')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (49, N'Singing (by directions)', 3, N'16 01 10')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (50, N'Musical Art', 3, N'16 80 01')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (51, N'Acting (by directions)', 3, N'17 01 01')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (52, N'Directing the Theater (by directions)', 3, N'17 01 02')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (53, N'Cinema Operatorship (by directions)', 3, N'17 01 03')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (54, N'Film and Television Directing (by directions)', 3, N'17 01 04')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (55, N'Holidays Directing (by directions)', 3, N'17 01 05')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (56, N'Choreographic Art (by directions)', 3, N'17 02 01')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (57, N'Stage Art (by directions)', 3, N'17 03 01')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (58, N'Folk Art (by directions)', 3, N'18 01 01')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (59, N'Design (by directions)', 3, N'19 01 01')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (61, N'Theology', 4, N'21 01 01')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (62, N'Philosophy', 4, N'21 02 01')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (63, N'History (by directions)', 4, N'21 03 01')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (64, N'Culturology (by directions)', 4, N'21 04 01')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (65, N'Art History (by directions)', 4, N'21 04 02')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (67, N'Belarusian Philology (by directions)', 4, N'21 05 01')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (68, N'Russian Philology (by directions)', 4, N'21 05 02')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (69, N'Modern Foreign Languages (by directions)', 4, N'21 06 01')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (70, N'International relationships', 5, N'23 01 01')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (71, N'Psychology', 5, N'23 01 04')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (72, N'Socialogy', 5, N'23 01 05')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (73, N'Politology (by directions)', 5, N'23 01 06')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (74, N'Journalism (by directions)', 5, N'23 01 08')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (75, N'Library Science and Bibliography (by directions)', 5, N'23 01 11')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (76, N'Museums and Protection of Historical and Cultural Heritage (by directions)', 5, N'23 01 12')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (77, N'International law', 5, N'24 01 01')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (78, N'Jurisprudence', 5, N'24 01 02')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (79, N'Economic law', 5, N'24 01 03')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (80, N'Economics ', 5, N'25 01 02')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (81, N'Finance and Credit', 5, N'25 01 04')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (82, N'Accounting, Analysis and Audit (by directions)', 5, N'25 01 08')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (83, N'Economics and Management of the Tourism Industry', 5, N'25 01 13')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (84, N'Economics and Management of National Economics', 5, N'25 80 04')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (85, N'Public Administration', 5, N'26 01 01')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (86, N'Business Administration', 5, N'26 02 01')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (87, N'Marketing', 5, N'26 02 03')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (88, N'Logistics', 5, N'26 02 05')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (89, N'Microbiology', 6, N'31 01 03')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (90, N'Geography (by directions)', 6, N'31 02 01')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (91, N'Mathematics', 6, N'31 03 01')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (92, N'Mechanics (by directions)', 6, N'31 03 02')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (93, N'Informatics (by directions)', 6, N'31 03 04')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (94, N'Economic Cybernetics (by directions)', 6, N'31 03 06')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (95, N'Physics (by directions)', 6, N'31 04 01')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (96, N'Chemistry (by directions)', 6, N'31 05 01')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (97, N'Bioecology', 7, N'33 01 01')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (98, N'Agriculture Ecology', 7, N'33 01 06')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (99, N'Medical Ecology', 7, N'33 01 05')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (100, N'Technology of Mechanical Engineering', 8, N'36 01 01')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (101, N'Machines and Technology of Foundry Production', 8, N'36 02 01')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (102, N'Electric Machines and Apparatuses', 8, N'36 03 01')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (103, N'Electron-Optical Systems and Technologies', 8, N'36 04 01')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (104, N'Forestry Machinery and Equipment', 8, N'36 05 01')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (105, N'Mining Machinery and Equipment (by directions)', 8, N'36 10 01')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (106, N'Internal Combustion Engines', 8, N'37 01 01')
GO
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (107, N'Electronic devices', 8, N'38 01 03')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (108, N'Radio Engineering (by directions)', 8, N'39 01 01')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (109, N'Medical Electronics', 8, N'39 02 03')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (110, N'Information Technologies Software', 8, N'40 01 01')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (111, N'Informatics and Technology of Programming', 8, N'40 04 01')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (112, N'Computers, systems and networks', 8, N'40 02 01')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (113, N'Artificial Intelligence', 8, N'40 03 01')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (114, N'Electric stations', 8, N'43 01 01')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (115, N'Forest Engineering', 8, N'46 01 01')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (116, N'Metrology, Standardization and Certification (by directions)', 8, N'54 01 01')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (117, N'Architectural design', 9, N'69 01 02')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (118, N'Industrial and Civil Construction', 9, N'70 02 01')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (119, N'Car Roads', 9, N'70 03 01')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (120, N'Water Management Construction', 9, N'70 04 01')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (121, N'Selection and Seed-Growing', 10, N'74 02 02')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (122, N'Agronomy', 10, N'74 02 01')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (123, N'Pediatrics', 11, N'79 01 02')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (124, N'Stomatology', 11, N'79 01 07')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (125, N'Therapeutics', 11, N'79 01 01')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (126, N'Social Work', 12, N'86 01 01')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (127, N'Physical Culture (by directions)', 13, N'88 01 01')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (128, N'Sport-Pedagogical Activity (by directions)', 13, N'88 02 01')
INSERT [dbo].[SpecialityNames] ([SpecialityNameId], [Name], [SpecialityGroupId], [SpecialityCode]) VALUES (129, N'Sport-Tourist Activity (by directions)', 13, N'89 02 01')
SET IDENTITY_INSERT [dbo].[SpecialityNames] OFF
SET IDENTITY_INSERT [dbo].[Universities] ON 

INSERT [dbo].[Universities] ([UniversityId], [Name]) VALUES (1, N'Belarusian State University')
INSERT [dbo].[Universities] ([UniversityId], [Name]) VALUES (2, N'Belarusian National Technical University')
INSERT [dbo].[Universities] ([UniversityId], [Name]) VALUES (3, N'Belarusian State University of Informatics and Radioelectronics')
INSERT [dbo].[Universities] ([UniversityId], [Name]) VALUES (4, N'Belarusian State Agro-Technical University')
INSERT [dbo].[Universities] ([UniversityId], [Name]) VALUES (5, N'Belarusian State University of Culture and Arts')
INSERT [dbo].[Universities] ([UniversityId], [Name]) VALUES (6, N'Belarusian State Medical University')
INSERT [dbo].[Universities] ([UniversityId], [Name]) VALUES (7, N'Belarusian State Pedagogical University Named after Maxim Tank')
INSERT [dbo].[Universities] ([UniversityId], [Name]) VALUES (8, N'Belarusian State Technological University')
INSERT [dbo].[Universities] ([UniversityId], [Name]) VALUES (9, N'Belarusian State University of Physical Culture')
INSERT [dbo].[Universities] ([UniversityId], [Name]) VALUES (10, N'Belarusian State Economic University')
INSERT [dbo].[Universities] ([UniversityId], [Name]) VALUES (11, N'Minsk State Linguistic University')
INSERT [dbo].[Universities] ([UniversityId], [Name]) VALUES (12, N'International University "MITSO"')
INSERT [dbo].[Universities] ([UniversityId], [Name]) VALUES (13, N'Minsk Innovation University')
INSERT [dbo].[Universities] ([UniversityId], [Name]) VALUES (14, N'University of Civil Protection')
INSERT [dbo].[Universities] ([UniversityId], [Name]) VALUES (15, N'Academy of Public Administration Under the Aegis of the President of the Republic of Belarus')
INSERT [dbo].[Universities] ([UniversityId], [Name]) VALUES (16, N'Belarusian State Academy of Arts')
INSERT [dbo].[Universities] ([UniversityId], [Name]) VALUES (17, N'Belarusian State Academy of Music')
SET IDENTITY_INSERT [dbo].[Universities] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__Speciali__CEF4E06DA827792F]    Script Date: 30.01.2018 20:55:35 ******/
ALTER TABLE [dbo].[Speciality] ADD UNIQUE NONCLUSTERED 
(
	[TheSpecialityColor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EntrantsApplications]  WITH CHECK ADD  CONSTRAINT [FK_EntrantsApplications_FirstSpecialityId] FOREIGN KEY([Speciality1Id])
REFERENCES [dbo].[Speciality] ([SpecialityId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EntrantsApplications] CHECK CONSTRAINT [FK_EntrantsApplications_FirstSpecialityId]
GO
ALTER TABLE [dbo].[EntrantsApplications]  WITH CHECK ADD  CONSTRAINT [FK_EntrantsApplications_SecondSpecialityId] FOREIGN KEY([Speciality2Id])
REFERENCES [dbo].[Speciality] ([SpecialityId])
GO
ALTER TABLE [dbo].[EntrantsApplications] CHECK CONSTRAINT [FK_EntrantsApplications_SecondSpecialityId]
GO
ALTER TABLE [dbo].[EntrantsApplications]  WITH CHECK ADD  CONSTRAINT [FK_EntrantsApplications_Speciality] FOREIGN KEY([Speciality3Id])
REFERENCES [dbo].[Speciality] ([SpecialityId])
GO
ALTER TABLE [dbo].[EntrantsApplications] CHECK CONSTRAINT [FK_EntrantsApplications_Speciality]
GO
ALTER TABLE [dbo].[EntrantsApplications]  WITH CHECK ADD  CONSTRAINT [FK_EntrantsApplications_Speciality1] FOREIGN KEY([Speciality4Id])
REFERENCES [dbo].[Speciality] ([SpecialityId])
GO
ALTER TABLE [dbo].[EntrantsApplications] CHECK CONSTRAINT [FK_EntrantsApplications_Speciality1]
GO
ALTER TABLE [dbo].[EntrantsApplications]  WITH CHECK ADD  CONSTRAINT [FK_EntrantsApplications_Speciality10] FOREIGN KEY([Speciality12Id])
REFERENCES [dbo].[Speciality] ([SpecialityId])
GO
ALTER TABLE [dbo].[EntrantsApplications] CHECK CONSTRAINT [FK_EntrantsApplications_Speciality10]
GO
ALTER TABLE [dbo].[EntrantsApplications]  WITH CHECK ADD  CONSTRAINT [FK_EntrantsApplications_Speciality11] FOREIGN KEY([Speciality13Id])
REFERENCES [dbo].[Speciality] ([SpecialityId])
GO
ALTER TABLE [dbo].[EntrantsApplications] CHECK CONSTRAINT [FK_EntrantsApplications_Speciality11]
GO
ALTER TABLE [dbo].[EntrantsApplications]  WITH CHECK ADD  CONSTRAINT [FK_EntrantsApplications_Speciality12] FOREIGN KEY([Speciality14Id])
REFERENCES [dbo].[Speciality] ([SpecialityId])
GO
ALTER TABLE [dbo].[EntrantsApplications] CHECK CONSTRAINT [FK_EntrantsApplications_Speciality12]
GO
ALTER TABLE [dbo].[EntrantsApplications]  WITH CHECK ADD  CONSTRAINT [FK_EntrantsApplications_Speciality13] FOREIGN KEY([Speciality15Id])
REFERENCES [dbo].[Speciality] ([SpecialityId])
GO
ALTER TABLE [dbo].[EntrantsApplications] CHECK CONSTRAINT [FK_EntrantsApplications_Speciality13]
GO
ALTER TABLE [dbo].[EntrantsApplications]  WITH CHECK ADD  CONSTRAINT [FK_EntrantsApplications_Speciality14] FOREIGN KEY([Speciality16Id])
REFERENCES [dbo].[Speciality] ([SpecialityId])
GO
ALTER TABLE [dbo].[EntrantsApplications] CHECK CONSTRAINT [FK_EntrantsApplications_Speciality14]
GO
ALTER TABLE [dbo].[EntrantsApplications]  WITH CHECK ADD  CONSTRAINT [FK_EntrantsApplications_Speciality15] FOREIGN KEY([Speciality17Id])
REFERENCES [dbo].[Speciality] ([SpecialityId])
GO
ALTER TABLE [dbo].[EntrantsApplications] CHECK CONSTRAINT [FK_EntrantsApplications_Speciality15]
GO
ALTER TABLE [dbo].[EntrantsApplications]  WITH CHECK ADD  CONSTRAINT [FK_EntrantsApplications_Speciality16] FOREIGN KEY([Speciality18Id])
REFERENCES [dbo].[Speciality] ([SpecialityId])
GO
ALTER TABLE [dbo].[EntrantsApplications] CHECK CONSTRAINT [FK_EntrantsApplications_Speciality16]
GO
ALTER TABLE [dbo].[EntrantsApplications]  WITH CHECK ADD  CONSTRAINT [FK_EntrantsApplications_Speciality17] FOREIGN KEY([Speciality19Id])
REFERENCES [dbo].[Speciality] ([SpecialityId])
GO
ALTER TABLE [dbo].[EntrantsApplications] CHECK CONSTRAINT [FK_EntrantsApplications_Speciality17]
GO
ALTER TABLE [dbo].[EntrantsApplications]  WITH CHECK ADD  CONSTRAINT [FK_EntrantsApplications_Speciality18] FOREIGN KEY([Speciality20Id])
REFERENCES [dbo].[Speciality] ([SpecialityId])
GO
ALTER TABLE [dbo].[EntrantsApplications] CHECK CONSTRAINT [FK_EntrantsApplications_Speciality18]
GO
ALTER TABLE [dbo].[EntrantsApplications]  WITH CHECK ADD  CONSTRAINT [FK_EntrantsApplications_Speciality19] FOREIGN KEY([Speciality21Id])
REFERENCES [dbo].[Speciality] ([SpecialityId])
GO
ALTER TABLE [dbo].[EntrantsApplications] CHECK CONSTRAINT [FK_EntrantsApplications_Speciality19]
GO
ALTER TABLE [dbo].[EntrantsApplications]  WITH CHECK ADD  CONSTRAINT [FK_EntrantsApplications_Speciality2] FOREIGN KEY([Speciality5Id])
REFERENCES [dbo].[Speciality] ([SpecialityId])
GO
ALTER TABLE [dbo].[EntrantsApplications] CHECK CONSTRAINT [FK_EntrantsApplications_Speciality2]
GO
ALTER TABLE [dbo].[EntrantsApplications]  WITH CHECK ADD  CONSTRAINT [FK_EntrantsApplications_Speciality20] FOREIGN KEY([Speciality22Id])
REFERENCES [dbo].[Speciality] ([SpecialityId])
GO
ALTER TABLE [dbo].[EntrantsApplications] CHECK CONSTRAINT [FK_EntrantsApplications_Speciality20]
GO
ALTER TABLE [dbo].[EntrantsApplications]  WITH CHECK ADD  CONSTRAINT [FK_EntrantsApplications_Speciality21] FOREIGN KEY([Speciality23Id])
REFERENCES [dbo].[Speciality] ([SpecialityId])
GO
ALTER TABLE [dbo].[EntrantsApplications] CHECK CONSTRAINT [FK_EntrantsApplications_Speciality21]
GO
ALTER TABLE [dbo].[EntrantsApplications]  WITH CHECK ADD  CONSTRAINT [FK_EntrantsApplications_Speciality22] FOREIGN KEY([Speciality24Id])
REFERENCES [dbo].[Speciality] ([SpecialityId])
GO
ALTER TABLE [dbo].[EntrantsApplications] CHECK CONSTRAINT [FK_EntrantsApplications_Speciality22]
GO
ALTER TABLE [dbo].[EntrantsApplications]  WITH CHECK ADD  CONSTRAINT [FK_EntrantsApplications_Speciality23] FOREIGN KEY([Speciality25Id])
REFERENCES [dbo].[Speciality] ([SpecialityId])
GO
ALTER TABLE [dbo].[EntrantsApplications] CHECK CONSTRAINT [FK_EntrantsApplications_Speciality23]
GO
ALTER TABLE [dbo].[EntrantsApplications]  WITH CHECK ADD  CONSTRAINT [FK_EntrantsApplications_Speciality24] FOREIGN KEY([Speciality26Id])
REFERENCES [dbo].[Speciality] ([SpecialityId])
GO
ALTER TABLE [dbo].[EntrantsApplications] CHECK CONSTRAINT [FK_EntrantsApplications_Speciality24]
GO
ALTER TABLE [dbo].[EntrantsApplications]  WITH CHECK ADD  CONSTRAINT [FK_EntrantsApplications_Speciality25] FOREIGN KEY([Speciality27Id])
REFERENCES [dbo].[Speciality] ([SpecialityId])
GO
ALTER TABLE [dbo].[EntrantsApplications] CHECK CONSTRAINT [FK_EntrantsApplications_Speciality25]
GO
ALTER TABLE [dbo].[EntrantsApplications]  WITH CHECK ADD  CONSTRAINT [FK_EntrantsApplications_Speciality27] FOREIGN KEY([Speciality28Id])
REFERENCES [dbo].[Speciality] ([SpecialityId])
GO
ALTER TABLE [dbo].[EntrantsApplications] CHECK CONSTRAINT [FK_EntrantsApplications_Speciality27]
GO
ALTER TABLE [dbo].[EntrantsApplications]  WITH CHECK ADD  CONSTRAINT [FK_EntrantsApplications_Speciality28] FOREIGN KEY([Speciality29Id])
REFERENCES [dbo].[Speciality] ([SpecialityId])
GO
ALTER TABLE [dbo].[EntrantsApplications] CHECK CONSTRAINT [FK_EntrantsApplications_Speciality28]
GO
ALTER TABLE [dbo].[EntrantsApplications]  WITH CHECK ADD  CONSTRAINT [FK_EntrantsApplications_Speciality29] FOREIGN KEY([Speciality30Id])
REFERENCES [dbo].[Speciality] ([SpecialityId])
GO
ALTER TABLE [dbo].[EntrantsApplications] CHECK CONSTRAINT [FK_EntrantsApplications_Speciality29]
GO
ALTER TABLE [dbo].[EntrantsApplications]  WITH CHECK ADD  CONSTRAINT [FK_EntrantsApplications_Speciality3] FOREIGN KEY([Speciality6Id])
REFERENCES [dbo].[Speciality] ([SpecialityId])
GO
ALTER TABLE [dbo].[EntrantsApplications] CHECK CONSTRAINT [FK_EntrantsApplications_Speciality3]
GO
ALTER TABLE [dbo].[EntrantsApplications]  WITH CHECK ADD  CONSTRAINT [FK_EntrantsApplications_Speciality4] FOREIGN KEY([Speciality7Id])
REFERENCES [dbo].[Speciality] ([SpecialityId])
GO
ALTER TABLE [dbo].[EntrantsApplications] CHECK CONSTRAINT [FK_EntrantsApplications_Speciality4]
GO
ALTER TABLE [dbo].[EntrantsApplications]  WITH CHECK ADD  CONSTRAINT [FK_EntrantsApplications_Speciality5] FOREIGN KEY([Speciality8Id])
REFERENCES [dbo].[Speciality] ([SpecialityId])
GO
ALTER TABLE [dbo].[EntrantsApplications] CHECK CONSTRAINT [FK_EntrantsApplications_Speciality5]
GO
ALTER TABLE [dbo].[EntrantsApplications]  WITH CHECK ADD  CONSTRAINT [FK_EntrantsApplications_Speciality7] FOREIGN KEY([Speciality9Id])
REFERENCES [dbo].[Speciality] ([SpecialityId])
GO
ALTER TABLE [dbo].[EntrantsApplications] CHECK CONSTRAINT [FK_EntrantsApplications_Speciality7]
GO
ALTER TABLE [dbo].[EntrantsApplications]  WITH CHECK ADD  CONSTRAINT [FK_EntrantsApplications_Speciality8] FOREIGN KEY([Speciality10Id])
REFERENCES [dbo].[Speciality] ([SpecialityId])
GO
ALTER TABLE [dbo].[EntrantsApplications] CHECK CONSTRAINT [FK_EntrantsApplications_Speciality8]
GO
ALTER TABLE [dbo].[EntrantsApplications]  WITH CHECK ADD  CONSTRAINT [FK_EntrantsApplications_Speciality9] FOREIGN KEY([Speciality11Id])
REFERENCES [dbo].[Speciality] ([SpecialityId])
GO
ALTER TABLE [dbo].[EntrantsApplications] CHECK CONSTRAINT [FK_EntrantsApplications_Speciality9]
GO
ALTER TABLE [dbo].[Speciality]  WITH CHECK ADD  CONSTRAINT [FK_Speciality_EducationFees] FOREIGN KEY([EducationFeeId])
REFERENCES [dbo].[EducationFees] ([EducationFeeId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Speciality] CHECK CONSTRAINT [FK_Speciality_EducationFees]
GO
ALTER TABLE [dbo].[Speciality]  WITH CHECK ADD  CONSTRAINT [FK_Speciality_EducationForms] FOREIGN KEY([EducationFormId])
REFERENCES [dbo].[EducationForms] ([EducationFormId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Speciality] CHECK CONSTRAINT [FK_Speciality_EducationForms]
GO
ALTER TABLE [dbo].[Speciality]  WITH CHECK ADD  CONSTRAINT [FK_Speciality_EducationPeriods] FOREIGN KEY([EducationPeriodId])
REFERENCES [dbo].[EducationPeriods] ([EducationPeriodId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Speciality] CHECK CONSTRAINT [FK_Speciality_EducationPeriods]
GO
ALTER TABLE [dbo].[Speciality]  WITH CHECK ADD  CONSTRAINT [FK_Speciality_EntranceTests] FOREIGN KEY([EntranceTestsId])
REFERENCES [dbo].[EntranceTests] ([EntranceTestsId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Speciality] CHECK CONSTRAINT [FK_Speciality_EntranceTests]
GO
ALTER TABLE [dbo].[Speciality]  WITH CHECK ADD  CONSTRAINT [FK_Speciality_SpecialityNames] FOREIGN KEY([SpecialityNameId])
REFERENCES [dbo].[SpecialityNames] ([SpecialityNameId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Speciality] CHECK CONSTRAINT [FK_Speciality_SpecialityNames]
GO
ALTER TABLE [dbo].[Speciality]  WITH CHECK ADD  CONSTRAINT [FK_Speciality_Universities] FOREIGN KEY([UniversityId])
REFERENCES [dbo].[Universities] ([UniversityId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Speciality] CHECK CONSTRAINT [FK_Speciality_Universities]
GO
ALTER TABLE [dbo].[SpecialityNames]  WITH CHECK ADD  CONSTRAINT [FK_SpecialityNames_SpecialityGroups] FOREIGN KEY([SpecialityGroupId])
REFERENCES [dbo].[SpecialityGroups] ([SpecialityGroupId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SpecialityNames] CHECK CONSTRAINT [FK_SpecialityNames_SpecialityGroups]
GO
