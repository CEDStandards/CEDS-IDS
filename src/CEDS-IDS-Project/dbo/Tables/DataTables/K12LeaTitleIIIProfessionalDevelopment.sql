CREATE TABLE [dbo].[K12LeaTitleIIIProfessionalDevelopment] (
    [K12LEATitleIIIProfessionalDevelopmentId]  INT      IDENTITY (1, 1) NOT NULL,
    [K12LeaId]                                 INT      NOT NULL,
    [RefTitleIIIProfessionalDevelopmentTypeId] INT      NOT NULL,
    [RecordStartDateTime]                      DATETIME NULL,
    [RecordEndDateTime]                        DATETIME NULL,
    [RecordStatusId]                           INT      NULL,
    [DataCollectionId]                         INT      NULL,
    CONSTRAINT [PK_K12LEATitleIIIProfessionalDev] PRIMARY KEY CLUSTERED ([K12LEATitleIIIProfessionalDevelopmentId] ASC),
    CONSTRAINT [FK_K12LeaTitleIIIProfessionalDev_K12Lea] FOREIGN KEY ([K12LeaId]) REFERENCES [dbo].[K12Lea] ([K12LeaId]),
    CONSTRAINT [FK_K12LEATitleIIIProfessionalDev_TitleIIIProfessionalDevType] FOREIGN KEY ([RefTitleIIIProfessionalDevelopmentTypeId]) REFERENCES [dbo].[RefTitleIIIProfessionalDevelopmentType] ([RefTitleIIIProfessionalDevelopmentTypeId]),
    CONSTRAINT [FK_K12LeaTitleIIIProfessionalDevelopment_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_K12LeaTitleIIIProfessionalDevelopment_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of Title III professional development utilized by an LEA.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaTitleIIIProfessionalDevelopment';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaTitleIIIProfessionalDevelopment';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaTitleIIIProfessionalDevelopment', @level2type = N'COLUMN', @level2name = N'K12LEATitleIIIProfessionalDevelopmentId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of Title III professional development utilized.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaTitleIIIProfessionalDevelopment', @level2type = N'COLUMN', @level2name = N'RefTitleIIIProfessionalDevelopmentTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Title III Professional Development Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaTitleIIIProfessionalDevelopment', @level2type = N'COLUMN', @level2name = N'RefTitleIIIProfessionalDevelopmentTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000487', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaTitleIIIProfessionalDevelopment', @level2type = N'COLUMN', @level2name = N'RefTitleIIIProfessionalDevelopmentTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19478', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaTitleIIIProfessionalDevelopment', @level2type = N'COLUMN', @level2name = N'RefTitleIIIProfessionalDevelopmentTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaTitleIIIProfessionalDevelopment', @level2type = N'COLUMN', @level2name = N'RefTitleIIIProfessionalDevelopmentTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaTitleIIIProfessionalDevelopment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaTitleIIIProfessionalDevelopment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaTitleIIIProfessionalDevelopment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaTitleIIIProfessionalDevelopment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaTitleIIIProfessionalDevelopment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaTitleIIIProfessionalDevelopment', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaTitleIIIProfessionalDevelopment', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaTitleIIIProfessionalDevelopment', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaTitleIIIProfessionalDevelopment', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaTitleIIIProfessionalDevelopment', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

