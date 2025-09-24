CREATE TABLE [dbo].[StaffEvaluationPart] (
    [StaffEvaluationPartId]    INT           IDENTITY (1, 1) NOT NULL,
    [OrganizationPersonRoleId] INT           NOT NULL,
    [PartName]                 NVARCHAR (60) NULL,
    [Scale]                    NVARCHAR (80) NULL,
    [ScoreOrRating]            NVARCHAR (60) NULL,
    [StaffEvaluationId]        INT           NULL,
    [RecordStartDateTime]      DATETIME      NULL,
    [RecordEndDateTime]        DATETIME      NULL,
    [RecordStatusId]           INT           NULL,
    [DataCollectionId]         INT           NULL,
    CONSTRAINT [PK_StaffEvaluationPart] PRIMARY KEY CLUSTERED ([StaffEvaluationPartId] ASC),
    CONSTRAINT [FK_StaffEvaluationPart_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_StaffEvaluationPart_OrganizationPersonRole] FOREIGN KEY ([OrganizationPersonRoleId]) REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]),
    CONSTRAINT [FK_StaffEvaluationPart_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_StaffEvaluationPart_StaffEvaluation] FOREIGN KEY ([StaffEvaluationId]) REFERENCES [dbo].[StaffEvaluation] ([StaffEvaluationId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information about the score and sections of a staff evaluation assessment.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluationPart';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluationPart';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The name of the component part that is being evaluated and scored.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluationPart', @level2type = N'COLUMN', @level2name = N'PartName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Staff Evaluation Part Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluationPart', @level2type = N'COLUMN', @level2name = N'PartName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001985', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluationPart', @level2type = N'COLUMN', @level2name = N'PartName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20965', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluationPart', @level2type = N'COLUMN', @level2name = N'PartName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluationPart', @level2type = N'COLUMN', @level2name = N'PartName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The quantitative or qualitative range of possible scores/rating for a person''s performance on a component part (e.g., 0 - 10; Poor, Fair, Average, Good, Excellent).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluationPart', @level2type = N'COLUMN', @level2name = N'Scale';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Staff Evaluation Part Scale', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluationPart', @level2type = N'COLUMN', @level2name = N'Scale';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001987', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluationPart', @level2type = N'COLUMN', @level2name = N'Scale';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20966', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluationPart', @level2type = N'COLUMN', @level2name = N'Scale';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluationPart', @level2type = N'COLUMN', @level2name = N'Scale';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The actual quantitative or qualitative assessment of a person''s performance on a component part that is being evaluated. ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluationPart', @level2type = N'COLUMN', @level2name = N'ScoreOrRating';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Staff Evaluation Part Score or Rating', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluationPart', @level2type = N'COLUMN', @level2name = N'ScoreOrRating';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001986', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluationPart', @level2type = N'COLUMN', @level2name = N'ScoreOrRating';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20967', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluationPart', @level2type = N'COLUMN', @level2name = N'ScoreOrRating';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluationPart', @level2type = N'COLUMN', @level2name = N'ScoreOrRating';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluationPart', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluationPart', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluationPart', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluationPart', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluationPart', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluationPart', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluationPart', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluationPart', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluationPart', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEvaluationPart', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

