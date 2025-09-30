CREATE TABLE [dbo].[PsStudentAcademicAward] (
    [PsStudentAcademicAwardId]           INT            IDENTITY (1, 1) NOT NULL,
    [OrganizationPersonRoleId]           INT            NOT NULL,
    [AcademicAwardDate]                  NVARCHAR (14)  NULL,
    [RefAcademicAwardLevelId]            INT            NULL,
    [AcademicAwardTitle]                 NVARCHAR (80)  NULL,
    [RequirementsURL]                    NVARCHAR (512) NULL,
    [RefAcademicAwardPrerequisiteTypeId] INT            NULL,
    [RefPESCAwardLevelTypeId]            INT            NULL,
    [RecordStartDateTime]                DATETIME       NULL,
    [RecordEndDateTime]                  DATETIME       NULL,
    [RecordStatusId]                     INT            NULL,
    [DataCollectionId]                   INT            NULL,
    CONSTRAINT [PK_PsStudentAcademicAward] PRIMARY KEY CLUSTERED ([PsStudentAcademicAwardId] ASC),
    CONSTRAINT [FK_PsAcademicAward_RefAcademicAwardLevel] FOREIGN KEY ([RefAcademicAwardLevelId]) REFERENCES [dbo].[RefAcademicAwardLevel] ([RefAcademicAwardLevelId]),
    CONSTRAINT [FK_PsStudentAcademicAward_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_PsStudentAcademicAward_OrganizationPersonRole] FOREIGN KEY ([OrganizationPersonRoleId]) REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]),
    CONSTRAINT [FK_PsStudentAcademicAward_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_PsStudentAcademicAward_RefAcademicAwardPrerequisiteType] FOREIGN KEY ([RefAcademicAwardPrerequisiteTypeId]) REFERENCES [dbo].[RefAcademicAwardPrerequisiteType] ([RefAcademicAwardPrerequisiteTypeId]),
    CONSTRAINT [FK_PsStudentAcademicAward_RefPESCAwardLevelType] FOREIGN KEY ([RefPESCAwardLevelTypeId]) REFERENCES [dbo].[RefPESCAwardLevelType] ([RefPESCAwardLevelTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An award conferred by a college, university, or other postsecondary education institution as official recognition for the successful completion of a program of study.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicAward';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicAward';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicAward', @level2type = N'COLUMN', @level2name = N'PsStudentAcademicAwardId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - OrganizationPersonRole.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicAward', @level2type = N'COLUMN', @level2name = N'OrganizationPersonRoleId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year, month and day or year and month on which the academic award was conferred.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicAward', @level2type = N'COLUMN', @level2name = N'AcademicAwardDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Academic Award Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicAward', @level2type = N'COLUMN', @level2name = N'AcademicAwardDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000001', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicAward', @level2type = N'COLUMN', @level2name = N'AcademicAwardDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19001', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicAward', @level2type = N'COLUMN', @level2name = N'AcademicAwardDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicAward', @level2type = N'COLUMN', @level2name = N'AcademicAwardDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indicator of the category of award conferred by a college, university, or other postsecondary education institution as official recognition for the successful completion of a program of study.   ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicAward', @level2type = N'COLUMN', @level2name = N'RefAcademicAwardLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Academic Award Level Conferred', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicAward', @level2type = N'COLUMN', @level2name = N'RefAcademicAwardLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000002', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicAward', @level2type = N'COLUMN', @level2name = N'RefAcademicAwardLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19002', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicAward', @level2type = N'COLUMN', @level2name = N'RefAcademicAwardLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicAward', @level2type = N'COLUMN', @level2name = N'RefAcademicAwardLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The descriptive title for the academic award.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicAward', @level2type = N'COLUMN', @level2name = N'AcademicAwardTitle';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Academic Award Title', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicAward', @level2type = N'COLUMN', @level2name = N'AcademicAwardTitle';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000003', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicAward', @level2type = N'COLUMN', @level2name = N'AcademicAwardTitle';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19003', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicAward', @level2type = N'COLUMN', @level2name = N'AcademicAwardTitle';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicAward', @level2type = N'COLUMN', @level2name = N'AcademicAwardTitle';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A URL to a page that describes the requirements for the credential.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicAward', @level2type = N'COLUMN', @level2name = N'RequirementsURL';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Academic Award Requirements URL', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicAward', @level2type = N'COLUMN', @level2name = N'RequirementsURL';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001665', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicAward', @level2type = N'COLUMN', @level2name = N'RequirementsURL';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20646', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicAward', @level2type = N'COLUMN', @level2name = N'RequirementsURL';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Prerequisite conditions for earning an academic award.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicAward', @level2type = N'COLUMN', @level2name = N'RefAcademicAwardPrerequisiteTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Academic Award Prerequisite Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicAward', @level2type = N'COLUMN', @level2name = N'RefAcademicAwardPrerequisiteTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001666', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicAward', @level2type = N'COLUMN', @level2name = N'RefAcademicAwardPrerequisiteTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20647', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicAward', @level2type = N'COLUMN', @level2name = N'RefAcademicAwardPrerequisiteTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indicator of the category of award conferred by a college, university, or other postsecondary education institution as official recognition for the successful completion of a program of study.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicAward', @level2type = N'COLUMN', @level2name = N'RefPESCAwardLevelTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'PESC Award Level Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicAward', @level2type = N'COLUMN', @level2name = N'RefPESCAwardLevelTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001668', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicAward', @level2type = N'COLUMN', @level2name = N'RefPESCAwardLevelTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20649', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicAward', @level2type = N'COLUMN', @level2name = N'RefPESCAwardLevelTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicAward', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicAward', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicAward', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicAward', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicAward', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicAward', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicAward', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicAward', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicAward', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStudentAcademicAward', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

