CREATE TABLE [dbo].[EarlyChildhoodProgramTypeOffered] (
    [EarlyChildhoodProgramTypeOfferedId]       INT      IDENTITY (1, 1) NOT NULL,
    [OrganizationId]                           INT      NOT NULL,
    [RefEarlyChildhoodProgramEnrollmentTypeId] INT      NOT NULL,
    [InclusiveSettingIndicator]                BIT      NULL,
    [RefCommunityBasedTypeId]                  INT      NULL,
    [RecordStartDateTime]                      DATETIME NULL,
    [RecordEndDateTime]                        DATETIME NULL,
    [RecordStatusId]                           INT      NULL,
    [DataCollectionId]                         INT      NULL,
    CONSTRAINT [PK_EarlyChildhoodProgramTypeOffered] PRIMARY KEY CLUSTERED ([EarlyChildhoodProgramTypeOfferedId] ASC),
    CONSTRAINT [FK_EarlyChildhoodProgramTypeOffered_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_EarlyChildhoodProgramTypeOffered_Organization] FOREIGN KEY ([OrganizationId]) REFERENCES [dbo].[Organization] ([OrganizationId]),
    CONSTRAINT [FK_EarlyChildhoodProgramTypeOffered_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_EarlyChildhoodProgramTypeOffered_RefCommunityBasedType] FOREIGN KEY ([RefCommunityBasedTypeId]) REFERENCES [dbo].[RefCommunityBasedType] ([RefCommunityBasedTypeId]),
    CONSTRAINT [FK_ECProgramTypeOffered_RefEarlyChildhoodProgramType] FOREIGN KEY ([RefEarlyChildhoodProgramEnrollmentTypeId]) REFERENCES [dbo].[RefEarlyChildhoodProgramEnrollmentType] ([RefEarlyChildhoodProgramTypeId]),
    CONSTRAINT [IX_EarlyChildhoodProgramTypeOffered] UNIQUE NONCLUSTERED ([OrganizationId] ASC, [RefEarlyChildhoodProgramEnrollmentTypeId] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type(s) of  early childhood programs offered.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EarlyChildhoodProgramTypeOffered';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EarlyChildhoodProgramTypeOffered';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EarlyChildhoodProgramTypeOffered', @level2type = N'COLUMN', @level2name = N'EarlyChildhoodProgramTypeOfferedId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - Organization', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EarlyChildhoodProgramTypeOffered', @level2type = N'COLUMN', @level2name = N'OrganizationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The system outlining activities and procedures based on a set of required services and standards in which the child is enrolled.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EarlyChildhoodProgramTypeOffered', @level2type = N'COLUMN', @level2name = N'RefEarlyChildhoodProgramEnrollmentTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Early Childhood Program Enrollment Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EarlyChildhoodProgramTypeOffered', @level2type = N'COLUMN', @level2name = N'RefEarlyChildhoodProgramEnrollmentTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000829', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EarlyChildhoodProgramTypeOffered', @level2type = N'COLUMN', @level2name = N'RefEarlyChildhoodProgramEnrollmentTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19829', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EarlyChildhoodProgramTypeOffered', @level2type = N'COLUMN', @level2name = N'RefEarlyChildhoodProgramEnrollmentTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EarlyChildhoodProgramTypeOffered', @level2type = N'COLUMN', @level2name = N'RefEarlyChildhoodProgramEnrollmentTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Indicates that services are provided to the child in a place where children of all abilities learn together.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EarlyChildhoodProgramTypeOffered', @level2type = N'COLUMN', @level2name = N'InclusiveSettingIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Inclusive Setting Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EarlyChildhoodProgramTypeOffered', @level2type = N'COLUMN', @level2name = N'InclusiveSettingIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001634', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EarlyChildhoodProgramTypeOffered', @level2type = N'COLUMN', @level2name = N'InclusiveSettingIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20615', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EarlyChildhoodProgramTypeOffered', @level2type = N'COLUMN', @level2name = N'InclusiveSettingIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EarlyChildhoodProgramTypeOffered', @level2type = N'COLUMN', @level2name = N'InclusiveSettingIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Non domestic residence in which the early learning setting is located.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EarlyChildhoodProgramTypeOffered', @level2type = N'COLUMN', @level2name = N'RefCommunityBasedTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Community-based Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EarlyChildhoodProgramTypeOffered', @level2type = N'COLUMN', @level2name = N'RefCommunityBasedTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001633', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EarlyChildhoodProgramTypeOffered', @level2type = N'COLUMN', @level2name = N'RefCommunityBasedTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20614', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EarlyChildhoodProgramTypeOffered', @level2type = N'COLUMN', @level2name = N'RefCommunityBasedTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EarlyChildhoodProgramTypeOffered', @level2type = N'COLUMN', @level2name = N'RefCommunityBasedTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EarlyChildhoodProgramTypeOffered', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EarlyChildhoodProgramTypeOffered', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EarlyChildhoodProgramTypeOffered', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EarlyChildhoodProgramTypeOffered', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EarlyChildhoodProgramTypeOffered', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EarlyChildhoodProgramTypeOffered', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EarlyChildhoodProgramTypeOffered', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EarlyChildhoodProgramTypeOffered', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EarlyChildhoodProgramTypeOffered', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EarlyChildhoodProgramTypeOffered', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

