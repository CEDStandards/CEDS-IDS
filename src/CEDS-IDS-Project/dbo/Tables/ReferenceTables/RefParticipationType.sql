CREATE TABLE [dbo].[RefParticipationType] (
    [RefParticipationTypeId] INT             IDENTITY (1, 1) NOT NULL,
    [OrganizationId]         INT             NULL,
    [Description]            NVARCHAR (150)  NOT NULL,
    [Code]                   NVARCHAR (50)   NULL,
    [Definition]             NVARCHAR (4000) NULL,
    [RefJurisdictionId]      INT             NULL,
    [SortOrder]              DECIMAL (5, 2)  NULL,
    [RecordStartDateTime]    DATETIME        NULL,
    [RecordEndDateTime]      DATETIME        NULL,
    CONSTRAINT [PK_RefParticipationType] PRIMARY KEY CLUSTERED ([RefParticipationTypeId] ASC),
    CONSTRAINT [FK_RefParticipationType_Organization] FOREIGN KEY ([OrganizationId]) REFERENCES [dbo].[Organization] ([OrganizationId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Status types for a person''s participation in the program.  Either, a record represents Yes (True) and it''s absence No (False), or ParticipationStatus contains a status value.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefParticipationType';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'GED Preparation Program Participation Status, Gifted and Talented Indicator, Homeless Serviced Indicator, Migrant Education Program Participation Status, Neglected or Delinquent Status, Section 504 Status, Title III Immigrant Participation Status, Title I Schoolwide Program Participation, Title I Targeted Assistance Participation, Title III Limited English Proficient Participation Status, Kindergarten Program Participation Type  , Career Pathways Program Participation Indicator, Correctional Education Reentry Services Participation Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefParticipationType';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000120, 000122, 000147, 000185, 000193, 000249, 000290, 000550, 000551, 000565, 000714, 001291, 001297', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefParticipationType';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19120, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19122, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19147, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19185, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19193, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19249, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19290, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19541, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19542, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19557, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19690, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20257, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20263', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefParticipationType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefParticipationType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefParticipationType', @level2type = N'COLUMN', @level2name = N'RefParticipationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key to Organization identifying the Program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefParticipationType', @level2type = N'COLUMN', @level2name = N'OrganizationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A description for the options in this option set.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefParticipationType', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefParticipationType', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A code or abbreviation for the options in this option set.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefParticipationType', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefParticipationType', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The defintion for the options in this option set.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefParticipationType', @level2type = N'COLUMN', @level2name = N'Definition';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key from Organization identifying the publisher of the reference value.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefParticipationType', @level2type = N'COLUMN', @level2name = N'RefJurisdictionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The sequence the options in this option set should be ordered.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefParticipationType', @level2type = N'COLUMN', @level2name = N'SortOrder';

