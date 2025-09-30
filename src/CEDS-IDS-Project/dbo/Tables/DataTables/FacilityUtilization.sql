CREATE TABLE [dbo].[FacilityUtilization] (
    [FacilityUtilizationId]               INT            IDENTITY (1, 1) NOT NULL,
    [FacilityId]                          INT            NOT NULL,
    [BuildingHoursOfPublicUsePerWeek]     INT            NULL,
    [BuildingNetAreaOfInstructionalSpace] DECIMAL (9, 2) NULL,
    [BuildingNumberOfTeachingStations]    INT            NULL,
    [BuildingPublicUsePolicyDescription]  NVARCHAR (80)  NULL,
    [FacilityEnrollmentCapacity]          INT            NULL,
    [RecordStartDateTime]                 DATETIME       NULL,
    [RecordEndDateTime]                   DATETIME       NULL,
    [RecordStatusId]                      INT            NULL,
    [DataCollectionId]                    INT            NULL,
    [EnrollmentCapacity]                  INT            NULL,
    CONSTRAINT [PK_FacilityUtilization] PRIMARY KEY CLUSTERED ([FacilityUtilizationId] ASC),
    CONSTRAINT [FK_FacilityUtilization_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_FacilityUtilization_Facility] FOREIGN KEY ([FacilityId]) REFERENCES [dbo].[Facility] ([FacilityId]),
    CONSTRAINT [FK_FacilityUtilization_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The ratio in which a facility is being utilized by the school district.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityUtilization';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityUtilization';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The number of hours that all or part of a building is used for purposes other than general education by the community or other organizations.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityUtilization', @level2type = N'COLUMN', @level2name = N'BuildingHoursOfPublicUsePerWeek';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Hours of Public Use per Week', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityUtilization', @level2type = N'COLUMN', @level2name = N'BuildingHoursOfPublicUsePerWeek';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001856', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityUtilization', @level2type = N'COLUMN', @level2name = N'BuildingHoursOfPublicUsePerWeek';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20837', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityUtilization', @level2type = N'COLUMN', @level2name = N'BuildingHoursOfPublicUsePerWeek';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The area of space directly used for instruction excluding circulation, administration, student services, and building support.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityUtilization', @level2type = N'COLUMN', @level2name = N'BuildingNetAreaOfInstructionalSpace';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Net Area of Instructional Space', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityUtilization', @level2type = N'COLUMN', @level2name = N'BuildingNetAreaOfInstructionalSpace';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001857', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityUtilization', @level2type = N'COLUMN', @level2name = N'BuildingNetAreaOfInstructionalSpace';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20838', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityUtilization', @level2type = N'COLUMN', @level2name = N'BuildingNetAreaOfInstructionalSpace';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The number of teaching stations, as defined by how many spaces have, or could have, a teacher assigned to them for classroom instruction.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityUtilization', @level2type = N'COLUMN', @level2name = N'BuildingNumberOfTeachingStations';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Number of Teaching Stations', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityUtilization', @level2type = N'COLUMN', @level2name = N'BuildingNumberOfTeachingStations';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001858', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityUtilization', @level2type = N'COLUMN', @level2name = N'BuildingNumberOfTeachingStations';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20839', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityUtilization', @level2type = N'COLUMN', @level2name = N'BuildingNumberOfTeachingStations';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A description of the policy that enables the community or other organizations to use all or part of a building for purposes other than general education.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityUtilization', @level2type = N'COLUMN', @level2name = N'BuildingPublicUsePolicyDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Public Use Policy Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityUtilization', @level2type = N'COLUMN', @level2name = N'BuildingPublicUsePolicyDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001859', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityUtilization', @level2type = N'COLUMN', @level2name = N'BuildingPublicUsePolicyDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20840', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityUtilization', @level2type = N'COLUMN', @level2name = N'BuildingPublicUsePolicyDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The maximum number of age appropriate students who can be enrolled in a facility such that the district''s programmatic, operational, and student/teacher work load requirements are met.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityUtilization', @level2type = N'COLUMN', @level2name = N'FacilityEnrollmentCapacity';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Facility Enrollment Capacity', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityUtilization', @level2type = N'COLUMN', @level2name = N'FacilityEnrollmentCapacity';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001904', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityUtilization', @level2type = N'COLUMN', @level2name = N'FacilityEnrollmentCapacity';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20885', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityUtilization', @level2type = N'COLUMN', @level2name = N'FacilityEnrollmentCapacity';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityUtilization', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityUtilization', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityUtilization', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityUtilization', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityUtilization', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityUtilization', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityUtilization', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityUtilization', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityUtilization', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Maximum number of age-appropriate students who can be enrolled. ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityUtilization', @level2type = N'COLUMN', @level2name = N'EnrollmentCapacity';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Enrollment Capacity', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityUtilization', @level2type = N'COLUMN', @level2name = N'EnrollmentCapacity';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002012', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityUtilization', @level2type = N'COLUMN', @level2name = N'EnrollmentCapacity';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=22979', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityUtilization', @level2type = N'COLUMN', @level2name = N'EnrollmentCapacity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityUtilization', @level2type = N'COLUMN', @level2name = N'EnrollmentCapacity';

