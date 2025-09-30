CREATE TABLE [dbo].[FacilityManagement] (
    [FacilityManagementId]                       INT      IDENTITY (1, 1) NOT NULL,
    [FacilityId]                                 INT      NOT NULL,
    [RefBuildingCharterSchoolRealtyAccessTypeId] INT      NULL,
    [RefBuildingCleaningStandardTypeId]          INT      NULL,
    [RefFacilityCapitalProgramMgmtTypeId]        INT      NULL,
    [RefFacilityComplianceAgencyTypeId]          INT      NULL,
    [RefFacilityOperationsMgmtTypeId]            INT      NULL,
    [RecordStartDateTime]                        DATETIME NULL,
    [RecordEndDateTime]                          DATETIME NULL,
    [RecordStatusId]                             INT      NULL,
    [DataCollectionId]                           INT      NULL,
    CONSTRAINT [PK_FacilityManagement] PRIMARY KEY CLUSTERED ([FacilityManagementId] ASC),
    CONSTRAINT [FK_FacilityManagement_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_FacilityManagement_Facility] FOREIGN KEY ([FacilityId]) REFERENCES [dbo].[Facility] ([FacilityId]),
    CONSTRAINT [FK_FacilityManagement_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_FacilityManagement_RefBuildingCharterSchoolRealtyAccessType] FOREIGN KEY ([RefBuildingCharterSchoolRealtyAccessTypeId]) REFERENCES [dbo].[RefBuildingCharterSchoolRealtyAccessType] ([RefBuildingCharterSchoolRealtyAccessTypeId]),
    CONSTRAINT [FK_FacilityManagement_RefBuildingCleaningStandardType] FOREIGN KEY ([RefBuildingCleaningStandardTypeId]) REFERENCES [dbo].[RefBuildingCleaningStandardType] ([RefBuildingCleaningStandardTypeId]),
    CONSTRAINT [FK_FacilityManagement_RefFacilityCapitalProgramMgmtType] FOREIGN KEY ([RefFacilityCapitalProgramMgmtTypeId]) REFERENCES [dbo].[RefFacilityCapitalProgramMgmtType] ([RefFacilityCapitalProgramMgmtTypeId]),
    CONSTRAINT [FK_FacilityManagement_RefFacilityComplianceAgencyType] FOREIGN KEY ([RefFacilityComplianceAgencyTypeId]) REFERENCES [dbo].[RefFacilityComplianceAgencyType] ([RefFacilityComplianceAgencyTypeId]),
    CONSTRAINT [FK_FacilityManagement_RefFacilityOperationsMgmtType] FOREIGN KEY ([RefFacilityOperationsMgmtTypeId]) REFERENCES [dbo].[RefFacilityOperationsMgmtType] ([RefFacilityOperationsMgmtTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Way in which a facility is managed.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityManagement';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityManagement';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of real estate vehicle through which a public charter school has access and control of its building space.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityManagement', @level2type = N'COLUMN', @level2name = N'RefBuildingCharterSchoolRealtyAccessTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Charter School Realty Access Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityManagement', @level2type = N'COLUMN', @level2name = N'RefBuildingCharterSchoolRealtyAccessTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001865', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityManagement', @level2type = N'COLUMN', @level2name = N'RefBuildingCharterSchoolRealtyAccessTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20846', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityManagement', @level2type = N'COLUMN', @level2name = N'RefBuildingCharterSchoolRealtyAccessTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The standard for cleanliness, and benchmarks for how much space can be assigned to one properly supplied custodian to meet these standards.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityManagement', @level2type = N'COLUMN', @level2name = N'RefBuildingCleaningStandardTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Cleaning Standard Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityManagement', @level2type = N'COLUMN', @level2name = N'RefBuildingCleaningStandardTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001866', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityManagement', @level2type = N'COLUMN', @level2name = N'RefBuildingCleaningStandardTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20847', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityManagement', @level2type = N'COLUMN', @level2name = N'RefBuildingCleaningStandardTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of management organization for planning, design, and construction of major capital projects.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityManagement', @level2type = N'COLUMN', @level2name = N'RefFacilityCapitalProgramMgmtTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Facility Capital Program Management Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityManagement', @level2type = N'COLUMN', @level2name = N'RefFacilityCapitalProgramMgmtTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001872', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityManagement', @level2type = N'COLUMN', @level2name = N'RefFacilityCapitalProgramMgmtTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20853', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityManagement', @level2type = N'COLUMN', @level2name = N'RefFacilityCapitalProgramMgmtTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of agency that has ultimate responsibility for the compliance determination.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityManagement', @level2type = N'COLUMN', @level2name = N'RefFacilityComplianceAgencyTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Facility Compliance Agency Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityManagement', @level2type = N'COLUMN', @level2name = N'RefFacilityComplianceAgencyTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001867', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityManagement', @level2type = N'COLUMN', @level2name = N'RefFacilityComplianceAgencyTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20848', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityManagement', @level2type = N'COLUMN', @level2name = N'RefFacilityComplianceAgencyTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of management arrangements whereby a district oversees and manages its facilities operations.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityManagement', @level2type = N'COLUMN', @level2name = N'RefFacilityOperationsMgmtTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Facility Operations Management Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityManagement', @level2type = N'COLUMN', @level2name = N'RefFacilityOperationsMgmtTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001873', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityManagement', @level2type = N'COLUMN', @level2name = N'RefFacilityOperationsMgmtTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20854', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityManagement', @level2type = N'COLUMN', @level2name = N'RefFacilityOperationsMgmtTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityManagement', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityManagement', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityManagement', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityManagement', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityManagement', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityManagement', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityManagement', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityManagement', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityManagement', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

