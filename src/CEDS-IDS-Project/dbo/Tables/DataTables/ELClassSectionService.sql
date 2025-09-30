CREATE TABLE [dbo].[ELClassSectionService] (
    [ELClassSectionServiceId]        INT           IDENTITY (1, 1) NOT NULL,
    [ELClassSectionId]               INT           NOT NULL,
    [YoungestAgeServed]              INT           NULL,
    [OldestAgeServed]                INT           NULL,
    [ServesChildrenWithSpecialNeeds] BIT           NULL,
    [ELClassGroupCurriculumType]     NVARCHAR (60) NULL,
    [RefELGroupSizeStandardMetId]    INT           NULL,
    [RefFrequencyOfServiceId]        INT           NULL,
    [RecordStartDateTime]            DATETIME      NULL,
    [RecordEndDateTime]              DATETIME      NULL,
    [RecordStatusId]                 INT           NULL,
    [DataCollectionId]               INT           NULL,
    CONSTRAINT [PK_ELClassSectionService] PRIMARY KEY CLUSTERED ([ELClassSectionServiceId] ASC),
    CONSTRAINT [FK_ELClassSectionService_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_ELClassSectionService_ELClassSection] FOREIGN KEY ([ELClassSectionId]) REFERENCES [dbo].[ELClassSection] ([ELClassSectionId]),
    CONSTRAINT [FK_ELClassSectionService_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_ELClassSectionService_RefELGroupSizeStandardMet] FOREIGN KEY ([RefELGroupSizeStandardMetId]) REFERENCES [dbo].[RefELGroupSizeStandardMet] ([RefELGroupSizeStandardMetId]),
    CONSTRAINT [FK_ELClassSectionService_RefFrequencyOfServiceId] FOREIGN KEY ([RefFrequencyOfServiceId]) REFERENCES [dbo].[RefFrequencyOfService] ([RefFrequencyOfServiceId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The services provided in an early leaning class/section.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSectionService';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSectionService';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSectionService', @level2type = N'COLUMN', @level2name = N'ELClassSectionServiceId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The youngest age of children a class/group is authorized or licensed to serve.  (Age is specified in months)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSectionService', @level2type = N'COLUMN', @level2name = N'YoungestAgeServed';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Early Learning Youngest Age Authorized to Serve', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSectionService', @level2type = N'COLUMN', @level2name = N'YoungestAgeServed';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000633', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSectionService', @level2type = N'COLUMN', @level2name = N'YoungestAgeServed';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19626', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSectionService', @level2type = N'COLUMN', @level2name = N'YoungestAgeServed';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSectionService', @level2type = N'COLUMN', @level2name = N'YoungestAgeServed';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The oldest age of children a class/group is authorized or licensed to serve.  (Age is specified in months)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSectionService', @level2type = N'COLUMN', @level2name = N'OldestAgeServed';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Early Learning Oldest Age Authorized to Serve', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSectionService', @level2type = N'COLUMN', @level2name = N'OldestAgeServed';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001225', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSectionService', @level2type = N'COLUMN', @level2name = N'OldestAgeServed';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20189', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSectionService', @level2type = N'COLUMN', @level2name = N'OldestAgeServed';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSectionService', @level2type = N'COLUMN', @level2name = N'OldestAgeServed';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether a class or group serves children with special needs.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSectionService', @level2type = N'COLUMN', @level2name = N'ServesChildrenWithSpecialNeeds';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Serves Children with Special Needs', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSectionService', @level2type = N'COLUMN', @level2name = N'ServesChildrenWithSpecialNeeds';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000822', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSectionService', @level2type = N'COLUMN', @level2name = N'ServesChildrenWithSpecialNeeds';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19821', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSectionService', @level2type = N'COLUMN', @level2name = N'ServesChildrenWithSpecialNeeds';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSectionService', @level2type = N'COLUMN', @level2name = N'ServesChildrenWithSpecialNeeds';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of curriculum used in an early learning classroom or group.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSectionService', @level2type = N'COLUMN', @level2name = N'ELClassGroupCurriculumType';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Early Learning Class Group Curriculum Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSectionService', @level2type = N'COLUMN', @level2name = N'ELClassGroupCurriculumType';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000823', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSectionService', @level2type = N'COLUMN', @level2name = N'ELClassGroupCurriculumType';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19822', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSectionService', @level2type = N'COLUMN', @level2name = N'ELClassGroupCurriculumType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSectionService', @level2type = N'COLUMN', @level2name = N'ELClassGroupCurriculumType';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether a program meets NAEYC or NAFCC standards for infant group sizes.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSectionService', @level2type = N'COLUMN', @level2name = N'RefELGroupSizeStandardMetId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Early Learning Group Size Standards Met', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSectionService', @level2type = N'COLUMN', @level2name = N'RefELGroupSizeStandardMetId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000824', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSectionService', @level2type = N'COLUMN', @level2name = N'RefELGroupSizeStandardMetId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19823', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSectionService', @level2type = N'COLUMN', @level2name = N'RefELGroupSizeStandardMetId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSectionService', @level2type = N'COLUMN', @level2name = N'RefELGroupSizeStandardMetId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The frequency at which a service is planned to occur.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSectionService', @level2type = N'COLUMN', @level2name = N'RefFrequencyOfServiceId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Frequency of Service', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSectionService', @level2type = N'COLUMN', @level2name = N'RefFrequencyOfServiceId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001356', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSectionService', @level2type = N'COLUMN', @level2name = N'RefFrequencyOfServiceId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20323', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSectionService', @level2type = N'COLUMN', @level2name = N'RefFrequencyOfServiceId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSectionService', @level2type = N'COLUMN', @level2name = N'RefFrequencyOfServiceId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSectionService', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSectionService', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSectionService', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSectionService', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSectionService', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSectionService', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSectionService', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSectionService', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSectionService', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELClassSectionService', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

