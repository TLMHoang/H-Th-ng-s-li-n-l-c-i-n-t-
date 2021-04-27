USE [HeThongTaiLieu]
GO
/****** Object:  Table [dbo].[AnswerQuiz]    Script Date: 4/27/2021 10:34:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnswerQuiz](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDQues] [int] NULL,
	[Answer] [nvarchar](max) NULL,
	[explainAns] [nvarchar](max) NULL,
	[CorrectAns] [bit] NULL,
 CONSTRAINT [PK_AnswerQuiz] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AnswerStatus]    Script Date: 4/27/2021 10:34:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnswerStatus](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDStudent] [int] NULL,
	[IDQues] [int] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_AnswerStatus] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QuestionTopic]    Script Date: 4/27/2021 10:34:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuestionTopic](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Question] [nvarchar](max) NULL,
	[IDQuizTopic] [int] NULL,
	[levelQues] [int] NULL,
 CONSTRAINT [PK_QuestionTopic] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QuizTopic]    Script Date: 4/27/2021 10:34:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuizTopic](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDSubject] [int] NULL,
	[IDTeacher] [int] NULL,
	[CreateAt] [date] NULL,
	[NameTopic] [nvarchar](max) NULL,
	[IDKhoi] [nchar](10) NULL,
 CONSTRAINT [PK_QuizTopic] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ScoresTable]    Script Date: 4/27/2021 10:34:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScoresTable](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDTopic] [int] NULL,
	[Scores] [int] NULL,
	[IDStudent] [int] NULL,
 CONSTRAINT [PK_ScoresTable] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Students]    Script Date: 4/27/2021 10:34:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Students](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[Pass] [varchar](50) NULL,
	[CreateAt] [date] NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[AnswerQuiz] ON 

INSERT [dbo].[AnswerQuiz] ([ID], [IDQues], [Answer], [explainAns], [CorrectAns]) VALUES (1, 7, N'∀n € N thì n ≤ 2n', NULL, 1)
INSERT [dbo].[AnswerQuiz] ([ID], [IDQues], [Answer], [explainAns], [CorrectAns]) VALUES (2, 7, N'∀x € R : x2 > 0 ', NULL, 0)
INSERT [dbo].[AnswerQuiz] ([ID], [IDQues], [Answer], [explainAns], [CorrectAns]) VALUES (3, 7, N'∃n € N : n2 = n', NULL, 0)
INSERT [dbo].[AnswerQuiz] ([ID], [IDQues], [Answer], [explainAns], [CorrectAns]) VALUES (4, 7, N'∃x € R : x > x2', NULL, 0)
INSERT [dbo].[AnswerQuiz] ([ID], [IDQues], [Answer], [explainAns], [CorrectAns]) VALUES (5, 1, N'2', NULL, 1)
INSERT [dbo].[AnswerQuiz] ([ID], [IDQues], [Answer], [explainAns], [CorrectAns]) VALUES (6, 1, N'5', NULL, 0)
INSERT [dbo].[AnswerQuiz] ([ID], [IDQues], [Answer], [explainAns], [CorrectAns]) VALUES (7, 1, N'6', NULL, 0)
INSERT [dbo].[AnswerQuiz] ([ID], [IDQues], [Answer], [explainAns], [CorrectAns]) VALUES (8, 1, N'7', NULL, 0)
INSERT [dbo].[AnswerQuiz] ([ID], [IDQues], [Answer], [explainAns], [CorrectAns]) VALUES (9, 2, N'25', NULL, 0)
INSERT [dbo].[AnswerQuiz] ([ID], [IDQues], [Answer], [explainAns], [CorrectAns]) VALUES (10, 2, N'33', NULL, 0)
INSERT [dbo].[AnswerQuiz] ([ID], [IDQues], [Answer], [explainAns], [CorrectAns]) VALUES (11, 2, N'11', NULL, 0)
INSERT [dbo].[AnswerQuiz] ([ID], [IDQues], [Answer], [explainAns], [CorrectAns]) VALUES (12, 2, N'50', NULL, 1)
INSERT [dbo].[AnswerQuiz] ([ID], [IDQues], [Answer], [explainAns], [CorrectAns]) VALUES (13, 3, N'10', NULL, 1)
INSERT [dbo].[AnswerQuiz] ([ID], [IDQues], [Answer], [explainAns], [CorrectAns]) VALUES (14, 3, N'321', NULL, 0)
INSERT [dbo].[AnswerQuiz] ([ID], [IDQues], [Answer], [explainAns], [CorrectAns]) VALUES (15, 3, N'50', NULL, 0)
INSERT [dbo].[AnswerQuiz] ([ID], [IDQues], [Answer], [explainAns], [CorrectAns]) VALUES (16, 3, N'18', NULL, 0)
INSERT [dbo].[AnswerQuiz] ([ID], [IDQues], [Answer], [explainAns], [CorrectAns]) VALUES (17, 4, N'9', NULL, 1)
INSERT [dbo].[AnswerQuiz] ([ID], [IDQues], [Answer], [explainAns], [CorrectAns]) VALUES (18, 4, N'0', NULL, 0)
INSERT [dbo].[AnswerQuiz] ([ID], [IDQues], [Answer], [explainAns], [CorrectAns]) VALUES (19, 4, N'56', NULL, 0)
INSERT [dbo].[AnswerQuiz] ([ID], [IDQues], [Answer], [explainAns], [CorrectAns]) VALUES (20, 4, N'8', NULL, 0)
INSERT [dbo].[AnswerQuiz] ([ID], [IDQues], [Answer], [explainAns], [CorrectAns]) VALUES (21, 5, N'số 6', NULL, 0)
INSERT [dbo].[AnswerQuiz] ([ID], [IDQues], [Answer], [explainAns], [CorrectAns]) VALUES (22, 5, N'số 7', NULL, 1)
INSERT [dbo].[AnswerQuiz] ([ID], [IDQues], [Answer], [explainAns], [CorrectAns]) VALUES (23, 5, N'số 3', NULL, 0)
INSERT [dbo].[AnswerQuiz] ([ID], [IDQues], [Answer], [explainAns], [CorrectAns]) VALUES (24, 5, N'số 8', NULL, 0)
INSERT [dbo].[AnswerQuiz] ([ID], [IDQues], [Answer], [explainAns], [CorrectAns]) VALUES (25, 6, N'a2 + b2 = c2', NULL, 1)
INSERT [dbo].[AnswerQuiz] ([ID], [IDQues], [Answer], [explainAns], [CorrectAns]) VALUES (26, 6, N'a + b2', NULL, 0)
INSERT [dbo].[AnswerQuiz] ([ID], [IDQues], [Answer], [explainAns], [CorrectAns]) VALUES (27, 6, N'a + b =c', NULL, 0)
INSERT [dbo].[AnswerQuiz] ([ID], [IDQues], [Answer], [explainAns], [CorrectAns]) VALUES (28, 6, N'c2 + a = b2', NULL, 0)
SET IDENTITY_INSERT [dbo].[AnswerQuiz] OFF
SET IDENTITY_INSERT [dbo].[QuestionTopic] ON 

INSERT [dbo].[QuestionTopic] ([ID], [Question], [IDQuizTopic], [levelQues]) VALUES (1, N'1 + 1 bằng', 1, 1)
INSERT [dbo].[QuestionTopic] ([ID], [Question], [IDQuizTopic], [levelQues]) VALUES (2, N'10 x 5 =', 1, 1)
INSERT [dbo].[QuestionTopic] ([ID], [Question], [IDQuizTopic], [levelQues]) VALUES (3, N'3 * 2 + 4 =', 1, 1)
INSERT [dbo].[QuestionTopic] ([ID], [Question], [IDQuizTopic], [levelQues]) VALUES (4, N'3 + 6 = ', 1, 2)
INSERT [dbo].[QuestionTopic] ([ID], [Question], [IDQuizTopic], [levelQues]) VALUES (5, N'sau số 6 là', 1, 2)
INSERT [dbo].[QuestionTopic] ([ID], [Question], [IDQuizTopic], [levelQues]) VALUES (6, N'định lý Pytago', 1, 2)
INSERT [dbo].[QuestionTopic] ([ID], [Question], [IDQuizTopic], [levelQues]) VALUES (7, N'Mệnh đề nào sau là mệnh đề sai?', 1, 3)
SET IDENTITY_INSERT [dbo].[QuestionTopic] OFF
SET IDENTITY_INSERT [dbo].[QuizTopic] ON 

INSERT [dbo].[QuizTopic] ([ID], [IDSubject], [IDTeacher], [CreateAt], [NameTopic], [IDKhoi]) VALUES (1, 1, 6, CAST(N'2021-04-26' AS Date), N'Bài 1', N'1         ')
INSERT [dbo].[QuizTopic] ([ID], [IDSubject], [IDTeacher], [CreateAt], [NameTopic], [IDKhoi]) VALUES (2, 1, 6, CAST(N'2021-04-26' AS Date), N'Bài 2', N'1         ')
INSERT [dbo].[QuizTopic] ([ID], [IDSubject], [IDTeacher], [CreateAt], [NameTopic], [IDKhoi]) VALUES (3, 1, 6, CAST(N'2021-04-26' AS Date), N'Bài 3', N'1         ')
INSERT [dbo].[QuizTopic] ([ID], [IDSubject], [IDTeacher], [CreateAt], [NameTopic], [IDKhoi]) VALUES (4, 1, 6, CAST(N'2021-04-26' AS Date), N'Bài 4', N'1         ')
SET IDENTITY_INSERT [dbo].[QuizTopic] OFF
SET IDENTITY_INSERT [dbo].[Students] ON 

INSERT [dbo].[Students] ([ID], [UserName], [Pass], [CreateAt]) VALUES (1, N'phong', N'9F48495BB4B98AC37A1A72C7E6490C7A', CAST(N'1999-07-07' AS Date))
INSERT [dbo].[Students] ([ID], [UserName], [Pass], [CreateAt]) VALUES (2, N'hs001', N'E2B246F2577F27F45D8199508EE97FF2', CAST(N'2021-04-26' AS Date))
INSERT [dbo].[Students] ([ID], [UserName], [Pass], [CreateAt]) VALUES (3, N'hs002', N'8FD5D72BDA403A48A8AA1EF4905A37E2', CAST(N'2021-04-26' AS Date))
INSERT [dbo].[Students] ([ID], [UserName], [Pass], [CreateAt]) VALUES (4, N'hs003', N'E5F5765A18C103A81ECA900086D19409', CAST(N'2021-04-26' AS Date))
SET IDENTITY_INSERT [dbo].[Students] OFF
ALTER TABLE [dbo].[AnswerQuiz]  WITH CHECK ADD  CONSTRAINT [FK_AnswerQuiz_QuestionTopic] FOREIGN KEY([IDQues])
REFERENCES [dbo].[QuestionTopic] ([ID])
GO
ALTER TABLE [dbo].[AnswerQuiz] CHECK CONSTRAINT [FK_AnswerQuiz_QuestionTopic]
GO
ALTER TABLE [dbo].[AnswerStatus]  WITH CHECK ADD  CONSTRAINT [FK_AnswerStatus_QuestionTopic] FOREIGN KEY([IDQues])
REFERENCES [dbo].[QuestionTopic] ([ID])
GO
ALTER TABLE [dbo].[AnswerStatus] CHECK CONSTRAINT [FK_AnswerStatus_QuestionTopic]
GO
ALTER TABLE [dbo].[AnswerStatus]  WITH CHECK ADD  CONSTRAINT [FK_AnswerStatus_Students] FOREIGN KEY([IDStudent])
REFERENCES [dbo].[Students] ([ID])
GO
ALTER TABLE [dbo].[AnswerStatus] CHECK CONSTRAINT [FK_AnswerStatus_Students]
GO
ALTER TABLE [dbo].[QuestionTopic]  WITH CHECK ADD  CONSTRAINT [FK_QuestionTopic_QuizTopic] FOREIGN KEY([IDQuizTopic])
REFERENCES [dbo].[QuizTopic] ([ID])
GO
ALTER TABLE [dbo].[QuestionTopic] CHECK CONSTRAINT [FK_QuestionTopic_QuizTopic]
GO
ALTER TABLE [dbo].[ScoresTable]  WITH CHECK ADD  CONSTRAINT [FK_ScoresTable_QuizTopic] FOREIGN KEY([IDTopic])
REFERENCES [dbo].[QuizTopic] ([ID])
GO
ALTER TABLE [dbo].[ScoresTable] CHECK CONSTRAINT [FK_ScoresTable_QuizTopic]
GO
ALTER TABLE [dbo].[ScoresTable]  WITH CHECK ADD  CONSTRAINT [FK_ScoresTable_Students] FOREIGN KEY([IDStudent])
REFERENCES [dbo].[Students] ([ID])
GO
ALTER TABLE [dbo].[ScoresTable] CHECK CONSTRAINT [FK_ScoresTable_Students]
GO
/****** Object:  StoredProcedure [dbo].[InsertStudents]    Script Date: 4/27/2021 10:34:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertStudents]
@TaiKhoan VARCHAR(100),
@MatKhau VARCHAR(500),
@NgayTao date
AS
BEGIN
	INSERT Students
	(
	    UserName,
	    Pass,
	    CreateAt
	)
	VALUES
	(   @TaiKhoan,
		@MatKhau,
		@NgayTao
	    )
	DECLARE @I INT = (SELECT ID FROM Students WHERE Pass = @MatKhau AND UserName = @TaiKhoan)
	UPDATE Students SET Pass = CONVERT(VARCHAR(32), HASHBYTES('MD5', @MatKhau), 2) WHERE ID = @I
END



GO
/****** Object:  StoredProcedure [dbo].[Login_HTTL]    Script Date: 4/27/2021 10:34:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Login_HTTL]
@TaiKhoan VARCHAR(100),
@MatKhau VARCHAR(200)
AS
SELECT * FROM Students WHERE UserName = @TaiKhoan AND Pass = CONVERT(VARCHAR(32),HASHBYTES('MD5', @MatKhau),2)



GO
/****** Object:  StoredProcedure [dbo].[selectAns]    Script Date: 4/27/2021 10:34:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[selectAns]
@IDQues int
AS
BEGIN
	select * from AnswerQuiz where IDQues = @IDQues
END


GO
/****** Object:  StoredProcedure [dbo].[selectQues]    Script Date: 4/27/2021 10:34:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[selectQues]
@IDQuiz int
AS
BEGIN
	select * from QuestionTopic where IDQuizTopic = @IDQuiz
END


GO
/****** Object:  StoredProcedure [dbo].[selectTopic]    Script Date: 4/27/2021 10:34:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[selectTopic]
@IDKhoi int,
@IDMon int
as
begin
	select * from QuizTopic
	where IDSubject = @IDMon and IDKhoi = @IDKhoi
end

GO
