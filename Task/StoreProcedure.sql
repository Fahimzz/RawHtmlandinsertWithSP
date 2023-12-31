USE [TaskDB]
GO
/****** Object:  StoredProcedure [dbo].[SaveMeetingMinutes]    Script Date: 12/2/2023 11:06:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[SaveMeetingMinutes]
    @CustomerId BIGINT,
    @MeetingDate NVARCHAR(MAX),
    @MeetingTime NVARCHAR(MAX),
    @AttendesFromClient NVARCHAR(MAX),
    @AttendesFromHost NVARCHAR(MAX),
    @MeetingAgenda NVARCHAR(MAX),
    @MeetingDecision NVARCHAR(MAX),
    @MeetingDiscussion NVARCHAR(MAX),
	@isDelete BIT
AS
BEGIN
    INSERT INTO [dbo].[Meeting_Minutes_Master_Tbls] (
        CustomerId,
        MeetingDate,
        MeetingTime,
        AttendesFromClient,
        AttendesFromHost,
        MeetingAgenda,
        MeetingDecision,
        MeetingDiscussion,
		isDelete
    )
    VALUES (
        @CustomerId,
        @MeetingDate,
        @MeetingTime,
        @AttendesFromClient,
        @AttendesFromHost,
        @MeetingAgenda,
        @MeetingDecision,
        @MeetingDiscussion,
		@isDelete
		
    );
END;
