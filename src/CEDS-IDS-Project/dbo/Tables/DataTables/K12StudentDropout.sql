CREATE TABLE [dbo].[K12StudentDropout] (
    [K12StudentDropoutId]       INT      IDENTITY (1, 1) NOT NULL,
    [OrganizationPersonRoleId]  INT      NOT NULL,
    [RefStudentDropoutStatusId] INT      NULL,
    [RecordStartDateTime]       DATETIME NULL,
    [RecordEndDateTime]         DATETIME NULL,
    [RecordStatusId]            INT      NULL,
    [DataCollectionId]          INT      NULL,
    CONSTRAINT [PK_K12StudentDropout] PRIMARY KEY CLUSTERED ([K12StudentDropoutId] ASC),
    CONSTRAINT [FK_K12StudentDropout_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_K12StudentDropout_OrganizationPersonRole] FOREIGN KEY ([OrganizationPersonRoleId]) REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]),
    CONSTRAINT [FK_K12StudentDropout_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_K12StudentDropout_RefStudentDropoutStatus] FOREIGN KEY ([RefStudentDropoutStatusId]) REFERENCES [dbo].[RefStudentDropoutStatus] ([RefStudentDropoutStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information about a student who has dropped out or potentially may have dropped out of a K12 school.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDropout';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDropout';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of the status of this student as dropout.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDropout', @level2type = N'COLUMN', @level2name = N'RefStudentDropoutStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Student Dropout Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDropout', @level2type = N'COLUMN', @level2name = N'RefStudentDropoutStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002068', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDropout', @level2type = N'COLUMN', @level2name = N'RefStudentDropoutStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25088', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDropout', @level2type = N'COLUMN', @level2name = N'RefStudentDropoutStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentDropout', @level2type = N'COLUMN', @level2name = N'RefStudentDropoutStatusId';

