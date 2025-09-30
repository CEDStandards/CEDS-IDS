CREATE TABLE [dbo].[CourseRelationship] (
    [CourseRelationshipId] INT      IDENTITY (1, 1) NOT NULL,
    [CourseId]             INT      NOT NULL,
    [RelatedCourseId]      INT      NOT NULL,
    [RecordStartDateTime]  DATETIME NULL,
    [RecordEndDateTime]    DATETIME NULL,
    [RecordStatusId]       INT      NULL,
    [DataCollectionId]     INT      NULL,
    CONSTRAINT [PK_CourseRelationship] PRIMARY KEY CLUSTERED ([CourseRelationshipId] ASC),
    CONSTRAINT [FK_CourseRelationship_Course] FOREIGN KEY ([CourseId]) REFERENCES [dbo].[Course] ([CourseId]),
    CONSTRAINT [FK_CourseRelationship_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_CourseRelationship_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The relationship between two courses, generally used with  Sequence of Course to order courses.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseRelationship';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseRelationship';

