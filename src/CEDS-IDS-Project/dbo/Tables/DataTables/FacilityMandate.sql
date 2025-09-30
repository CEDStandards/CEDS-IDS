CREATE TABLE [dbo].[FacilityMandate] (
    [FacilityMandateId]                            INT           IDENTITY (1, 1) NOT NULL,
    [FacilityId]                                   INT           NOT NULL,
    [FacilityStateOrLocalMandateName]              NVARCHAR (60) NULL,
    [RefFacilitiesMandateAuthorityTypeId]          INT           NULL,
    [RefFacilityApplicableFederalMandateTypeId]    INT           NULL,
    [RefFacilityFederalMandateInterestTypeId]      INT           NULL,
    [RefFacilityStateOrLocalMandateInterestTypeId] INT           NULL,
    [RecordStartDateTime]                          DATETIME      NULL,
    [RecordEndDateTime]                            DATETIME      NULL,
    [RecordStatusId]                               INT           NULL,
    [DataCollectionId]                             INT           NULL,
    CONSTRAINT [PK_FacilityMandate] PRIMARY KEY CLUSTERED ([FacilityMandateId] ASC),
    CONSTRAINT [FK_FacilityMandate_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_FacilityMandate_Facility] FOREIGN KEY ([FacilityId]) REFERENCES [dbo].[Facility] ([FacilityId]),
    CONSTRAINT [FK_FacilityMandate_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_FacilityMandate_RefFacilitiesMandateAuthorityType] FOREIGN KEY ([RefFacilitiesMandateAuthorityTypeId]) REFERENCES [dbo].[RefFacilitiesMandateAuthorityType] ([RefFacilitiesMandateAuthorityTypeId]),
    CONSTRAINT [FK_FacilityMandate_RefFacilityApplicableFederalMandateType] FOREIGN KEY ([RefFacilityApplicableFederalMandateTypeId]) REFERENCES [dbo].[RefFacilityApplicableFederalMandateType] ([RefFacilityApplicableFederalMandateTypeId]),
    CONSTRAINT [FK_FacilityMandate_RefFacilityFederalMandateInterestType] FOREIGN KEY ([RefFacilityFederalMandateInterestTypeId]) REFERENCES [dbo].[RefFacilityFederalMandateInterestType] ([RefFacilityFederalMandateInterestTypeId]),
    CONSTRAINT [FK_FacilityMandate_RefFacilityStateOrLocalMandateInterestType] FOREIGN KEY ([RefFacilityStateOrLocalMandateInterestTypeId]) REFERENCES [dbo].[RefFacilityStateOrLocalMandateInterestType] ([RefFacilityStateOrLocalMandateInterestTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Defines types of mandates applicable to a facility.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityMandate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityMandate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The specific law, rule, regulation, or standard of a state or local government that pertains to public school facilities.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityMandate', @level2type = N'COLUMN', @level2name = N'FacilityStateOrLocalMandateName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Facility State or Local Mandate Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityMandate', @level2type = N'COLUMN', @level2name = N'FacilityStateOrLocalMandateName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001806', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityMandate', @level2type = N'COLUMN', @level2name = N'FacilityStateOrLocalMandateName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20787', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityMandate', @level2type = N'COLUMN', @level2name = N'FacilityStateOrLocalMandateName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The authority that mandates through law, regulation, or standard that pertains to a specific mandate.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityMandate', @level2type = N'COLUMN', @level2name = N'RefFacilitiesMandateAuthorityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Facilities Mandate Authority Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityMandate', @level2type = N'COLUMN', @level2name = N'RefFacilitiesMandateAuthorityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001885', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityMandate', @level2type = N'COLUMN', @level2name = N'RefFacilitiesMandateAuthorityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20866', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityMandate', @level2type = N'COLUMN', @level2name = N'RefFacilitiesMandateAuthorityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The particular federal law, regulation, or standard that pertains to a school facility.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityMandate', @level2type = N'COLUMN', @level2name = N'RefFacilityApplicableFederalMandateTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Facility Applicable Federal Mandate Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityMandate', @level2type = N'COLUMN', @level2name = N'RefFacilityApplicableFederalMandateTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001796', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityMandate', @level2type = N'COLUMN', @level2name = N'RefFacilityApplicableFederalMandateTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20777', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityMandate', @level2type = N'COLUMN', @level2name = N'RefFacilityApplicableFederalMandateTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The area of interest controlled by a federal law, regulation, or standard that pertains to a school facility.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityMandate', @level2type = N'COLUMN', @level2name = N'RefFacilityFederalMandateInterestTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Facility Federal Mandate Interest Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityMandate', @level2type = N'COLUMN', @level2name = N'RefFacilityFederalMandateInterestTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001797', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityMandate', @level2type = N'COLUMN', @level2name = N'RefFacilityFederalMandateInterestTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20778', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityMandate', @level2type = N'COLUMN', @level2name = N'RefFacilityFederalMandateInterestTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The area of interest controlled by a law, rule, regulation, or standard of state and local governments that pertains to public school facilities.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityMandate', @level2type = N'COLUMN', @level2name = N'RefFacilityStateOrLocalMandateInterestTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Facility State or Local Mandate Interest Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityMandate', @level2type = N'COLUMN', @level2name = N'RefFacilityStateOrLocalMandateInterestTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001805', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityMandate', @level2type = N'COLUMN', @level2name = N'RefFacilityStateOrLocalMandateInterestTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20786', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityMandate', @level2type = N'COLUMN', @level2name = N'RefFacilityStateOrLocalMandateInterestTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityMandate', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityMandate', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityMandate', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityMandate', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityMandate', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityMandate', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityMandate', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityMandate', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityMandate', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityMandate', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

