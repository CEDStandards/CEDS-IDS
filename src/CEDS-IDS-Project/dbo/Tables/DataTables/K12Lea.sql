CREATE TABLE [dbo].[K12Lea] (
    [K12LeaId]                             INT       IDENTITY (1, 1) NOT NULL,
    [OrganizationId]                       INT       NOT NULL,
    [SupervisoryUnionIdentificationNumber] NCHAR (3) NULL,
    [CharterSchoolIndicator]               BIT       NULL,
    [RefLeaTypeId]                         INT       NULL,
    [RefLeaImprovementStatusId]            INT       NULL,
    [RefPublicSchoolChoiceStatusId]        INT       NULL,
    [RefCharterLeaStatusId]                INT       NULL,
    [RecordStartDateTime]                  DATETIME  NULL,
    [RecordEndDateTime]                    DATETIME  NULL,
    [RecordStatusId]                       INT       NULL,
    [DataCollectionId]                     INT       NULL,
    CONSTRAINT [XPKK12Lea] PRIMARY KEY CLUSTERED ([K12LeaId] ASC),
    CONSTRAINT [FK_K12Lea_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_K12Lea_Organization] FOREIGN KEY ([OrganizationId]) REFERENCES [dbo].[Organization] ([OrganizationId]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_K12Lea_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_K12Lea_RefCharterLeaStatus] FOREIGN KEY ([RefCharterLeaStatusId]) REFERENCES [dbo].[RefCharterLeaStatus] ([RefCharterLeaStatusId]),
    CONSTRAINT [FK_K12Lea_RefLeaImprovementStatus] FOREIGN KEY ([RefLeaImprovementStatusId]) REFERENCES [dbo].[RefLeaImprovementStatus] ([RefLeaImprovementStatusId]),
    CONSTRAINT [FK_K12Lea_RefLeaType] FOREIGN KEY ([RefLeaTypeId]) REFERENCES [dbo].[RefLeaType] ([RefLeaTypeId]),
    CONSTRAINT [FK_K12Lea_RefPublicSchoolChoiceStatus] FOREIGN KEY ([RefPublicSchoolChoiceStatusId]) REFERENCES [dbo].[RefPublicSchoolChoiceStatus] ([RefPublicSchoolChoiceStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An administrative unit within K-12 education at the local level which exists primarily to operate schools or to contract for educational services. These units may or may not be co-extensive with county, city, or town boundaries. ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12Lea';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12Lea';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Inherited surrogate key from Organization.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12Lea', @level2type = N'COLUMN', @level2name = N'OrganizationId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12Lea', @level2type = N'COLUMN', @level2name = N'OrganizationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The three-digit unique identifier assigned to the supervisory union by the state.  ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12Lea', @level2type = N'COLUMN', @level2name = N'SupervisoryUnionIdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Local Education Agency Supervisory Union Identification Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12Lea', @level2type = N'COLUMN', @level2name = N'SupervisoryUnionIdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000175', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12Lea', @level2type = N'COLUMN', @level2name = N'SupervisoryUnionIdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19175', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12Lea', @level2type = N'COLUMN', @level2name = N'SupervisoryUnionIdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12Lea', @level2type = N'COLUMN', @level2name = N'SupervisoryUnionIdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication that a public school provides free public elementary and/or secondary education to eligible students under a specific charter executed, pursuant to a state charter school law, by an authorized chartering agency/authority and that is designated by such authority to be a public charter school.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12Lea', @level2type = N'COLUMN', @level2name = N'CharterSchoolIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Charter School Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12Lea', @level2type = N'COLUMN', @level2name = N'CharterSchoolIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000039', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12Lea', @level2type = N'COLUMN', @level2name = N'CharterSchoolIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19039', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12Lea', @level2type = N'COLUMN', @level2name = N'CharterSchoolIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'
The classification of education agencies within the geographic boundaries of a state according to the level of administrative and operational control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12Lea', @level2type = N'COLUMN', @level2name = N'RefLeaTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Local Education Agency Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12Lea', @level2type = N'COLUMN', @level2name = N'RefLeaTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000537', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12Lea', @level2type = N'COLUMN', @level2name = N'RefLeaTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19528', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12Lea', @level2type = N'COLUMN', @level2name = N'RefLeaTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12Lea', @level2type = N'COLUMN', @level2name = N'RefLeaTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of the improvement stage for AYP of the local education agency (LEA).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12Lea', @level2type = N'COLUMN', @level2name = N'RefLeaImprovementStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Local Education Agency Improvement Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12Lea', @level2type = N'COLUMN', @level2name = N'RefLeaImprovementStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000173', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12Lea', @level2type = N'COLUMN', @level2name = N'RefLeaImprovementStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19173', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12Lea', @level2type = N'COLUMN', @level2name = N'RefLeaImprovementStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12Lea', @level2type = N'COLUMN', @level2name = N'RefLeaImprovementStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether the LEA was able to implement the provisions for public school choice under Title I, Part A, Section 1116 of ESEA as amended.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12Lea', @level2type = N'COLUMN', @level2name = N'RefPublicSchoolChoiceStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Public School Choice Implementation Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12Lea', @level2type = N'COLUMN', @level2name = N'RefPublicSchoolChoiceStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000227', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12Lea', @level2type = N'COLUMN', @level2name = N'RefPublicSchoolChoiceStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19227', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12Lea', @level2type = N'COLUMN', @level2name = N'RefPublicSchoolChoiceStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12Lea', @level2type = N'COLUMN', @level2name = N'RefPublicSchoolChoiceStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12Lea', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12Lea', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12Lea', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12Lea', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12Lea', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12Lea', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12Lea', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12Lea', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12Lea', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

