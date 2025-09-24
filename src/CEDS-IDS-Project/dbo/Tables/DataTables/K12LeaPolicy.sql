CREATE TABLE [dbo].[K12LeaPolicy] (
    [K12LeaPolicyId]                             INT      IDENTITY (1, 1) NOT NULL,
    [K12LeaId]                                   INT      NOT NULL,
    [RefLEAGFSAAssuranceofComplianceIndicatorId] INT      NULL,
    [RefLEAGFSAPolicyAssuranceIndicatorId]       INT      NULL,
    [RecordStartDateTime]                        DATETIME NULL,
    [RecordEndDateTime]                          DATETIME NULL,
    [RecordStatusId]                             INT      NULL,
    [DataCollectionId]                           INT      NULL,
    CONSTRAINT [PK_K12LeaPolicy] PRIMARY KEY CLUSTERED ([K12LeaPolicyId] ASC),
    CONSTRAINT [FK_K12LeaPolicy_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_K12LeaPolicy_K12Lea] FOREIGN KEY ([K12LeaId]) REFERENCES [dbo].[K12Lea] ([K12LeaId]),
    CONSTRAINT [FK_K12LeaPolicy_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_K12LeaPolicy_RefLEAGFSAAssuranceofComplianceIndicator] FOREIGN KEY ([RefLEAGFSAAssuranceofComplianceIndicatorId]) REFERENCES [dbo].[RefLEAGFSAAssuranceofComplianceIndicator] ([RefLEAGFSAAssuranceofComplianceIndicatorId]),
    CONSTRAINT [FK_K12LeaPolicy_RefLEAGFSAPolicyAssuranceIndicator] FOREIGN KEY ([RefLEAGFSAPolicyAssuranceIndicatorId]) REFERENCES [dbo].[RefLEAGFSAPolicyAssuranceIndicator] ([RefLEAGFSAPolicyAssuranceIndicatorId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information related to policies within a K12 location education agency.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaPolicy';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaPolicy';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Indicates if a Local Education Agency (LEA) has provided an assurance that it is in compliance with the State law requiring that a student who brings a firearm to school, or possesses a firearm at school, be expelled for one year, except that such State law shall allow the chief administering officer of a local educational agency to modify such expulsion requirement for a student on a case-by-case basis if such modification is in writing.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaPolicy', @level2type = N'COLUMN', @level2name = N'RefLEAGFSAAssuranceofComplianceIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'LEA GFSA Assurance of Compliance Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaPolicy', @level2type = N'COLUMN', @level2name = N'RefLEAGFSAAssuranceofComplianceIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002096', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaPolicy', @level2type = N'COLUMN', @level2name = N'RefLEAGFSAAssuranceofComplianceIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25034', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaPolicy', @level2type = N'COLUMN', @level2name = N'RefLEAGFSAAssuranceofComplianceIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaPolicy', @level2type = N'COLUMN', @level2name = N'RefLEAGFSAAssuranceofComplianceIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Indicates if a Local Education Agency has provided an assurance that it is in compliance with the requirement in Section 4141(h) that an LEA receiving ESEA funds have in place a policy requiring referral to the criminal justice or juvenile delinquency system of any student who brings a firearm to a school or possesses a firearm at school. ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaPolicy', @level2type = N'COLUMN', @level2name = N'RefLEAGFSAPolicyAssuranceIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'LEA GFSA Policy Assurance Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaPolicy', @level2type = N'COLUMN', @level2name = N'RefLEAGFSAPolicyAssuranceIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002097', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaPolicy', @level2type = N'COLUMN', @level2name = N'RefLEAGFSAPolicyAssuranceIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25035', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaPolicy', @level2type = N'COLUMN', @level2name = N'RefLEAGFSAPolicyAssuranceIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaPolicy', @level2type = N'COLUMN', @level2name = N'RefLEAGFSAPolicyAssuranceIndicatorId';

