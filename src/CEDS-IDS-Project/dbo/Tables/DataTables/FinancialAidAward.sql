CREATE TABLE [dbo].[FinancialAidAward] (
    [FinancialAidAwardId]        INT            IDENTITY (1, 1) NOT NULL,
    [OrganizationPersonRoleId]   INT            NOT NULL,
    [RefFinancialAidAwardTypeId] INT            NULL,
    [RefFinancialAidStatusId]    INT            NULL,
    [FinancialAidAwardAmount]    DECIMAL (9, 2) NULL,
    [FinancialAidYearDesignator] NCHAR (9)      NULL,
    [RecordStartDateTime]        DATETIME       NULL,
    [RecordEndDateTime]          DATETIME       NULL,
    [RecordStatusId]             INT            NULL,
    [DataCollectionId]           INT            NULL,
    CONSTRAINT [PK_FinancialAidAward] PRIMARY KEY CLUSTERED ([FinancialAidAwardId] ASC),
    CONSTRAINT [FK_FinancialAidAward_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_FinancialAidAward_OrganizationPersonRole] FOREIGN KEY ([OrganizationPersonRoleId]) REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]),
    CONSTRAINT [FK_FinancialAidAward_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_FinancialAidAward_RefFinancialAidAwardStatus] FOREIGN KEY ([RefFinancialAidStatusId]) REFERENCES [dbo].[RefFinancialAidAwardStatus] ([RefFinancialAidStatusId]),
    CONSTRAINT [FK_FinancialAidAward_RefFinancialAidAwardType] FOREIGN KEY ([RefFinancialAidAwardTypeId]) REFERENCES [dbo].[RefFinancialAidAwardType] ([RefFinancialAidAwardTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An award of financial aid for a student/learner.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAidAward';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAidAward';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAidAward', @level2type = N'COLUMN', @level2name = N'FinancialAidAwardId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key from OrganizatinPersonRole', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAidAward', @level2type = N'COLUMN', @level2name = N'OrganizationPersonRoleId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The classification of financial aid awarded to a person for the academic term/year.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAidAward', @level2type = N'COLUMN', @level2name = N'RefFinancialAidAwardTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Financial Aid Award Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAidAward', @level2type = N'COLUMN', @level2name = N'RefFinancialAidAwardTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000113', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAidAward', @level2type = N'COLUMN', @level2name = N'RefFinancialAidAwardTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19113', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAidAward', @level2type = N'COLUMN', @level2name = N'RefFinancialAidAwardTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAidAward', @level2type = N'COLUMN', @level2name = N'RefFinancialAidAwardTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether the financial aid type being reported is aid that has been awarded, accepted or dispersed.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAidAward', @level2type = N'COLUMN', @level2name = N'RefFinancialAidStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Financial Aid Award Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAidAward', @level2type = N'COLUMN', @level2name = N'RefFinancialAidStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000363', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAidAward', @level2type = N'COLUMN', @level2name = N'RefFinancialAidStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19362', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAidAward', @level2type = N'COLUMN', @level2name = N'RefFinancialAidStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAidAward', @level2type = N'COLUMN', @level2name = N'RefFinancialAidStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The amount of financial aid awarded to a person for the term/year.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAidAward', @level2type = N'COLUMN', @level2name = N'FinancialAidAwardAmount';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Financial Aid Award Amount', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAidAward', @level2type = N'COLUMN', @level2name = N'FinancialAidAwardAmount';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000112', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAidAward', @level2type = N'COLUMN', @level2name = N'FinancialAidAwardAmount';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19112', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAidAward', @level2type = N'COLUMN', @level2name = N'FinancialAidAwardAmount';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAidAward', @level2type = N'COLUMN', @level2name = N'FinancialAidAwardAmount';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The school year for which the student''s financial aid application and award data apply.  Generally, this is the 12-month period from July 1 to June 30.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAidAward', @level2type = N'COLUMN', @level2name = N'FinancialAidYearDesignator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Financial Aid Year Designator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAidAward', @level2type = N'COLUMN', @level2name = N'FinancialAidYearDesignator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001611', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAidAward', @level2type = N'COLUMN', @level2name = N'FinancialAidYearDesignator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20590', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAidAward', @level2type = N'COLUMN', @level2name = N'FinancialAidYearDesignator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAidAward', @level2type = N'COLUMN', @level2name = N'FinancialAidYearDesignator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAidAward', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAidAward', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAidAward', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAidAward', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAidAward', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAidAward', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAidAward', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAidAward', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAidAward', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialAidAward', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

