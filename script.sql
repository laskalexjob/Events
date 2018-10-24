USE [EventsDb]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 24-Oct-18 10:23:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Events]    Script Date: 24-Oct-18 10:23:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Events](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](64) NOT NULL,
	[Date] [datetime] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[Address] [nvarchar](128) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[Location] [nvarchar](128) NULL,
	[OrganizerId] [int] NOT NULL,
	[StatusId] [int] NOT NULL,
	[UserId] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Organizers]    Script Date: 24-Oct-18 10:23:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organizers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Phones] [nvarchar](64) NOT NULL,
	[Email] [nvarchar](64) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 24-Oct-18 10:23:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](64) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 24-Oct-18 10:23:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nvarchar](64) NOT NULL,
	[Password] [nvarchar](64) NOT NULL,
	[Name] [nvarchar](64) NOT NULL,
	[LastName] [nvarchar](64) NULL,
	[Email] [nvarchar](64) NOT NULL,
	[RoleId] [int] NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name]) VALUES (23, N'Entertainment')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (10, N'Health')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (15, N'Other')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (32, N'Miscelanious')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (11, N'Education')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (24, N'Business')
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[Events] ON 

INSERT [dbo].[Events] ([Id], [Name], [Date], [CategoryId], [Address], [Description], [ImagePath], [Location], [OrganizerId], [StatusId], [UserId]) VALUES (8, N'event two', CAST(N'2018-10-14T00:00:00.000' AS DateTime), 11, N'qweew', N'asdf', N'picture_default.jpg', N'asdf', 2, 2, 5)
INSERT [dbo].[Events] ([Id], [Name], [Date], [CategoryId], [Address], [Description], [ImagePath], [Location], [OrganizerId], [StatusId], [UserId]) VALUES (6, N'Good day', CAST(N'2018-10-13T00:00:00.000' AS DateTime), 11, N'Stroiteley', N'very nice, because its apple , dude', N'picture_default.jpg', N'THis venue', 2, 2, 5)
INSERT [dbo].[Events] ([Id], [Name], [Date], [CategoryId], [Address], [Description], [ImagePath], [Location], [OrganizerId], [StatusId], [UserId]) VALUES (13, N'asdf', CAST(N'2018-10-20T00:00:00.000' AS DateTime), 23, N'asdf', N'asdf', N'picture_default.jpg', N'asdf', 2, 2, 5)
INSERT [dbo].[Events] ([Id], [Name], [Date], [CategoryId], [Address], [Description], [ImagePath], [Location], [OrganizerId], [StatusId], [UserId]) VALUES (9, N'asdf', CAST(N'2018-10-06T00:00:00.000' AS DateTime), 32, N'adsf', N'asdf', N'picture_default.jpg', N'asdf', 2, 2, 1)
INSERT [dbo].[Events] ([Id], [Name], [Date], [CategoryId], [Address], [Description], [ImagePath], [Location], [OrganizerId], [StatusId], [UserId]) VALUES (10, N'asdfasd', CAST(N'2018-10-06T00:00:00.000' AS DateTime), 10, N'asdf', N'asdf', N'picture_default.jpg', N'asdf', 2, 2, 1)
INSERT [dbo].[Events] ([Id], [Name], [Date], [CategoryId], [Address], [Description], [ImagePath], [Location], [OrganizerId], [StatusId], [UserId]) VALUES (11, N'dddd', CAST(N'2018-10-13T00:00:00.000' AS DateTime), 32, N'dsa', N'asdf', N'picture_default.jpg', N'asdf', 2, 2, 5)
INSERT [dbo].[Events] ([Id], [Name], [Date], [CategoryId], [Address], [Description], [ImagePath], [Location], [OrganizerId], [StatusId], [UserId]) VALUES (14, N'asdfsdf', CAST(N'2018-10-20T00:00:00.000' AS DateTime), 10, N'asdf', N'asdf', N'picture_default.jpg', N'asdf', 3, 2, 8)
INSERT [dbo].[Events] ([Id], [Name], [Date], [CategoryId], [Address], [Description], [ImagePath], [Location], [OrganizerId], [StatusId], [UserId]) VALUES (15, N'1111111', CAST(N'2018-10-20T00:00:00.000' AS DateTime), 32, N'111111', N'1', N'picture_default.jpg', N'1', 2, 2, 5)
INSERT [dbo].[Events] ([Id], [Name], [Date], [CategoryId], [Address], [Description], [ImagePath], [Location], [OrganizerId], [StatusId], [UserId]) VALUES (18, N'asdf', CAST(N'2018-10-26T00:00:00.000' AS DateTime), 10, N'asdf', N'asdf', N'/Content/Images/picture_default.jpg', N'asdf', 1, 2, 5)
INSERT [dbo].[Events] ([Id], [Name], [Date], [CategoryId], [Address], [Description], [ImagePath], [Location], [OrganizerId], [StatusId], [UserId]) VALUES (12, N'asdf', CAST(N'2018-10-19T00:00:00.000' AS DateTime), 15, N'asdf', N'asdf', N'picture_default.jpg', N'asdf', 1, 2, 1)
SET IDENTITY_INSERT [dbo].[Events] OFF
SET IDENTITY_INSERT [dbo].[Organizers] ON 

