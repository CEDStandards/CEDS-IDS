CREATE TABLE [dbo].[OrganizationJurisdiction] (
    [OrganizationJurisdictionId]          INT      IDENTITY (1, 1) NOT NULL,
    [OrganizationId]                      INT      NOT NULL,
    [OrganizationJurisdictionSquareMiles] INT      NULL,
    [RecordStartDateTime]                 DATETIME NULL,
    [RecordEndDateTime]                   DATETIME NULL,
    [RecordStatusId]                      INT      NULL,
    [DataCollectionId]                    INT      NULL,
    CONSTRAINT [PK_OrganizationJurisdiction] PRIMARY KEY CLUSTERED ([OrganizationJurisdictionId] ASC),
    CONSTRAINT [FK_OrganizationJurisdiction_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_OrganizationJurisdiction_Organization] FOREIGN KEY ([OrganizationId]) REFERENCES [dbo].[Organization] ([OrganizationId]),
    CONSTRAINT [FK_OrganizationJurisdiction_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information related to the jurisdiction of an organization.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationJurisdiction';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationJurisdiction';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The total area, measured in square miles, over which an organization holds administrative or governing authority, including regions under its regulatory, operational, or legal control. ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationJurisdiction', @level2type = N'COLUMN', @level2name = N'OrganizationJurisdictionSquareMiles';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Organization Jurisdiction Square Miles', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationJurisdiction', @level2type = N'COLUMN', @level2name = N'OrganizationJurisdictionSquareMiles';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002063', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationJurisdiction', @level2type = N'COLUMN', @level2name = N'OrganizationJurisdictionSquareMiles';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25074', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationJurisdiction', @level2type = N'COLUMN', @level2name = N'OrganizationJurisdictionSquareMiles';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationJurisdiction', @level2type = N'COLUMN', @level2name = N'OrganizationJurisdictionSquareMiles';

