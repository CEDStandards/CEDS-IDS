CREATE TABLE [dbo].[PersonPersonalInformationVerification] (
    [PersonPersonalInformationVerificationId] INT      IDENTITY (1, 1) NOT NULL,
    [PersonId]                                INT      NOT NULL,
    [PersonAddressId]                         INT      NULL,
    [PersonDetailId]                          INT      NULL,
    [PersonTelephoneId]                       INT      NULL,
    [RefPersonalInformationTypeId]            INT      NULL,
    [RefPersonalInformationVerificationId]    INT      NULL,
    [RecordStartDateTime]                     DATETIME NULL,
    [RecordEndDateTime]                       DATETIME NULL,
    [RecordStatusId]                          INT      NULL,
    [DataCollectionId]                        INT      NULL,
    CONSTRAINT [PK_PersonPersonalInformationVerification] PRIMARY KEY CLUSTERED ([PersonPersonalInformationVerificationId] ASC),
    CONSTRAINT [FK_PersonPersonalInformationVerification_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_PersonPersonalInformationVerification_Person] FOREIGN KEY ([PersonId]) REFERENCES [dbo].[Person] ([PersonId]),
    CONSTRAINT [FK_PersonPersonalInformationVerification_PersonAddress] FOREIGN KEY ([PersonAddressId]) REFERENCES [dbo].[PersonAddress] ([PersonAddressId]),
    CONSTRAINT [FK_PersonPersonalInformationVerification_PersonDetail] FOREIGN KEY ([PersonDetailId]) REFERENCES [dbo].[PersonDetail] ([PersonDetailId]),
    CONSTRAINT [FK_PersonPersonalInformationVerification_PersonTelephone] FOREIGN KEY ([PersonTelephoneId]) REFERENCES [dbo].[PersonTelephone] ([PersonTelephoneId]),
    CONSTRAINT [FK_PersonPersonalInformationVerification_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_PersonPersonalInformationVerification_RefPersonalInformationType] FOREIGN KEY ([RefPersonalInformationTypeId]) REFERENCES [dbo].[RefPersonalInformationType] ([RefPersonalInformationTypeId]),
    CONSTRAINT [FK_PersonPersonalInformationVerification_RefPersonalInformationVerification] FOREIGN KEY ([RefPersonalInformationVerificationId]) REFERENCES [dbo].[RefPersonalInformationVerification] ([RefPersonalInformationVerificationId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information related to the type of personal information used (e.g., Birth Certificate) and for what purpose.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonPersonalInformationVerification';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonPersonalInformationVerification';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of personal information verified through the Personal Information Verification evidence.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonPersonalInformationVerification', @level2type = N'COLUMN', @level2name = N'RefPersonalInformationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Personal Information Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonPersonalInformationVerification', @level2type = N'COLUMN', @level2name = N'RefPersonalInformationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001945', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonPersonalInformationVerification', @level2type = N'COLUMN', @level2name = N'RefPersonalInformationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20951', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonPersonalInformationVerification', @level2type = N'COLUMN', @level2name = N'RefPersonalInformationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonPersonalInformationVerification', @level2type = N'COLUMN', @level2name = N'RefPersonalInformationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The evidence by which a persons name, address, date of birth, etc. is confirmed.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonPersonalInformationVerification', @level2type = N'COLUMN', @level2name = N'RefPersonalInformationVerificationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Personal Information Verification', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonPersonalInformationVerification', @level2type = N'COLUMN', @level2name = N'RefPersonalInformationVerificationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000618', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonPersonalInformationVerification', @level2type = N'COLUMN', @level2name = N'RefPersonalInformationVerificationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19611', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonPersonalInformationVerification', @level2type = N'COLUMN', @level2name = N'RefPersonalInformationVerificationId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonPersonalInformationVerification', @level2type = N'COLUMN', @level2name = N'RefPersonalInformationVerificationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonPersonalInformationVerification', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonPersonalInformationVerification', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonPersonalInformationVerification', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonPersonalInformationVerification', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonPersonalInformationVerification', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonPersonalInformationVerification', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonPersonalInformationVerification', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonPersonalInformationVerification', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonPersonalInformationVerification', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonPersonalInformationVerification', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

