CREATE TABLE [dbo].[PersonDigitalAccessSpeed] (
    [PersonDigitalAccessSpeedId] INT            IDENTITY (1, 1) NOT NULL,
    [InternetDownloadSpeed]      DECIMAL (9, 2) NULL,
    [InternetSpeedTestDateTime]  DATETIME       NULL,
    [InternetUploadSpeed]        DECIMAL (9, 2) NULL,
    [PersonDigitalAccessId]      INT            NULL,
    [PersonLearningDeviceId]     INT            NULL,
    [RecordStartDateTime]        DATETIME       NULL,
    [RecordEndDateTime]          DATETIME       NULL,
    [RecordStatusId]             INT            NULL,
    [DataCollectionId]           INT            NULL,
    CONSTRAINT [PK_PersonDigitalAccessSpeed] PRIMARY KEY CLUSTERED ([PersonDigitalAccessSpeedId] ASC),
    CONSTRAINT [FK_PersonDigitalAccessSpeed_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_PersonDigitalAccessSpeed_PersonDigitalAccess] FOREIGN KEY ([PersonDigitalAccessId]) REFERENCES [dbo].[PersonDigitalAccess] ([PersonDigitalAccessId]),
    CONSTRAINT [FK_PersonDigitalAccessSpeed_PersonLearningDevice] FOREIGN KEY ([PersonLearningDeviceId]) REFERENCES [dbo].[PersonLearningDevice] ([PersonLearningDeviceId]),
    CONSTRAINT [FK_PersonDigitalAccessSpeed_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information related to the speed of digital access for a person.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDigitalAccessSpeed';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDigitalAccessSpeed';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The speed that data or information can be downloaded from a server on the internet to one''s device in megabits per second.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDigitalAccessSpeed', @level2type = N'COLUMN', @level2name = N'InternetDownloadSpeed';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Internet Download Speed', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDigitalAccessSpeed', @level2type = N'COLUMN', @level2name = N'InternetDownloadSpeed';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001976', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDigitalAccessSpeed', @level2type = N'COLUMN', @level2name = N'InternetDownloadSpeed';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20938', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDigitalAccessSpeed', @level2type = N'COLUMN', @level2name = N'InternetDownloadSpeed';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDigitalAccessSpeed', @level2type = N'COLUMN', @level2name = N'InternetDownloadSpeed';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date and, optionally, time that the information was gathered.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDigitalAccessSpeed', @level2type = N'COLUMN', @level2name = N'InternetSpeedTestDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Internet Speed Test Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDigitalAccessSpeed', @level2type = N'COLUMN', @level2name = N'InternetSpeedTestDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001977', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDigitalAccessSpeed', @level2type = N'COLUMN', @level2name = N'InternetSpeedTestDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20940', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDigitalAccessSpeed', @level2type = N'COLUMN', @level2name = N'InternetSpeedTestDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDigitalAccessSpeed', @level2type = N'COLUMN', @level2name = N'InternetSpeedTestDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The speed that data or information can be sent from one''s device to another device or server on the internet in megabits per second.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDigitalAccessSpeed', @level2type = N'COLUMN', @level2name = N'InternetUploadSpeed';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Internet Upload Speed', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDigitalAccessSpeed', @level2type = N'COLUMN', @level2name = N'InternetUploadSpeed';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001975', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDigitalAccessSpeed', @level2type = N'COLUMN', @level2name = N'InternetUploadSpeed';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20941', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDigitalAccessSpeed', @level2type = N'COLUMN', @level2name = N'InternetUploadSpeed';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDigitalAccessSpeed', @level2type = N'COLUMN', @level2name = N'InternetUploadSpeed';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDigitalAccessSpeed', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDigitalAccessSpeed', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDigitalAccessSpeed', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDigitalAccessSpeed', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDigitalAccessSpeed', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDigitalAccessSpeed', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDigitalAccessSpeed', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDigitalAccessSpeed', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDigitalAccessSpeed', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDigitalAccessSpeed', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

