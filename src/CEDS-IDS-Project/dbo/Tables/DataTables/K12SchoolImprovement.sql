CREATE TABLE [dbo].[K12SchoolImprovement] (
    [K12SchoolImprovementId]       INT      IDENTITY (1, 1) NOT NULL,
    [K12SchoolId]                  INT      NOT NULL,
    [RefSchoolImprovementStatusId] INT      NULL,
    [RefSchoolImprovementFundsId]  INT      NULL,
    [RefSigInterventionTypeId]     INT      NULL,
    [SchoolImprovementExitDate]    DATE     NULL,
    [RecordStartDateTime]          DATETIME NULL,
    [RecordEndDateTime]            DATETIME NULL,
    [RecordStatusId]               INT      NULL,
    [DataCollectionId]             INT      NULL,
    CONSTRAINT [XPKK12SchoolImprovement] PRIMARY KEY CLUSTERED ([K12SchoolImprovementId] ASC),
    CONSTRAINT [FK_K12SchoolImprovement_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_K12SchoolImprovement_K12School] FOREIGN KEY ([K12SchoolId]) REFERENCES [dbo].[K12School] ([K12SchoolId]),
    CONSTRAINT [FK_K12SchoolImprovement_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_K12SchoolImprovement_RefSchoolImprovementFunds] FOREIGN KEY ([RefSchoolImprovementFundsId]) REFERENCES [dbo].[RefSchoolImprovementFunds] ([RefSchoolImprovementFundsId]),
    CONSTRAINT [FK_K12SchoolImprovement_RefSchoolImprovementStatus] FOREIGN KEY ([RefSchoolImprovementStatusId]) REFERENCES [dbo].[RefSchoolImprovementStatus] ([RefSchoolImprovementStatusId]),
    CONSTRAINT [FK_K12SchoolImprovement_RefSIGInterventionType] FOREIGN KEY ([RefSigInterventionTypeId]) REFERENCES [dbo].[RefSigInterventionType] ([RefSigInterventionTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information on the improvement status for a K12 school.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolImprovement';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolImprovement';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of the improvement stage of the school.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolImprovement', @level2type = N'COLUMN', @level2name = N'RefSchoolImprovementStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'School Improvement Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolImprovement', @level2type = N'COLUMN', @level2name = N'RefSchoolImprovementStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000240', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolImprovement', @level2type = N'COLUMN', @level2name = N'RefSchoolImprovementStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19240', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolImprovement', @level2type = N'COLUMN', @level2name = N'RefSchoolImprovementStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether the school received funds under Section 1003 of ESEA, as amended.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolImprovement', @level2type = N'COLUMN', @level2name = N'RefSchoolImprovementFundsId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'School Improvement Funds Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolImprovement', @level2type = N'COLUMN', @level2name = N'RefSchoolImprovementFundsId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000238', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolImprovement', @level2type = N'COLUMN', @level2name = N'RefSchoolImprovementFundsId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19238', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolImprovement', @level2type = N'COLUMN', @level2name = N'RefSchoolImprovementFundsId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of intervention used by the school under the School Improvement Grant (SIG).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolImprovement', @level2type = N'COLUMN', @level2name = N'RefSigInterventionTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'School Improvement Grant Intervention Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolImprovement', @level2type = N'COLUMN', @level2name = N'RefSigInterventionTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000239', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolImprovement', @level2type = N'COLUMN', @level2name = N'RefSigInterventionTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19239', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolImprovement', @level2type = N'COLUMN', @level2name = N'RefSigInterventionTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Date the school exited school improvement status.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolImprovement', @level2type = N'COLUMN', @level2name = N'SchoolImprovementExitDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'School Improvement Exit Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolImprovement', @level2type = N'COLUMN', @level2name = N'SchoolImprovementExitDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000481', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolImprovement', @level2type = N'COLUMN', @level2name = N'SchoolImprovementExitDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19472', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolImprovement', @level2type = N'COLUMN', @level2name = N'SchoolImprovementExitDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolImprovement', @level2type = N'COLUMN', @level2name = N'SchoolImprovementExitDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolImprovement', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolImprovement', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolImprovement', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolImprovement', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolImprovement', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolImprovement', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolImprovement', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolImprovement', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolImprovement', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolImprovement', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

