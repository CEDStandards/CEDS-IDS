CREATE TABLE [dbo].[PDActivityEducationLevel] (
    [PDActivityEducationLevelId]              INT      IDENTITY (1, 1) NOT NULL,
    [ProfessionalDevelopmentActivityId]       INT      NOT NULL,
    [RefPDActivityEducationLevelsAddressedId] INT      NOT NULL,
    [RecordStartDateTime]                     DATETIME NULL,
    [RecordEndDateTime]                       DATETIME NULL,
    [RecordStatusId]                          INT      NULL,
    [DataCollectionId]                        INT      NULL,
    CONSTRAINT [PK_PDActivityEducationLevel] PRIMARY KEY NONCLUSTERED ([PDActivityEducationLevelId] ASC),
    CONSTRAINT [FK_PDActivityEducationLevel_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_PDActivityEducationLevel_PDActivity] FOREIGN KEY ([ProfessionalDevelopmentActivityId]) REFERENCES [dbo].[ProfessionalDevelopmentActivity] ([ProfessionalDevelopmentActivityId]),
    CONSTRAINT [FK_PDActivityEducationLevel_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The education levels applicable to a professional development activity.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PDActivityEducationLevel';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PDActivityEducationLevel';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PDActivityEducationLevel', @level2type = N'COLUMN', @level2name = N'PDActivityEducationLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key to ProfessionalDevelopmentActivity', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PDActivityEducationLevel', @level2type = N'COLUMN', @level2name = N'ProfessionalDevelopmentActivityId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An age group or education level to which the professional development activity''s content pertains.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PDActivityEducationLevel', @level2type = N'COLUMN', @level2name = N'RefPDActivityEducationLevelsAddressedId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Professional Development Activity Education Levels Addressed', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PDActivityEducationLevel', @level2type = N'COLUMN', @level2name = N'RefPDActivityEducationLevelsAddressedId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001279', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PDActivityEducationLevel', @level2type = N'COLUMN', @level2name = N'RefPDActivityEducationLevelsAddressedId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20245', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PDActivityEducationLevel', @level2type = N'COLUMN', @level2name = N'RefPDActivityEducationLevelsAddressedId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PDActivityEducationLevel', @level2type = N'COLUMN', @level2name = N'RefPDActivityEducationLevelsAddressedId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PDActivityEducationLevel', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PDActivityEducationLevel', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PDActivityEducationLevel', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PDActivityEducationLevel', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PDActivityEducationLevel', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PDActivityEducationLevel', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PDActivityEducationLevel', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PDActivityEducationLevel', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PDActivityEducationLevel', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PDActivityEducationLevel', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

