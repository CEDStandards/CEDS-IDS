CREATE TABLE [dbo].[K12CharterSchoolAuthorizerAgency] (
    [K12CharterSchoolAuthorizerAgencyId] INT      IDENTITY (1, 1) NOT NULL,
    [OrganizationId]                     INT      NULL,
    [RefCharterSchoolAuthorizerTypeId]   INT      NOT NULL,
    [RecordStartDateTime]                DATETIME NULL,
    [RecordEndDateTime]                  DATETIME NULL,
    [RecordStatusId]                     INT      NULL,
    [DataCollectionId]                   INT      NULL,
    CONSTRAINT [PK__K12CharterSchoolAuthorizerAgency] PRIMARY KEY CLUSTERED ([K12CharterSchoolAuthorizerAgencyId] ASC),
    CONSTRAINT [FK_K12CharterSchoolAuthorizerAgency_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_K12CharterSchoolAuthorizerAgency_Organization] FOREIGN KEY ([OrganizationId]) REFERENCES [dbo].[Organization] ([OrganizationId]),
    CONSTRAINT [FK_K12CharterSchoolAuthorizerAgency_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_K12CharterSchoolAuthorizerAgency_RefCharterSchoolAuthorizerType] FOREIGN KEY ([RefCharterSchoolAuthorizerTypeId]) REFERENCES [dbo].[RefCharterSchoolAuthorizerType] ([RefCharterSchoolAuthorizerTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The relationship between a K12 Charter School and the Agency that authorized the school.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12CharterSchoolAuthorizerAgency';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12CharterSchoolAuthorizerAgency';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of agency that authorized the establishment or continuation of a charter school.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12CharterSchoolAuthorizerAgency', @level2type = N'COLUMN', @level2name = N'K12CharterSchoolAuthorizerAgencyId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Charter School Authorizer Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12CharterSchoolAuthorizerAgency', @level2type = N'COLUMN', @level2name = N'K12CharterSchoolAuthorizerAgencyId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001292', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12CharterSchoolAuthorizerAgency', @level2type = N'COLUMN', @level2name = N'K12CharterSchoolAuthorizerAgencyId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20258', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12CharterSchoolAuthorizerAgency', @level2type = N'COLUMN', @level2name = N'K12CharterSchoolAuthorizerAgencyId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12CharterSchoolAuthorizerAgency', @level2type = N'COLUMN', @level2name = N'K12CharterSchoolAuthorizerAgencyId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of agency that authorized the establishment or continuation of a charter school.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12CharterSchoolAuthorizerAgency', @level2type = N'COLUMN', @level2name = N'RefCharterSchoolAuthorizerTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Charter School Authorizer Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12CharterSchoolAuthorizerAgency', @level2type = N'COLUMN', @level2name = N'RefCharterSchoolAuthorizerTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001292', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12CharterSchoolAuthorizerAgency', @level2type = N'COLUMN', @level2name = N'RefCharterSchoolAuthorizerTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20258', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12CharterSchoolAuthorizerAgency', @level2type = N'COLUMN', @level2name = N'RefCharterSchoolAuthorizerTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12CharterSchoolAuthorizerAgency', @level2type = N'COLUMN', @level2name = N'RefCharterSchoolAuthorizerTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12CharterSchoolAuthorizerAgency', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12CharterSchoolAuthorizerAgency', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12CharterSchoolAuthorizerAgency', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12CharterSchoolAuthorizerAgency', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12CharterSchoolAuthorizerAgency', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12CharterSchoolAuthorizerAgency', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12CharterSchoolAuthorizerAgency', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12CharterSchoolAuthorizerAgency', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12CharterSchoolAuthorizerAgency', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12CharterSchoolAuthorizerAgency', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

