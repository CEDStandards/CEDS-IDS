CREATE TABLE [dbo].[FacilityJointUse] (
    [FacilityJointUseId]                  INT            IDENTITY (1, 1) NOT NULL,
    [FacilityId]                          INT            NOT NULL,
    [RefBuildingJointUseRationaleTypeId]  INT            NULL,
    [RefBuildingJointUserTypeId]          INT            NULL,
    [RefBuildingJointUseSchedulingTypeId] INT            NULL,
    [RecordStartDateTime]                 DATETIME       NULL,
    [RecordEndDateTime]                   DATETIME       NULL,
    [RecordStatusId]                      INT            NULL,
    [DataCollectionId]                    INT            NULL,
    [RefFacilityJointUseIndicatorId]      INT            NULL,
    [FacilityJointUseDescription]         NVARCHAR (300) NULL,
    CONSTRAINT [PK_FacilityJointUse] PRIMARY KEY CLUSTERED ([FacilityJointUseId] ASC),
    CONSTRAINT [FK_FacilityJointUse_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_FacilityJointUse_Facility] FOREIGN KEY ([FacilityId]) REFERENCES [dbo].[Facility] ([FacilityId]),
    CONSTRAINT [FK_FacilityJointUse_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_FacilityJointUse_RefBuildingJointUseRationaleType] FOREIGN KEY ([RefBuildingJointUseRationaleTypeId]) REFERENCES [dbo].[RefBuildingJointUseRationaleType] ([RefBuildingJointUseRationaleTypeId]),
    CONSTRAINT [FK_FacilityJointUse_RefBuildingJointUserType] FOREIGN KEY ([RefBuildingJointUserTypeId]) REFERENCES [dbo].[RefBuildingJointUserType] ([RefBuildingJointUserTypeId]),
    CONSTRAINT [FK_FacilityJointUse_RefBuildingJointUseSchedulingType] FOREIGN KEY ([RefBuildingJointUseSchedulingTypeId]) REFERENCES [dbo].[RefBuildingJointUseSchedulingType] ([RefBuildingJointUseSchedulingTypeId]),
    CONSTRAINT [FK_FacilityJointUse_RefFacilityJointUseIndicator] FOREIGN KEY ([RefFacilityJointUseIndicatorId]) REFERENCES [dbo].[RefFacilityJointUseIndicator] ([RefFacilityJointUseIndicatorId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'How a facility is used by parties aside from a primary tenant such as school district.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityJointUse';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityJointUse';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The reasons for permitting and participating in joint-use.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityJointUse', @level2type = N'COLUMN', @level2name = N'RefBuildingJointUseRationaleTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Joint Use Rationale Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityJointUse', @level2type = N'COLUMN', @level2name = N'RefBuildingJointUseRationaleTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001852', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityJointUse', @level2type = N'COLUMN', @level2name = N'RefBuildingJointUseRationaleTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20833', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityJointUse', @level2type = N'COLUMN', @level2name = N'RefBuildingJointUseRationaleTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The types of users sharing school district controlled, owned, or utilized facilities.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityJointUse', @level2type = N'COLUMN', @level2name = N'RefBuildingJointUserTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Joint User Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityJointUse', @level2type = N'COLUMN', @level2name = N'RefBuildingJointUserTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001854', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityJointUse', @level2type = N'COLUMN', @level2name = N'RefBuildingJointUserTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20835', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityJointUse', @level2type = N'COLUMN', @level2name = N'RefBuildingJointUserTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of designation of non school district users by the amount of time they have access to public school for joint use.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityJointUse', @level2type = N'COLUMN', @level2name = N'RefBuildingJointUseSchedulingTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Joint Use Scheduling Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityJointUse', @level2type = N'COLUMN', @level2name = N'RefBuildingJointUseSchedulingTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001853', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityJointUse', @level2type = N'COLUMN', @level2name = N'RefBuildingJointUseSchedulingTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20834', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityJointUse', @level2type = N'COLUMN', @level2name = N'RefBuildingJointUseSchedulingTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityJointUse', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityJointUse', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityJointUse', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityJointUse', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityJointUse', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityJointUse', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityJointUse', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityJointUse', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityJointUse', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityJointUse', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication that an organization shares a facility or space within a facility with another organization.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityJointUse', @level2type = N'COLUMN', @level2name = N'RefFacilityJointUseIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Facility Joint Use Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityJointUse', @level2type = N'COLUMN', @level2name = N'RefFacilityJointUseIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002111', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityJointUse', @level2type = N'COLUMN', @level2name = N'RefFacilityJointUseIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25017', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityJointUse', @level2type = N'COLUMN', @level2name = N'RefFacilityJointUseIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityJointUse', @level2type = N'COLUMN', @level2name = N'RefFacilityJointUseIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A description explaining the details of an organization''s shared facility arrangement.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityJointUse', @level2type = N'COLUMN', @level2name = N'FacilityJointUseDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Facility Joint Use Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityJointUse', @level2type = N'COLUMN', @level2name = N'FacilityJointUseDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002112', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityJointUse', @level2type = N'COLUMN', @level2name = N'FacilityJointUseDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25016', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityJointUse', @level2type = N'COLUMN', @level2name = N'FacilityJointUseDescription';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityJointUse', @level2type = N'COLUMN', @level2name = N'FacilityJointUseDescription';

