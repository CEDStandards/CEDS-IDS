CREATE TABLE [dbo].[OrganizationPopulationServed] (
    [OrganizationPopulationServedId]             INT           IDENTITY (1, 1) NOT NULL,
    [OrganizationId]                             INT           NOT NULL,
    [AgeUnit]                                    NVARCHAR (10) NULL,
    [OldestAgeServed]                            INT           NULL,
    [YoungestAgeServed]                          INT           NULL,
    [RefPopulationServedId]                      INT           NULL,
    [RecordStartDateTime]                        DATETIME      NULL,
    [RecordEndDateTime]                          DATETIME      NULL,
    [RecordStatusId]                             INT           NULL,
    [DataCollectionId]                           INT           NULL,
    [RefStudentSupportServiceAvailabilityTypeId] INT           NULL,
    CONSTRAINT [PK_OrganizationPopulationServed] PRIMARY KEY CLUSTERED ([OrganizationPopulationServedId] ASC),
    CONSTRAINT [FK_OrganizationPopulationServed_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_OrganizationPopulationServed_Organization] FOREIGN KEY ([OrganizationId]) REFERENCES [dbo].[Organization] ([OrganizationId]),
    CONSTRAINT [FK_OrganizationPopulationServed_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_OrganizationPopulationServed_RefPopulationServed] FOREIGN KEY ([RefPopulationServedId]) REFERENCES [dbo].[RefPopulationServed] ([RefPopulationServedId]),
    CONSTRAINT [FK_OrganizationPopulationServed_RefStudentSupportServiceAvailabilityType] FOREIGN KEY ([RefStudentSupportServiceAvailabilityTypeId]) REFERENCES [dbo].[RefStudentSupportServiceAvailabilityType] ([RefStudentSupportServiceAvailabilityTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Aggregate information related to persons being served by an organization.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationPopulationServed';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationPopulationServed';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The oldest age of children a class/group is authorized or licensed to serve.  (Age is specified in months)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationPopulationServed', @level2type = N'COLUMN', @level2name = N'OldestAgeServed';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Early Learning Oldest Age Authorized to Serve', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationPopulationServed', @level2type = N'COLUMN', @level2name = N'OldestAgeServed';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001225', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationPopulationServed', @level2type = N'COLUMN', @level2name = N'OldestAgeServed';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20189', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationPopulationServed', @level2type = N'COLUMN', @level2name = N'OldestAgeServed';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationPopulationServed', @level2type = N'COLUMN', @level2name = N'OldestAgeServed';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The youngest age of children a class/group is authorized or licensed to serve.  (Age is specified in months)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationPopulationServed', @level2type = N'COLUMN', @level2name = N'YoungestAgeServed';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Early Learning Youngest Age Authorized to Serve', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationPopulationServed', @level2type = N'COLUMN', @level2name = N'YoungestAgeServed';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000633', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationPopulationServed', @level2type = N'COLUMN', @level2name = N'YoungestAgeServed';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19626', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationPopulationServed', @level2type = N'COLUMN', @level2name = N'YoungestAgeServed';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationPopulationServed', @level2type = N'COLUMN', @level2name = N'YoungestAgeServed';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Program provides services to meet the needs of children in special circumstances.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationPopulationServed', @level2type = N'COLUMN', @level2name = N'RefPopulationServedId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Special Circumstances Population Served', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationPopulationServed', @level2type = N'COLUMN', @level2name = N'RefPopulationServedId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000852', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationPopulationServed', @level2type = N'COLUMN', @level2name = N'RefPopulationServedId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19852', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationPopulationServed', @level2type = N'COLUMN', @level2name = N'RefPopulationServedId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationPopulationServed', @level2type = N'COLUMN', @level2name = N'RefPopulationServedId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationPopulationServed', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationPopulationServed', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationPopulationServed', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationPopulationServed', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationPopulationServed', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationPopulationServed', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationPopulationServed', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationPopulationServed', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationPopulationServed', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationPopulationServed', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The group of students to whom related or ancillary service is offered within the formal educational system or by an outside agency which provides non-instructional service to support the general welfare of students.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationPopulationServed', @level2type = N'COLUMN', @level2name = N'RefStudentSupportServiceAvailabilityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Student Support Service Availability Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationPopulationServed', @level2type = N'COLUMN', @level2name = N'RefStudentSupportServiceAvailabilityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001998', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationPopulationServed', @level2type = N'COLUMN', @level2name = N'RefStudentSupportServiceAvailabilityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=22994', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationPopulationServed', @level2type = N'COLUMN', @level2name = N'RefStudentSupportServiceAvailabilityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationPopulationServed', @level2type = N'COLUMN', @level2name = N'RefStudentSupportServiceAvailabilityTypeId';

