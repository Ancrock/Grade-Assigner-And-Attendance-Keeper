drop table student_data
GO
CREATE TABLE [dbo].[student_data](
	[sid] [int] NOT NULL PRIMARY KEY,
	[fname] [varchar](50) NULL,
	[lname] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[pwd] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[class_data]    Script Date: 06/09/2015 10:59:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
drop table class_data
GO
CREATE TABLE [dbo].[class_data](
	[cid] [int] NOT NULL PRIMARY KEY,
	[cname] [varchar](50) NULL,
	[sname] [varchar](50) NULL,
	[start_date] [varchar](50) NULL,
	[end_date] [varchar](50) NULL,
	[Professor] [varchar](50) NULL,
	[Description] [varchar](100) NULL
) ON [PRIMARY]
GO
drop table class_view
GO
CREATE TABLE [dbo].[class_view](
	[Id] [varchar](50) NOT NULL PRIMARY KEY,
	[Name] [varchar](50) NULL,
	[Assignment_1] [varchar](50) NULL,
	[Mid_term] [varchar](50) NULL,
	[Assignment_2] [varchar](50) NULL,
	[Final] [varchar](50) NULL,
	[Project] [varchar](50) NULL,
	[Average] [varchar](50) NULL,
	[Grade] [varchar](50) NULL,
	[Rank] [varchar](50) NULL,
	[Total] [varchar](50) NULL,
) ON [PRIMARY]
GO
drop table allocate
GO
CREATE TABLE [dbo].[allocate](
	[Id] [varchar](50) Not NULL PRIMARY KEY,
	[Assignment_1] [varchar](50) NULL,
	[Mid_term] [varchar](50) NULL,
	[Assignment_2] [varchar](50) NULL,
	[Final] [varchar](50) NULL,
	[Project] [varchar](50) Null,
	[Total] [varchar] (50) NULL,
) ON [PRIMARY]
GO

SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[atten_data]    Script Date: 06/09/2015 10:59:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
drop table atten_data
GO
CREATE TABLE [dbo].[atten_data](
	[aid] [int] Not NULL PRIMARY KEY,
	[sid] [int] NULL,
	[cid] [int] NULL,
	[sdate] [varchar](50) NULL,
	[status] [varchar](50) NULL,
	[amonth] [varchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[assign_data]    Script Date: 06/09/2015 10:59:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
drop table assign_data
GO
CREATE TABLE [dbo].[assign_data](
	[aid] [int] NULL,
	[sid] [int] NULL,
	[cid] [int] NULL,
	[atype] [varchar](50) NULL,
	[points] [int] NULL,
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
