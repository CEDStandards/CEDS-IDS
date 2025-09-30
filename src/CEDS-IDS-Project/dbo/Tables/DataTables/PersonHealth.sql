CREATE TABLE [dbo].[PersonHealth] (
    [PersonHealthId]                        INT            IDENTITY (1, 1) NOT NULL,
    [PersonId]                              INT            NOT NULL,
    [VisionScreeningDate]                   DATE           NULL,
    [RefVisionScreeningStatusId]            INT            NULL,
    [HearingScreeningDate]                  DATE           NULL,
    [RefHearingScreeningStatusId]           INT            NULL,
    [DentalScreeningDate]                   DATE           NOT NULL,
    [RefDentalScreeningStatusId]            INT            NULL,
    [RefHealthInsuranceCoverageId]          INT            NULL,
    [RefDentalInsuranceCoverageTypeId]      INT            NULL,
    [RefMedicalAlertIndicatorId]            INT            NULL,
    [HealthScreeningEquipmentUsed]          NVARCHAR (300) NULL,
    [HealthScreeningFollowUpRecommendation] NVARCHAR (MAX) NULL,
    [RecordStartDateTime]                   DATETIME       NULL,
    [RecordEndDateTime]                     DATETIME       NULL,
    [RecordStatusId]                        INT            NULL,
    [DataCollectionId]                      INT            NULL,
    CONSTRAINT [XPKPersonHealth] PRIMARY KEY CLUSTERED ([PersonHealthId] ASC),
    CONSTRAINT [FK_PersonHealth_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_PersonHealth_Person] FOREIGN KEY ([PersonId]) REFERENCES [dbo].[Person] ([PersonId]),
    CONSTRAINT [FK_PersonHealth_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_PersonHealth_RefDentalInsuraceCoverageType] FOREIGN KEY ([RefDentalInsuranceCoverageTypeId]) REFERENCES [dbo].[RefDentalInsuranceCoverageType] ([RefDentalInsuranceCoverageTypeId]),
    CONSTRAINT [FK_PersonHealth_RefDentalScreeningStatus] FOREIGN KEY ([RefDentalScreeningStatusId]) REFERENCES [dbo].[RefDentalScreeningStatus] ([RefDentalScreeningStatusId]),
    CONSTRAINT [FK_PersonHealth_RefHealthInsuranceCoverage] FOREIGN KEY ([RefHealthInsuranceCoverageId]) REFERENCES [dbo].[RefHealthInsuranceCoverage] ([RefHealthInsuranceCoverageId]),
    CONSTRAINT [FK_PersonHealth_RefHearingScreeningStatus] FOREIGN KEY ([RefHearingScreeningStatusId]) REFERENCES [dbo].[RefHearingScreeningStatus] ([RefHearingScreeningStatusId]),
    CONSTRAINT [FK_PersonHealth_RefMedicalAlertIndicator] FOREIGN KEY ([RefMedicalAlertIndicatorId]) REFERENCES [dbo].[RefMedicalAlertIndicator] ([RefMedicalAlertIndicatorId]),
    CONSTRAINT [FK_PersonHealth_RefVisionScreeningStatus] FOREIGN KEY ([RefVisionScreeningStatusId]) REFERENCES [dbo].[RefVisionScreeningStatus] ([RefVisionScreeningStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Data points of a person''s health', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'PersonHealthId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - Person', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'PersonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year, month and day of a vision screening.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'VisionScreeningDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Vision Screening Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'VisionScreeningDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000703', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'VisionScreeningDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19680', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'VisionScreeningDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'VisionScreeningDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Status of an examination used to measure a person''s ability to see.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'RefVisionScreeningStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Vision Screening Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'RefVisionScreeningStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000308', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'RefVisionScreeningStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19308', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'RefVisionScreeningStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'RefVisionScreeningStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year, month and day of a hearing screening.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'HearingScreeningDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Hearing Screening Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'HearingScreeningDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000705', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'HearingScreeningDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19681', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'HearingScreeningDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'HearingScreeningDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Status of an examination used to measure a person''s ability to perceive sounds.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'RefHearingScreeningStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Hearing Screening Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'RefHearingScreeningStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000309', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'RefHearingScreeningStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19309', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'RefHearingScreeningStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'RefHearingScreeningStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year, month and day of a dental screening', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'DentalScreeningDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Dental Screening Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'DentalScreeningDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000706', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'DentalScreeningDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19682', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'DentalScreeningDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'DentalScreeningDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The condition of a person''s mouth or oral cavity; more specifically the condition of the hard tissues (i.e., teeth and jaws) and the soft tissues (i.e., gums, tongue, lips, palate, mouth floor, and inner cheeks). Good oral health denotes the absence of clinically manifested disease or abnormalities of the oral cavity.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'RefDentalScreeningStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Dental Screening Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'RefDentalScreeningStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000310', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'RefDentalScreeningStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19310', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'RefDentalScreeningStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'RefDentalScreeningStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The nature of insurance covering an person''s hospitalization and other health or medical care.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'RefHealthInsuranceCoverageId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Insurance Coverage', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'RefHealthInsuranceCoverageId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000335', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'RefHealthInsuranceCoverageId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19334', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'RefHealthInsuranceCoverageId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'RefHealthInsuranceCoverageId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The source of insurance covering an person''s dental care.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'RefDentalInsuranceCoverageTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Dental Insurance Coverage Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'RefDentalInsuranceCoverageTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000336', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'RefDentalInsuranceCoverageTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19335', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'RefDentalInsuranceCoverageTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'RefDentalInsuranceCoverageTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Alert indicator for a medical/health condition.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'RefMedicalAlertIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Medical Alert Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'RefMedicalAlertIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000439', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'RefMedicalAlertIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19429', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'RefMedicalAlertIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'RefMedicalAlertIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The screening equipment used for the hearing screening or the method used for the vision screening', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'HealthScreeningEquipmentUsed';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Health Screening Equipment Used', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'HealthScreeningEquipmentUsed';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001358', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'HealthScreeningEquipmentUsed';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20325', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'HealthScreeningEquipmentUsed';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'HealthScreeningEquipmentUsed';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Recommendations for follow-up after a health screening.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'HealthScreeningFollowUpRecommendation';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Health Screening Follow-up Recommendation', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'HealthScreeningFollowUpRecommendation';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001359', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'HealthScreeningFollowUpRecommendation';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20326', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'HealthScreeningFollowUpRecommendation';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'HealthScreeningFollowUpRecommendation';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealth', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

