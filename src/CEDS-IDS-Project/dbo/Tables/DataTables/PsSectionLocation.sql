CREATE TABLE [dbo].[PsSectionLocation] (
    [PsSectionLocationId]            INT           IDENTITY (1, 1) NOT NULL,
    [PsSectionId]                    INT           NOT NULL,
    [CourseInstructionSiteName]      NVARCHAR (60) NULL,
    [RefCourseInstructionSiteTypeId] INT           NULL,
    [RecordStartDateTime]            DATETIME      NULL,
    [RecordEndDateTime]              DATETIME      NULL,
    [RecordStatusId]                 INT           NULL,
    [DataCollectionId]               INT           NULL,
    CONSTRAINT [PK_PsSectionLocation] PRIMARY KEY CLUSTERED ([PsSectionLocationId] ASC),
    CONSTRAINT [FK_PsSectionLocation_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_PsSectionLocation_PsSection] FOREIGN KEY ([PsSectionId]) REFERENCES [dbo].[PsSection] ([PsSectionId]),
    CONSTRAINT [FK_PsSectionLocation_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_PsSectionLocation_RefCourseInstructionSiteType] FOREIGN KEY ([RefCourseInstructionSiteTypeId]) REFERENCES [dbo].[RefCourseInstructionSiteType] ([RefCourseInstructionSiteTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information about a location in which a postsecondary course section is delivered.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSectionLocation';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSectionLocation';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The name of the location at which the course is taught.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSectionLocation', @level2type = N'COLUMN', @level2name = N'CourseInstructionSiteName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Course Instruction Site Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSectionLocation', @level2type = N'COLUMN', @level2name = N'CourseInstructionSiteName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001309', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSectionLocation', @level2type = N'COLUMN', @level2name = N'CourseInstructionSiteName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20275', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSectionLocation', @level2type = N'COLUMN', @level2name = N'CourseInstructionSiteName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSectionLocation', @level2type = N'COLUMN', @level2name = N'CourseInstructionSiteName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of the type of location at which the course is taught.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSectionLocation', @level2type = N'COLUMN', @level2name = N'RefCourseInstructionSiteTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Course Instruction Site Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSectionLocation', @level2type = N'COLUMN', @level2name = N'RefCourseInstructionSiteTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001310', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSectionLocation', @level2type = N'COLUMN', @level2name = N'RefCourseInstructionSiteTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20276', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSectionLocation', @level2type = N'COLUMN', @level2name = N'RefCourseInstructionSiteTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSectionLocation', @level2type = N'COLUMN', @level2name = N'RefCourseInstructionSiteTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSectionLocation', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSectionLocation', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSectionLocation', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSectionLocation', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSectionLocation', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSectionLocation', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSectionLocation', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSectionLocation', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsSectionLocation', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

