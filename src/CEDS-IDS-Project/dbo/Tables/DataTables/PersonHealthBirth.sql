CREATE TABLE [dbo].[PersonHealthBirth] (
    [PersonHealthBirthId]                 INT           IDENTITY (1, 1) NOT NULL,
    [PersonId]                            INT           NOT NULL,
    [WeeksOfGestation]                    INT           NULL,
    [MultipleBirthIndicator]              BIT           NULL,
    [WeightAtBirth]                       NVARCHAR (20) NULL,
    [RefTrimesterWhenPrenatalCareBeganId] INT           NULL,
    [RecordStartDateTime]                 DATETIME      NULL,
    [RecordEndDateTime]                   DATETIME      NULL,
    [RecordStatusId]                      INT           NULL,
    [DataCollectionId]                    INT           NULL,
    CONSTRAINT [PK_PersonHealthBirth] PRIMARY KEY CLUSTERED ([PersonHealthBirthId] ASC),
    CONSTRAINT [FK_PersonHealthBirth_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_PersonHealthBirth_Person] FOREIGN KEY ([PersonId]) REFERENCES [dbo].[Person] ([PersonId]),
    CONSTRAINT [FK_PersonHealthBirth_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_PersonHealthBirth_RefTrimesterWhenPrenatalCareBegan] FOREIGN KEY ([RefTrimesterWhenPrenatalCareBeganId]) REFERENCES [dbo].[RefTrimesterWhenPrenatalCareBegan] ([RefTrimesterWhenPrenatalCareBeganId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Data points of a person''s health and status at time of birth.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealthBirth';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealthBirth';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Inherited surrogate key from Person.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealthBirth', @level2type = N'COLUMN', @level2name = N'PersonId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealthBirth', @level2type = N'COLUMN', @level2name = N'PersonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The number of weeks during gestational period.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealthBirth', @level2type = N'COLUMN', @level2name = N'WeeksOfGestation';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Weeks of Gestation', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealthBirth', @level2type = N'COLUMN', @level2name = N'WeeksOfGestation';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000313', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealthBirth', @level2type = N'COLUMN', @level2name = N'WeeksOfGestation';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19313', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealthBirth', @level2type = N'COLUMN', @level2name = N'WeeksOfGestation';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealthBirth', @level2type = N'COLUMN', @level2name = N'WeeksOfGestation';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication that the person is a twin, triplet, etc.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealthBirth', @level2type = N'COLUMN', @level2name = N'MultipleBirthIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Multiple Birth Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealthBirth', @level2type = N'COLUMN', @level2name = N'MultipleBirthIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000431', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealthBirth', @level2type = N'COLUMN', @level2name = N'MultipleBirthIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19421', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealthBirth', @level2type = N'COLUMN', @level2name = N'MultipleBirthIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealthBirth', @level2type = N'COLUMN', @level2name = N'MultipleBirthIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The weight of a child at birth in pounds and ounces.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealthBirth', @level2type = N'COLUMN', @level2name = N'WeightAtBirth';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Weight at Birth', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealthBirth', @level2type = N'COLUMN', @level2name = N'WeightAtBirth';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000312', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealthBirth', @level2type = N'COLUMN', @level2name = N'WeightAtBirth';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19312', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealthBirth', @level2type = N'COLUMN', @level2name = N'WeightAtBirth';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealthBirth', @level2type = N'COLUMN', @level2name = N'WeightAtBirth';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The trimester of pregnancy in which a child''s mother began receiving prenatal health care.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealthBirth', @level2type = N'COLUMN', @level2name = N'RefTrimesterWhenPrenatalCareBeganId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Trimester When Prenatal Care Began', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealthBirth', @level2type = N'COLUMN', @level2name = N'RefTrimesterWhenPrenatalCareBeganId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001630', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealthBirth', @level2type = N'COLUMN', @level2name = N'RefTrimesterWhenPrenatalCareBeganId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20611', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealthBirth', @level2type = N'COLUMN', @level2name = N'RefTrimesterWhenPrenatalCareBeganId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealthBirth', @level2type = N'COLUMN', @level2name = N'RefTrimesterWhenPrenatalCareBeganId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealthBirth', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealthBirth', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealthBirth', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealthBirth', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealthBirth', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealthBirth', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealthBirth', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealthBirth', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonHealthBirth', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

