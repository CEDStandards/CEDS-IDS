CREATE TABLE [dbo].[RefTeacherPrepCompleterStatus] (
    [RefTeacherPrepCompleterStatusId] INT             IDENTITY (1, 1) NOT NULL,
    [Description]                     NVARCHAR (150)  NOT NULL,
    [Code]                            NVARCHAR (50)   NULL,
    [Definition]                      NVARCHAR (4000) NULL,
    [RefJurisdictionId]               INT             NULL,
    [SortOrder]                       DECIMAL (5, 2)  NULL,
    [RecordStartDateTime]             DATETIME        NULL,
    [RecordEndDateTime]               DATETIME        NULL,
    CONSTRAINT [PK_RefTeacherPrepCompleterStatus] PRIMARY KEY CLUSTERED ([RefTeacherPrepCompleterStatusId] ASC),
    CONSTRAINT [FK_RefTeacherPrepCompleterStatus_Organization] FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether a person completed a state-approved teacher preparation program.  The fact that a person has or has not been recommended to the state for initial certification or licensure may not be used as a criterion for determining who is a program completer.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefTeacherPrepCompleterStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Teacher Preparation Program Completer Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefTeacherPrepCompleterStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000768', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefTeacherPrepCompleterStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19750', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefTeacherPrepCompleterStatus';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefTeacherPrepCompleterStatus';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefTeacherPrepCompleterStatus', @level2type = N'COLUMN', @level2name = N'RefTeacherPrepCompleterStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A description for the options in this option set.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefTeacherPrepCompleterStatus', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefTeacherPrepCompleterStatus', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A code or abbreviation for the options in this option set.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefTeacherPrepCompleterStatus', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefTeacherPrepCompleterStatus', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The defintion for the options in this option set.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefTeacherPrepCompleterStatus', @level2type = N'COLUMN', @level2name = N'Definition';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key from Organization identifying the publisher of the reference value.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefTeacherPrepCompleterStatus', @level2type = N'COLUMN', @level2name = N'RefJurisdictionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The sequence the options in this option set should be ordered.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefTeacherPrepCompleterStatus', @level2type = N'COLUMN', @level2name = N'SortOrder';

