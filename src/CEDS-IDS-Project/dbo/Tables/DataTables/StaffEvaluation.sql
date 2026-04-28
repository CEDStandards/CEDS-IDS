CREATE TABLE [dbo].[StaffEvaluation] (
    [StaffEvaluationId]          INT           IDENTITY (1, 1) NOT NULL,
    [OrganizationPersonRoleId]   INT           NOT NULL,
    [System]                     NVARCHAR (60) NULL,
    [Scale]                      NVARCHAR (80) NULL,
    [ScoreOrRating]              NVARCHAR (60) NULL,
    [Outcome]                    NVARCHAR (80) NULL,
    [RefStaffPerformanceLevelId] INT           NULL,
    [RecordStartDateTime]        DATETIME      NULL,
    [RecordEndDateTime]          DATETIME      NULL,
    [RecordStatusId]             INT           NULL,
    [DataCollectionId]           INT           NULL,
    [RefStaffEvaluationScaleId]  INT           NULL,
    CONSTRAINT [PK_StaffEvaluation] PRIMARY KEY CLUSTERED ([StaffEvaluationId] ASC),
    CONSTRAINT [FK_StaffEvaluation_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_StaffEvaluation_OrganizationPersonRole] FOREIGN KEY ([OrganizationPersonRoleId]) REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]),
    CONSTRAINT [FK_StaffEvaluation_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_StaffEvaluation_RefStaffPerformanceLevel] FOREIGN KEY ([RefStaffPerformanceLevelId]) REFERENCES [dbo].[RefStaffPerformanceLevel] ([RefStaffPerformanceLevelId]),
    CONSTRAINT [FK_StaffEvaluation_RefStaffEvaluationScale] FOREIGN KEY ([RefStaffEvaluationScaleId]) REFERENCES [dbo].[RefStaffEvaluationScale] ([RefStaffEvaluationScaleId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Evaluation of a staff member''s performance.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluation';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluation';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluation', @level2type = N'COLUMN', @level2name = N'StaffEvaluationId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key from OrganizationPersonRole', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluation', @level2type = N'COLUMN', @level2name = N'OrganizationPersonRoleId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The instrument and/or set of procedures with which a person''s performance is assessed.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluation', @level2type = N'COLUMN', @level2name = N'System';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Staff Evaluation System', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluation', @level2type = N'COLUMN', @level2name = N'System';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000105', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluation', @level2type = N'COLUMN', @level2name = N'System';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19105', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluation', @level2type = N'COLUMN', @level2name = N'System';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluation', @level2type = N'COLUMN', @level2name = N'System';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The quantitative or qualitative range of possible scores/rating for a person''s performance (e.g., 0 - 10; Poor, Fair, Average, Good, Excellent).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluation', @level2type = N'COLUMN', @level2name = N'Scale';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Staff Evaluation Scale', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluation', @level2type = N'COLUMN', @level2name = N'Scale';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000103', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluation', @level2type = N'COLUMN', @level2name = N'Scale';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19103', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluation', @level2type = N'COLUMN', @level2name = N'Scale';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluation', @level2type = N'COLUMN', @level2name = N'Scale';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The actual quantitative or qualitative assessment of a person''s performance.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluation', @level2type = N'COLUMN', @level2name = N'ScoreOrRating';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Staff Evaluation Score or Rating', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluation', @level2type = N'COLUMN', @level2name = N'ScoreOrRating';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000104', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluation', @level2type = N'COLUMN', @level2name = N'ScoreOrRating';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19104', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluation', @level2type = N'COLUMN', @level2name = N'ScoreOrRating';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluation', @level2type = N'COLUMN', @level2name = N'ScoreOrRating';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The result of an assessment of a person''s performance.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluation', @level2type = N'COLUMN', @level2name = N'Outcome';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Staff Evaluation Outcome', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluation', @level2type = N'COLUMN', @level2name = N'Outcome';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000102', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluation', @level2type = N'COLUMN', @level2name = N'Outcome';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19102', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluation', @level2type = N'COLUMN', @level2name = N'Outcome';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluation', @level2type = N'COLUMN', @level2name = N'Outcome';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The levels used in district evaluation systems for assigning teacher or principal performance ratings.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluation', @level2type = N'COLUMN', @level2name = N'RefStaffPerformanceLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Faculty and Administration Performance Level', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluation', @level2type = N'COLUMN', @level2name = N'RefStaffPerformanceLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000589', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluation', @level2type = N'COLUMN', @level2name = N'RefStaffPerformanceLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19582', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluation', @level2type = N'COLUMN', @level2name = N'RefStaffPerformanceLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluation', @level2type = N'COLUMN', @level2name = N'RefStaffPerformanceLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluation', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluation', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluation', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluation', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluation', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluation', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluation', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluation', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluation', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluation', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The quantitative or qualitative range of possible scores/rating for a person''s overall performance (e.g., 0 - 10; Poor, Fair, Average, Good, Excellent).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluation', @level2type = N'COLUMN', @level2name = N'RefStaffEvaluationScaleId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Staff Evaluation Scale', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluation', @level2type = N'COLUMN', @level2name = N'RefStaffEvaluationScaleId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'C002176', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluation', @level2type = N'COLUMN', @level2name = N'RefStaffEvaluationScaleId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://w3id.org/CEDStandards/terms/C002176', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluation', @level2type = N'COLUMN', @level2name = N'RefStaffEvaluationScaleId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluation', @level2type = N'COLUMN', @level2name = N'RefStaffEvaluationScaleId';
