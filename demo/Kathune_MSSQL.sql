USE [Kathune]
GO
/****** Object:  Table [dbo].[Sites]    Script Date: 12/02/2012 15:58:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sites](
	[PostID] [int] NOT NULL,
	[SiteUUID] [varchar](50) NOT NULL,
	[Hook] [varchar](255) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Servers]    Script Date: 12/02/2012 15:58:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Servers](
	[ServerID] [int] IDENTITY(1,1) NOT NULL,
	[ServerName] [varchar](255) NULL,
	[ServerRegExp] [varchar](max) NULL,
	[TimeZone] [char](1) NULL,
	[ServerType] [char](6) NULL,
	[Battlegroup] [varchar](255) NULL,
	[Region] [char](5) NULL,
 CONSTRAINT [PK_Servers] PRIMARY KEY CLUSTERED 
(
	[ServerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Links]    Script Date: 12/02/2012 15:58:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Links](
	[PostID] [int] IDENTITY(1,1) NOT NULL,
	[PostURL] [varchar](255) NOT NULL,
	[PostTitle] [varchar](255) NOT NULL,
	[PostBody] [nvarchar](max) NULL,
	[isAlliance] [tinyint] NOT NULL,
	[isHorde] [tinyint] NOT NULL,
	[isPvP] [tinyint] NOT NULL,
	[isPvE] [tinyint] NOT NULL,
	[isIdiot] [tinyint] NOT NULL,
	[isDeathKnight] [tinyint] NOT NULL,
	[isDruid] [tinyint] NOT NULL,
	[isHunter] [tinyint] NOT NULL,
	[isMage] [tinyint] NOT NULL,
	[isPaladin] [tinyint] NOT NULL,
	[isPriest] [tinyint] NOT NULL,
	[isRogue] [tinyint] NOT NULL,
	[isShaman] [tinyint] NOT NULL,
	[isWarlock] [tinyint] NOT NULL,
	[isWarrior] [tinyint] NOT NULL,
	[Score] [decimal](18, 2) NOT NULL,
	[EffectiveDate] [datetime] NULL,
	[topicId] [varchar](16) NOT NULL,
	[Region] [char](5) NULL,
	[ArmoryURL] [varchar](255) NULL,
 CONSTRAINT [PK_Links] PRIMARY KEY CLUSTERED 
(
	[PostID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[History]    Script Date: 12/02/2012 15:58:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[History](
	[HistoryID] [int] IDENTITY(1,1) NOT NULL,
	[EffectiveDate] [datetime] NOT NULL,
	[NumPosts] [int] NOT NULL,
	[NumAlliance] [int] NOT NULL,
	[NumHorde] [int] NOT NULL,
	[NumPvP] [int] NOT NULL,
	[NumPvE] [int] NOT NULL,
	[NumIdiots] [int] NOT NULL,
	[NumDeathKnights] [int] NOT NULL,
	[NumDruids] [int] NOT NULL,
	[NumHunters] [int] NOT NULL,
	[NumMages] [int] NOT NULL,
	[NumPaladins] [int] NOT NULL,
	[NumPriests] [int] NOT NULL,
	[NumRogues] [int] NOT NULL,
	[NumShamans] [int] NOT NULL,
	[NumWarlocks] [int] NOT NULL,
	[NumWarriors] [int] NOT NULL,
	[NumUS] [int] NOT NULL,
	[NumEU] [int] NOT NULL,
	[NumArmory] [int] NOT NULL,
 CONSTRAINT [PK_History] PRIMARY KEY CLUSTERED 
(
	[HistoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Guilds]    Script Date: 12/02/2012 15:58:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Guilds](
	[GuildID] [int] IDENTITY(1,1) NOT NULL,
	[GuildName] [varchar](50) NULL,
	[GuildDomain] [varchar](255) NULL,
	[NumVisits] [int] NOT NULL,
	[DeathKnightWeight] [decimal](18, 2) NOT NULL,
	[DruidWeight] [decimal](18, 2) NOT NULL,
	[HunterWeight] [decimal](18, 2) NOT NULL,
	[MageWeight] [decimal](18, 2) NOT NULL,
	[PaladinWeight] [decimal](18, 2) NOT NULL,
	[PriestWeight] [decimal](18, 2) NOT NULL,
	[RogueWeight] [decimal](18, 2) NOT NULL,
	[ShamanWeight] [decimal](18, 2) NOT NULL,
	[WarlockWeight] [decimal](18, 2) NOT NULL,
	[WarriorWeight] [decimal](18, 2) NOT NULL,
	[HasPaid] [tinyint] NOT NULL,
 CONSTRAINT [PK_Guilds] PRIMARY KEY CLUSTERED 
(
	[GuildID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cache]    Script Date: 12/02/2012 15:58:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cache](
	[CacheID] [int] IDENTITY(1,1) NOT NULL,
	[HTMLCache] [nvarchar](max) NULL,
	[HTMLCacheEU] [nvarchar](max) NULL,
 CONSTRAINT [PK_Cache] PRIMARY KEY CLUSTERED 
(
	[CacheID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Default [DF_Links_isAlliance]    Script Date: 12/02/2012 15:58:08 ******/
