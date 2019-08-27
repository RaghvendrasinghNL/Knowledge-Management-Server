
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 08/25/2019 02:07:47
-- Generated from EDMX file: C:\Users\win-dev\Desktop\Projects\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [test];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK__Associate__Assoc__1A9EF37A]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AssociatedTag] DROP CONSTRAINT [FK__Associate__Assoc__1A9EF37A];
GO
IF OBJECT_ID(N'[dbo].[FK__Associate__TagId__19AACF41]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AssociatedTag] DROP CONSTRAINT [FK__Associate__TagId__19AACF41];
GO
IF OBJECT_ID(N'[dbo].[FK__Comments__PostId__4AB81AF0]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Comment] DROP CONSTRAINT [FK__Comments__PostId__4AB81AF0];
GO
IF OBJECT_ID(N'[dbo].[FK__Comments__UserId__10566F31]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Comment] DROP CONSTRAINT [FK__Comments__UserId__10566F31];
GO
IF OBJECT_ID(N'[dbo].[FK__Notificat__PostI__5070F446]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Notification] DROP CONSTRAINT [FK__Notificat__PostI__5070F446];
GO
IF OBJECT_ID(N'[dbo].[FK__Notificat__UserI__123EB7A3]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Notification] DROP CONSTRAINT [FK__Notificat__UserI__123EB7A3];
GO
IF OBJECT_ID(N'[dbo].[FK__Post__CategoryId__02084FDA]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Post] DROP CONSTRAINT [FK__Post__CategoryId__02084FDA];
GO
IF OBJECT_ID(N'[dbo].[FK__Post__UserId__14270015]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Post] DROP CONSTRAINT [FK__Post__UserId__14270015];
GO
IF OBJECT_ID(N'[dbo].[FK__Report__PostId__4316F928]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Report] DROP CONSTRAINT [FK__Report__PostId__4316F928];
GO
IF OBJECT_ID(N'[dbo].[FK__Report__UserId__114A936A]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Report] DROP CONSTRAINT [FK__Report__UserId__114A936A];
GO
IF OBJECT_ID(N'[dbo].[FK_CommentReport_Comments]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CommentReport] DROP CONSTRAINT [FK_CommentReport_Comments];
GO
IF OBJECT_ID(N'[dbo].[FK_CommentReport_Users]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CommentReport] DROP CONSTRAINT [FK_CommentReport_Users];
GO
IF OBJECT_ID(N'[dbo].[FK_Like_Post]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Like] DROP CONSTRAINT [FK_Like_Post];
GO
IF OBJECT_ID(N'[dbo].[FK_Like_Users]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Like] DROP CONSTRAINT [FK_Like_Users];
GO
IF OBJECT_ID(N'[dbo].[FK_PostTags_Post]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PostTag] DROP CONSTRAINT [FK_PostTags_Post];
GO
IF OBJECT_ID(N'[dbo].[FK_PostTags_Tag]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PostTag] DROP CONSTRAINT [FK_PostTags_Tag];
GO
IF OBJECT_ID(N'[dbo].[FK_Tag_Tag]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Tag] DROP CONSTRAINT [FK_Tag_Tag];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[AssociatedTag]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AssociatedTag];
GO
IF OBJECT_ID(N'[dbo].[Category]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Category];
GO
IF OBJECT_ID(N'[dbo].[CommentReport]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CommentReport];
GO
IF OBJECT_ID(N'[dbo].[Comment]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Comment];
GO
IF OBJECT_ID(N'[dbo].[Like]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Like];
GO
IF OBJECT_ID(N'[dbo].[Notification]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Notification];
GO
IF OBJECT_ID(N'[dbo].[Post]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Post];
GO
IF OBJECT_ID(N'[dbo].[PostTag]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PostTag];
GO
IF OBJECT_ID(N'[dbo].[Report]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Report];
GO
IF OBJECT_ID(N'[dbo].[sysdiagram]', 'U') IS NOT NULL
    DROP TABLE [dbo].[sysdiagram];
GO
IF OBJECT_ID(N'[dbo].[Tag]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Tag];
GO
IF OBJECT_ID(N'[dbo].[User]', 'U') IS NOT NULL
    DROP TABLE [dbo].[User];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Categories'
CREATE TABLE [dbo].[Category] (
    [CategoryId] int  NOT NULL,
    [Title] varchar(100)  NOT NULL
);
GO

-- Creating table 'Comments'
CREATE TABLE [dbo].[Comment] (
    [CommentId] int IDENTITY(1,1) NOT NULL,
    [Content] varchar(max)  NOT NULL,
    [CommentDate] datetime  NOT NULL,
    [PostId] int  NOT NULL,
    [UserId] int  NOT NULL
);
GO

-- Creating table 'PostTags'
CREATE TABLE [dbo].[PostTag] (
    [PostId] int  NOT NULL,
    [TagId] int  NOT NULL,
    [Id] int IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'Reports'
CREATE TABLE [dbo].[Report] (
    [ReportId] int IDENTITY(1,1) NOT NULL,
    [Comment] varchar(max)  NOT NULL,
    [PostId] int  NOT NULL,
    [UserId] int  NOT NULL,
    [Isread] int  NOT NULL
);
GO

-- Creating table 'sysdiagrams'
CREATE TABLE [dbo].[sysdiagram] (
    [name] nvarchar(128)  NOT NULL,
    [principal_id] int  NOT NULL,
    [diagram_id] int IDENTITY(1,1) NOT NULL,
    [version] int  NULL,
    [definition] varbinary(max)  NULL
);
GO

-- Creating table 'Tags'
CREATE TABLE [dbo].[Tag] (
    [TagId] int  NOT NULL,
    [TagName] varchar(50)  NOT NULL
);
GO

-- Creating table 'Notifications'
CREATE TABLE [dbo].[Notification] (
    [NotificationId] int IDENTITY(1,1) NOT NULL,
    [NotificationType] int  NOT NULL,
    [IsRead] int  NOT NULL,
    [PostId] int  NOT NULL,
    [UserId] int  NOT NULL
);
GO

-- Creating table 'Posts'
CREATE TABLE [dbo].[Post] (
    [PostId] int IDENTITY(1,1) NOT NULL,
    [Title] varchar(max)  NOT NULL,
    [Description] varchar(max)  NOT NULL,
    [PostDate] datetime  NOT NULL,
    [UserId] int  NOT NULL,
    [CategoryId] int  NOT NULL,
    [IsDeleted] bit  NOT NULL,
    [UserImage] varchar(max)  NULL
);
GO

-- Creating table 'Likes'
CREATE TABLE [dbo].[Like] (
    [LikeId] int IDENTITY(1,1) NOT NULL,
    [PostId] int  NOT NULL,
    [UserId] int  NOT NULL
);
GO

-- Creating table 'Users'
CREATE TABLE [dbo].[User] (
    [UserId] int IDENTITY(1,1) NOT NULL,
    [FirstName] varchar(100)  NOT NULL,
    [LastName] varchar(100)  NULL,
    [EmailId] varchar(100)  NOT NULL,
    [Password] varchar(100)  NULL,
    [isActive] bit  NULL,
    [isModerator] int  NULL,
    [Token] varchar(250)  NULL
);
GO

-- Creating table 'CommentReports'
CREATE TABLE [dbo].[CommentReport] (
    [ReportId] int IDENTITY(1,1) NOT NULL,
    [Comment] varchar(500)  NOT NULL,
    [UserId] int  NOT NULL,
    [CommentId] int  NOT NULL
);
GO

-- Creating table 'AssociatedTags'
CREATE TABLE [dbo].[AssociatedTag] (
    [AId] int IDENTITY(1,1) NOT NULL,
    [TagId] int  NOT NULL,
    [AssociatedId] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [CategoryId] in table 'Categories'
ALTER TABLE [dbo].[Category]
ADD CONSTRAINT [PK_Category]
    PRIMARY KEY CLUSTERED ([CategoryId] ASC);
GO

-- Creating primary key on [CommentId] in table 'Comments'
ALTER TABLE [dbo].[Comment]
ADD CONSTRAINT [PK_Comment]
    PRIMARY KEY CLUSTERED ([CommentId] ASC);
GO

-- Creating primary key on [Id] in table 'PostTags'
ALTER TABLE [dbo].[PostTag]
ADD CONSTRAINT [PK_PostTag]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [ReportId] in table 'Reports'
ALTER TABLE [dbo].[Report]
ADD CONSTRAINT [PK_Report]
    PRIMARY KEY CLUSTERED ([ReportId] ASC);
GO

-- Creating primary key on [diagram_id] in table 'sysdiagrams'
ALTER TABLE [dbo].[sysdiagram]
ADD CONSTRAINT [PK_sysdiagram]
    PRIMARY KEY CLUSTERED ([diagram_id] ASC);
GO

-- Creating primary key on [TagId] in table 'Tags'
ALTER TABLE [dbo].[Tag]
ADD CONSTRAINT [PK_Tag]
    PRIMARY KEY CLUSTERED ([TagId] ASC);
GO

-- Creating primary key on [NotificationId] in table 'Notifications'
ALTER TABLE [dbo].[Notification]
ADD CONSTRAINT [PK_Notification]
    PRIMARY KEY CLUSTERED ([NotificationId] ASC);
GO

-- Creating primary key on [PostId] in table 'Posts'
ALTER TABLE [dbo].[Post]
ADD CONSTRAINT [PK_Post]
    PRIMARY KEY CLUSTERED ([PostId] ASC);
GO

-- Creating primary key on [LikeId] in table 'Likes'
ALTER TABLE [dbo].[Like]
ADD CONSTRAINT [PK_Like]
    PRIMARY KEY CLUSTERED ([LikeId] ASC);
GO

-- Creating primary key on [UserId] in table 'Users'
ALTER TABLE [dbo].[User]
ADD CONSTRAINT [PK_User]
    PRIMARY KEY CLUSTERED ([UserId] ASC);
GO

-- Creating primary key on [ReportId] in table 'CommentReports'
ALTER TABLE [dbo].[CommentReport]
ADD CONSTRAINT [PK_CommentReport]
    PRIMARY KEY CLUSTERED ([ReportId] ASC);
GO

-- Creating primary key on [AId] in table 'AssociatedTags'
ALTER TABLE [dbo].[AssociatedTag]
ADD CONSTRAINT [PK_AssociatedTag]
    PRIMARY KEY CLUSTERED ([AId] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [TagId] in table 'PostTags'
ALTER TABLE [dbo].[PostTag]
ADD CONSTRAINT [FK_PostTag_Tag]
    FOREIGN KEY ([TagId])
    REFERENCES [dbo].[Tag]
        ([TagId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PostTags_Tag'
CREATE INDEX [IX_FK_PostTags_Tag]
ON [dbo].[PostTag]
    ([TagId]);
GO

-- Creating foreign key on [TagId] in table 'Tags'
ALTER TABLE [dbo].[Tag]
ADD CONSTRAINT [FK_Tag_Tag]
    FOREIGN KEY ([TagId])
    REFERENCES [dbo].[Tag]
        ([TagId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [CategoryId] in table 'Posts'
ALTER TABLE [dbo].[Post]
ADD CONSTRAINT [FK__Post__CategoryId__02084FDA]
    FOREIGN KEY ([CategoryId])
    REFERENCES [dbo].[Category]
        ([CategoryId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Post__CategoryId__02084FDA'
CREATE INDEX [IX_FK__Post__CategoryId__02084FDA]
ON [dbo].[Post]
    ([CategoryId]);
GO

-- Creating foreign key on [PostId] in table 'Comments'
ALTER TABLE [dbo].[Comment]
ADD CONSTRAINT [FK__Comments__PostId__4AB81AF0]
    FOREIGN KEY ([PostId])
    REFERENCES [dbo].[Post]
        ([PostId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Comments__PostId__4AB81AF0'
CREATE INDEX [IX_FK__Comments__PostId__4AB81AF0]
ON [dbo].[Comment]
    ([PostId]);
GO

-- Creating foreign key on [PostId] in table 'Notifications'
ALTER TABLE [dbo].[Notification]
ADD CONSTRAINT [FK__Notificat__PostI__5070F446]
    FOREIGN KEY ([PostId])
    REFERENCES [dbo].[Post]
        ([PostId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Notificat__PostI__5070F446'
CREATE INDEX [IX_FK__Notificat__PostI__5070F446]
ON [dbo].[Notification]
    ([PostId]);
GO

-- Creating foreign key on [PostId] in table 'Reports'
ALTER TABLE [dbo].[Report]
ADD CONSTRAINT [FK__Report__PostId__4316F928]
    FOREIGN KEY ([PostId])
    REFERENCES [dbo].[Post]
        ([PostId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Report__PostId__4316F928'
CREATE INDEX [IX_FK__Report__PostId__4316F928]
ON [dbo].[Report]
    ([PostId]);
GO

-- Creating foreign key on [PostId] in table 'PostTags'
ALTER TABLE [dbo].[PostTag]
ADD CONSTRAINT [FK_PostTags_Post]
    FOREIGN KEY ([PostId])
    REFERENCES [dbo].[Post]
        ([PostId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PostTags_Post'
CREATE INDEX [IX_FK_PostTags_Post]
ON [dbo].[PostTag]
    ([PostId]);
GO

-- Creating foreign key on [PostId] in table 'Likes'
ALTER TABLE [dbo].[Like]
ADD CONSTRAINT [FK_Like_Post]
    FOREIGN KEY ([PostId])
    REFERENCES [dbo].[Post]
        ([PostId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Like_Post'
CREATE INDEX [IX_FK_Like_Post]
ON [dbo].[Like]
    ([PostId]);
GO

-- Creating foreign key on [UserId] in table 'Comments'
ALTER TABLE [dbo].[Comment]
ADD CONSTRAINT [FK__Comments__UserId__10566F31]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[User]
        ([UserId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Comments__UserId__10566F31'
CREATE INDEX [IX_FK__Comments__UserId__10566F31]
ON [dbo].[Comment]
    ([UserId]);
GO

-- Creating foreign key on [UserId] in table 'Likes'
ALTER TABLE [dbo].[Like]
ADD CONSTRAINT [FK_Like_Users]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[User]
        ([UserId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Like_Users'
CREATE INDEX [IX_FK_Like_Users]
ON [dbo].[Like]
    ([UserId]);
GO

-- Creating foreign key on [UserId] in table 'Notifications'
ALTER TABLE [dbo].[Notification]
ADD CONSTRAINT [FK__Notificat__UserI__123EB7A3]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[User]
        ([UserId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Notificat__UserI__123EB7A3'
CREATE INDEX [IX_FK__Notificat__UserI__123EB7A3]
ON [dbo].[Notification]
    ([UserId]);
GO

-- Creating foreign key on [UserId] in table 'Posts'
ALTER TABLE [dbo].[Post]
ADD CONSTRAINT [FK__Post__UserId__14270015]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[User]
        ([UserId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Post__UserId__14270015'
CREATE INDEX [IX_FK__Post__UserId__14270015]
ON [dbo].[Post]
    ([UserId]);
GO

-- Creating foreign key on [UserId] in table 'Reports'
ALTER TABLE [dbo].[Report]
ADD CONSTRAINT [FK__Report__UserId__114A936A]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[User]
        ([UserId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Report__UserId__114A936A'
CREATE INDEX [IX_FK__Report__UserId__114A936A]
ON [dbo].[Report]
    ([UserId]);
GO

-- Creating foreign key on [CommentId] in table 'CommentReports'
ALTER TABLE [dbo].[CommentReport]
ADD CONSTRAINT [FK_CommentReport_Comments]
    FOREIGN KEY ([CommentId])
    REFERENCES [dbo].[Comment]
        ([CommentId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CommentReport_Comments'
CREATE INDEX [IX_FK_CommentReport_Comments]
ON [dbo].[CommentReport]
    ([CommentId]);
GO

-- Creating foreign key on [UserId] in table 'CommentReports'
ALTER TABLE [dbo].[CommentReport]
ADD CONSTRAINT [FK_CommentReport_Users]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[User]
        ([UserId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CommentReport_Users'
CREATE INDEX [IX_FK_CommentReport_Users]
ON [dbo].[CommentReport]
    ([UserId]);
GO

-- Creating foreign key on [AssociatedId] in table 'AssociatedTags'
ALTER TABLE [dbo].[AssociatedTag]
ADD CONSTRAINT [FK__Associate__Assoc__1A9EF37A]
    FOREIGN KEY ([AssociatedId])
    REFERENCES [dbo].[Tag]
        ([TagId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Associate__Assoc__1A9EF37A'
CREATE INDEX [IX_FK__Associate__Assoc__1A9EF37A]
ON [dbo].[AssociatedTag]
    ([AssociatedId]);
GO

-- Creating foreign key on [TagId] in table 'AssociatedTags'
ALTER TABLE [dbo].[AssociatedTag]
ADD CONSTRAINT [FK__Associate__TagId__19AACF41]
    FOREIGN KEY ([TagId])
    REFERENCES [dbo].[Tag]
        ([TagId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Associate__TagId__19AACF41'
CREATE INDEX [IX_FK__Associate__TagId__19AACF41]
ON [dbo].[AssociatedTag]
    ([TagId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------


