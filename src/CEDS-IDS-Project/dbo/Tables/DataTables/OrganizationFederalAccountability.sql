CREATE TABLE [dbo].[OrganizationFederalAccountability] (
    [OrganizationFederalAccountabilityId]                INT           IDENTITY (1, 1) NOT NULL,
    [OrganizationId]                                     INT           NOT NULL,
    [AlternateAypApproachIndicator]                      BIT           NULL,
    [AypAppealChangedDesignation]                        BIT           NULL,
    [AypAppealProcessDate]                               DATE          NULL,
    [AypAppealProcessDesignation]                        BIT           NULL,
    [PersistentlyDangerousStatus]                        BIT           NULL,
    [AccountabilityReportTitle]                          NVARCHAR (80) NULL,
    [RefAypStatusId]                                     INT           NULL,
    [RefGunFreeSchoolsActReportingStatusId]              INT           NULL,
    [RefHighSchoolGraduationRateIndicatorId]             INT           NULL,
    [RefParticipationStatusMathId]                       INT           NULL,
    [RefParticipationStatusRlaId]                        INT           NULL,
    [RefProficiencyTargetStatusMathId]                   INT           NULL,
    [RefProficiencyTargetStatusRLAId]                    INT           NULL,
    [RefReconstitutedStatusId]                           INT           NULL,
    [RefElementaryMiddleAdditionalId]                    INT           NULL,
    [RefCteGraduationRateInclusionId]                    INT           NULL,
    [RecordStartDateTime]                                DATETIME      NULL,
    [RecordEndDateTime]                                  DATETIME      NULL,
    [RefAdditionalTargetedSupportAndImprovementStatusId] INT           NULL,
    [RefComprehensiveSupportAndImprovementStatusId]      INT           NULL,
    [RefTargetedSupportAndImprovementStatusId]           INT           NULL,
    [RecordStatusId]                                     INT           NULL,
    [DataCollectionId]                                   INT           NULL,
    CONSTRAINT [PK_OrganizationFederalAccountability] PRIMARY KEY CLUSTERED ([OrganizationFederalAccountabilityId] ASC),
    CONSTRAINT [FK_OrganizationFedAccountability_RefCteGraduationRateInclusion] FOREIGN KEY ([RefCteGraduationRateInclusionId]) REFERENCES [dbo].[RefCteGraduationRateInclusion] ([RefCteGraduationRateInclusionId]),
    CONSTRAINT [FK_OrganizationFedAccountability_RefElementaryMiddleAdditional] FOREIGN KEY ([RefElementaryMiddleAdditionalId]) REFERENCES [dbo].[RefElementaryMiddleAdditional] ([RefElementaryMiddleAdditionalId]),
    CONSTRAINT [FK_OrganizationFedAccountability_RefHSGraduationRateIndicator] FOREIGN KEY ([RefHighSchoolGraduationRateIndicatorId]) REFERENCES [dbo].[RefHighSchoolGraduationRateIndicator] ([RefHighSchoolGraduationRateIndicatorId]),
    CONSTRAINT [FK_OrganizationFederaAccountability_RefAypStatus] FOREIGN KEY ([RefAypStatusId]) REFERENCES [dbo].[RefAypStatus] ([RefAypStatusId]),
    CONSTRAINT [FK_OrganizationFederalAccountability_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_OrganizationFederalAccountability_Organization] FOREIGN KEY ([OrganizationId]) REFERENCES [dbo].[Organization] ([OrganizationId]),
    CONSTRAINT [FK_OrganizationFederalAccountability_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_OrganizationFederalAccountability_RefAdditionalTargetedSupportAndImprovementStatus] FOREIGN KEY ([RefAdditionalTargetedSupportAndImprovementStatusId]) REFERENCES [dbo].[RefAdditionalTargetedSupportAndImprovementStatus] ([RefAdditionalTargetedSupportAndImprovementStatusId]),
    CONSTRAINT [FK_OrganizationFederalAccountability_RefComprehensiveSupportAndImprovementStatus] FOREIGN KEY ([RefComprehensiveSupportAndImprovementStatusId]) REFERENCES [dbo].[RefComprehensiveSupportAndImprovementStatus] ([RefComprehensiveSupportAndImprovementStatusId]),
    CONSTRAINT [FK_OrganizationFederalAccountability_RefGunFreeSchoolsActStatus] FOREIGN KEY ([RefGunFreeSchoolsActReportingStatusId]) REFERENCES [dbo].[RefGunFreeSchoolsActReportingStatus] ([RefGunFreeSchoolsActReportingStatusId]),
    CONSTRAINT [FK_OrganizationFederalAccountability_RefParticipationStatusAyp2] FOREIGN KEY ([RefParticipationStatusMathId]) REFERENCES [dbo].[RefParticipationStatusAyp] ([RefParticipationStatusAypId]),
    CONSTRAINT [FK_OrganizationFederalAccountability_RefParticipationStatusAyp3] FOREIGN KEY ([RefParticipationStatusRlaId]) REFERENCES [dbo].[RefParticipationStatusAyp] ([RefParticipationStatusAypId]),
    CONSTRAINT [FK_OrganizationFederalAccountability_RefProficiencyTargetAyp] FOREIGN KEY ([RefProficiencyTargetStatusMathId]) REFERENCES [dbo].[RefProficiencyTargetAyp] ([RefProficiencyTargetAypId]),
    CONSTRAINT [FK_OrganizationFederalAccountability_RefProficiencyTargetAyp1] FOREIGN KEY ([RefProficiencyTargetStatusRLAId]) REFERENCES [dbo].[RefProficiencyTargetAyp] ([RefProficiencyTargetAypId]),
    CONSTRAINT [FK_OrganizationFederalAccountability_RefReconstitutedStatus] FOREIGN KEY ([RefReconstitutedStatusId]) REFERENCES [dbo].[RefReconstitutedStatus] ([RefReconstitutedStatusId]),
    CONSTRAINT [FK_OrganizationFederalAccountability_RefTargetedSupportAndImprovementStatus] FOREIGN KEY ([RefTargetedSupportAndImprovementStatusId]) REFERENCES [dbo].[RefTargetedSupportAndImprovementStatus] ([RefTargetedSupportAndImprovementStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information on the status of the organization on various federal accountability measures.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'OrganizationFederalAccountabilityId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key from Organization.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'OrganizationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether the district or school used an approved alternate approach for calculating Adequate Yearly Progress (AYP).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'AlternateAypApproachIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Alternate Adequate Yearly Progress Approach Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'AlternateAypApproachIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000014', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'AlternateAypApproachIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19014', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'AlternateAypApproachIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'AlternateAypApproachIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication that the appeal resulted in a change in a school or district''s AYP designation.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'AypAppealChangedDesignation';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Adequate Yearly Progress Appeal Changed Designation', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'AypAppealChangedDesignation';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000443', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'AypAppealChangedDesignation';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19433', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'AypAppealChangedDesignation';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'AypAppealChangedDesignation';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The last date that an appeal of an AYP designation was processed.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'AypAppealProcessDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Adequate Yearly Progress Appeal Process Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'AypAppealProcessDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000444', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'AypAppealProcessDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19434', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'AypAppealProcessDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'AypAppealProcessDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication that a school or district appealed its AYP designation.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'AypAppealProcessDesignation';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Appealed Adequate Yearly Progress Designation', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'AypAppealProcessDesignation';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000442', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'AypAppealProcessDesignation';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19432', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'AypAppealProcessDesignation';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'AypAppealProcessDesignation';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether the school is identified as persistently dangerous in accordance with state definition.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'PersistentlyDangerousStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Persistently Dangerous Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'PersistentlyDangerousStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000210', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'PersistentlyDangerousStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19210', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'PersistentlyDangerousStatus';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'PersistentlyDangerousStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The title of the accountability report.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'AccountabilityReportTitle';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Accountability Report Title', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'AccountabilityReportTitle';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000005', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'AccountabilityReportTitle';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19005', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'AccountabilityReportTitle';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'AccountabilityReportTitle';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether the state, district, or school met the Adequate Yearly Progress (AYP) requirements for the school year, as determined by the state-established criteria.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RefAypStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Adequate Yearly Progress Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RefAypStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000011', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RefAypStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19011', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RefAypStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RefAypStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether the school or local education agency (LEA) submitted a Gun-Free Schools Act (GFSA) of 1994 report to the state, as defined by Title 18, Section 921.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RefGunFreeSchoolsActReportingStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Gun Free Schools Act Reporting Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RefGunFreeSchoolsActReportingStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000134', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RefGunFreeSchoolsActReportingStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19134', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RefGunFreeSchoolsActReportingStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RefGunFreeSchoolsActReportingStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether the school or district met the High School Graduation Rate requirement in accordance with state definition for the purposes of determining AYP.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RefHighSchoolGraduationRateIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'High School Graduation Rate Indicator Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RefHighSchoolGraduationRateIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000140', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RefHighSchoolGraduationRateIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19140', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RefHighSchoolGraduationRateIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RefHighSchoolGraduationRateIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether the school or district met the 95 percent participation requirement in the mathematics assessment in accordance with state definition for the purposes of determining AYP.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RefParticipationStatusMathId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Participation Status for Math', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RefParticipationStatusMathId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000208', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RefParticipationStatusMathId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19208', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RefParticipationStatusMathId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RefParticipationStatusMathId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether the school or district met the 95 percent participation requirement on the reading/language arts assessment in accordance with state definition for the purposes of determining AYP.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RefParticipationStatusRlaId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Participation Status for Reading and Language Arts', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RefParticipationStatusRlaId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000209', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RefParticipationStatusRlaId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19209', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RefParticipationStatusRlaId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RefParticipationStatusRlaId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether the school or district met the math proficiency target in accordance with state definition for the purposes of determining AYP.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RefProficiencyTargetStatusMathId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Proficiency Target Status for Math', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RefProficiencyTargetStatusMathId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000221', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RefProficiencyTargetStatusMathId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19221', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RefProficiencyTargetStatusMathId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RefProficiencyTargetStatusMathId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether the school or district met the reading/language arts proficiency target in accordance with state definition for the purposes of determining AYP.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RefProficiencyTargetStatusRLAId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Proficiency Target Status for Reading and Language Arts', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RefProficiencyTargetStatusRLAId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000553', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RefProficiencyTargetStatusRLAId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19544', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RefProficiencyTargetStatusRLAId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RefProficiencyTargetStatusRLAId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication that the school was restructured, transformed or otherwise changed as a consequence of the state’s accountability system under ESEA or as a result of School Improvement Grants (SIG).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RefReconstitutedStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Reconstituted Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RefReconstitutedStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000230', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RefReconstitutedStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19230', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RefReconstitutedStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RefReconstitutedStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N' An indication of whether the school or district met the Elementary/Middle Additional Indicator requirement in accordance with state definition for the purpose of determining Adequate Yearly Progress (AYP).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RefElementaryMiddleAdditionalId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Elementary-Middle Additional Indicator Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RefElementaryMiddleAdditionalId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000091', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RefElementaryMiddleAdditionalId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19091', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RefElementaryMiddleAdditionalId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RefElementaryMiddleAdditionalId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of how CTE concentrators are included in the state''s computation of its graduation rate.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RefCteGraduationRateInclusionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Career and Technical Education Graduation Rate Inclusion', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RefCteGraduationRateInclusionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000075', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RefCteGraduationRateInclusionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19075', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RefCteGraduationRateInclusionId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RefCteGraduationRateInclusionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The designation given to a school by the state for additional targeted support and improvement as part of its statewide system of annual meaningful differentiation.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RefAdditionalTargetedSupportAndImprovementStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Additional Targeted Support and Improvement Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RefAdditionalTargetedSupportAndImprovementStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001925', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RefAdditionalTargetedSupportAndImprovementStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20902', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RefAdditionalTargetedSupportAndImprovementStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RefAdditionalTargetedSupportAndImprovementStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The designation given to a school by the state for comprehensive support and improvement as part of its statewide system of annual meaningful differentiation.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RefComprehensiveSupportAndImprovementStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Comprehensive Support and Improvement Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RefComprehensiveSupportAndImprovementStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001923', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RefComprehensiveSupportAndImprovementStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20904', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RefComprehensiveSupportAndImprovementStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RefComprehensiveSupportAndImprovementStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The designation given to a school by the state for targeted support and improvement as part of its statewide system of annual meaningful differentiation.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RefTargetedSupportAndImprovementStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Targeted Support and Improvement Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RefTargetedSupportAndImprovementStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001924', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RefTargetedSupportAndImprovementStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20910', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RefTargetedSupportAndImprovementStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationFederalAccountability', @level2type = N'COLUMN', @level2name = N'RefTargetedSupportAndImprovementStatusId';

