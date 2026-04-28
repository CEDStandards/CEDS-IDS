CREATE TABLE [dbo].[PersonDetail] (
    [PersonDetailId]                      INT           IDENTITY (1, 1) NOT NULL,
    [PersonId]                            INT           NOT NULL,
    [FirstName]                           NVARCHAR (75) NULL,
    [MiddleName]                          NVARCHAR (75) NULL,
    [LastName]                            NVARCHAR (75) NOT NULL,
    [GenerationCode]                      NVARCHAR (10) NULL,
    [Prefix]                              NVARCHAR (30) NULL,
    [Birthdate]                           DATE          NULL,
    [DeathDate]                           DATE          NULL,
    [RefSexId]                            INT           NULL,
    [HispanicLatinoEthnicity]             BIT           NULL,
    [RefUSCitizenshipStatusId]            INT           NULL,
    [RefVisaTypeId]                       INT           NULL,
    [RefStateOfResidenceId]               INT           NULL,
    [RefProofOfResidencyTypeId]           INT           NULL,
    [RefHighestEducationLevelCompletedId] INT           NULL,
    [BirthdateVerification]               NVARCHAR (60) NULL,
    [RefTribalAffiliationId]              INT           NULL,
    [RecordStartDateTime]                 DATETIME      NULL,
    [RecordEndDateTime]                   DATETIME      NULL,
    [RecordStatusId]                      INT           NULL,
    [DataCollectionId]                    INT           NULL,
    PRIMARY KEY CLUSTERED ([PersonDetailId] ASC),
    CONSTRAINT [FK_PersonDetail_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_PersonDetail_Person] FOREIGN KEY ([PersonId]) REFERENCES [dbo].[Person] ([PersonId]),
    CONSTRAINT [FK_PersonDetail_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_PersonDetail_RefEducationLevel] FOREIGN KEY ([RefHighestEducationLevelCompletedId]) REFERENCES [dbo].[RefEducationLevel] ([RefEducationLevelId]),
    CONSTRAINT [FK_PersonDetail_RefProofOfResidencyType] FOREIGN KEY ([RefProofOfResidencyTypeId]) REFERENCES [dbo].[RefProofOfResidencyType] ([RefProofOfResidencyTypeId]),
    CONSTRAINT [FK_PersonDetail_RefSex] FOREIGN KEY ([RefSexId]) REFERENCES [dbo].[RefSex] ([RefSexId]),
    CONSTRAINT [FK_PersonDetail_RefState] FOREIGN KEY ([RefStateOfResidenceId]) REFERENCES [dbo].[RefState] ([RefStateId]),
    CONSTRAINT [FK_PersonDetail_RefTribalAffiliation] FOREIGN KEY ([RefTribalAffiliationId]) REFERENCES [dbo].[RefTribalAffiliation] ([RefTribalAffiliationId]),
    CONSTRAINT [FK_PersonDetail_RefUSCitizenshipStatus] FOREIGN KEY ([RefUSCitizenshipStatusId]) REFERENCES [dbo].[RefUSCitizenshipStatus] ([RefUSCitizenshipStatusId]),
    CONSTRAINT [FK_PersonDetail_RefVisaType] FOREIGN KEY ([RefVisaTypeId]) REFERENCES [dbo].[RefVisaType] ([RefVisaTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Attributes of a person.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The full legal first name given to a person at birth, baptism, or through legal change.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'FirstName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'First Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'FirstName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000115', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'FirstName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19115', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'FirstName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'FirstName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A full legal middle name given to a person at birth, baptism, or through legal change.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'MiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Middle Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'MiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000184', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'MiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19184', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'MiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'MiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The full legal last name borne in common by members of a family.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'LastName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Last or Surname', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'LastName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000172', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'LastName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19172', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'LastName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'LastName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An appendage, if any, used to denote a person''s generation in his family (e.g., Jr., Sr., III).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'GenerationCode';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Generation Code or Suffix', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'GenerationCode';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000121', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'GenerationCode';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19121', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'GenerationCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'GenerationCode';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An appellation, if any, used to denote rank, placement, or status (e.g., Mr., Ms., Reverend, Sister, Dr., Colonel).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'Prefix';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Personal Title or Prefix', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'Prefix';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000212', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'Prefix';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19212', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'Prefix';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'Prefix';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year, month and day on which a person was born.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'Birthdate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Birthdate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'Birthdate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'Birthdate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'Birthdate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'Birthdate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The concept describing the biological traits that distinguish the males and females of a species.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'RefSexId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Sex', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'RefSexId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'RefSexId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'RefSexId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'RefSexId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication that the person traces his or her origin or descent to Mexico, Puerto Rico, Cuba, Central and South America, and other Spanish cultures, regardless of race.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'HispanicLatinoEthnicity';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Hispanic or Latino Ethnicity', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'HispanicLatinoEthnicity';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000144', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'HispanicLatinoEthnicity';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19144', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'HispanicLatinoEthnicity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'HispanicLatinoEthnicity';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indicator of whether or not the person is a US citizen.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'RefUSCitizenshipStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'United States Citizenship Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'RefUSCitizenshipStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000299', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'RefUSCitizenshipStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19299', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'RefUSCitizenshipStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'RefUSCitizenshipStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indicator of a non-US citizen''s Visa type.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'RefVisaTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Visa Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'RefVisaTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000196', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'RefVisaTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19196', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'RefVisaTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'RefVisaTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An person''s permanent address as determined by such evidence as a driver''s license or voter registration. For entering freshmen, state of residence may be the legal state of residence of a parent or guardian.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'RefStateOfResidenceId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'State of Residence', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'RefStateOfResidenceId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000268', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'RefStateOfResidenceId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19268', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'RefStateOfResidenceId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'RefStateOfResidenceId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An accepted form of proof of residency in the district/county/other locality.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'RefProofOfResidencyTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Proof of Residency Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'RefProofOfResidencyTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000305', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'RefProofOfResidencyTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19305', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'RefProofOfResidencyTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'RefProofOfResidencyTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The extent of formal instruction a person has received (e.g., the highest grade in school completed or its equivalent or the highest degree received).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'RefHighestEducationLevelCompletedId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Highest Level of Education Completed', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'RefHighestEducationLevelCompletedId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000141', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'RefHighestEducationLevelCompletedId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19141', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'RefHighestEducationLevelCompletedId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'RefHighestEducationLevelCompletedId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The evidence by which a child''s date of birth is confirmed.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'BirthdateVerification';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Birthdate Verification', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'BirthdateVerification';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000428', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'BirthdateVerification';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19418', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'BirthdateVerification';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'BirthdateVerification';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The Native American tribal entity recognized and eligible to receive services from the United States Bureau of Indian Affairs to which a person is affiliated.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'RefTribalAffiliationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Tribal Affiliation', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'RefTribalAffiliationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001657', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'RefTribalAffiliationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20638', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'RefTribalAffiliationId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'RefTribalAffiliationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year, month, and day on which a person died.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'DeathDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Death Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'DeathDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002206', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'DeathDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://w3id.org/CEDStandards/terms/P002206', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'DeathDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDetail', @level2type = N'COLUMN', @level2name = N'DeathDate';
