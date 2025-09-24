CREATE TABLE [dbo].[OrganizationEmployeeBenefit] (
    [OrganizationEmployeeBenefitId] INT      IDENTITY (1, 1) NOT NULL,
    [OrganizationId]                INT      NOT NULL,
    [FullTimeBenefitIndicator]      BIT      NULL,
    [PartTimeBenefitIndicator]      BIT      NULL,
    [RefEmployeeBenefitId]          INT      NULL,
    [RecordStartDateTime]           DATETIME NULL,
    [RecordEndDateTime]             DATETIME NULL,
    [RecordStatusId]                INT      NULL,
    [DataCollectionId]              INT      NULL,
    CONSTRAINT [PK_OrganizationEmployeeBenefit] PRIMARY KEY CLUSTERED ([OrganizationEmployeeBenefitId] ASC),
    CONSTRAINT [FK_OrganizationEmployeeBenefit_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_OrganizationEmployeeBenefit_Organization] FOREIGN KEY ([OrganizationId]) REFERENCES [dbo].[Organization] ([OrganizationId]),
    CONSTRAINT [FK_OrganizationEmployeeBenefit_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_OrganizationEmployeeBenefit_RefEmployeeBenefit] FOREIGN KEY ([RefEmployeeBenefitId]) REFERENCES [dbo].[RefEmployeeBenefit] ([RefEmployeeBenefitId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information about employee benefits linked to an organization.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEmployeeBenefit';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEmployeeBenefit';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The benefits offered by a program/facility/employer for full-time staff.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEmployeeBenefit', @level2type = N'COLUMN', @level2name = N'FullTimeBenefitIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Full-Time Employee Benefits', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEmployeeBenefit', @level2type = N'COLUMN', @level2name = N'FullTimeBenefitIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000866', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEmployeeBenefit', @level2type = N'COLUMN', @level2name = N'FullTimeBenefitIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19866', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEmployeeBenefit', @level2type = N'COLUMN', @level2name = N'FullTimeBenefitIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The benefits offered by a program/facility/employer for part-time staff.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEmployeeBenefit', @level2type = N'COLUMN', @level2name = N'PartTimeBenefitIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Part-Time Employee Benefits', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEmployeeBenefit', @level2type = N'COLUMN', @level2name = N'PartTimeBenefitIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000867', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEmployeeBenefit', @level2type = N'COLUMN', @level2name = N'PartTimeBenefitIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19867', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEmployeeBenefit', @level2type = N'COLUMN', @level2name = N'PartTimeBenefitIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Full-Time Employee Benefits, Part-Time Employee Benefits', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEmployeeBenefit', @level2type = N'COLUMN', @level2name = N'RefEmployeeBenefitId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000866, 000867', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEmployeeBenefit', @level2type = N'COLUMN', @level2name = N'RefEmployeeBenefitId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19866, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19867', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEmployeeBenefit', @level2type = N'COLUMN', @level2name = N'RefEmployeeBenefitId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEmployeeBenefit', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEmployeeBenefit', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEmployeeBenefit', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEmployeeBenefit', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEmployeeBenefit', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEmployeeBenefit', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEmployeeBenefit', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEmployeeBenefit', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEmployeeBenefit', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationEmployeeBenefit', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

