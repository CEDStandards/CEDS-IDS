CREATE TABLE [dbo].[StaffEmploymentJobPosition] (
    [StaffEmploymentJobPositionId] INT      IDENTITY (1, 1) NOT NULL,
    [JobPositionId]                INT      NOT NULL,
    [StaffEmploymentId]            INT      NOT NULL,
    [RecordStartDateTime]          DATETIME NULL,
    [RecordEndDateTime]            DATETIME NULL,
    [RecordStatusId]               INT      NULL,
    [DataCollectionId]             INT      NULL,
    CONSTRAINT [PK_StaffEmploymentJobPosition] PRIMARY KEY CLUSTERED ([StaffEmploymentJobPositionId] ASC),
    CONSTRAINT [FK_StaffEmploymentJobPosition_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_StaffEmploymentJobPosition_JobPosition] FOREIGN KEY ([JobPositionId]) REFERENCES [dbo].[JobPosition] ([JobPositionId]),
    CONSTRAINT [FK_StaffEmploymentJobPosition_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_StaffEmploymentJobPosition_StaffEmployment] FOREIGN KEY ([StaffEmploymentId]) REFERENCES [dbo].[StaffEmployment] ([StaffEmploymentId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The relationship between an employed staff member and the job position offered by an organization.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEmploymentJobPosition';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEmploymentJobPosition';

