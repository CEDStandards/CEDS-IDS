CREATE TABLE [dbo].[AssessmentNeedBraille] (
    [AssessmentNeedBrailleId]                  INT             IDENTITY (1, 1) NOT NULL,
    [AssessmentPersonalNeedsProfileDisplayId]  INT             NULL,
    [RefAssessmentNeedUsageTypeId]             INT             NULL,
    [RefAssessmentNeedBrailleGradeTypeId]      INT             NULL,
    [RefAssessmentNeedNumberOfBrailleDotsId]   INT             NULL,
    [NumberOfBrailleCells]                     INT             NULL,
    [RefAssessmentNeedBrailleMarkTypeId]       INT             NULL,
    [BrailleDotPressure]                       DECIMAL (10, 4) NULL,
    [RefAssessmentNeedBrailleStatusCellTypeId] INT             NULL,
    [RecordStartDateTime]                      DATETIME        NULL,
    [RecordEndDateTime]                        DATETIME        NULL,
    [RecordStatusId]                           INT             NULL,
    [DataCollectionId]                         INT             NULL,
    CONSTRAINT [PK_AssessmentNeedBraille] PRIMARY KEY CLUSTERED ([AssessmentNeedBrailleId] ASC),
    CONSTRAINT [FK_AssessmentNeedBraille_AssessmentNeedBrailleGradeTypeId] FOREIGN KEY ([RefAssessmentNeedBrailleGradeTypeId]) REFERENCES [dbo].[RefAssessmentNeedBrailleGradeType] ([RefAssessmentNeedBrailleGradeTypeId]),
    CONSTRAINT [FK_AssessmentNeedBraille_AssessmentPersonalNeedsProfileDisplay] FOREIGN KEY ([AssessmentPersonalNeedsProfileDisplayId]) REFERENCES [dbo].[AssessmentPersonalNeedsProfileDisplay] ([AssessmentPersonalNeedsProfileDisplayId]),
    CONSTRAINT [FK_AssessmentNeedBraille_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_AssessmentNeedBraille_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_AssessmentNeedBraille_RefAssessmentNeedBrailleMarkType] FOREIGN KEY ([RefAssessmentNeedBrailleMarkTypeId]) REFERENCES [dbo].[RefAssessmentNeedBrailleMarkType] ([RefAssessmentNeedBrailleMarkTypeId]),
    CONSTRAINT [FK_AssessmentNeedBraille_RefAssessmentNeedBrailleStatusCellType] FOREIGN KEY ([RefAssessmentNeedBrailleStatusCellTypeId]) REFERENCES [dbo].[RefAssessmentNeedBrailleStatusCellType] ([RefAssessmentNeedBrailleStatusCellTypeId]),
    CONSTRAINT [FK_AssessmentNeedBraille_RefAssessmentNeedNumberOfBrailleDots] FOREIGN KEY ([RefAssessmentNeedNumberOfBrailleDotsId]) REFERENCES [dbo].[RefAssessmentNeedNumberOfBrailleDots] ([RefAssessmentNeedNumberOfBrailleDotsId]),
    CONSTRAINT [FK_AssessmentNeedBraille_RefAssessmentNeedUsageType] FOREIGN KEY ([RefAssessmentNeedUsageTypeId]) REFERENCES [dbo].[RefAssessmentNeedUsageType] ([RefAssessmentNeedUsageTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Defines as part of an Assessment Personal Needs Profile the attributes for Braille display', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedBraille';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedBraille';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedBraille', @level2type = N'COLUMN', @level2name = N'AssessmentNeedBrailleId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - AssessmentPersonNeedProfileDisplay.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedBraille', @level2type = N'COLUMN', @level2name = N'AssessmentPersonalNeedsProfileDisplayId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Defines as part of an Assessment Personal Needs Profile the rating for the collection of Access for All (AfA) needs and preferences.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedBraille', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedUsageTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Need Usage Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedBraille', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedUsageTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001026', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedBraille', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedUsageTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20028', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedBraille', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedUsageTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedBraille', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedUsageTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Defines as part of an Assessment Personal Needs Profile the grade of Braille to use when using a Braille display.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedBraille', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedBrailleGradeTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Need Braille Grade Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedBraille', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedBrailleGradeTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001032', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedBraille', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedBrailleGradeTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20035', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedBraille', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedBrailleGradeTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedBraille', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedBrailleGradeTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Defines as part of an Assessment Personal Needs Profile the number of dots in a Braille cell.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedBraille', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedNumberOfBrailleDotsId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Need Number of Braille Dots Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedBraille', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedNumberOfBrailleDotsId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedBraille', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedNumberOfBrailleDotsId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20036', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedBraille', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedNumberOfBrailleDotsId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedBraille', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedNumberOfBrailleDotsId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Defines as part of an Assessment Personal Needs Profile the number of active Braille cells in a Braille display.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedBraille', @level2type = N'COLUMN', @level2name = N'NumberOfBrailleCells';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Need Number of Braille Cells', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedBraille', @level2type = N'COLUMN', @level2name = N'NumberOfBrailleCells';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001034', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedBraille', @level2type = N'COLUMN', @level2name = N'NumberOfBrailleCells';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20037', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedBraille', @level2type = N'COLUMN', @level2name = N'NumberOfBrailleCells';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedBraille', @level2type = N'COLUMN', @level2name = N'NumberOfBrailleCells';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Defines as part of an Assessment Personal Needs Profile what textual properties to mark when using a Braille display.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedBraille', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedBrailleMarkTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Need Braille Mark Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedBraille', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedBrailleMarkTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001035', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedBraille', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedBrailleMarkTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20038', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedBraille', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedBrailleMarkTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedBraille', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedBrailleMarkTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Defines as part of an Assessment Personal Needs Profile the resistance pressure of Braille display pins.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedBraille', @level2type = N'COLUMN', @level2name = N'BrailleDotPressure';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Need Braille Dot Pressure', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedBraille', @level2type = N'COLUMN', @level2name = N'BrailleDotPressure';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001036', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedBraille', @level2type = N'COLUMN', @level2name = N'BrailleDotPressure';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20040', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedBraille', @level2type = N'COLUMN', @level2name = N'BrailleDotPressure';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedBraille', @level2type = N'COLUMN', @level2name = N'BrailleDotPressure';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Defines as part of an Assessment Personal Needs Profile the preferred presence or location of a Braille display status cell.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedBraille', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedBrailleStatusCellTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Need Braille Status Cell Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedBraille', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedBrailleStatusCellTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001037', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedBraille', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedBrailleStatusCellTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20041', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedBraille', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedBrailleStatusCellTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedBraille', @level2type = N'COLUMN', @level2name = N'RefAssessmentNeedBrailleStatusCellTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedBraille', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedBraille', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedBraille', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedBraille', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedBraille', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedBraille', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedBraille', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedBraille', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedBraille', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentNeedBraille', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

