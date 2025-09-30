CREATE TABLE [dbo].[PsInstitution] (
    [PsInstitutionId]                        INT      IDENTITY (1, 1) NOT NULL,
    [OrganizationId]                         INT      NOT NULL,
    [VirtualIndicator]                       BIT      NULL,
    [InstitutionallyControlledHousingStatus] BIT      NULL,
    [RefCarnegieBasicClassificationId]       INT      NULL,
    [RefControlOfInstitutionId]              INT      NULL,
    [RefLevelOfInstitutionId]                INT      NULL,
    [RefPredominantCalendarSystemId]         INT      NULL,
    [RefTenureSystemId]                      INT      NULL,
    [RefAdmissionConsiderationLevelId]       INT      NULL,
    [RefAdmissionConsiderationTypeId]        INT      NULL,
    [RecordStartDateTime]                    DATETIME NULL,
    [RecordEndDateTime]                      DATETIME NULL,
    [RefAdministrativeFundingControlId]      INT      NULL,
    [RefIncreasedLearningTimeTypeId]         INT      NULL,
    [RecordStatusId]                         INT      NULL,
    [DataCollectionId]                       INT      NULL,
    [RefMostPrevalentLevelOfInstitutionId]   INT      NULL,
    CONSTRAINT [PK_PsInstitution] PRIMARY KEY CLUSTERED ([PsInstitutionId] ASC),
    CONSTRAINT [FK_PsInstitution_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_PsInstitution_Organization] FOREIGN KEY ([OrganizationId]) REFERENCES [dbo].[Organization] ([OrganizationId]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_PsInstitution_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_PsInstitution_RefAdministrativeFundingControl] FOREIGN KEY ([RefAdministrativeFundingControlId]) REFERENCES [dbo].[RefAdministrativeFundingControl] ([RefAdministrativeFundingControlId]),
    CONSTRAINT [FK_PsInstitution_RefAdmissionConsiderationLevel] FOREIGN KEY ([RefAdmissionConsiderationLevelId]) REFERENCES [dbo].[RefAdmissionConsiderationLevel] ([RefAdmissionConsiderationLevelId]),
    CONSTRAINT [FK_PsInstitution_RefAdmissionConsiderationType] FOREIGN KEY ([RefAdmissionConsiderationTypeId]) REFERENCES [dbo].[RefAdmissionConsiderationType] ([RefAdmissionConsiderationTypeId]),
    CONSTRAINT [FK_PsInstitution_RefClassification] FOREIGN KEY ([RefCarnegieBasicClassificationId]) REFERENCES [dbo].[RefCarnegieBasicClassification] ([RefCarnegieBasicClassificationId]),
    CONSTRAINT [FK_PsInstitution_RefControlOfInstitution] FOREIGN KEY ([RefControlOfInstitutionId]) REFERENCES [dbo].[RefControlOfInstitution] ([RefControlOfInstitutionId]),
    CONSTRAINT [FK_PsInstitution_RefIncreasedLearningTimeType] FOREIGN KEY ([RefIncreasedLearningTimeTypeId]) REFERENCES [dbo].[RefIncreasedLearningTimeType] ([RefIncreasedLearningTimeTypeId]),
    CONSTRAINT [FK_PsInstitution_RefLevelOfInstitution] FOREIGN KEY ([RefLevelOfInstitutionId]) REFERENCES [dbo].[RefLevelOfInstitution] ([RefLevelOfInstitutionId]),
    CONSTRAINT [FK_PsInstitution_RefMostPrevalentLevelOfInstitution] FOREIGN KEY ([RefMostPrevalentLevelOfInstitutionId]) REFERENCES [dbo].[RefMostPrevalentLevelOfInstitution] ([RefMostPrevalentLevelOfInstitutionId]),
    CONSTRAINT [FK_PsInstitution_RefPredominantCalendarSystem] FOREIGN KEY ([RefPredominantCalendarSystemId]) REFERENCES [dbo].[RefPredominantCalendarSystem] ([RefPredominantCalendarSystemId]),
    CONSTRAINT [FK_PsInstitution_RefTenureSystem] FOREIGN KEY ([RefTenureSystemId]) REFERENCES [dbo].[RefTenureSystem] ([RefTenureSystemId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An organization that provides educational programs for individuals who have completed or otherwise left educational programs in secondary school(s).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Inherited surrogate key from Organization.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'OrganizationId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'OrganizationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Indicates a school, institution, program, or course section focuses primarily on instruction in which students and teachers are separated by time and/or location and interact through the use of computers and/or telecommunications technologies.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'VirtualIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Virtual Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'VirtualIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001160', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'VirtualIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20167', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'VirtualIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'VirtualIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether an institution has any residence hall or housing facility located on- or off-campus that is owned or controlled by an institution and used by the institution in direct support of or in a manner related to, the institution''s educational purposes.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'InstitutionallyControlledHousingStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Institutionally Controlled Housing Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'InstitutionallyControlledHousingStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000748', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'InstitutionallyControlledHousingStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19727', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'InstitutionallyControlledHousingStatus';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'InstitutionallyControlledHousingStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The Basic Classification is an update of the traditional classification framework developed by the Carnegie Commission on Higher Education in 1970 to support its research program, and later published in 1973 for use by other researchers.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'RefCarnegieBasicClassificationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Carnegie Basic Classification', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'RefCarnegieBasicClassificationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000038', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'RefCarnegieBasicClassificationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19038', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'RefCarnegieBasicClassificationId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'RefCarnegieBasicClassificationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A classification of whether a postsecondary institution is operated by publicly elected or appointed officials (public control) or by privately elected or appointed officials and derives its major source of funds from private sources (private control). ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'RefControlOfInstitutionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Control of Institution', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'RefControlOfInstitutionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000048', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'RefControlOfInstitutionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19048', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'RefControlOfInstitutionId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'RefControlOfInstitutionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A classification of whether a postsecondary institution''s highest level of offering is a program of 4-years or higher (4 year), 2-but-less-than 4-years (2 year), or less than 2-years.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'RefLevelOfInstitutionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Level of Institution', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'RefLevelOfInstitutionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000178', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'RefLevelOfInstitutionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19178', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'RefLevelOfInstitutionId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'RefLevelOfInstitutionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The method by which an institution structures most of its courses for the academic year.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'RefPredominantCalendarSystemId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Predominant Calendar System', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'RefPredominantCalendarSystemId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000729', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'RefPredominantCalendarSystemId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19705', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'RefPredominantCalendarSystemId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'RefPredominantCalendarSystemId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indicator of whether an institution has personnel positions that lead to consideration for tenure.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'RefTenureSystemId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Tenure System', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'RefTenureSystemId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000738', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'RefTenureSystemId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19715', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'RefTenureSystemId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'RefTenureSystemId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The level of consideration given a type of admission criteria used at an institution during the selection process.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'RefAdmissionConsiderationLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Admission Consideration Level', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'RefAdmissionConsiderationLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001579', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'RefAdmissionConsiderationLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20558', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'RefAdmissionConsiderationLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'RefAdmissionConsiderationLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of admission consideration used at an institution during the selection process.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'RefAdmissionConsiderationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Admission Consideration Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'RefAdmissionConsiderationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001580', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'RefAdmissionConsiderationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20559', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'RefAdmissionConsiderationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'RefAdmissionConsiderationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of education institution as classified by its funding source.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'RefAdministrativeFundingControlId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Administrative Funding Control', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'RefAdministrativeFundingControlId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000012', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'RefAdministrativeFundingControlId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19012', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'RefAdministrativeFundingControlId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'RefAdministrativeFundingControlId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The types of increased learning time provided.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'RefIncreasedLearningTimeTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Increased Learning Time Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'RefIncreasedLearningTimeTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000164', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'RefIncreasedLearningTimeTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19164', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'RefIncreasedLearningTimeTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'RefIncreasedLearningTimeTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A classification of a postsecondary institution''s most prevalent level.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'RefMostPrevalentLevelOfInstitutionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Most Prevalent Level of Institution', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'RefMostPrevalentLevelOfInstitutionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002025', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'RefMostPrevalentLevelOfInstitutionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25071', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'RefMostPrevalentLevelOfInstitutionId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsInstitution', @level2type = N'COLUMN', @level2name = N'RefMostPrevalentLevelOfInstitutionId';