ALTER TABLE [dbo].[Links] ADD  CONSTRAINT [DF_Links_isAlliance]  DEFAULT ((0)) FOR [isAlliance]
GO
/****** Object:  Default [DF_Links_isHorde]    Script Date: 12/02/2012 15:58:08 ******/
ALTER TABLE [dbo].[Links] ADD  CONSTRAINT [DF_Links_isHorde]  DEFAULT ((0)) FOR [isHorde]
GO
/****** Object:  Default [DF_Links_isPvP]    Script Date: 12/02/2012 15:58:08 ******/
ALTER TABLE [dbo].[Links] ADD  CONSTRAINT [DF_Links_isPvP]  DEFAULT ((0)) FOR [isPvP]
GO
/****** Object:  Default [DF_Links_isPvE]    Script Date: 12/02/2012 15:58:08 ******/
ALTER TABLE [dbo].[Links] ADD  CONSTRAINT [DF_Links_isPvE]  DEFAULT ((0)) FOR [isPvE]
GO
/****** Object:  Default [DF_Links_isIdiot]    Script Date: 12/02/2012 15:58:08 ******/
ALTER TABLE [dbo].[Links] ADD  CONSTRAINT [DF_Links_isIdiot]  DEFAULT ((0)) FOR [isIdiot]
GO
/****** Object:  Default [DF_Links_isDeathKnight]    Script Date: 12/02/2012 15:58:08 ******/
ALTER TABLE [dbo].[Links] ADD  CONSTRAINT [DF_Links_isDeathKnight]  DEFAULT ((0)) FOR [isDeathKnight]
GO
/****** Object:  Default [DF_Links_isDruid]    Script Date: 12/02/2012 15:58:08 ******/
ALTER TABLE [dbo].[Links] ADD  CONSTRAINT [DF_Links_isDruid]  DEFAULT ((0)) FOR [isDruid]
GO
/****** Object:  Default [DF_Links_isHunter]    Script Date: 12/02/2012 15:58:08 ******/
ALTER TABLE [dbo].[Links] ADD  CONSTRAINT [DF_Links_isHunter]  DEFAULT ((0)) FOR [isHunter]
GO
/****** Object:  Default [DF_Links_isMage]    Script Date: 12/02/2012 15:58:08 ******/
ALTER TABLE [dbo].[Links] ADD  CONSTRAINT [DF_Links_isMage]  DEFAULT ((0)) FOR [isMage]
GO
/****** Object:  Default [DF_Links_isPaladin]    Script Date: 12/02/2012 15:58:08 ******/
ALTER TABLE [dbo].[Links] ADD  CONSTRAINT [DF_Links_isPaladin]  DEFAULT ((0)) FOR [isPaladin]
GO
/****** Object:  Default [DF_Links_isPriest]    Script Date: 12/02/2012 15:58:08 ******/
ALTER TABLE [dbo].[Links] ADD  CONSTRAINT [DF_Links_isPriest]  DEFAULT ((0)) FOR [isPriest]
GO
/****** Object:  Default [DF_Links_isRogue]    Script Date: 12/02/2012 15:58:08 ******/
ALTER TABLE [dbo].[Links] ADD  CONSTRAINT [DF_Links_isRogue]  DEFAULT ((0)) FOR [isRogue]
GO
/****** Object:  Default [DF_Links_isShaman]    Script Date: 12/02/2012 15:58:08 ******/
ALTER TABLE [dbo].[Links] ADD  CONSTRAINT [DF_Links_isShaman]  DEFAULT ((0)) FOR [isShaman]
GO
/****** Object:  Default [DF_Links_isWarlock]    Script Date: 12/02/2012 15:58:08 ******/
ALTER TABLE [dbo].[Links] ADD  CONSTRAINT [DF_Links_isWarlock]  DEFAULT ((0)) FOR [isWarlock]
GO
/****** Object:  Default [DF_Links_isWarrior]    Script Date: 12/02/2012 15:58:08 ******/
ALTER TABLE [dbo].[Links] ADD  CONSTRAINT [DF_Links_isWarrior]  DEFAULT ((0)) FOR [isWarrior]
GO
/****** Object:  Default [DF_Links_Score]    Script Date: 12/02/2012 15:58:08 ******/
ALTER TABLE [dbo].[Links] ADD  CONSTRAINT [DF_Links_Score]  DEFAULT ((0.00)) FOR [Score]
GO
/****** Object:  Default [DF_Links_EffectiveDate]    Script Date: 12/02/2012 15:58:08 ******/
ALTER TABLE [dbo].[Links] ADD  CONSTRAINT [DF_Links_EffectiveDate]  DEFAULT (getdate()) FOR [EffectiveDate]
GO
/****** Object:  Default [DF_Links_topicId]    Script Date: 12/02/2012 15:58:08 ******/
ALTER TABLE [dbo].[Links] ADD  CONSTRAINT [DF_Links_topicId]  DEFAULT ((0)) FOR [topicId]
GO
/****** Object:  Default [DF_History_NumPosts]    Script Date: 12/02/2012 15:58:08 ******/
ALTER TABLE [dbo].[History] ADD  CONSTRAINT [DF_History_NumPosts]  DEFAULT ((0)) FOR [NumPosts]
GO
/****** Object:  Default [DF_History_NumAlliance]    Script Date: 12/02/2012 15:58:08 ******/
ALTER TABLE [dbo].[History] ADD  CONSTRAINT [DF_History_NumAlliance]  DEFAULT ((0)) FOR [NumAlliance]
GO
/****** Object:  Default [DF_History_NumHorde]    Script Date: 12/02/2012 15:58:08 ******/
ALTER TABLE [dbo].[History] ADD  CONSTRAINT [DF_History_NumHorde]  DEFAULT ((0)) FOR [NumHorde]
GO
/****** Object:  Default [DF_History_NumPvP]    Script Date: 12/02/2012 15:58:08 ******/
ALTER TABLE [dbo].[History] ADD  CONSTRAINT [DF_History_NumPvP]  DEFAULT ((0)) FOR [NumPvP]
GO
/****** Object:  Default [DF_History_NumPvE]    Script Date: 12/02/2012 15:58:08 ******/
ALTER TABLE [dbo].[History] ADD  CONSTRAINT [DF_History_NumPvE]  DEFAULT ((0)) FOR [NumPvE]
GO
/****** Object:  Default [DF_History_NumIdiots]    Script Date: 12/02/2012 15:58:08 ******/
ALTER TABLE [dbo].[History] ADD  CONSTRAINT [DF_History_NumIdiots]  DEFAULT ((0)) FOR [NumIdiots]
GO
/****** Object:  Default [DF_History_NumDeathKnights]    Script Date: 12/02/2012 15:58:08 ******/
ALTER TABLE [dbo].[History] ADD  CONSTRAINT [DF_History_NumDeathKnights]  DEFAULT ((0)) FOR [NumDeathKnights]
GO
/****** Object:  Default [DF_History_NumDruids]    Script Date: 12/02/2012 15:58:08 ******/
ALTER TABLE [dbo].[History] ADD  CONSTRAINT [DF_History_NumDruids]  DEFAULT ((0)) FOR [NumDruids]
GO
/****** Object:  Default [DF_History_NumHunters]    Script Date: 12/02/2012 15:58:08 ******/
ALTER TABLE [dbo].[History] ADD  CONSTRAINT [DF_History_NumHunters]  DEFAULT ((0)) FOR [NumHunters]
GO
/****** Object:  Default [DF_History_NumMage]    Script Date: 12/02/2012 15:58:08 ******/
ALTER TABLE [dbo].[History] ADD  CONSTRAINT [DF_History_NumMage]  DEFAULT ((0)) FOR [NumMages]
GO
/****** Object:  Default [DF_History_NumPaladin]    Script Date: 12/02/2012 15:58:08 ******/
ALTER TABLE [dbo].[History] ADD  CONSTRAINT [DF_History_NumPaladin]  DEFAULT ((0)) FOR [NumPaladins]
GO
/****** Object:  Default [DF_History_NumPriest]    Script Date: 12/02/2012 15:58:08 ******/
ALTER TABLE [dbo].[History] ADD  CONSTRAINT [DF_History_NumPriest]  DEFAULT ((0)) FOR [NumPriests]
GO
/****** Object:  Default [DF_History_NumRogue]    Script Date: 12/02/2012 15:58:08 ******/
ALTER TABLE [dbo].[History] ADD  CONSTRAINT [DF_History_NumRogue]  DEFAULT ((0)) FOR [NumRogues]
GO
/****** Object:  Default [DF_History_NumShaman]    Script Date: 12/02/2012 15:58:08 ******/
ALTER TABLE [dbo].[History] ADD  CONSTRAINT [DF_History_NumShaman]  DEFAULT ((0)) FOR [NumShamans]
GO
/****** Object:  Default [DF_History_NumWarlock]    Script Date: 12/02/2012 15:58:08 ******/
ALTER TABLE [dbo].[History] ADD  CONSTRAINT [DF_History_NumWarlock]  DEFAULT ((0)) FOR [NumWarlocks]
GO
/****** Object:  Default [DF_History_NumWarrior]    Script Date: 12/02/2012 15:58:08 ******/
ALTER TABLE [dbo].[History] ADD  CONSTRAINT [DF_History_NumWarrior]  DEFAULT ((0)) FOR [NumWarriors]
GO
/****** Object:  Default [DF_History_NumUS]    Script Date: 12/02/2012 15:58:08 ******/
ALTER TABLE [dbo].[History] ADD  CONSTRAINT [DF_History_NumUS]  DEFAULT ((0)) FOR [NumUS]
GO
/****** Object:  Default [DF_History_NumEU]    Script Date: 12/02/2012 15:58:08 ******/
ALTER TABLE [dbo].[History] ADD  CONSTRAINT [DF_History_NumEU]  DEFAULT ((0)) FOR [NumEU]
GO
/****** Object:  Default [DF_History_NumArmory]    Script Date: 12/02/2012 15:58:08 ******/
ALTER TABLE [dbo].[History] ADD  CONSTRAINT [DF_History_NumArmory]  DEFAULT ((0)) FOR [NumArmory]
GO
/****** Object:  Default [DF_Table_1_Visits]    Script Date: 12/02/2012 15:58:08 ******/
ALTER TABLE [dbo].[Guilds] ADD  CONSTRAINT [DF_Table_1_Visits]  DEFAULT ((0)) FOR [NumVisits]
GO
/****** Object:  Default [DF_Guilds_DeathKnightWeight]    Script Date: 12/02/2012 15:58:08 ******/
ALTER TABLE [dbo].[Guilds] ADD  CONSTRAINT [DF_Guilds_DeathKnightWeight]  DEFAULT ((0.10)) FOR [DeathKnightWeight]
GO
/****** Object:  Default [DF_Guilds_DruidWeight]    Script Date: 12/02/2012 15:58:08 ******/
ALTER TABLE [dbo].[Guilds] ADD  CONSTRAINT [DF_Guilds_DruidWeight]  DEFAULT ((0.10)) FOR [DruidWeight]
GO
/****** Object:  Default [DF_Guilds_HunterWeight]    Script Date: 12/02/2012 15:58:08 ******/
ALTER TABLE [dbo].[Guilds] ADD  CONSTRAINT [DF_Guilds_HunterWeight]  DEFAULT ((0.10)) FOR [HunterWeight]
GO
/****** Object:  Default [DF_Guilds_MageWeight]    Script Date: 12/02/2012 15:58:08 ******/
ALTER TABLE [dbo].[Guilds] ADD  CONSTRAINT [DF_Guilds_MageWeight]  DEFAULT ((0.10)) FOR [MageWeight]
GO
/****** Object:  Default [DF_Guilds_PaladinWeight]    Script Date: 12/02/2012 15:58:08 ******/
ALTER TABLE [dbo].[Guilds] ADD  CONSTRAINT [DF_Guilds_PaladinWeight]  DEFAULT ((0.10)) FOR [PaladinWeight]
GO
/****** Object:  Default [DF_Guilds_PriestWeight]    Script Date: 12/02/2012 15:58:08 ******/
ALTER TABLE [dbo].[Guilds] ADD  CONSTRAINT [DF_Guilds_PriestWeight]  DEFAULT ((0.10)) FOR [PriestWeight]
GO
/****** Object:  Default [DF_Guilds_RogueWeight]    Script Date: 12/02/2012 15:58:08 ******/
ALTER TABLE [dbo].[Guilds] ADD  CONSTRAINT [DF_Guilds_RogueWeight]  DEFAULT ((0.10)) FOR [RogueWeight]
GO
/****** Object:  Default [DF_Guilds_ShamanWeight]    Script Date: 12/02/2012 15:58:08 ******/
ALTER TABLE [dbo].[Guilds] ADD  CONSTRAINT [DF_Guilds_ShamanWeight]  DEFAULT ((0.10)) FOR [ShamanWeight]
GO
/****** Object:  Default [DF_Guilds_WarlockWeight]    Script Date: 12/02/2012 15:58:08 ******/
ALTER TABLE [dbo].[Guilds] ADD  CONSTRAINT [DF_Guilds_WarlockWeight]  DEFAULT ((0.10)) FOR [WarlockWeight]
GO
/****** Object:  Default [DF_Guilds_WarriorWeight]    Script Date: 12/02/2012 15:58:08 ******/
ALTER TABLE [dbo].[Guilds] ADD  CONSTRAINT [DF_Guilds_WarriorWeight]  DEFAULT ((0.10)) FOR [WarriorWeight]
GO
/****** Object:  Default [DF_Guilds_HasPaid]    Script Date: 12/02/2012 15:58:08 ******/
ALTER TABLE [dbo].[Guilds] ADD  CONSTRAINT [DF_Guilds_HasPaid]  DEFAULT ((0)) FOR [HasPaid]
GO
