CREATE TABLE [dbo].[JobK12StaffAssignment] (
    [JobK12StaffAssignmentId] INT      IDENTITY (1, 1) NOT NULL,
    [JobId]                   INT      NOT NULL,
    [K12StaffAssignmentId]    INT      NOT NULL,
    [RecordStartDateTime]     DATETIME NULL,
    [RecordEndDateTime]       DATETIME NULL,
    [RecordStatusId]          INT      NULL,
    [DataCollectionId]        INT      NULL,
    CONSTRAINT [PK_JobK12StaffAssignment] PRIMARY KEY CLUSTERED ([JobK12StaffAssignmentId] ASC),
    CONSTRAINT [FK_JobK12StaffAssignment_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_JobK12StaffAssignment_Job] FOREIGN KEY ([JobId]) REFERENCES [dbo].[Job] ([JobId]),
    CONSTRAINT [FK_JobK12StaffAssignment_K12StaffAssignment] FOREIGN KEY ([K12StaffAssignmentId]) REFERENCES [dbo].[K12StaffAssignment] ([K12StaffAssignmentId]),
    CONSTRAINT [FK_JobK12StaffAssignment_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The relationship between a job and staff assignment of a K12 staff member.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobK12StaffAssignment';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobK12StaffAssignment';

