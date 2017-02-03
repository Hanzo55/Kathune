
CREATE TABLE Sites(
	PostID integer NOT NULL,
	SiteUUID varchar(50) NOT NULL,
	Hook varchar(255) NOT NULL
);

CREATE TABLE Servers(
	ServerID serial CONSTRAINT PK_Servers PRIMARY KEY,
	ServerName varchar(255) NULL,
	ServerRegExp text NULL,
	TimeZone char(1) NULL,
	ServerType char(6) NULL,
	Battlegroup varchar(255) NULL,
	Region char(5) NULL
);
 
 CREATE TABEL Links(
    postid integer NOT NULL DEFAULT nextval('links_postid_seq'::regclass),
    posturl character varying(255) NOT NULL,
    posttitle character varying(255) NOT NULL,
    postbody text ,
    isalliance smallint NOT NULL,
    ishorde smallint NOT NULL,
    ispvp smallint NOT NULL,
    ispve smallint NOT NULL,
    isidiot smallint NOT NULL,
    isdeathknight smallint NOT NULL,
    isdemonhunter smallint NOT NULL,
    isdruid smallint NOT NULL,
    ishunter smallint NOT NULL,
    ismage smallint NOT NULL,
    ismonk smallint NOT NULL,
    ispaladin smallint NOT NULL,
    ispriest smallint NOT NULL,
    isrogue smallint NOT NULL,
    isshaman smallint NOT NULL,
    iswarlock smallint NOT NULL,
    iswarrior smallint NOT NULL,
    score numeric(18, 2) NOT NULL,
    effectivedate timestamp without time zone NOT NULL DEFAULT now(),
    topicid character varying,
    region character(5),
    armoryurl character varying(255),
    CONSTRAINT pk_links PRIMARY KEY (postid)
);

CREATE TABLE History(
	HistoryID serial CONSTRAINT PK_History PRIMARY KEY,
	EffectiveDate date NOT NULL,
	NumPosts integer NOT NULL,
	NumAlliance integer NOT NULL,
	NumHorde integer NOT NULL,
	NumPvP integer NOT NULL,
	NumPvE integer NOT NULL,
	NumIdiots integer NOT NULL,
	NumDeathKnights integer NOT NULL,
	NumDruids integer NOT NULL,
	NumHunters integer NOT NULL,
	NumMages integer NOT NULL,
	NumPaladins integer NOT NULL,
	NumPriests integer NOT NULL,
	NumRogues integer NOT NULL,
	NumShamans integer NOT NULL,
	NumWarlocks integer NOT NULL,
	NumWarriors integer NOT NULL,
	NumUS integer NOT NULL,
	NumEU integer NOT NULL,
	NumArmory integer NOT NULL
);

CREATE TABLE Guilds(
	GuildID serial CONSTRAINT PK_Guilds PRIMARY KEY,
	GuildName varchar(50) NULL,
	GuildDomain varchar(255) NULL,
	NumVisits integer NOT NULL,
	DeathKnightWeight decimal(18, 2) NOT NULL,
	DruidWeight decimal(18, 2) NOT NULL,
	HunterWeight decimal(18, 2) NOT NULL,
	MageWeight decimal(18, 2) NOT NULL,
	PaladinWeight decimal(18, 2) NOT NULL,
	PriestWeight decimal(18, 2) NOT NULL,
	RogueWeight decimal(18, 2) NOT NULL,
	ShamanWeight decimal(18, 2) NOT NULL,
	WarlockWeight decimal(18, 2) NOT NULL,
	WarriorWeight decimal(18, 2) NOT NULL,
	HasPaid smallint NOT NULL
);

CREATE TABLE Cache(
	CacheID serial CONSTRAINT PK_Cache PRIMARY KEY,
	HTMLCache text NULL,
	HTMLCacheEU text NULL
);

CREATE INDEX DF_Links_isAlliance ON Links (isAlliance);

CREATE INDEX DF_Links_isHorde ON Links (isHorde);

CREATE INDEX DF_Links_isPvP ON Links (isPvP);

CREATE INDEX DF_Links_isPvE ON Links (isPvE);

CREATE INDEX DF_Links_isIdiot ON Links (isIdiot);

CREATE INDEX DF_Links_isDeathKnight ON Links (isDeathKnight);

CREATE INDEX DF_Links_isDruid ON Links (isDruid);

CREATE INDEX DF_Links_isHunter ON Links (isHunter);

CREATE INDEX DF_Links_isMage ON Links (isMage);

CREATE INDEX DF_Links_isPaladin ON Links (isPaladin);

CREATE INDEX DF_Links_isPriest ON Links (isPriest);

CREATE INDEX DF_Links_isRogue ON Links (isRogue);

CREATE INDEX DF_Links_isShaman ON Links (isShaman);

CREATE INDEX DF_Links_isWarlock ON Links (isWarlock);

CREATE INDEX DF_Links_isWarrior ON Links (isWarrior);

CREATE INDEX DF_Links_Score ON Links (Score);

CREATE INDEX DF_Links_EffectiveDate ON Links (EffectiveDate);

CREATE INDEX DF_Links_topicId ON Links (topicId);

CREATE INDEX DF_History_NumPosts ON History (NumPosts);

CREATE INDEX DF_History_NumAlliance ON History (NumAlliance);

CREATE INDEX DF_History_NumHorde ON History (NumHorde);

CREATE INDEX DF_History_NumPvP ON History (NumPvP);

CREATE INDEX DF_History_NumPvE ON History (NumPvE);

CREATE INDEX DF_History_NumIdiots ON History (NumIdiots);

CREATE INDEX DF_History_NumDeathKnights ON History (NumDeathKnights);

CREATE INDEX DF_History_NumDruids ON History (NumDruids);

CREATE INDEX DF_History_NumHunters ON History (NumHunters);

CREATE INDEX DF_History_NumMage ON History (NumMages);

CREATE INDEX DF_History_NumPaladin ON History (NumPaladins);

CREATE INDEX DF_History_NumPriest ON History (NumPriests);

CREATE INDEX DF_History_NumRogue ON History (NumRogues);

CREATE INDEX DF_History_NumShaman ON History (NumShamans);

CREATE INDEX DF_History_NumWarlock ON History (NumWarlocks);

CREATE INDEX DF_History_NumWarrior ON History (NumWarriors);

CREATE INDEX DF_History_NumUS ON History (NumUS);

CREATE INDEX DF_History_NumEU ON History (NumEU);

CREATE INDEX DF_History_NumArmory ON History (NumArmory);

CREATE INDEX DF_Table_1_Visits ON Guilds (NumVisits);

CREATE INDEX DF_Guilds_DeathKnightWeight ON Guilds (DeathKnightWeight);

CREATE INDEX DF_Guilds_DruidWeight ON Guilds (DruidWeight);

CREATE INDEX DF_Guilds_HunterWeight ON Guilds (HunterWeight);

CREATE INDEX DF_Guilds_MageWeight ON Guilds (MageWeight);

CREATE INDEX DF_Guilds_PaladinWeight ON Guilds (PaladinWeight);

CREATE INDEX DF_Guilds_PriestWeight ON Guilds (PriestWeight);

CREATE INDEX DF_Guilds_RogueWeight ON Guilds (RogueWeight);

CREATE INDEX DF_Guilds_ShamanWeight ON Guilds (ShamanWeight);

CREATE INDEX DF_Guilds_WarlockWeight ON Guilds (WarlockWeight);

CREATE INDEX DF_Guilds_WarriorWeight ON Guilds (WarriorWeight);

CREATE INDEX DF_Guilds_HasPaid ON Guilds (HasPaid);

