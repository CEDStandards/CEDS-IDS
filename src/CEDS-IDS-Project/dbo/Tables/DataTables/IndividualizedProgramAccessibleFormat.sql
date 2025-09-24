CREATE TABLE [dbo].[IndividualizedProgramAccessibleFormat] (
    [IndividualizedProgramAccessibleFormatId] INT      IDENTITY (1, 1) NOT NULL,
    [RefAccessibleFormatIssuedIndicatorId]    INT      NULL,
    [RefAccessibleFormatRequiredIndicatorId]  INT      NULL,
    [RefAccessibleFormatTypeId]               INT      NULL,
    [AccessibleFormatIssuedBeginDate]         DATETIME NULL,
    [AccessibleFormatIssuedEndDate]           DATETIME NULL,
    [RecordStartDateTime]                     DATETIME NULL,
    [RecordEndDateTime]                       DATETIME NULL,
    [RecordStatusId]                          INT      NULL,
    [DataCollectionId]                        INT      NULL,
    [RefAccessibleFormatProviderTypeId]       INT      NULL,
    CONSTRAINT [PK_IndividualizedProgramAccessibleFormat] PRIMARY KEY CLUSTERED ([IndividualizedProgramAccessibleFormatId] ASC),
    CONSTRAINT [FK_IndividualizedProgramAccessibleFormat_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_IndividualizedProgramAccessibleFormat_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_IndividualizedProgramAccessibleFormat_RefAccessibleFormatIssuedIndicator] FOREIGN KEY ([RefAccessibleFormatIssuedIndicatorId]) REFERENCES [dbo].[RefAccessibleFormatIssuedIndicator] ([RefAccessibleFormatIssuedIndicatorId]),
    CONSTRAINT [FK_IndividualizedProgramAccessibleFormat_RefAccessibleFormatRequiredIndicator] FOREIGN KEY ([RefAccessibleFormatRequiredIndicatorId]) REFERENCES [dbo].[RefAccessibleFormatRequiredIndicator] ([RefAccessibleFormatRequiredIndicatorId]),
    CONSTRAINT [FK_IndividualizedProgramAccessibleFormat_RefAccessibleFormatType] FOREIGN KEY ([RefAccessibleFormatTypeId]) REFERENCES [dbo].[RefAccessibleFormatType] ([RefAccessibleFormatTypeId]),
    CONSTRAINT [FK_IndividualizedProgramAccessibleFormat_RefAccessibleFormatProviderType] FOREIGN KEY ([RefAccessibleFormatProviderTypeId]) REFERENCES [dbo].[RefAccessibleFormatProviderType] ([RefAccessibleFormatProviderTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information about accessible formats provided to students as part of an individualized program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibleFormat';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibleFormat';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication that the student was issued an accessible format according to their IEP or 504 Plan. ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibleFormat', @level2type = N'COLUMN', @level2name = N'RefAccessibleFormatIssuedIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Accessible Format Issued Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibleFormat', @level2type = N'COLUMN', @level2name = N'RefAccessibleFormatIssuedIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002088', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibleFormat', @level2type = N'COLUMN', @level2name = N'RefAccessibleFormatIssuedIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=24997', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibleFormat', @level2type = N'COLUMN', @level2name = N'RefAccessibleFormatIssuedIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibleFormat', @level2type = N'COLUMN', @level2name = N'RefAccessibleFormatIssuedIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication that the student requires an accessible format according to their IEP or 504 Plan.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibleFormat', @level2type = N'COLUMN', @level2name = N'RefAccessibleFormatRequiredIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Accessible Format Required Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibleFormat', @level2type = N'COLUMN', @level2name = N'RefAccessibleFormatRequiredIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002092', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibleFormat', @level2type = N'COLUMN', @level2name = N'RefAccessibleFormatRequiredIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=24998', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibleFormat', @level2type = N'COLUMN', @level2name = N'RefAccessibleFormatRequiredIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibleFormat', @level2type = N'COLUMN', @level2name = N'RefAccessibleFormatRequiredIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An alternative manner or form that gives an eligible person access to the work when the copy or phonorecord in the accessible format is used exclusively by the eligible person to permit him or her to have access as feasibly and comfortably as a person without such disability (20 U.S.C. § 121(d)(1)).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibleFormat', @level2type = N'COLUMN', @level2name = N'RefAccessibleFormatTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Accessible Format Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibleFormat', @level2type = N'COLUMN', @level2name = N'RefAccessibleFormatTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002089', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibleFormat', @level2type = N'COLUMN', @level2name = N'RefAccessibleFormatTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=24999', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibleFormat', @level2type = N'COLUMN', @level2name = N'RefAccessibleFormatTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibleFormat', @level2type = N'COLUMN', @level2name = N'RefAccessibleFormatTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date the student was issued any accessible format(s).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibleFormat', @level2type = N'COLUMN', @level2name = N'AccessibleFormatIssuedBeginDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Accessible Format Issued Begin Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibleFormat', @level2type = N'COLUMN', @level2name = N'AccessibleFormatIssuedBeginDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002090', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibleFormat', @level2type = N'COLUMN', @level2name = N'AccessibleFormatIssuedBeginDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=24995', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibleFormat', @level2type = N'COLUMN', @level2name = N'AccessibleFormatIssuedBeginDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibleFormat', @level2type = N'COLUMN', @level2name = N'AccessibleFormatIssuedBeginDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date for the issuance of accessible format(s) to the student.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibleFormat', @level2type = N'COLUMN', @level2name = N'AccessibleFormatIssuedEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Accessible Format Issued End Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibleFormat', @level2type = N'COLUMN', @level2name = N'AccessibleFormatIssuedEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002091', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibleFormat', @level2type = N'COLUMN', @level2name = N'AccessibleFormatIssuedEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=24996', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibleFormat', @level2type = N'COLUMN', @level2name = N'AccessibleFormatIssuedEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'IndividualizedProgramAccessibleFormat', @level2type = N'COLUMN', @level2name = N'AccessibleFormatIssuedEndDate';

