
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 11/21/2013 14:57:06
-- Generated from EDMX file: D:\Users\edussert\Documents\Visual Studio 2010\Projects\PronoProject\PronoProject\Models\Model.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [pronistics];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_SkillUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UserSet] DROP CONSTRAINT [FK_SkillUser];
GO
IF OBJECT_ID(N'[dbo].[FK_SportsPronostics]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PronosticsSet] DROP CONSTRAINT [FK_SportsPronostics];
GO
IF OBJECT_ID(N'[dbo].[FK_UserPronostics]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PronosticsSet] DROP CONSTRAINT [FK_UserPronostics];
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

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[UserSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UserSet];
GO
IF OBJECT_ID(N'[dbo].[SkillSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SkillSet];
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

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'UserSet'
CREATE TABLE [dbo].[UserSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Skill_Id] int  NULL
);
GO

-- Creating table 'SkillSet'
CREATE TABLE [dbo].[SkillSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [AverageScore] nvarchar(max)  NOT NULL
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
    [Score_opp_1] nvarchar(max)  NOT NULL,
    [Score_opp_2] nvarchar(max)  NOT NULL,
    [Sports_Id] int  NOT NULL,
    [User_Id] int  NOT NULL,
    [Games_Id] int  NOT NULL
);
GO

-- Creating table 'GamesSet'
CREATE TABLE [dbo].[GamesSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Opponent_1] nvarchar(max)  NOT NULL,
    [Opponent_2] nvarchar(max)  NOT NULL,
    [Date] nvarchar(max)  NOT NULL,
    [Events_Id] int  NOT NULL
);
GO

-- Creating table 'EventsSet'
CREATE TABLE [dbo].[EventsSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Sports_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'UserSet'
ALTER TABLE [dbo].[UserSet]
ADD CONSTRAINT [PK_UserSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'SkillSet'
ALTER TABLE [dbo].[SkillSet]
ADD CONSTRAINT [PK_SkillSet]
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

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Skill_Id] in table 'UserSet'
ALTER TABLE [dbo].[UserSet]
ADD CONSTRAINT [FK_SkillUser]
    FOREIGN KEY ([Skill_Id])
    REFERENCES [dbo].[SkillSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_SkillUser'
CREATE INDEX [IX_FK_SkillUser]
ON [dbo].[UserSet]
    ([Skill_Id]);
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

-- Creating foreign key on [User_Id] in table 'PronosticsSet'
ALTER TABLE [dbo].[PronosticsSet]
ADD CONSTRAINT [FK_UserPronostics]
    FOREIGN KEY ([User_Id])
    REFERENCES [dbo].[UserSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UserPronostics'
CREATE INDEX [IX_FK_UserPronostics]
ON [dbo].[PronosticsSet]
    ([User_Id]);
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

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------