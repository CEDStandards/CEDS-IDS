CREATE TABLE [dbo].[PersonProgramParticipation] (
    [OrganizationPersonRoleId]     INT            NOT NULL,
    [RefParticipationTypeId]       INT            NULL,
    [RefProgramExitReasonId]       INT            NULL,
    [RecordStartDateTime]          DATETIME       NULL,
    [RecordEndDateTime]            DATETIME       NULL,
    [PersonProgramParticipationId] INT            IDENTITY (1, 1) NOT NULL,
    [ParticipationStatus]          NVARCHAR (100) NULL,
    [RefProgramEntryReasonId]      INT            NULL,
    [YearsOfProgramParticipation]  INT            NULL,
    [RecordStatusId]               INT            NULL,
    [DataCollectionId]             INT            NULL,
    CONSTRAINT [PK_PersonProgramParticipation] PRIMARY KEY CLUSTERED ([PersonProgramParticipationId] ASC),
    CONSTRAINT [FK_PersonProgramParticipation_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_PersonProgramParticipation_OrganizationPersonRole] FOREIGN KEY ([OrganizationPersonRoleId]) REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]),
    CONSTRAINT [FK_PersonProgramParticipation_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_PersonProgramParticipation_RefParticipationType] FOREIGN KEY ([RefParticipationTypeId]) REFERENCES [dbo].[RefParticipationType] ([RefParticipationTypeId]),
    CONSTRAINT [FK_PersonProgramParticipation_RefProgramEntryReason] FOREIGN KEY ([RefProgramEntryReasonId]) REFERENCES [dbo].[RefProgramEntryReason] ([RefProgramEntryReasonId]),
    CONSTRAINT [FK_PersonProgramParticipation_RefProgramExitReason] FOREIGN KEY ([RefProgramExitReasonId]) REFERENCES [dbo].[RefProgramExitReason] ([RefProgramExitReasonId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information about a person''s participation in a program. ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonProgramParticipation';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonProgramParticipation';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Status types for a person''s participation in the program.  Either, a record represents Yes (True) and it''s absence No (False), or ParticipationStatus contains a status value.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonProgramParticipation', @level2type = N'COLUMN', @level2name = N'RefParticipationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'GED Preparation Program Participation Status, Gifted and Talented Indicator, Homeless Serviced Indicator, Migrant Education Program Participation Status, Neglected or Delinquent Status, Section 504 Status, Title III Immigrant Participation Status, Title I Schoolwide Program Participation, Title I Targeted Assistance Participation, Title III Limited English Proficient Participation Status, Kindergarten Program Participation Type  , Career Pathways Program Participation Indicator, Correctional Education Reentry Services Participation Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonProgramParticipation', @level2type = N'COLUMN', @level2name = N'RefParticipationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000120, 000122, 000147, 000185, 000193, 000249, 000290, 000550, 000551, 000565, 000714, 001291, 001297', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonProgramParticipation', @level2type = N'COLUMN', @level2name = N'RefParticipationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19120, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19122, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19147, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19185, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19193, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19249, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19290, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19541, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19542, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19557, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19690, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20257, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20263', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonProgramParticipation', @level2type = N'COLUMN', @level2name = N'RefParticipationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The documented or assumed reason a student is no longer being served by a special program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonProgramParticipation', @level2type = N'COLUMN', @level2name = N'RefProgramExitReasonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Exit Reason', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonProgramParticipation', @level2type = N'COLUMN', @level2name = N'RefProgramExitReasonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000222', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonProgramParticipation', @level2type = N'COLUMN', @level2name = N'RefProgramExitReasonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19222', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonProgramParticipation', @level2type = N'COLUMN', @level2name = N'RefProgramExitReasonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonProgramParticipation', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonProgramParticipation', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonProgramParticipation', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonProgramParticipation', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonProgramParticipation', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonProgramParticipation', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonProgramParticipation', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonProgramParticipation', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonProgramParticipation', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Gifted and Talented Indicator, Neglected or Delinquent Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonProgramParticipation', @level2type = N'COLUMN', @level2name = N'ParticipationStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000122, 000193', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonProgramParticipation', @level2type = N'COLUMN', @level2name = N'ParticipationStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19122, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19193', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonProgramParticipation', @level2type = N'COLUMN', @level2name = N'ParticipationStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The documented or assumed reason a person is being served by a program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonProgramParticipation', @level2type = N'COLUMN', @level2name = N'RefProgramEntryReasonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Program Entry Reason', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonProgramParticipation', @level2type = N'COLUMN', @level2name = N'RefProgramEntryReasonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001922', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonProgramParticipation', @level2type = N'COLUMN', @level2name = N'RefProgramEntryReasonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20909', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonProgramParticipation', @level2type = N'COLUMN', @level2name = N'RefProgramEntryReasonId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonProgramParticipation', @level2type = N'COLUMN', @level2name = N'RefProgramEntryReasonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The total number of years a student participated in a program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonProgramParticipation', @level2type = N'COLUMN', @level2name = N'YearsOfProgramParticipation';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Years of Program Participation', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonProgramParticipation', @level2type = N'COLUMN', @level2name = N'YearsOfProgramParticipation';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002118', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonProgramParticipation', @level2type = N'COLUMN', @level2name = N'YearsOfProgramParticipation';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/element/002118', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonProgramParticipation', @level2type = N'COLUMN', @level2name = N'YearsOfProgramParticipation';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonProgramParticipation', @level2type = N'COLUMN', @level2name = N'YearsOfProgramParticipation';
GO