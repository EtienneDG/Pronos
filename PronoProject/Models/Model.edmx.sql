
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 12/20/2013 11:27:55
-- Generated from EDMX file: D:\Users\edussert\Documents\Visual Studio 2010\Projects\PronoProject\PronoProject\Models\Model.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [pronosproj];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK__aspnet_Me__Appli__21B6055D]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[aspnet_Membership] DROP CONSTRAINT [FK__aspnet_Me__Appli__21B6055D];
GO
IF OBJECT_ID(N'[dbo].[FK__aspnet_Pa__Appli__5AEE82B9]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[aspnet_Paths] DROP CONSTRAINT [FK__aspnet_Pa__Appli__5AEE82B9];
GO
IF OBJECT_ID(N'[dbo].[FK__aspnet_Ro__Appli__440B1D61]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[aspnet_Roles] DROP CONSTRAINT [FK__aspnet_Ro__Appli__440B1D61];
GO
IF OBJECT_ID(N'[dbo].[FK__aspnet_Us__Appli__0DAF0CB0]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[aspnet_Users] DROP CONSTRAINT [FK__aspnet_Us__Appli__0DAF0CB0];
GO
IF OBJECT_ID(N'[dbo].[FK__aspnet_Me__UserI__22AA2996]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[aspnet_Membership] DROP CONSTRAINT [FK__aspnet_Me__UserI__22AA2996];
GO
IF OBJECT_ID(N'[dbo].[FK__aspnet_Pe__PathI__628FA481]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[aspnet_PersonalizationAllUsers] DROP CONSTRAINT [FK__aspnet_Pe__PathI__628FA481];
GO
IF OBJECT_ID(N'[dbo].[FK__aspnet_Pe__PathI__68487DD7]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] DROP CONSTRAINT [FK__aspnet_Pe__PathI__68487DD7];
GO
IF OBJECT_ID(N'[dbo].[FK__aspnet_Pe__UserI__693CA210]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] DROP CONSTRAINT [FK__aspnet_Pe__UserI__693CA210];
GO
IF OBJECT_ID(N'[dbo].[FK__aspnet_Pr__UserI__38996AB5]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[aspnet_Profile] DROP CONSTRAINT [FK__aspnet_Pr__UserI__38996AB5];
GO
IF OBJECT_ID(N'[dbo].[FK_aspnet_UsersInRoles_aspnet_Roles]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[aspnet_UsersInRoles] DROP CONSTRAINT [FK_aspnet_UsersInRoles_aspnet_Roles];
GO
IF OBJECT_ID(N'[dbo].[FK_aspnet_UsersInRoles_aspnet_Users]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[aspnet_UsersInRoles] DROP CONSTRAINT [FK_aspnet_UsersInRoles_aspnet_Users];
GO
IF OBJECT_ID(N'[dbo].[FK_SportsPronostics]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PronosticsSet] DROP CONSTRAINT [FK_SportsPronostics];
GO
IF OBJECT_ID(N'[dbo].[FK_EventsGames]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[GamesSet] DROP CONSTRAINT [FK_EventsGames];
GO
IF OBJECT_ID(N'[dbo].[FK_GamesPronostics]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PronosticsSet] DROP CONSTRAINT [FK_GamesPronostics];
GO
IF OBJECT_ID(N'[dbo].[FK_SportsEvents]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EventsSet] DROP CONSTRAINT [FK_SportsEvents];
GO
IF OBJECT_ID(N'[dbo].[FK_aspnet_UsersSkill]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[aspnet_Users] DROP CONSTRAINT [FK_aspnet_UsersSkill];
GO
IF OBJECT_ID(N'[dbo].[FK_aspnet_UsersPronostics]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PronosticsSet] DROP CONSTRAINT [FK_aspnet_UsersPronostics];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[aspnet_Applications]', 'U') IS NOT NULL
    DROP TABLE [dbo].[aspnet_Applications];
GO
IF OBJECT_ID(N'[dbo].[aspnet_Membership]', 'U') IS NOT NULL
    DROP TABLE [dbo].[aspnet_Membership];
GO
IF OBJECT_ID(N'[dbo].[aspnet_Paths]', 'U') IS NOT NULL
    DROP TABLE [dbo].[aspnet_Paths];
GO
IF OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[aspnet_PersonalizationAllUsers];
GO
IF OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]', 'U') IS NOT NULL
    DROP TABLE [dbo].[aspnet_PersonalizationPerUser];
GO
IF OBJECT_ID(N'[dbo].[aspnet_Profile]', 'U') IS NOT NULL
    DROP TABLE [dbo].[aspnet_Profile];
GO
IF OBJECT_ID(N'[dbo].[aspnet_Roles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[aspnet_Roles];
GO
IF OBJECT_ID(N'[dbo].[aspnet_SchemaVersions]', 'U') IS NOT NULL
    DROP TABLE [dbo].[aspnet_SchemaVersions];
GO
IF OBJECT_ID(N'[dbo].[aspnet_Users]', 'U') IS NOT NULL
    DROP TABLE [dbo].[aspnet_Users];
GO
IF OBJECT_ID(N'[dbo].[aspnet_WebEvent_Events]', 'U') IS NOT NULL
    DROP TABLE [dbo].[aspnet_WebEvent_Events];
GO
IF OBJECT_ID(N'[dbo].[vw_aspnet_Applications]', 'U') IS NOT NULL
    DROP TABLE [dbo].[vw_aspnet_Applications];
GO
IF OBJECT_ID(N'[dbo].[vw_aspnet_MembershipUsers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[vw_aspnet_MembershipUsers];
GO
IF OBJECT_ID(N'[dbo].[vw_aspnet_Profiles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[vw_aspnet_Profiles];
GO
IF OBJECT_ID(N'[dbo].[vw_aspnet_Roles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[vw_aspnet_Roles];
GO
IF OBJECT_ID(N'[dbo].[vw_aspnet_Users]', 'U') IS NOT NULL
    DROP TABLE [dbo].[vw_aspnet_Users];
GO
IF OBJECT_ID(N'[dbo].[vw_aspnet_UsersInRoles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[vw_aspnet_UsersInRoles];
GO
IF OBJECT_ID(N'[dbo].[vw_aspnet_WebPartState_Paths]', 'U') IS NOT NULL
    DROP TABLE [dbo].[vw_aspnet_WebPartState_Paths];
GO
IF OBJECT_ID(N'[dbo].[vw_aspnet_WebPartState_Shared]', 'U') IS NOT NULL
    DROP TABLE [dbo].[vw_aspnet_WebPartState_Shared];
GO
IF OBJECT_ID(N'[dbo].[vw_aspnet_WebPartState_User]', 'U') IS NOT NULL
    DROP TABLE [dbo].[vw_aspnet_WebPartState_User];
GO
IF OBJECT_ID(N'[dbo].[Skill]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Skill];
GO
IF OBJECT_ID(N'[dbo].[SportsSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SportsSet];
GO
IF OBJECT_ID(N'[dbo].[PronosticsSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PronosticsSet];
GO
IF OBJECT_ID(N'[dbo].[GamesSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GamesSet];
GO
IF OBJECT_ID(N'[dbo].[EventsSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EventsSet];
GO
IF OBJECT_ID(N'[dbo].[aspnet_UsersInRoles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[aspnet_UsersInRoles];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'aspnet_Applications'
CREATE TABLE [dbo].[aspnet_Applications] (
    [ApplicationName] nvarchar(256)  NOT NULL,
    [LoweredApplicationName] nvarchar(256)  NOT NULL,
    [ApplicationId] uniqueidentifier  NOT NULL,
    [Description] nvarchar(256)  NULL
);
GO

-- Creating table 'aspnet_Membership'
CREATE TABLE [dbo].[aspnet_Membership] (
    [ApplicationId] uniqueidentifier  NOT NULL,
    [UserId] uniqueidentifier  NOT NULL,
    [Password] nvarchar(128)  NOT NULL,
    [PasswordFormat] int  NOT NULL,
    [PasswordSalt] nvarchar(128)  NOT NULL,
    [MobilePIN] nvarchar(16)  NULL,
    [Email] nvarchar(256)  NULL,
    [LoweredEmail] nvarchar(256)  NULL,
    [PasswordQuestion] nvarchar(256)  NULL,
    [PasswordAnswer] nvarchar(128)  NULL,
    [IsApproved] bit  NOT NULL,
    [IsLockedOut] bit  NOT NULL,
    [CreateDate] datetime  NOT NULL,
    [LastLoginDate] datetime  NOT NULL,
    [LastPasswordChangedDate] datetime  NOT NULL,
    [LastLockoutDate] datetime  NOT NULL,
    [FailedPasswordAttemptCount] int  NOT NULL,
    [FailedPasswordAttemptWindowStart] datetime  NOT NULL,
    [FailedPasswordAnswerAttemptCount] int  NOT NULL,
    [FailedPasswordAnswerAttemptWindowStart] datetime  NOT NULL,
    [Comment] nvarchar(max)  NULL
);
GO

-- Creating table 'aspnet_Paths'
CREATE TABLE [dbo].[aspnet_Paths] (
    [ApplicationId] uniqueidentifier  NOT NULL,
    [PathId] uniqueidentifier  NOT NULL,
    [Path] nvarchar(256)  NOT NULL,
    [LoweredPath] nvarchar(256)  NOT NULL
);
GO

-- Creating table 'aspnet_PersonalizationAllUsers'
CREATE TABLE [dbo].[aspnet_PersonalizationAllUsers] (
    [PathId] uniqueidentifier  NOT NULL,
    [PageSettings] varbinary(max)  NOT NULL,
    [LastUpdatedDate] datetime  NOT NULL
);
GO

-- Creating table 'aspnet_PersonalizationPerUser'
CREATE TABLE [dbo].[aspnet_PersonalizationPerUser] (
    [Id] uniqueidentifier  NOT NULL,
    [PathId] uniqueidentifier  NULL,
    [UserId] uniqueidentifier  NULL,
    [PageSettings] varbinary(max)  NOT NULL,
    [LastUpdatedDate] datetime  NOT NULL
);
GO

-- Creating table 'aspnet_Profile'
CREATE TABLE [dbo].[aspnet_Profile] (
    [UserId] uniqueidentifier  NOT NULL,
    [PropertyNames] nvarchar(max)  NOT NULL,
    [PropertyValuesString] nvarchar(max)  NOT NULL,
    [PropertyValuesBinary] varbinary(max)  NOT NULL,
    [LastUpdatedDate] datetime  NOT NULL
);
GO

-- Creating table 'aspnet_Roles'
CREATE TABLE [dbo].[aspnet_Roles] (
    [ApplicationId] uniqueidentifier  NOT NULL,
    [RoleId] uniqueidentifier  NOT NULL,
    [RoleName] nvarchar(256)  NOT NULL,
    [LoweredRoleName] nvarchar(256)  NOT NULL,
    [Description] nvarchar(256)  NULL
);
GO

-- Creating table 'aspnet_SchemaVersions'
CREATE TABLE [dbo].[aspnet_SchemaVersions] (
    [Feature] nvarchar(128)  NOT NULL,
    [CompatibleSchemaVersion] nvarchar(128)  NOT NULL,
    [IsCurrentVersion] bit  NOT NULL
);
GO

-- Creating table 'aspnet_Users'
CREATE TABLE [dbo].[aspnet_Users] (
    [ApplicationId] uniqueidentifier  NOT NULL,
    [UserId] uniqueidentifier  NOT NULL,
    [UserName] nvarchar(256)  NOT NULL,
    [LoweredUserName] nvarchar(256)  NOT NULL,
    [MobileAlias] nvarchar(16)  NULL,
    [IsAnonymous] bit  NOT NULL,
    [LastActivityDate] datetime  NOT NULL,
    [Skill_Id] int  NULL
);
GO

-- Creating table 'aspnet_WebEvent_Events'
CREATE TABLE [dbo].[aspnet_WebEvent_Events] (
    [EventId] char(32)  NOT NULL,
    [EventTimeUtc] datetime  NOT NULL,
    [EventTime] datetime  NOT NULL,
    [EventType] nvarchar(256)  NOT NULL,
    [EventSequence] decimal(19,0)  NOT NULL,
    [EventOccurrence] decimal(19,0)  NOT NULL,
    [EventCode] int  NOT NULL,
    [EventDetailCode] int  NOT NULL,
    [Message] nvarchar(1024)  NULL,
    [ApplicationPath] nvarchar(256)  NULL,
    [ApplicationVirtualPath] nvarchar(256)  NULL,
    [MachineName] nvarchar(256)  NOT NULL,
    [RequestUrl] nvarchar(1024)  NULL,
    [ExceptionType] nvarchar(256)  NULL,
    [Details] nvarchar(max)  NULL
);
GO

-- Creating table 'vw_aspnet_Applications'
CREATE TABLE [dbo].[vw_aspnet_Applications] (
    [ApplicationName] nvarchar(256)  NOT NULL,
    [LoweredApplicationName] nvarchar(256)  NOT NULL,
    [ApplicationId] uniqueidentifier  NOT NULL,
    [Description] nvarchar(256)  NULL
);
GO

-- Creating table 'vw_aspnet_MembershipUsers'
CREATE TABLE [dbo].[vw_aspnet_MembershipUsers] (
    [UserId] uniqueidentifier  NOT NULL,
    [PasswordFormat] int  NOT NULL,
    [MobilePIN] nvarchar(16)  NULL,
    [Email] nvarchar(256)  NULL,
    [LoweredEmail] nvarchar(256)  NULL,
    [PasswordQuestion] nvarchar(256)  NULL,
    [PasswordAnswer] nvarchar(128)  NULL,
    [IsApproved] bit  NOT NULL,
    [IsLockedOut] bit  NOT NULL,
    [CreateDate] datetime  NOT NULL,
    [LastLoginDate] datetime  NOT NULL,
    [LastPasswordChangedDate] datetime  NOT NULL,
    [LastLockoutDate] datetime  NOT NULL,
    [FailedPasswordAttemptCount] int  NOT NULL,
    [FailedPasswordAttemptWindowStart] datetime  NOT NULL,
    [FailedPasswordAnswerAttemptCount] int  NOT NULL,
    [FailedPasswordAnswerAttemptWindowStart] datetime  NOT NULL,
    [Comment] nvarchar(max)  NULL,
    [ApplicationId] uniqueidentifier  NOT NULL,
    [UserName] nvarchar(256)  NOT NULL,
    [MobileAlias] nvarchar(16)  NULL,
    [IsAnonymous] bit  NOT NULL,
    [LastActivityDate] datetime  NOT NULL
);
GO

-- Creating table 'vw_aspnet_Profiles'
CREATE TABLE [dbo].[vw_aspnet_Profiles] (
    [UserId] uniqueidentifier  NOT NULL,
    [LastUpdatedDate] datetime  NOT NULL,
    [DataSize] int  NULL
);
GO

-- Creating table 'vw_aspnet_Roles'
CREATE TABLE [dbo].[vw_aspnet_Roles] (
    [ApplicationId] uniqueidentifier  NOT NULL,
    [RoleId] uniqueidentifier  NOT NULL,
    [RoleName] nvarchar(256)  NOT NULL,
    [LoweredRoleName] nvarchar(256)  NOT NULL,
    [Description] nvarchar(256)  NULL
);
GO

-- Creating table 'vw_aspnet_Users'
CREATE TABLE [dbo].[vw_aspnet_Users] (
    [ApplicationId] uniqueidentifier  NOT NULL,
    [UserId] uniqueidentifier  NOT NULL,
    [UserName] nvarchar(256)  NOT NULL,
    [LoweredUserName] nvarchar(256)  NOT NULL,
    [MobileAlias] nvarchar(16)  NULL,
    [IsAnonymous] bit  NOT NULL,
    [LastActivityDate] datetime  NOT NULL
);
GO

-- Creating table 'vw_aspnet_UsersInRoles'
CREATE TABLE [dbo].[vw_aspnet_UsersInRoles] (
    [UserId] uniqueidentifier  NOT NULL,
    [RoleId] uniqueidentifier  NOT NULL
);
GO

-- Creating table 'vw_aspnet_WebPartState_Paths'
CREATE TABLE [dbo].[vw_aspnet_WebPartState_Paths] (
    [ApplicationId] uniqueidentifier  NOT NULL,
    [PathId] uniqueidentifier  NOT NULL,
    [Path] nvarchar(256)  NOT NULL,
    [LoweredPath] nvarchar(256)  NOT NULL
);
GO

-- Creating table 'vw_aspnet_WebPartState_Shared'
CREATE TABLE [dbo].[vw_aspnet_WebPartState_Shared] (
    [PathId] uniqueidentifier  NOT NULL,
    [DataSize] int  NULL,
    [LastUpdatedDate] datetime  NOT NULL
);
GO

-- Creating table 'vw_aspnet_WebPartState_User'
CREATE TABLE [dbo].[vw_aspnet_WebPartState_User] (
    [PathId] uniqueidentifier  NULL,
    [UserId] uniqueidentifier  NULL,
    [DataSize] int  NULL,
    [LastUpdatedDate] datetime  NOT NULL
);
GO

-- Creating table 'Skill'
CREATE TABLE [dbo].[Skill] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [AverageScore] float  NOT NULL
);
GO

-- Creating table 'SportsSet'
CREATE TABLE [dbo].[SportsSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'PronosticsSet'
CREATE TABLE [dbo].[PronosticsSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Score_opp_1] float  NOT NULL,
    [Score_opp_2] float  NOT NULL,
    [Sports_Id] int  NOT NULL,
    [Games_Id] int  NOT NULL,
    [aspnet_Users_UserId] uniqueidentifier  NOT NULL
);
GO

-- Creating table 'GamesSet'
CREATE TABLE [dbo].[GamesSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Opponent_1] nvarchar(max)  NOT NULL,
    [Opponent_2] nvarchar(max)  NOT NULL,
    [Date] datetime  NOT NULL,
    [Events_Id] int  NOT NULL
);
GO

-- Creating table 'EventsSet'
CREATE TABLE [dbo].[EventsSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [StartDate] datetime  NULL,
    [EndDate] datetime  NULL,
    [Description] nvarchar(max)  NULL,
    [Sports_Id] int  NOT NULL
);
GO

-- Creating table 'aspnet_UsersInRoles'
CREATE TABLE [dbo].[aspnet_UsersInRoles] (
    [aspnet_Roles_RoleId] uniqueidentifier  NOT NULL,
    [aspnet_Users_UserId] uniqueidentifier  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [ApplicationId] in table 'aspnet_Applications'
ALTER TABLE [dbo].[aspnet_Applications]
ADD CONSTRAINT [PK_aspnet_Applications]
    PRIMARY KEY CLUSTERED ([ApplicationId] ASC);
GO

-- Creating primary key on [UserId] in table 'aspnet_Membership'
ALTER TABLE [dbo].[aspnet_Membership]
ADD CONSTRAINT [PK_aspnet_Membership]
    PRIMARY KEY CLUSTERED ([UserId] ASC);
GO

-- Creating primary key on [PathId] in table 'aspnet_Paths'
ALTER TABLE [dbo].[aspnet_Paths]
ADD CONSTRAINT [PK_aspnet_Paths]
    PRIMARY KEY CLUSTERED ([PathId] ASC);
GO

-- Creating primary key on [PathId] in table 'aspnet_PersonalizationAllUsers'
ALTER TABLE [dbo].[aspnet_PersonalizationAllUsers]
ADD CONSTRAINT [PK_aspnet_PersonalizationAllUsers]
    PRIMARY KEY CLUSTERED ([PathId] ASC);
GO

-- Creating primary key on [Id] in table 'aspnet_PersonalizationPerUser'
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]
ADD CONSTRAINT [PK_aspnet_PersonalizationPerUser]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [UserId] in table 'aspnet_Profile'
ALTER TABLE [dbo].[aspnet_Profile]
ADD CONSTRAINT [PK_aspnet_Profile]
    PRIMARY KEY CLUSTERED ([UserId] ASC);
GO

-- Creating primary key on [RoleId] in table 'aspnet_Roles'
ALTER TABLE [dbo].[aspnet_Roles]
ADD CONSTRAINT [PK_aspnet_Roles]
    PRIMARY KEY CLUSTERED ([RoleId] ASC);
GO

-- Creating primary key on [Feature], [CompatibleSchemaVersion] in table 'aspnet_SchemaVersions'
ALTER TABLE [dbo].[aspnet_SchemaVersions]
ADD CONSTRAINT [PK_aspnet_SchemaVersions]
    PRIMARY KEY CLUSTERED ([Feature], [CompatibleSchemaVersion] ASC);
GO

-- Creating primary key on [UserId] in table 'aspnet_Users'
ALTER TABLE [dbo].[aspnet_Users]
ADD CONSTRAINT [PK_aspnet_Users]
    PRIMARY KEY CLUSTERED ([UserId] ASC);
GO

-- Creating primary key on [EventId] in table 'aspnet_WebEvent_Events'
ALTER TABLE [dbo].[aspnet_WebEvent_Events]
ADD CONSTRAINT [PK_aspnet_WebEvent_Events]
    PRIMARY KEY CLUSTERED ([EventId] ASC);
GO

-- Creating primary key on [ApplicationName], [LoweredApplicationName], [ApplicationId] in table 'vw_aspnet_Applications'
ALTER TABLE [dbo].[vw_aspnet_Applications]
ADD CONSTRAINT [PK_vw_aspnet_Applications]
    PRIMARY KEY CLUSTERED ([ApplicationName], [LoweredApplicationName], [ApplicationId] ASC);
GO

-- Creating primary key on [UserId], [PasswordFormat], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [ApplicationId], [UserName], [IsAnonymous], [LastActivityDate] in table 'vw_aspnet_MembershipUsers'
ALTER TABLE [dbo].[vw_aspnet_MembershipUsers]
ADD CONSTRAINT [PK_vw_aspnet_MembershipUsers]
    PRIMARY KEY CLUSTERED ([UserId], [PasswordFormat], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [ApplicationId], [UserName], [IsAnonymous], [LastActivityDate] ASC);
GO

-- Creating primary key on [UserId], [LastUpdatedDate] in table 'vw_aspnet_Profiles'
ALTER TABLE [dbo].[vw_aspnet_Profiles]
ADD CONSTRAINT [PK_vw_aspnet_Profiles]
    PRIMARY KEY CLUSTERED ([UserId], [LastUpdatedDate] ASC);
GO

-- Creating primary key on [ApplicationId], [RoleId], [RoleName], [LoweredRoleName] in table 'vw_aspnet_Roles'
ALTER TABLE [dbo].[vw_aspnet_Roles]
ADD CONSTRAINT [PK_vw_aspnet_Roles]
    PRIMARY KEY CLUSTERED ([ApplicationId], [RoleId], [RoleName], [LoweredRoleName] ASC);
GO

-- Creating primary key on [ApplicationId], [UserId], [UserName], [LoweredUserName], [IsAnonymous], [LastActivityDate] in table 'vw_aspnet_Users'
ALTER TABLE [dbo].[vw_aspnet_Users]
ADD CONSTRAINT [PK_vw_aspnet_Users]
    PRIMARY KEY CLUSTERED ([ApplicationId], [UserId], [UserName], [LoweredUserName], [IsAnonymous], [LastActivityDate] ASC);
GO

-- Creating primary key on [UserId], [RoleId] in table 'vw_aspnet_UsersInRoles'
ALTER TABLE [dbo].[vw_aspnet_UsersInRoles]
ADD CONSTRAINT [PK_vw_aspnet_UsersInRoles]
    PRIMARY KEY CLUSTERED ([UserId], [RoleId] ASC);
GO

-- Creating primary key on [ApplicationId], [PathId], [Path], [LoweredPath] in table 'vw_aspnet_WebPartState_Paths'
ALTER TABLE [dbo].[vw_aspnet_WebPartState_Paths]
ADD CONSTRAINT [PK_vw_aspnet_WebPartState_Paths]
    PRIMARY KEY CLUSTERED ([ApplicationId], [PathId], [Path], [LoweredPath] ASC);
GO

-- Creating primary key on [PathId], [LastUpdatedDate] in table 'vw_aspnet_WebPartState_Shared'
ALTER TABLE [dbo].[vw_aspnet_WebPartState_Shared]
ADD CONSTRAINT [PK_vw_aspnet_WebPartState_Shared]
    PRIMARY KEY CLUSTERED ([PathId], [LastUpdatedDate] ASC);
GO

-- Creating primary key on [LastUpdatedDate] in table 'vw_aspnet_WebPartState_User'
ALTER TABLE [dbo].[vw_aspnet_WebPartState_User]
ADD CONSTRAINT [PK_vw_aspnet_WebPartState_User]
    PRIMARY KEY CLUSTERED ([LastUpdatedDate] ASC);
GO

-- Creating primary key on [Id] in table 'Skill'
ALTER TABLE [dbo].[Skill]
ADD CONSTRAINT [PK_Skill]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'SportsSet'
ALTER TABLE [dbo].[SportsSet]
ADD CONSTRAINT [PK_SportsSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PronosticsSet'
ALTER TABLE [dbo].[PronosticsSet]
ADD CONSTRAINT [PK_PronosticsSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'GamesSet'
ALTER TABLE [dbo].[GamesSet]
ADD CONSTRAINT [PK_GamesSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'EventsSet'
ALTER TABLE [dbo].[EventsSet]
ADD CONSTRAINT [PK_EventsSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [aspnet_Roles_RoleId], [aspnet_Users_UserId] in table 'aspnet_UsersInRoles'
ALTER TABLE [dbo].[aspnet_UsersInRoles]
ADD CONSTRAINT [PK_aspnet_UsersInRoles]
    PRIMARY KEY NONCLUSTERED ([aspnet_Roles_RoleId], [aspnet_Users_UserId] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [ApplicationId] in table 'aspnet_Membership'
ALTER TABLE [dbo].[aspnet_Membership]
ADD CONSTRAINT [FK__aspnet_Me__Appli__21B6055D]
    FOREIGN KEY ([ApplicationId])
    REFERENCES [dbo].[aspnet_Applications]
        ([ApplicationId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK__aspnet_Me__Appli__21B6055D'
CREATE INDEX [IX_FK__aspnet_Me__Appli__21B6055D]
ON [dbo].[aspnet_Membership]
    ([ApplicationId]);
GO

-- Creating foreign key on [ApplicationId] in table 'aspnet_Paths'
ALTER TABLE [dbo].[aspnet_Paths]
ADD CONSTRAINT [FK__aspnet_Pa__Appli__5AEE82B9]
    FOREIGN KEY ([ApplicationId])
    REFERENCES [dbo].[aspnet_Applications]
        ([ApplicationId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK__aspnet_Pa__Appli__5AEE82B9'
CREATE INDEX [IX_FK__aspnet_Pa__Appli__5AEE82B9]
ON [dbo].[aspnet_Paths]
    ([ApplicationId]);
GO

-- Creating foreign key on [ApplicationId] in table 'aspnet_Roles'
ALTER TABLE [dbo].[aspnet_Roles]
ADD CONSTRAINT [FK__aspnet_Ro__Appli__440B1D61]
    FOREIGN KEY ([ApplicationId])
    REFERENCES [dbo].[aspnet_Applications]
        ([ApplicationId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK__aspnet_Ro__Appli__440B1D61'
CREATE INDEX [IX_FK__aspnet_Ro__Appli__440B1D61]
ON [dbo].[aspnet_Roles]
    ([ApplicationId]);
GO

-- Creating foreign key on [ApplicationId] in table 'aspnet_Users'
ALTER TABLE [dbo].[aspnet_Users]
ADD CONSTRAINT [FK__aspnet_Us__Appli__0DAF0CB0]
    FOREIGN KEY ([ApplicationId])
    REFERENCES [dbo].[aspnet_Applications]
        ([ApplicationId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK__aspnet_Us__Appli__0DAF0CB0'
CREATE INDEX [IX_FK__aspnet_Us__Appli__0DAF0CB0]
ON [dbo].[aspnet_Users]
    ([ApplicationId]);
GO

-- Creating foreign key on [UserId] in table 'aspnet_Membership'
ALTER TABLE [dbo].[aspnet_Membership]
ADD CONSTRAINT [FK__aspnet_Me__UserI__22AA2996]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[aspnet_Users]
        ([UserId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [PathId] in table 'aspnet_PersonalizationAllUsers'
ALTER TABLE [dbo].[aspnet_PersonalizationAllUsers]
ADD CONSTRAINT [FK__aspnet_Pe__PathI__628FA481]
    FOREIGN KEY ([PathId])
    REFERENCES [dbo].[aspnet_Paths]
        ([PathId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [PathId] in table 'aspnet_PersonalizationPerUser'
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]
ADD CONSTRAINT [FK__aspnet_Pe__PathI__68487DD7]
    FOREIGN KEY ([PathId])
    REFERENCES [dbo].[aspnet_Paths]
        ([PathId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK__aspnet_Pe__PathI__68487DD7'
CREATE INDEX [IX_FK__aspnet_Pe__PathI__68487DD7]
ON [dbo].[aspnet_PersonalizationPerUser]
    ([PathId]);
GO

-- Creating foreign key on [UserId] in table 'aspnet_PersonalizationPerUser'
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]
ADD CONSTRAINT [FK__aspnet_Pe__UserI__693CA210]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[aspnet_Users]
        ([UserId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK__aspnet_Pe__UserI__693CA210'
CREATE INDEX [IX_FK__aspnet_Pe__UserI__693CA210]
ON [dbo].[aspnet_PersonalizationPerUser]
    ([UserId]);
GO

-- Creating foreign key on [UserId] in table 'aspnet_Profile'
ALTER TABLE [dbo].[aspnet_Profile]
ADD CONSTRAINT [FK__aspnet_Pr__UserI__38996AB5]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[aspnet_Users]
        ([UserId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [aspnet_Roles_RoleId] in table 'aspnet_UsersInRoles'
ALTER TABLE [dbo].[aspnet_UsersInRoles]
ADD CONSTRAINT [FK_aspnet_UsersInRoles_aspnet_Roles]
    FOREIGN KEY ([aspnet_Roles_RoleId])
    REFERENCES [dbo].[aspnet_Roles]
        ([RoleId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [aspnet_Users_UserId] in table 'aspnet_UsersInRoles'
ALTER TABLE [dbo].[aspnet_UsersInRoles]
ADD CONSTRAINT [FK_aspnet_UsersInRoles_aspnet_Users]
    FOREIGN KEY ([aspnet_Users_UserId])
    REFERENCES [dbo].[aspnet_Users]
        ([UserId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_aspnet_UsersInRoles_aspnet_Users'
CREATE INDEX [IX_FK_aspnet_UsersInRoles_aspnet_Users]
ON [dbo].[aspnet_UsersInRoles]
    ([aspnet_Users_UserId]);
GO

-- Creating foreign key on [Sports_Id] in table 'PronosticsSet'
ALTER TABLE [dbo].[PronosticsSet]
ADD CONSTRAINT [FK_SportsPronostics]
    FOREIGN KEY ([Sports_Id])
    REFERENCES [dbo].[SportsSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_SportsPronostics'
CREATE INDEX [IX_FK_SportsPronostics]
ON [dbo].[PronosticsSet]
    ([Sports_Id]);
GO

-- Creating foreign key on [Events_Id] in table 'GamesSet'
ALTER TABLE [dbo].[GamesSet]
ADD CONSTRAINT [FK_EventsGames]
    FOREIGN KEY ([Events_Id])
    REFERENCES [dbo].[EventsSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_EventsGames'
CREATE INDEX [IX_FK_EventsGames]
ON [dbo].[GamesSet]
    ([Events_Id]);
GO

-- Creating foreign key on [Games_Id] in table 'PronosticsSet'
ALTER TABLE [dbo].[PronosticsSet]
ADD CONSTRAINT [FK_GamesPronostics]
    FOREIGN KEY ([Games_Id])
    REFERENCES [dbo].[GamesSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_GamesPronostics'
CREATE INDEX [IX_FK_GamesPronostics]
ON [dbo].[PronosticsSet]
    ([Games_Id]);
GO

-- Creating foreign key on [Sports_Id] in table 'EventsSet'
ALTER TABLE [dbo].[EventsSet]
ADD CONSTRAINT [FK_SportsEvents]
    FOREIGN KEY ([Sports_Id])
    REFERENCES [dbo].[SportsSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_SportsEvents'
CREATE INDEX [IX_FK_SportsEvents]
ON [dbo].[EventsSet]
    ([Sports_Id]);
GO

-- Creating foreign key on [Skill_Id] in table 'aspnet_Users'
ALTER TABLE [dbo].[aspnet_Users]
ADD CONSTRAINT [FK_aspnet_UsersSkill]
    FOREIGN KEY ([Skill_Id])
    REFERENCES [dbo].[Skill]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_aspnet_UsersSkill'
CREATE INDEX [IX_FK_aspnet_UsersSkill]
ON [dbo].[aspnet_Users]
    ([Skill_Id]);
GO

-- Creating foreign key on [aspnet_Users_UserId] in table 'PronosticsSet'
ALTER TABLE [dbo].[PronosticsSet]
ADD CONSTRAINT [FK_aspnet_UsersPronostics]
    FOREIGN KEY ([aspnet_Users_UserId])
    REFERENCES [dbo].[aspnet_Users]
        ([UserId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_aspnet_UsersPronostics'
CREATE INDEX [IX_FK_aspnet_UsersPronostics]
ON [dbo].[PronosticsSet]
    ([aspnet_Users_UserId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------