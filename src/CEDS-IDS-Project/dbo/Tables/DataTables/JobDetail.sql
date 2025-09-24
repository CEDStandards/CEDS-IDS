CREATE TABLE [dbo].[JobDetail] (
    [JobDetailId]                             INT      IDENTITY (1, 1) NOT NULL,
    [JobId]                                   INT      NOT NULL,
    [RefCodingSystemOrganizationTypeId]       INT      NULL,
    [RefEducationJobTypeId]                   INT      NULL,
    [RefK12StaffClassificationId]             INT      NULL,
    [RefLocalJobCategoryId]                   INT      NULL,
    [RefLocalJobFunctionId]                   INT      NULL,
    [RefStandardOccupationalClassificationId] INT      NULL,
    [RecordStartDateTime]                     DATETIME NULL,
    [RecordEndDateTime]                       DATETIME NULL,
    [RecordStatusId]                          INT      NULL,
    [DataCollectionId]                        INT      NULL,
    CONSTRAINT [PK_JobDetail] PRIMARY KEY CLUSTERED ([JobDetailId] ASC),
    CONSTRAINT [FK_JobDetail_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_JobDetail_Job] FOREIGN KEY ([JobId]) REFERENCES [dbo].[Job] ([JobId]),
    CONSTRAINT [FK_JobDetail_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_JobDetail_RefCodingSystemOrganizationType] FOREIGN KEY ([RefCodingSystemOrganizationTypeId]) REFERENCES [dbo].[RefCodingSystemOrganizationType] ([RefCodingSystemOrganizationTypeId]),
    CONSTRAINT [FK_JobDetail_RefEducationJobType] FOREIGN KEY ([RefEducationJobTypeId]) REFERENCES [dbo].[RefEducationJobType] ([RefEducationJobTypeId]),
    CONSTRAINT [FK_JobDetail_RefK12StaffClassification] FOREIGN KEY ([RefK12StaffClassificationId]) REFERENCES [dbo].[RefK12StaffClassification] ([RefK12StaffClassificationId]),
    CONSTRAINT [FK_JobDetail_RefLocalJobCategory] FOREIGN KEY ([RefLocalJobCategoryId]) REFERENCES [dbo].[RefLocalJobCategory] ([RefLocalJobCategoryId]),
    CONSTRAINT [FK_JobDetail_RefLocalJobFunction] FOREIGN KEY ([RefLocalJobFunctionId]) REFERENCES [dbo].[RefLocalJobFunction] ([RefLocalJobFunctionId]),
    CONSTRAINT [FK_JobDetail_RefStandardOccupationalClassification] FOREIGN KEY ([RefStandardOccupationalClassificationId]) REFERENCES [dbo].[RefStandardOccupationalClassification] ([RefStandardOccupationalClassificationId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information about a job.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobDetail';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobDetail';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of organization that created the coding system for this element.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobDetail', @level2type = N'COLUMN', @level2name = N'RefCodingSystemOrganizationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Coding System Organization Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobDetail', @level2type = N'COLUMN', @level2name = N'RefCodingSystemOrganizationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002073', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobDetail', @level2type = N'COLUMN', @level2name = N'RefCodingSystemOrganizationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25009', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobDetail', @level2type = N'COLUMN', @level2name = N'RefCodingSystemOrganizationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobDetail', @level2type = N'COLUMN', @level2name = N'RefCodingSystemOrganizationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A broad categorization of the job as it relates to education.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobDetail', @level2type = N'COLUMN', @level2name = N'RefEducationJobTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Education Job Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobDetail', @level2type = N'COLUMN', @level2name = N'RefEducationJobTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002074', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobDetail', @level2type = N'COLUMN', @level2name = N'RefEducationJobTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25015', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobDetail', @level2type = N'COLUMN', @level2name = N'RefEducationJobTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobDetail', @level2type = N'COLUMN', @level2name = N'RefEducationJobTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A local code used to describe and classify the job.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobDetail', @level2type = N'COLUMN', @level2name = N'RefLocalJobCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Local Job Category', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobDetail', @level2type = N'COLUMN', @level2name = N'RefLocalJobCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002071', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobDetail', @level2type = N'COLUMN', @level2name = N'RefLocalJobCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25043', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobDetail', @level2type = N'COLUMN', @level2name = N'RefLocalJobCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobDetail', @level2type = N'COLUMN', @level2name = N'RefLocalJobCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A local code indicating the broad business activity supported by the job.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobDetail', @level2type = N'COLUMN', @level2name = N'RefLocalJobFunctionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Local Job Function', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobDetail', @level2type = N'COLUMN', @level2name = N'RefLocalJobFunctionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002072', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobDetail', @level2type = N'COLUMN', @level2name = N'RefLocalJobFunctionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25044', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobDetail', @level2type = N'COLUMN', @level2name = N'RefLocalJobFunctionId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JobDetail', @level2type = N'COLUMN', @level2name = N'RefLocalJobFunctionId';

