CREATE TABLE [dbo].[OrganizationDetail] (
    [OrganizationDetailId]  INT             IDENTITY (1, 1) NOT NULL,
    [OrganizationId]        INT             NOT NULL,
    [Name]                  NVARCHAR (200)  NULL,
    [ShortName]             NVARCHAR (30)   NULL,
    [RegionGeoJSON]         NVARCHAR (2000) NULL,
    [RefOrganizationTypeId] INT             NULL,
    [RecordStartDateTime]   DATETIME        NULL,
    [RecordEndDateTime]     DATETIME        NULL,
    [RecordStatusId]        INT             NULL,
    [DataCollectionId]      INT             NULL,
    CONSTRAINT [PK_OrganizationDetail] PRIMARY KEY CLUSTERED ([OrganizationDetailId] ASC),
    CONSTRAINT [FK_OrganizationDetail_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_OrganizationDetail_Organization] FOREIGN KEY ([OrganizationId]) REFERENCES [dbo].[Organization] ([OrganizationId]),
    CONSTRAINT [FK_OrganizationDetail_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_OrganizationDetail_RefOrganizationType] FOREIGN KEY ([RefOrganizationTypeId]) REFERENCES [dbo].[RefOrganizationType] ([RefOrganizationTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information about an organization.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationDetail';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationDetail';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Activity Title, Course Title, Postsecondary Course Title, Name of Institution, Organization Name, Program Name, Professional Association Name, Early Learning Class Group Name, Credential Award Issuer Name, Assessment Administration Organization Name, Assessment Administration Assessment Family', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationDetail', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000009, 000067, 000068, 000191, 000204, 000626, 000808, 000821, 000898, 000966, 000967', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationDetail', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19009, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19067, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19068, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19191, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19204, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19619, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19807, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19820, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19898, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19967, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19968', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationDetail', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The name of the institution, which may be the abbreviated form of the full legally accepted name.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationDetail', @level2type = N'COLUMN', @level2name = N'ShortName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Short Name of Institution', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationDetail', @level2type = N'COLUMN', @level2name = N'ShortName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001487', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationDetail', @level2type = N'COLUMN', @level2name = N'ShortName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20459', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationDetail', @level2type = N'COLUMN', @level2name = N'ShortName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationDetail', @level2type = N'COLUMN', @level2name = N'ShortName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The geo-political area of the organization''s facility, building, or site.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationDetail', @level2type = N'COLUMN', @level2name = N'RegionGeoJSON';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Organization Region GeoJSON', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationDetail', @level2type = N'COLUMN', @level2name = N'RegionGeoJSON';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001750', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationDetail', @level2type = N'COLUMN', @level2name = N'RegionGeoJSON';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20731', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationDetail', @level2type = N'COLUMN', @level2name = N'RegionGeoJSON';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationDetail', @level2type = N'COLUMN', @level2name = N'RegionGeoJSON';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationDetail', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationDetail', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationDetail', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationDetail', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationDetail', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationDetail', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationDetail', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationDetail', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

