CREATE DATABASE Java4ASSM
GO
USE Java4ASSM
GO
/****** Object:  Table [dbo].[Favorites]    Script Date: 3/1/2022 12:56:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Favorites](
	[FavoriteId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [varchar](50) NULL,
	[VideoId] [varchar](50) NULL,
	[LikeDate] [date] NULL,
 CONSTRAINT [PK_Favorites] PRIMARY KEY
(
	[FavoriteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shares]    Script Date: 3/1/2022 12:56:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shares](
	[ShareId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [varchar](50) NOT NULL,
	[VideoId] [varchar](50) NOT NULL,
	[Emails] [nvarchar](255) NOT NULL,
	[ShareDate] [date] NOT NULL,
 CONSTRAINT [PK_Shares] PRIMARY KEY CLUSTERED 
(
	[ShareId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 3/1/2022 12:56:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [varchar](50) NOT NULL,
	[Password] [nvarchar](255) NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[Fullname] [nvarchar](255) NOT NULL,
	[Admin] [bit] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Videos]    Script Date: 3/1/2022 12:56:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Videos](
	[VideoId] [varchar](50) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Poster] [nvarchar](150) NOT NULL,
	[Views] [int] NOT NULL,
	[Description] [nvarchar](1500) NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Videos] PRIMARY KEY CLUSTERED 
(
	[VideoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Favorites] ON 

INSERT [dbo].[Favorites] ([FavoriteId], [UserId], [VideoId], [LikeDate]) VALUES (5, N'batman', N'https://www.youtube.com/embed/Ci6lMQNLKZU', CAST(N'2021-01-01' AS Date))
INSERT [dbo].[Favorites] ([FavoriteId], [UserId], [VideoId], [LikeDate]) VALUES (6, N'user', N'https://www.youtube.com/embed/mqqft2x_Aa4', CAST(N'2021-03-03' AS Date))
INSERT [dbo].[Favorites] ([FavoriteId], [UserId], [VideoId], [LikeDate]) VALUES (7, N'user', N'https://www.youtube.com/embed/Ci6lMQNLKZU', CAST(N'2022-03-03' AS Date))
INSERT [dbo].[Favorites] ([FavoriteId], [UserId], [VideoId], [LikeDate]) VALUES (8, N'superman', N'https://www.youtube.com/embed/WInTHMAj2ZU', CAST(N'2018-03-04' AS Date))
INSERT [dbo].[Favorites] ([FavoriteId], [UserId], [VideoId], [LikeDate]) VALUES (9, N'wonderwoman', N'https://www.youtube.com/embed/rYVVwlQs_V8', CAST(N'2011-03-03' AS Date))
INSERT [dbo].[Favorites] ([FavoriteId], [UserId], [VideoId], [LikeDate]) VALUES (15, N'batman', N'https://www.youtube.com/embed/DdYXV5mSiTE', CAST(N'2022-03-01' AS Date))
SET IDENTITY_INSERT [dbo].[Favorites] OFF
GO
SET IDENTITY_INSERT [dbo].[Shares] ON 

INSERT [dbo].[Shares] ([ShareId], [UserId], [VideoId], [Emails], [ShareDate]) VALUES (3, N'batman', N'https://www.youtube.com/embed/Ci6lMQNLKZU', N'holy@gmail.com', CAST(N'2022-03-03' AS Date))
INSERT [dbo].[Shares] ([ShareId], [UserId], [VideoId], [Emails], [ShareDate]) VALUES (4, N'user', N'https://www.youtube.com/embed/mqqft2x_Aa4', N'make@gmail.com', CAST(N'2022-01-01' AS Date))
INSERT [dbo].[Shares] ([ShareId], [UserId], [VideoId], [Emails], [ShareDate]) VALUES (5, N'superman', N'https://www.youtube.com/embed/DdYXV5mSiTE', N'can@gmail.com', CAST(N'2022-04-04' AS Date))
INSERT [dbo].[Shares] ([ShareId], [UserId], [VideoId], [Emails], [ShareDate]) VALUES (6, N'wonderwoman', N'https://www.youtube.com/embed/JldMvQMO_5U', N'dang@gmail.com', CAST(N'2022-03-03' AS Date))
INSERT [dbo].[Shares] ([ShareId], [UserId], [VideoId], [Emails], [ShareDate]) VALUES (7, N'batman', N'https://www.youtube.com/embed/Ci6lMQNLKZU', N'balisongian@gmail.com', CAST(N'1970-01-01' AS Date))
INSERT [dbo].[Shares] ([ShareId], [UserId], [VideoId], [Emails], [ShareDate]) VALUES (9, N'batman', N'https://www.youtube.com/embed/Ci6lMQNLKZU', N'balisongian@gmail.com', CAST(N'2022-02-28' AS Date))
INSERT [dbo].[Shares] ([ShareId], [UserId], [VideoId], [Emails], [ShareDate]) VALUES (10, N'batman', N'https://www.youtube.com/embed/KYhJZu_dcVE', N'balisongian@gmail.com', CAST(N'2022-02-28' AS Date))
SET IDENTITY_INSERT [dbo].[Shares] OFF
GO
INSERT [dbo].[Users] ([UserId], [Password], [Email], [Fullname], [Admin]) VALUES (N'user', N'123', N'arthur@gmail.com', N'Arthur', 0)
INSERT [dbo].[Users] ([UserId], [Password], [Email], [Fullname], [Admin]) VALUES (N'batman', N'123', N'tritmps15506@fpt.edu.vn', N'Bruce Wayne', 0)
INSERT [dbo].[Users] ([UserId], [Password], [Email], [Fullname], [Admin]) VALUES (N'admin', N'123', N'barryallen@gmail.com', N'Barry Allen', 1)
INSERT [dbo].[Users] ([UserId], [Password], [Email], [Fullname], [Admin]) VALUES (N'superman', N'123', N'clarkkent@gmail.com', N'Clark Kent', 0)
INSERT [dbo].[Users] ([UserId], [Password], [Email], [Fullname], [Admin]) VALUES (N'wonderwoman', N'123', N'dianaprince@gmail.com', N'Diana Prince', 0)
GO
INSERT [dbo].[Videos] ([VideoId], [Title], [Poster], [Views], [Description], [Active]) VALUES (N'https://www.youtube.com/embed/Ci6lMQNLKZU', N'Mortal Kombat', N'https://i1.ytimg.com/vi/Ci6lMQNLKZU/hqdefault.jpg', 34000, N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Tenetur, ea cumque eveniet, exercitationem quia autem nam obcaecati, doloribus iste voluptatum nostrum veniam. Mollitia commodi quae, ut labore facilis nulla cum. Sapiente, quia doloremque delectus ipsa alias quos quibusdam deleniti nemo harum unde nihil suscipit ab commodi corrupti repellendus id magni ipsam assumenda, facilis dolorem. Sapiente voluptas commodi nisi iusto? Porro. Fugit debitis hic eaque quae eligendi nesciunt omnis illum magnam tempora facere, ad atque officiis illo aliquid praesentium non unde pariatur quis ipsa. Optio laboriosam ad error fuga neque fugit?', 1)
INSERT [dbo].[Videos] ([VideoId], [Title], [Poster], [Views], [Description], [Active]) VALUES (N'https://www.youtube.com/embed/DdYXV5mSiTE', N'Alice in Borderland', N'https://i1.ytimg.com/vi/DdYXV5mSiTE/hqdefault.jpg', 100, N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Tenetur, ea cumque eveniet, exercitationem quia autem nam obcaecati, doloribus iste voluptatum nostrum veniam. Mollitia commodi quae, ut labore facilis nulla cum. Sapiente, quia doloremque delectus ipsa alias quos quibusdam deleniti nemo harum unde nihil suscipit ab commodi corrupti repellendus id magni ipsam assumenda, facilis dolorem. Sapiente voluptas commodi nisi iusto? Porro. Fugit debitis hic eaque quae eligendi nesciunt omnis illum magnam tempora facere, ad atque officiis illo aliquid praesentium non unde pariatur quis ipsa. Optio laboriosam ad error fuga neque fugit?', 1)
INSERT [dbo].[Videos] ([VideoId], [Title], [Poster], [Views], [Description], [Active]) VALUES (N'https://www.youtube.com/embed/JldMvQMO_5U', N'Elden Ring', N'https://i1.ytimg.com/vi/JldMvQMO_5U/hqdefault.jpg', 34234, N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Tenetur, ea cumque eveniet, exercitationem quia autem nam obcaecati, doloribus iste voluptatum nostrum veniam. Mollitia commodi quae, ut labore facilis nulla cum. Sapiente, quia doloremque delectus ipsa alias quos quibusdam deleniti nemo harum unde nihil suscipit ab commodi corrupti repellendus id magni ipsam assumenda, facilis dolorem. Sapiente voluptas commodi nisi iusto? Porro. Fugit debitis hic eaque quae eligendi nesciunt omnis illum magnam tempora facere, ad atque officiis illo aliquid praesentium non unde pariatur quis ipsa. Optio laboriosam ad error fuga neque fugit?', 1)
INSERT [dbo].[Videos] ([VideoId], [Title], [Poster], [Views], [Description], [Active]) VALUES (N'https://www.youtube.com/embed/KYhJZu_dcVE', N'Batman vs Superman', N'https://i1.ytimg.com/vi/KYhJZu_dcVE/hqdefault.jpg', 12323, N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Tenetur, ea cumque eveniet, exercitationem quia autem nam obcaecati, doloribus iste voluptatum nostrum veniam. Mollitia commodi quae, ut labore facilis nulla cum. Sapiente, quia doloremque delectus ipsa alias quos quibusdam deleniti nemo harum unde nihil suscipit ab commodi corrupti repellendus id magni ipsam assumenda, facilis dolorem. Sapiente voluptas commodi nisi iusto? Porro. Fugit debitis hic eaque quae eligendi nesciunt omnis illum magnam tempora facere, ad atque officiis illo aliquid praesentium non unde pariatur quis ipsa. Optio laboriosam ad error fuga neque fugit?', 1)
INSERT [dbo].[Videos] ([VideoId], [Title], [Poster], [Views], [Description], [Active]) VALUES (N'https://www.youtube.com/embed/mqqft2x_Aa4', N'Batman Trailer', N'https://i1.ytimg.com/vi/mqqft2x_Aa4/hqdefault.jpg', 200, N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Tenetur, ea cumque eveniet, exercitationem quia autem nam obcaecati, doloribus iste voluptatum nostrum veniam. Mollitia commodi quae, ut labore facilis nulla cum. Sapiente, quia doloremque delectus ipsa alias quos quibusdam deleniti nemo harum unde nihil suscipit ab commodi corrupti repellendus id magni ipsam assumenda, facilis dolorem. Sapiente voluptas commodi nisi iusto? Porro. Fugit debitis hic eaque quae eligendi nesciunt omnis illum magnam tempora facere, ad atque officiis illo aliquid praesentium non unde pariatur quis ipsa. Optio laboriosam ad error fuga neque fugit?', 1)
INSERT [dbo].[Videos] ([VideoId], [Title], [Poster], [Views], [Description], [Active]) VALUES (N'https://www.youtube.com/embed/NHi_8FGMObQ', N'Anarchy in Gotham', N'https://i1.ytimg.com/vi/NHi_8FGMObQ/hqdefault.jpg', 2323, N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Tenetur, ea cumque eveniet, exercitationem quia autem nam obcaecati, doloribus iste voluptatum nostrum veniam. Mollitia commodi quae, ut labore facilis nulla cum. Sapiente, quia doloremque delectus ipsa alias quos quibusdam deleniti nemo harum unde nihil suscipit ab commodi corrupti repellendus id magni ipsam assumenda, facilis dolorem. Sapiente voluptas commodi nisi iusto? Porro. Fugit debitis hic eaque quae eligendi nesciunt omnis illum magnam tempora facere, ad atque officiis illo aliquid praesentium non unde pariatur quis ipsa. Optio laboriosam ad error fuga neque fugit?', 1)
INSERT [dbo].[Videos] ([VideoId], [Title], [Poster], [Views], [Description], [Active]) VALUES (N'https://www.youtube.com/embed/rYVVwlQs_V8', N'Green Lantern', N'https://i1.ytimg.com/vi/rYVVwlQs_V8/hqdefault.jpg', 400000, N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Tenetur, ea cumque eveniet, exercitationem quia autem nam obcaecati, doloribus iste voluptatum nostrum veniam. Mollitia commodi quae, ut labore facilis nulla cum. Sapiente, quia doloremque delectus ipsa alias quos quibusdam deleniti nemo harum unde nihil suscipit ab commodi corrupti repellendus id magni ipsam assumenda, facilis dolorem. Sapiente voluptas commodi nisi iusto? Porro. Fugit debitis hic eaque quae eligendi nesciunt omnis illum magnam tempora facere, ad atque officiis illo aliquid praesentium non unde pariatur quis ipsa. Optio laboriosam ad error fuga neque fugit?', 1)
INSERT [dbo].[Videos] ([VideoId], [Title], [Poster], [Views], [Description], [Active]) VALUES (N'https://www.youtube.com/embed/WInTHMAj2ZU', N'Model S Plaid', N'https://i1.ytimg.com/vi/WInTHMAj2ZU/hqdefault.jpg', 5000000, N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Tenetur, ea cumque eveniet, exercitationem quia autem nam obcaecati, doloribus iste voluptatum nostrum veniam. Mollitia commodi quae, ut labore facilis nulla cum. Sapiente, quia doloremque delectus ipsa alias quos quibusdam deleniti nemo harum unde nihil suscipit ab commodi corrupti repellendus id magni ipsam assumenda, facilis dolorem. Sapiente voluptas commodi nisi iusto? Porro. Fugit debitis hic eaque quae eligendi nesciunt omnis illum magnam tempora facere, ad atque officiis illo aliquid praesentium non unde pariatur quis ipsa. Optio laboriosam ad error fuga neque fugit?', 1)
GO
ALTER TABLE [dbo].[Favorites]  WITH CHECK ADD  CONSTRAINT [FK_Favorites_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Favorites] CHECK CONSTRAINT [FK_Favorites_Users]
GO
ALTER TABLE [dbo].[Favorites]  WITH CHECK ADD  CONSTRAINT [FK_Favorites_Videos] FOREIGN KEY([VideoId])
REFERENCES [dbo].[Videos] ([VideoId])
GO
ALTER TABLE [dbo].[Favorites] CHECK CONSTRAINT [FK_Favorites_Videos]
GO
ALTER TABLE [dbo].[Shares]  WITH CHECK ADD  CONSTRAINT [FK_Shares_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Shares] CHECK CONSTRAINT [FK_Shares_Users]
GO
ALTER TABLE [dbo].[Shares]  WITH CHECK ADD  CONSTRAINT [FK_Shares_Videos] FOREIGN KEY([VideoId])
REFERENCES [dbo].[Videos] ([VideoId])
GO
ALTER TABLE [dbo].[Shares] CHECK CONSTRAINT [FK_Shares_Videos]
GO
