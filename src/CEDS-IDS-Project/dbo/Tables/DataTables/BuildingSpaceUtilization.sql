CREATE TABLE [dbo].[BuildingSpaceUtilization] (
    [BuildingSpaceUtilizationId]                INT            IDENTITY (1, 1) NOT NULL,
    [BuildingSpaceId]                           INT            NOT NULL,
    [AvailableUtilizedInstructionalSpace]       BIT            NULL,
    [BuildingCapacityFactorIndicator]           BIT            NULL,
    [BuildingSpaceUtilizationArea]              DECIMAL (9, 2) NULL,
    [BuildingUnassignedSpaceIndicator]          BIT            NULL,
    [RefBuildingCommunityUseSpaceTypeId]        INT            NULL,
    [RefBuildingInstructionalSpaceFactorTypeId] INT            NULL,
    [RecordStartDateTime]                       DATETIME       NULL,
    [RecordEndDateTime]                         DATETIME       NULL,
    [RecordStatusId]                            INT            NULL,
    [DataCollectionId]                          INT            NULL,
    CONSTRAINT [PK_BuildingSpaceUtilization] PRIMARY KEY CLUSTERED ([BuildingSpaceUtilizationId] ASC),
    CONSTRAINT [FK_BuildingSpaceUtilization_BuildingSpace] FOREIGN KEY ([BuildingSpaceId]) REFERENCES [dbo].[BuildingSpace] ([BuildingSpaceId]),
    CONSTRAINT [FK_BuildingSpaceUtilization_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_BuildingSpaceUtilization_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_BuildingSpaceUtilization_RefBuildingCommunityUseSpaceType] FOREIGN KEY ([RefBuildingCommunityUseSpaceTypeId]) REFERENCES [dbo].[RefBuildingCommunityUseSpaceType] ([RefBuildingCommunityUseSpaceTypeId]),
    CONSTRAINT [FK_BuildingSpaceUtilization_RefBuildingInstructionalSpaceFactorType] FOREIGN KEY ([RefBuildingInstructionalSpaceFactorTypeId]) REFERENCES [dbo].[RefBuildingInstructionalSpaceFactorType] ([RefBuildingInstructionalSpaceFactorTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information about the capacity and assigned utilization of an area within a building including if the area is unassigned.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpaceUtilization';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpaceUtilization';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication that the instruction space in a school is used in the calculation of student capacity.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpaceUtilization', @level2type = N'COLUMN', @level2name = N'AvailableUtilizedInstructionalSpace';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Available Utilized Instructional Space', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpaceUtilization', @level2type = N'COLUMN', @level2name = N'AvailableUtilizedInstructionalSpace';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001902', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpaceUtilization', @level2type = N'COLUMN', @level2name = N'AvailableUtilizedInstructionalSpace';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20883', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpaceUtilization', @level2type = N'COLUMN', @level2name = N'AvailableUtilizedInstructionalSpace';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A designation as to whether the space is included in the calculation of school building capacity under state or local guidelines.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpaceUtilization', @level2type = N'COLUMN', @level2name = N'BuildingCapacityFactorIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Capacity Factor Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpaceUtilization', @level2type = N'COLUMN', @level2name = N'BuildingCapacityFactorIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001903', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpaceUtilization', @level2type = N'COLUMN', @level2name = N'BuildingCapacityFactorIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20884', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpaceUtilization', @level2type = N'COLUMN', @level2name = N'BuildingCapacityFactorIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The area in square feet measured between the principal wall that faces at or near floor level, including alcove spaces, and the outer limits of space designed to serve the activity. Structural space is excluded.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpaceUtilization', @level2type = N'COLUMN', @level2name = N'BuildingSpaceUtilizationArea';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Space Utilization Area', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpaceUtilization', @level2type = N'COLUMN', @level2name = N'BuildingSpaceUtilizationArea';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001861', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpaceUtilization', @level2type = N'COLUMN', @level2name = N'BuildingSpaceUtilizationArea';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20842', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpaceUtilization', @level2type = N'COLUMN', @level2name = N'BuildingSpaceUtilizationArea';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication that the space in a school, including circulation, administration offices, support spaces, and common areas, is not part of the calculation for capacity.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpaceUtilization', @level2type = N'COLUMN', @level2name = N'BuildingUnassignedSpaceIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Unassigned Space Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpaceUtilization', @level2type = N'COLUMN', @level2name = N'BuildingUnassignedSpaceIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001863', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpaceUtilization', @level2type = N'COLUMN', @level2name = N'BuildingUnassignedSpaceIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20844', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpaceUtilization', @level2type = N'COLUMN', @level2name = N'BuildingUnassignedSpaceIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The space designed primarily for community or shared use.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpaceUtilization', @level2type = N'COLUMN', @level2name = N'RefBuildingCommunityUseSpaceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Community Use Space Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpaceUtilization', @level2type = N'COLUMN', @level2name = N'RefBuildingCommunityUseSpaceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001855', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpaceUtilization', @level2type = N'COLUMN', @level2name = N'RefBuildingCommunityUseSpaceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20836', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpaceUtilization', @level2type = N'COLUMN', @level2name = N'RefBuildingCommunityUseSpaceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A designation as to whether the space is considered an instructional space under state or local guidelines.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpaceUtilization', @level2type = N'COLUMN', @level2name = N'RefBuildingInstructionalSpaceFactorTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Instructional Space Factor Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpaceUtilization', @level2type = N'COLUMN', @level2name = N'RefBuildingInstructionalSpaceFactorTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001851', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpaceUtilization', @level2type = N'COLUMN', @level2name = N'RefBuildingInstructionalSpaceFactorTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20832', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpaceUtilization', @level2type = N'COLUMN', @level2name = N'RefBuildingInstructionalSpaceFactorTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpaceUtilization', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpaceUtilization', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpaceUtilization', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpaceUtilization', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpaceUtilization', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpaceUtilization', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpaceUtilization', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpaceUtilization', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpaceUtilization', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

