CREATE TABLE [dbo].[OrganizationIndicator] (
    [OrganizationIndicatorId]    INT           IDENTITY (1, 1) NOT NULL,
    [OrganizationId]             INT           NOT NULL,
    [IndicatorValue]             NVARCHAR (50) NOT NULL,
    [RefOrganizationIndicatorId] INT           NOT NULL,
    [RecordStartDateTime]        DATETIME      NULL,
    [RecordEndDateTime]          DATETIME      NULL,
    [RecordStatusId]             INT           NULL,
    [DataCollectionId]           INT           NULL,
    CONSTRAINT [PK_OrganizationIndicator] PRIMARY KEY CLUSTERED ([OrganizationIndicatorId] ASC),
    CONSTRAINT [FK_OrganizationIndicator_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_OrganizationIndicator_Organization] FOREIGN KEY ([OrganizationId]) REFERENCES [dbo].[Organization] ([OrganizationId]),
    CONSTRAINT [FK_OrganizationIndicator_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_OrganizationIndicator_RefOrganizationIndicator] FOREIGN KEY ([RefOrganizationIndicatorId]) REFERENCES [dbo].[RefOrganizationIndicator] ([RefOrganizationIndicatorId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Describes any sort of indicator/metric/measure that is tracked at the organization level', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationIndicator', @level2type = N'COLUMN', @level2name = N'OrganizationIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - Organization', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationIndicator', @level2type = N'COLUMN', @level2name = N'OrganizationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A indicator/metric/measure that is tracked at the organization level.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationIndicator', @level2type = N'COLUMN', @level2name = N'RefOrganizationIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Persistently Lowest Achieving School Status, Program Provides Translated Materials, Early Learning Program Developmental Screening Status, Program Provides Written Handbook, Program Collects Parental Feedback, Program Provides Parent Involvement Opportunity, Program Provides Parent Education, Assessment Shared With Parents, Program Follows Salary Scale, Differential Shift Pay Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationIndicator', @level2type = N'COLUMN', @level2name = N'RefOrganizationIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000211, 000845, 000848, 000853, 000854, 000855, 000856, 000858, 000863, 000868', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationIndicator', @level2type = N'COLUMN', @level2name = N'RefOrganizationIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19000, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19211, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19845, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19848, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19853, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19854, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19855, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19856, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19858, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19863, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19868', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationIndicator', @level2type = N'COLUMN', @level2name = N'RefOrganizationIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationIndicator', @level2type = N'COLUMN', @level2name = N'RefOrganizationIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationIndicator', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationIndicator', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationIndicator', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationIndicator', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationIndicator', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationIndicator', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationIndicator', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationIndicator', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationIndicator', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationIndicator', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

