CREATE TABLE [dbo].[PersonDigitalAccess] (
    [PersonDigitalAccessId]                   INT      IDENTITY (1, 1) NOT NULL,
    [PersonId]                                INT      NOT NULL,
    [InternetAccessInResidence]               BIT      NULL,
    [PersonAddressId]                         INT      NULL,
    [RefBarrierToInternetAccessInResidenceId] INT      NULL,
    [RefInternetAccessTypeInResidenceId]      INT      NULL,
    [RefInternetPerformanceInResidenceId]     INT      NULL,
    [RecordStartDateTime]                     DATETIME NULL,
    [RecordEndDateTime]                       DATETIME NULL,
    [RecordStatusId]                          INT      NULL,
    [DataCollectionId]                        INT      NULL,
    CONSTRAINT [PK_PersonDigitalAccess] PRIMARY KEY CLUSTERED ([PersonDigitalAccessId] ASC),
    CONSTRAINT [FK_PersonDigitalAccess_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_PersonDigitalAccess_Person] FOREIGN KEY ([PersonId]) REFERENCES [dbo].[Person] ([PersonId]),
    CONSTRAINT [FK_PersonDigitalAccess_PersonAddress] FOREIGN KEY ([PersonAddressId]) REFERENCES [dbo].[PersonAddress] ([PersonAddressId]),
    CONSTRAINT [FK_PersonDigitalAccess_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_PersonDigitalAccess_RefBarrierToInternetAccessInResidence] FOREIGN KEY ([RefBarrierToInternetAccessInResidenceId]) REFERENCES [dbo].[RefBarrierToInternetAccessInResidence] ([RefBarrierToInternetAccessInResidenceId]),
    CONSTRAINT [FK_PersonDigitalAccess_RefInternetAccessTypeInResidence] FOREIGN KEY ([RefInternetAccessTypeInResidenceId]) REFERENCES [dbo].[RefInternetAccessTypeInResidence] ([RefInternetAccessTypeInResidenceId]),
    CONSTRAINT [FK_PersonDigitalAccess_RefInternetPerformanceInResidence] FOREIGN KEY ([RefInternetPerformanceInResidenceId]) REFERENCES [dbo].[RefInternetPerformanceInResidence] ([RefInternetPerformanceInResidenceId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information related to digitial accessiblity for a person.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDigitalAccess';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDigitalAccess';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether the student is able to access the internet in their primary place of residence.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDigitalAccess', @level2type = N'COLUMN', @level2name = N'InternetAccessInResidence';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Internet Access In Residence', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDigitalAccess', @level2type = N'COLUMN', @level2name = N'InternetAccessInResidence';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001934', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDigitalAccess', @level2type = N'COLUMN', @level2name = N'InternetAccessInResidence';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20936', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDigitalAccess', @level2type = N'COLUMN', @level2name = N'InternetAccessInResidence';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDigitalAccess', @level2type = N'COLUMN', @level2name = N'InternetAccessInResidence';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of the barrier to having internet access in the student''s primary place of residence.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDigitalAccess', @level2type = N'COLUMN', @level2name = N'RefBarrierToInternetAccessInResidenceId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Barrier to Internet Access In Residence', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDigitalAccess', @level2type = N'COLUMN', @level2name = N'RefBarrierToInternetAccessInResidenceId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001935', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDigitalAccess', @level2type = N'COLUMN', @level2name = N'RefBarrierToInternetAccessInResidenceId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20916', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDigitalAccess', @level2type = N'COLUMN', @level2name = N'RefBarrierToInternetAccessInResidenceId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDigitalAccess', @level2type = N'COLUMN', @level2name = N'RefBarrierToInternetAccessInResidenceId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The primary type of internet service used in the individual''s primary place of residence.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDigitalAccess', @level2type = N'COLUMN', @level2name = N'RefInternetAccessTypeInResidenceId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Internet Access Type In Residence', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDigitalAccess', @level2type = N'COLUMN', @level2name = N'RefInternetAccessTypeInResidenceId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001936', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDigitalAccess', @level2type = N'COLUMN', @level2name = N'RefInternetAccessTypeInResidenceId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20937', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDigitalAccess', @level2type = N'COLUMN', @level2name = N'RefInternetAccessTypeInResidenceId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDigitalAccess', @level2type = N'COLUMN', @level2name = N'RefInternetAccessTypeInResidenceId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether the student can complete the full range of learning activities, including video streaming and assignment upload, without interruptions caused by poor internet performance in their primary place of residence.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDigitalAccess', @level2type = N'COLUMN', @level2name = N'RefInternetPerformanceInResidenceId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Internet Performance In Residence', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDigitalAccess', @level2type = N'COLUMN', @level2name = N'RefInternetPerformanceInResidenceId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001937', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDigitalAccess', @level2type = N'COLUMN', @level2name = N'RefInternetPerformanceInResidenceId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20939', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDigitalAccess', @level2type = N'COLUMN', @level2name = N'RefInternetPerformanceInResidenceId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDigitalAccess', @level2type = N'COLUMN', @level2name = N'RefInternetPerformanceInResidenceId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDigitalAccess', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDigitalAccess', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDigitalAccess', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDigitalAccess', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDigitalAccess', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDigitalAccess', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDigitalAccess', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDigitalAccess', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDigitalAccess', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDigitalAccess', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