INSERT [dbo].[Organizers] ([Id], [Name], [Phones], [Email]) VALUES (1, N'Epam', N'+375 25 555 55 55', N'test@test.com')
INSERT [dbo].[Organizers] ([Id], [Name], [Phones], [Email]) VALUES (2, N'Oracle', N'+375 33 444 44 44', N'test1@test1.com')
INSERT [dbo].[Organizers] ([Id], [Name], [Phones], [Email]) VALUES (3, N'Microsoft', N'+375 44 333 33 33', N'test2@test2.com')
INSERT [dbo].[Organizers] ([Id], [Name], [Phones], [Email]) VALUES (8, N'Apple', N'123', N'apple@google.com')
SET IDENTITY_INSERT [dbo].[Organizers] OFF
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([Id], [Name]) VALUES (1, N'admin')
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (2, N'editor')
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (3, N'user')
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (4, N'guest')
SET IDENTITY_INSERT [dbo].[Roles] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Login], [Password], [Name], [LastName], [Email], [RoleId]) VALUES (1, N'admin', N'admin', N'admin', N'admin', N'admin@admin.com', 1)
INSERT [dbo].[Users] ([Id], [Login], [Password], [Name], [LastName], [Email], [RoleId]) VALUES (4, N'editor', N'editor', N'namea', N'lastn', N'editor@editor.com', 2)
INSERT [dbo].[Users] ([Id], [Login], [Password], [Name], [LastName], [Email], [RoleId]) VALUES (5, N'user', N'user', N'user1', N'user1', N'user@user.com1', 3)
INSERT [dbo].[Users] ([Id], [Login], [Password], [Name], [LastName], [Email], [RoleId]) VALUES (8, N'user2', N'user2', N'user22', N'user22', N'user2@user22.com', 2)
SET IDENTITY_INSERT [dbo].[Users] OFF
/****** Object:  StoredProcedure [dbo].[CreateCategory]    Script Date: 24-Oct-18 10:23:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CreateCategory]
	@Name NVARCHAR(50)
AS
BEGIN
	SET NOCOUNT ON;
	--IF ISNULL((SELECT COUNT(1) FROM [dbo].[Categories] WHERE Id = @Id),0) = 0
		INSERT INTO [dbo].[Categories]
		       ([Name]) 
		VALUES
           (@Name)
END
GO
/****** Object:  StoredProcedure [dbo].[CreateEvent]    Script Date: 24-Oct-18 10:23:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CreateEvent]
	@Name NVARCHAR(64),
	@Date DATETIME,
	@ImagePath NVARCHAR(MAX),
	@Address NVARCHAR(128),
	@Description NVARCHAR(MAX),
	@Location NVARCHAR(128),
	@CategoryId INT,
	@OrganizerId INT,
	@StatusId INT,
	@UserId INT NULL
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN
		INSERT INTO [dbo].[Events]
		       ([Name]
			   ,[Date] 
		       ,[ImagePath]
		       ,[Address]
			   ,[Description]
			   ,[Location]
			   ,[CategoryId],
			   [OrganizerId],
			   [StatusId],
			   [UserId])
		VALUES
           (@Name,
			@Date,
			@ImagePath,
			@Address,
			@Description,
			@Location,
			@CategoryId,
			@OrganizerId,
			@StatusId,
			@UserId)
	END
END
GO
/****** Object:  StoredProcedure [dbo].[CreateOrganizer]    Script Date: 24-Oct-18 10:23:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CreateOrganizer]
	@Name NVARCHAR(128),
	@Email NVARCHAR(64),
	@Phones NVARCHAR(64)
AS
BEGIN
	SET NOCOUNT ON;
		INSERT INTO [dbo].[Organizers]
		       ([Name], [Email], [Phones]) 
		VALUES
           (@Name, @Email, @Phones)
END
GO
/****** Object:  StoredProcedure [dbo].[CreateUser]    Script Date: 24-Oct-18 10:23:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CreateUser]
	@Login NVARCHAR(64),
	@Password NVARCHAR(64),
	@Name NVARCHAR(64),
	@LastName NVARCHAR(64),
	@RoleId INT,
	@Email NVARCHAR(64)
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN
		INSERT INTO [dbo].[Users]
		       ([Login] 
		       ,[Password]
		       ,[Name]
			   ,[LastName]
			   ,[Email]
			   ,[RoleId])
		VALUES
           (@Login,
		   	@Password ,
		   	@Name ,
		   	@LastName,
			@Email,
			@RoleId)
	END
END

GO
/****** Object:  StoredProcedure [dbo].[DeleteCategoryByCategoryId]    Script Date: 24-Oct-18 10:23:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteCategoryByCategoryId]
	@Id INT
AS
BEGIN
	SET NOCOUNT ON;
		DELETE FROM [dbo].[Categories] WHERE Id = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteEventByEventId]    Script Date: 24-Oct-18 10:23:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteEventByEventId]
	@Id INT
AS
BEGIN
	SET NOCOUNT ON;
		DELETE FROM [dbo].[Events] WHERE Id = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteOrganizerByOrganizerId]    Script Date: 24-Oct-18 10:23:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteOrganizerByOrganizerId]
	@Id INT
AS
BEGIN
	SET NOCOUNT ON;
		DELETE FROM [dbo].[Organizers] WHERE Id = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteUserById]    Script Date: 24-Oct-18 10:23:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteUserById]
	@Id INT
AS
BEGIN
	SET NOCOUNT ON;
		DELETE FROM [dbo].[Users] WHERE Id = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[GetCategoriesList]    Script Date: 24-Oct-18 10:23:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetCategoriesList]
AS
BEGIN
	SET NOCOUNT ON;

	SELECT Id, Name  FROM [dbo].[Categories]
END
GO
/****** Object:  StoredProcedure [dbo].[GetCategoryByCategoryId]    Script Date: 24-Oct-18 10:23:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetCategoryByCategoryId]
	@Id INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT [Id], [Name]
  FROM [dbo].[Categories] WITH(NOLOCK) WHERE [Id] = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[GetEventByEventId]    Script Date: 24-Oct-18 10:23:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetEventByEventId]
	@Id INT
AS
BEGIN
	SET NOCOUNT ON;
			SELECT       
			    dbo.Events.Id,
				dbo.Events.Name,
				dbo.Events.Date, 
				dbo.Events.Address,
				dbo.Events.Description,
				dbo.Events.ImagePath,
				dbo.Events.Location,
				dbo.Events.StatusId,
				dbo.Events.UserId,
				c.Id as CategoryId,
				c.Name as CategoryName,
				o.Id as OrganizerId,
				o.Name as OrganizerName,
				o.Email as OrganizerEmail,
				o.Phones as OrganizerPhones
			FROM   
	            dbo.Events 
				INNER JOIN  dbo.Categories as c ON dbo.Events.CategoryId = c.Id 
				INNER JOIN  dbo.Organizers as o ON dbo.Events.OrganizerId = o.Id
			WHERE  dbo.Events.Id = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[GetEventsByUserId]    Script Date: 24-Oct-18 10:23:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetEventsByUserId]
	@UserId INT
AS
BEGIN
	SET NOCOUNT ON;
			SELECT       
			    dbo.Events.Id,
				dbo.Events.Name,
				dbo.Events.Date, 
				dbo.Events.Address,
				dbo.Events.Description,
				dbo.Events.ImagePath,
				dbo.Events.Location,
				dbo.Events.StatusId,
				dbo.Events.UserId,
				c.Id as CategoryId,
				c.Name as CategoryName,
				o.Id as OrganizerId,
				o.Name as OrganizerName,
				o.Email as OrganizerEmail,
				o.Phones as OrganizerPhones
			FROM   
	            dbo.Events 
				INNER JOIN  dbo.Categories as c ON dbo.Events.CategoryId = c.Id 
				INNER JOIN  dbo.Organizers as o ON dbo.Events.OrganizerId = o.Id
			WHERE  dbo.Events.UserId = @UserId
END
GO
/****** Object:  StoredProcedure [dbo].[GetEventsList]    Script Date: 24-Oct-18 10:23:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetEventsList]
AS
BEGIN
	SET NOCOUNT ON;

			SELECT       
			    dbo.Events.Id,
				dbo.Events.Name,
				dbo.Events.Date, 
				dbo.Events.Address,
				dbo.Events.Description,
				dbo.Events.ImagePath,
				dbo.Events.Location,
				dbo.Events.StatusId,
				dbo.Events.UserId,
				c.Id as CategoryId,
				c.Name as CategoryName,
				o.Id as OrganizerId,
				o.Name as OrganizerName,
				o.Phones as OrganizerPhones,
				o.Email as OrganizerEmail

			FROM   
	            dbo.Events 
				INNER JOIN  dbo.Categories as c ON dbo.Events.CategoryId = c.Id 
				INNER JOIN  dbo.Organizers as o ON dbo.Events.OrganizerId = o.Id
			END


GO
/****** Object:  StoredProcedure [dbo].[GetOrganizerByOrganizerId]    Script Date: 24-Oct-18 10:23:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetOrganizerByOrganizerId]
	@Id INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT [Id], [Name], [Email], [Phones]
  FROM [dbo].[Organizers] WITH(NOLOCK) WHERE [Id] = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[GetOrganizersList]    Script Date: 24-Oct-18 10:23:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetOrganizersList]
AS
BEGIN
	SET NOCOUNT ON;
	SELECT Id, Name, Phones, Email FROM [dbo].[Organizers]
END
GO
/****** Object:  StoredProcedure [dbo].[GetRolesList]    Script Date: 24-Oct-18 10:23:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetRolesList]
AS
BEGIN
	SET NOCOUNT ON;
	SELECT Id, Name  FROM [dbo].[Roles]
END
GO
/****** Object:  StoredProcedure [dbo].[GetUserById]    Script Date: 24-Oct-18 10:23:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetUserById]
	@Id INT
AS
BEGIN
	SET NOCOUNT ON;
			SELECT    
			    dbo.[Users].Id,
				dbo.[Users].Login,
				dbo.[Users].Password, 
				dbo.[Users].Name, 
				dbo.[Users].LastName,
				dbo.[Users].Email,
				dbo.Roles.Id as RoleId,
				dbo.Roles.Name as RoleName
			FROM dbo.Users INNER JOIN dbo.Roles 
			ON dbo.Roles.Id = dbo.Users.RoleId
			WHERE  dbo.Users.Id = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[GetUserByLogin]    Script Date: 24-Oct-18 10:23:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetUserByLogin]
	@Login NVARCHAR(64)
AS
BEGIN
	SET NOCOUNT ON;
			SELECT    
			    dbo.[Users].Id,
				dbo.[Users].Login,
				dbo.[Users].Password, 
				dbo.[Users].Name, 
				dbo.[Users].LastName,
				dbo.[Users].Email,
				dbo.Roles.Id as RoleId,
				dbo.Roles.Name as RoleName
			FROM dbo.Users INNER JOIN dbo.Roles 
			ON dbo.Roles.Id = dbo.Users.RoleId
			WHERE  dbo.Users.Login = @Login
END
GO
/****** Object:  StoredProcedure [dbo].[GetUsersList]    Script Date: 24-Oct-18 10:23:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetUsersList]
AS
BEGIN
	SET NOCOUNT ON;

			SELECT    
			    dbo.[Users].Id,
				dbo.[Users].Login,
				dbo.[Users].Password, 
				dbo.[Users].Name, 
				dbo.[Users].LastName,
				dbo.[Users].Email,
				dbo.Roles.Id as RoleId,
				dbo.Roles.Name as RoleName
			FROM dbo.Users INNER JOIN dbo.Roles 
			ON dbo.Roles.Id = dbo.Users.RoleId
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateCategory]    Script Date: 24-Oct-18 10:23:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateCategory]
	@Id INT null,
	@Name NVARCHAR(50)
AS
BEGIN
	SET NOCOUNT ON;
		UPDATE [dbo].[Categories]
			SET [Name] = @Name
			WHERE Id = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateEvent]    Script Date: 24-Oct-18 10:23:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateEvent]
	@Id INT,
	@Name NVARCHAR(64),
	@Date DATETIME,
	@ImagePath NVARCHAR(MAX),
	@Address NVARCHAR(128),
	@Description NVARCHAR(MAX),
	@Location NVARCHAR(128),
	@CategoryId INT,
	@OrganizerId INT,
	@StatusId INT,
	@UserId INT
AS
BEGIN
	SET NOCOUNT ON;
		UPDATE [dbo].[Events]
		    SET [Name] = @Name,
			    [Date] = @Date,
		        [ImagePath] = @ImagePath,
		        [Address] = @Address,
			    [Description] = @Description,
			    [Location] = @Location,
			    [CategoryId] = @CategoryId,
			    [OrganizerId] = @OrganizerId,
				[StatusId] = @StatusId,
				[UserId] = @UserId
			WHERE Id = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateOrganizer]    Script Date: 24-Oct-18 10:23:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateOrganizer]
	@Id INT,
	@Name NVARCHAR(128),
	@Phones NVARCHAR(64),
	@Email NVARCHAR(64)
AS
BEGIN
	SET NOCOUNT ON;
		UPDATE [dbo].[Organizers]
			SET [Name] = @Name,
				[Phones] = @Phones,
				[Email] = @Email
			WHERE Id = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateUser]    Script Date: 24-Oct-18 10:23:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateUser]
	@Id INT,
	@Login NVARCHAR(64),
	@Password NVARCHAR(64),
	@Name NVARCHAR(64),
	@LastName NVARCHAR(64),
	@RoleId INT,
	@Email NVARCHAR(64)
AS
BEGIN
	SET NOCOUNT ON;
		UPDATE [dbo].[Users]
		   SET [Login] = @Login,
		       [Password] = @Password,
		       [Name] = @Name, 
			   [LastName] = @LastName,
			   [Email] = @Email,
			   [RoleId] = @RoleId
			WHERE Id = @Id
END

GO
