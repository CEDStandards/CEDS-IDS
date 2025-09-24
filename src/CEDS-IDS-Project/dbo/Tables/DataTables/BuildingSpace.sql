CREATE TABLE [dbo].[BuildingSpace] (
    [BuildingSpaceId]                               INT            IDENTITY (1, 1) NOT NULL,
    [FacilityId]                                    INT            NOT NULL,
    [SpaceDescription]                              NVARCHAR (300) NULL,
    [RefSpaceUseTypeId]                             INT            NULL,
    [RefBuildingAdministrativeSpaceTypeId]          INT            NULL,
    [RefBuildingArtSpecialtySpaceTypeId]            INT            NULL,
    [RefBuildingAssemblySpaceTypeId]                INT            NULL,
    [RefBuildingBasicClassroomDesignTypeId]         INT            NULL,
    [RefBuildingCareerTechEducationSpaceTypeId]     INT            NULL,
    [RefBuildingCirculationSpaceTypeId]             INT            NULL,
    [RefBuildingFoodServiceSpaceTypeId]             INT            NULL,
    [RefBuildingFullServiceKitchenTypeId]           INT            NULL,
    [RefBuildingIndoorAthleticOrPhysEdSpaceTypeId]  INT            NULL,
    [RefBuildingLibMediaCenterSpecialtySpaceTypeId] INT            NULL,
    [RefBuildingOperationsOrMaintSpaceTypeId]       INT            NULL,
    [RefBuildingOutdoorAthleticOrPhysEdSpaceTypeId] INT            NULL,
    [RefBuildingOutdoorOrNonathleticSpaceTypeId]    INT            NULL,
    [RefBuildingPerformingArtsSpecialtySpaceTypeId] INT            NULL,
    [RefBuildingScienceSpecialtySpaceTypeId]        INT            NULL,
    [RefBuildingSpaceDesignTypeId]                  INT            NULL,
    [RefBuildingSpecEdSpecialtySpaceTypeId]         INT            NULL,
    [RefBuildingStudentSupportSpaceTypeId]          INT            NULL,
    [RecordStartDateTime]                           DATETIME       NULL,
    [RecordEndDateTime]                             DATETIME       NULL,
    [RecordStatusId]                                INT            NULL,
    [DataCollectionId]                              INT            NULL,
    CONSTRAINT [PK_BuildingSpace] PRIMARY KEY CLUSTERED ([BuildingSpaceId] ASC),
    CONSTRAINT [FK_BuildingSpace_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_BuildingSpace_Facility] FOREIGN KEY ([FacilityId]) REFERENCES [dbo].[Facility] ([FacilityId]),
    CONSTRAINT [FK_BuildingSpace_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_BuildingSpace_RefBuildingAdministrativeSpaceType] FOREIGN KEY ([RefBuildingAdministrativeSpaceTypeId]) REFERENCES [dbo].[RefBuildingAdministrativeSpaceType] ([RefBuildingAdministrativeSpaceTypeId]),
    CONSTRAINT [FK_BuildingSpace_RefBuildingArtSpecialtySpaceType] FOREIGN KEY ([RefBuildingArtSpecialtySpaceTypeId]) REFERENCES [dbo].[RefBuildingArtSpecialtySpaceType] ([RefBuildingArtSpecialtySpaceTypeId]),
    CONSTRAINT [FK_BuildingSpace_RefBuildingAssemblySpaceType] FOREIGN KEY ([RefBuildingAssemblySpaceTypeId]) REFERENCES [dbo].[RefBuildingAssemblySpaceType] ([RefBuildingAssemblySpaceTypeId]),
    CONSTRAINT [FK_BuildingSpace_RefBuildingBasicClassroomDesignType] FOREIGN KEY ([RefBuildingBasicClassroomDesignTypeId]) REFERENCES [dbo].[RefBuildingBasicClassroomDesignType] ([RefBuildingBasicClassroomDesignTypeId]),
    CONSTRAINT [FK_BuildingSpace_RefBuildingCareerTechEducationSpaceType] FOREIGN KEY ([RefBuildingCareerTechEducationSpaceTypeId]) REFERENCES [dbo].[RefBuildingCareerTechEducationSpaceType] ([RefBuildingCareerTechEducationSpaceTypeId]),
    CONSTRAINT [FK_BuildingSpace_RefBuildingCirculationSpaceType] FOREIGN KEY ([RefBuildingCirculationSpaceTypeId]) REFERENCES [dbo].[RefBuildingCirculationSpaceType] ([RefBuildingCirculationSpaceTypeId]),
    CONSTRAINT [FK_BuildingSpace_RefBuildingFoodServiceSpaceType] FOREIGN KEY ([RefBuildingFoodServiceSpaceTypeId]) REFERENCES [dbo].[RefBuildingFoodServiceSpaceType] ([RefBuildingFoodServiceSpaceTypeId]),
    CONSTRAINT [FK_BuildingSpace_RefBuildingFullServiceKitchenType] FOREIGN KEY ([RefBuildingFullServiceKitchenTypeId]) REFERENCES [dbo].[RefBuildingFullServiceKitchenType] ([RefBuildingFullServiceKitchenTypeId]),
    CONSTRAINT [FK_BuildingSpace_RefBuildingIndoorAthleticOrPhysEdSpaceType] FOREIGN KEY ([RefBuildingIndoorAthleticOrPhysEdSpaceTypeId]) REFERENCES [dbo].[RefBuildingIndoorAthleticOrPhysEdSpaceType] ([RefBuildingIndoorAthleticOrPhysEdSpaceTypeId]),
    CONSTRAINT [FK_BuildingSpace_RefBuildingLibMediaCenterSpecialtySpaceType] FOREIGN KEY ([RefBuildingLibMediaCenterSpecialtySpaceTypeId]) REFERENCES [dbo].[RefBuildingLibMediaCenterSpecialtySpaceType] ([RefBuildingLibMediaCenterSpecialtySpaceTypeId]),
    CONSTRAINT [FK_BuildingSpace_RefBuildingOperationsOrMaintSpaceType] FOREIGN KEY ([RefBuildingOperationsOrMaintSpaceTypeId]) REFERENCES [dbo].[RefBuildingOperationsOrMaintSpaceType] ([RefBuildingOperationsOrMaintSpaceTypeId]),
    CONSTRAINT [FK_BuildingSpace_RefBuildingOutdoorAthleticOrPhysEdSpaceType] FOREIGN KEY ([RefBuildingOutdoorAthleticOrPhysEdSpaceTypeId]) REFERENCES [dbo].[RefBuildingOutdoorAthleticOrPhysEdSpaceType] ([RefBuildingOutdoorAthleticOrPhysEdSpaceTypeId]),
    CONSTRAINT [FK_BuildingSpace_RefBuildingOutdoorOrNonathleticSpaceType] FOREIGN KEY ([RefBuildingOutdoorOrNonathleticSpaceTypeId]) REFERENCES [dbo].[RefBuildingOutdoorOrNonathleticSpaceType] ([RefBuildingOutdoorOrNonathleticSpaceTypeId]),
    CONSTRAINT [FK_BuildingSpace_RefBuildingPerformingArtsSpecialtySpaceType] FOREIGN KEY ([RefBuildingPerformingArtsSpecialtySpaceTypeId]) REFERENCES [dbo].[RefBuildingPerformingArtsSpecialtySpaceType] ([RefBuildingPerformingArtsSpecialtySpaceTypeId]),
    CONSTRAINT [FK_BuildingSpace_RefBuildingScienceSpecialtySpaceType] FOREIGN KEY ([RefBuildingScienceSpecialtySpaceTypeId]) REFERENCES [dbo].[RefBuildingScienceSpecialtySpaceType] ([RefBuildingScienceSpecialtySpaceTypeId]),
    CONSTRAINT [FK_BuildingSpace_RefBuildingSpaceDesignType] FOREIGN KEY ([RefBuildingSpaceDesignTypeId]) REFERENCES [dbo].[RefBuildingSpaceDesignType] ([RefBuildingSpaceDesignTypeId]),
    CONSTRAINT [FK_BuildingSpace_RefBuildingSpecEdSpecialtySpaceType] FOREIGN KEY ([RefBuildingSpecEdSpecialtySpaceTypeId]) REFERENCES [dbo].[RefBuildingSpecEdSpecialtySpaceType] ([RefBuildingSpecEdSpecialtySpaceTypeId]),
    CONSTRAINT [FK_BuildingSpace_RefBuildingStudentSupportSpaceType] FOREIGN KEY ([RefBuildingStudentSupportSpaceTypeId]) REFERENCES [dbo].[RefBuildingStudentSupportSpaceType] ([RefBuildingStudentSupportSpaceTypeId]),
    CONSTRAINT [FK_BuildingSpace_RefSpaceUseType] FOREIGN KEY ([RefSpaceUseTypeId]) REFERENCES [dbo].[RefSpaceUseType] ([RefSpaceUseTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information describing and defining the uses of space within a building.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A description of the space, as determined by its physical layout and built-in systems and equipment.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'SpaceDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Facility Space Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'SpaceDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001207', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'SpaceDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20174', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'SpaceDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The primary use of a space, as determined by its physical layout and built-in systems and equipment, regardless of its original design.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefSpaceUseTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Facility Space Use Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefSpaceUseTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001208', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefSpaceUseTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20175', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefSpaceUseTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The space designed primarily for conducting administrative and business functions.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingAdministrativeSpaceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Administrative Space Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingAdministrativeSpaceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001813', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingAdministrativeSpaceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20794', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingAdministrativeSpaceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The space designed to support the teaching and learning of 2 dimensional or 3 dimensional visual arts.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingArtSpecialtySpaceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Art Specialty Space Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingArtSpecialtySpaceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001814', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingArtSpecialtySpaceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20795', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingArtSpecialtySpaceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An area designed primarily for theater productions, assemblies, and other large gatherings.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingAssemblySpaceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Assembly Space Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingAssemblySpaceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001836', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingAssemblySpaceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20817', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingAssemblySpaceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A classroom designed for instruction of a particular age group, but not a specific subject.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingBasicClassroomDesignTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Basic Classroom Design Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingBasicClassroomDesignTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001815', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingBasicClassroomDesignTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20796', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingBasicClassroomDesignTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The classroom, laboratory, or shop specially located, designed, furnished, and equipped to support instruction of technical and technology related curriculum, usually tied to particular industry, for example, bio-tech, construction, or agriculture.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingCareerTechEducationSpaceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Career-Technical Education Space Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingCareerTechEducationSpaceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001817', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingCareerTechEducationSpaceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20798', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingCareerTechEducationSpaceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A space designed to enable people to move within the building.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingCirculationSpaceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Circulation Space Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingCirculationSpaceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001818', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingCirculationSpaceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20799', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingCirculationSpaceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The space located, designed, furnished and equipped to support meal programs.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingFoodServiceSpaceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Food Service Space Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingFoodServiceSpaceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001821', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingFoodServiceSpaceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20802', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingFoodServiceSpaceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of kitchen housed in the facility as defined by whether it prepares food to be served onsite and/or at additional locations.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingFullServiceKitchenTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Full Service Kitchen Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingFullServiceKitchenTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001843', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingFullServiceKitchenTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20824', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingFullServiceKitchenTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The indoor space designed, located, furnished, and equipped for instruction and support of a physical education curriculum and athletic program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingIndoorAthleticOrPhysEdSpaceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Indoor Athletic or Physical Education Space Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingIndoorAthleticOrPhysEdSpaceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001822', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingIndoorAthleticOrPhysEdSpaceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20803', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingIndoorAthleticOrPhysEdSpaceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The primary and auxiliary space designed to provide and support student and staff access to books, periodicals, software, videos, and the Internet.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingLibMediaCenterSpecialtySpaceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Library or Media Center Specialty Space Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingLibMediaCenterSpecialtySpaceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001823', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingLibMediaCenterSpecialtySpaceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20804', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingLibMediaCenterSpecialtySpaceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The area designed primarily for conducting activities concerned with maintaining the grounds, buildings, and equipment.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingOperationsOrMaintSpaceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Operations or Maintenance Space Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingOperationsOrMaintSpaceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001824', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingOperationsOrMaintSpaceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20805', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingOperationsOrMaintSpaceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The outdoor space designed, located, furnished, and equipped for instruction and support of a physical education curriculum and athletic program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingOutdoorAthleticOrPhysEdSpaceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Outdoor Athletic or Physical Education Space Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingOutdoorAthleticOrPhysEdSpaceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001825', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingOutdoorAthleticOrPhysEdSpaceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20806', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingOutdoorAthleticOrPhysEdSpaceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The outdoor space located, designed, furnished, and equipped primarily for recreation, play and outdoor environmental education.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingOutdoorOrNonathleticSpaceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Outdoor or Non-athletic Space Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingOutdoorOrNonathleticSpaceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001826', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingOutdoorOrNonathleticSpaceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20807', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingOutdoorOrNonathleticSpaceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The space designed, located, furnished, and equipped for instruction and support of music and drama curricula and productions.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingPerformingArtsSpecialtySpaceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Performing Arts Specialty Space Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingPerformingArtsSpecialtySpaceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001827', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingPerformingArtsSpecialtySpaceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20808', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingPerformingArtsSpecialtySpaceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The space designed, located, furnished, and equipped for instruction and experimentation in science.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingScienceSpecialtySpaceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Science Specialty Space Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingScienceSpecialtySpaceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001829', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingScienceSpecialtySpaceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20810', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingScienceSpecialtySpaceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The primary design or purpose of a space, as determined by its physical layout and built-in systems and equipment, regardless of its current use.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingSpaceDesignTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Space Design Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingSpaceDesignTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001831', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingSpaceDesignTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20812', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingSpaceDesignTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The space designed, located, furnished, and equipped to support instruction of children with special physical, emotional, and/or educational needs.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingSpecEdSpecialtySpaceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Special Education Specialty Space Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingSpecEdSpecialtySpaceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001832', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingSpecEdSpecialtySpaceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20813', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingSpecEdSpecialtySpaceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The space designed to provide student support services such as administrative, technical (e.g., guidance and health), and logistical support to facilitate and enhance instruction.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingStudentSupportSpaceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Building Student Support Space Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingStudentSupportSpaceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001833', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingStudentSupportSpaceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20814', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RefBuildingStudentSupportSpaceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BuildingSpace', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

