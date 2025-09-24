CREATE TABLE [dbo].[K12LeaTitleISupportService] (
    [K12LeaTitleISupportServiceId]    INT      IDENTITY (1, 1) NOT NULL,
    [K12LeaId]                        INT      NOT NULL,
    [RefK12LeaTitleISupportServiceId] INT      NOT NULL,
    [RecordStartDateTime]             DATETIME NULL,
    [RecordEndDateTime]               DATETIME NULL,
    [RecordStatusId]                  INT      NULL,
    [DataCollectionId]                INT      NULL,
    CONSTRAINT [PK_K12LEATitleISupportService] PRIMARY KEY CLUSTERED ([K12LeaTitleISupportServiceId] ASC),
    CONSTRAINT [FK_K12LeaTitleISupportService_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_K12LeaTitleISupportService_K12Lea] FOREIGN KEY ([K12LeaId]) REFERENCES [dbo].[K12Lea] ([K12LeaId]),
    CONSTRAINT [FK_K12LeaTitleISupportService_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_K12LeaTitleISupportService_RefK12LeaTitleISupportService] FOREIGN KEY ([RefK12LeaTitleISupportServiceId]) REFERENCES [dbo].[RefK12LeaTitleISupportService] ([RefK12LEATitleISupportServiceId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of support services provided to students in Title I programs by an LEA. ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaTitleISupportService';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaTitleISupportService';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaTitleISupportService', @level2type = N'COLUMN', @level2name = N'K12LeaTitleISupportServiceId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of support services provided to students in Title I programs.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaTitleISupportService', @level2type = N'COLUMN', @level2name = N'RefK12LeaTitleISupportServiceId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Title I Support Services', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaTitleISupportService', @level2type = N'COLUMN', @level2name = N'RefK12LeaTitleISupportServiceId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000289', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaTitleISupportService', @level2type = N'COLUMN', @level2name = N'RefK12LeaTitleISupportServiceId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19289', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaTitleISupportService', @level2type = N'COLUMN', @level2name = N'RefK12LeaTitleISupportServiceId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaTitleISupportService', @level2type = N'COLUMN', @level2name = N'RefK12LeaTitleISupportServiceId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaTitleISupportService', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaTitleISupportService', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaTitleISupportService', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaTitleISupportService', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaTitleISupportService', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaTitleISupportService', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaTitleISupportService', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaTitleISupportService', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaTitleISupportService', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

