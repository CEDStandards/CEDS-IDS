CREATE TABLE [dbo].[ELStaffAssignment] (
    [ELStaffAssignmentId]                         INT            IDENTITY (1, 1) NOT NULL,
    [OrganizationPersonRoleId]                    INT            NOT NULL,
    [ItinerantProvider]                           BIT            NOT NULL,
    [RecordStartDateTime]                         DATETIME       NULL,
    [RecordEndDateTime]                           DATETIME       NULL,
    [RecordStatusId]                              INT            NULL,
    [DataCollectionId]                            INT            NULL,
    [RefClassroomPositionTypeId]                  INT            NULL,
    [ItinerantTeacher]                            BIT            NULL,
    [RefK12StaffClassificationId]                 INT            NULL,
    [RefProfessionalEducationJobClassificationId] INT            NULL,
    [RefSpecialEducationAgeGroupTaughtId]         INT            NULL,
    [SpecialEducationParaprofessional]            BIT            NULL,
    [SpecialEducationRelatedServicesPersonnel]    BIT            NULL,
    [RefSpecialEducationStaffCategoryId]          INT            NULL,
    [SpecialEducationTeacher]                     BIT            NULL,
    [FullTimeEquivalency]                         DECIMAL (5, 4) NULL,
    [ContributionPercentage]                      DECIMAL (5, 2) NULL,
    [RefTeachingAssignmentRoleId]                 INT            NULL,
    [RefTitleIProgramStaffCategoryId]             INT            NULL,
    CONSTRAINT [PK_ELStaffAssignment] PRIMARY KEY CLUSTERED ([ELStaffAssignmentId] ASC),
    CONSTRAINT [FK_ELStaffAssignment_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_ELStaffAssignment_OrgPersonRole] FOREIGN KEY ([OrganizationPersonRoleId]) REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]),
    CONSTRAINT [FK_ELStaffAssignment_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_ELStaffAssignment_RefClassroomPositionType] FOREIGN KEY ([RefClassroomPositionTypeId]) REFERENCES [dbo].[RefClassroomPositionType] ([RefClassroomPositionTypeId]),
    CONSTRAINT [FK_ELStaffAssignment_RefK12StaffClassification] FOREIGN KEY ([RefK12StaffClassificationId]) REFERENCES [dbo].[RefK12StaffClassification] ([RefK12StaffClassificationId]),
    CONSTRAINT [FK_ELStaffAssignment_RefProfessionalEducationJobClassification] FOREIGN KEY ([RefProfessionalEducationJobClassificationId]) REFERENCES [dbo].[RefProfessionalEducationJobClassification] ([RefProfessionalEducationJobClassificationId]),
    CONSTRAINT [FK_ELStaffAssignment_RefSpecialEducationAgeGroupTaught] FOREIGN KEY ([RefSpecialEducationAgeGroupTaughtId]) REFERENCES [dbo].[RefSpecialEducationAgeGroupTaught] ([RefSpecialEducationAgeGroupTaughtId]),
    CONSTRAINT [FK_ELStaffAssignment_RefSpecialEducationStaffCategory] FOREIGN KEY ([RefSpecialEducationStaffCategoryId]) REFERENCES [dbo].[RefSpecialEducationStaffCategory] ([RefSpecialEducationStaffCategoryId]),
    CONSTRAINT [FK_ELStaffAssignment_RefTeachingAssignmentRole] FOREIGN KEY ([RefTeachingAssignmentRoleId]) REFERENCES [dbo].[RefTeachingAssignmentRole] ([RefTeachingAssignmentRoleId]),
    CONSTRAINT [FK_ELStaffAssignment_RefTitleIProgramStaffCategory] FOREIGN KEY ([RefTitleIProgramStaffCategoryId]) REFERENCES [dbo].[RefTitleIProgramStaffCategory] ([RefTitleIProgramStaffCategoryId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information about a role to which an early learning staff member has been assigned.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key from OrganizationPersonRole', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'OrganizationPersonRoleId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether a person provides services at more than one site.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'ItinerantProvider';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Itinerant Provider', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'ItinerantProvider';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001384', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'ItinerantProvider';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20353', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'ItinerantProvider';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'ItinerantProvider';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of position the staff member holds in the specific course section.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'RefClassroomPositionTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Classroom Position Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'RefClassroomPositionTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000622', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'RefClassroomPositionTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=21615', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'RefClassroomPositionTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'RefClassroomPositionTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether a teacher provides instruction in more than one instructional site.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'ItinerantTeacher';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Itinerant Teacher', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'ItinerantTeacher';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000528', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'ItinerantTeacher';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=21519', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'ItinerantTeacher';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'ItinerantTeacher';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The titles of employment, official status, or rank of education staff.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'RefK12StaffClassificationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'K12 Staff Classification', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'RefK12StaffClassificationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000087', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'RefK12StaffClassificationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=21087', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'RefK12StaffClassificationId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'RefK12StaffClassificationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A general job classification that describes staff that performs duties requiring a high degree of knowledge and skills generally acquired through at least a baccalaureate degree (or its equivalent obtained through special study and/or experience) including skills in the field of education, educational psychology, educational social work, or an education therapy field.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'RefProfessionalEducationJobClassificationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Professional Educational Job Classification', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'RefProfessionalEducationJobClassificationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000220', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'RefProfessionalEducationJobClassificationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=21220', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'RefProfessionalEducationJobClassificationId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'RefProfessionalEducationJobClassificationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The age range of special education students taught.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'RefSpecialEducationAgeGroupTaughtId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Special Education Age Group Taught', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'RefSpecialEducationAgeGroupTaughtId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000564', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'RefSpecialEducationAgeGroupTaughtId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=21556', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'RefSpecialEducationAgeGroupTaughtId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'RefSpecialEducationAgeGroupTaughtId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether a paraprofessional is employed or contracted to work with children with disabilities who are ages 3 through 21.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'SpecialEducationParaprofessional';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Special Education Paraprofessional', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'SpecialEducationParaprofessional';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000261', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'SpecialEducationParaprofessional';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=21261', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'SpecialEducationParaprofessional';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'SpecialEducationParaprofessional';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether a related services person is employed or contracted to work with children with disabilities who are ages 3 through 21.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'SpecialEducationRelatedServicesPersonnel';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Special Education Related Services Personnel', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'SpecialEducationRelatedServicesPersonnel';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000262', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'SpecialEducationRelatedServicesPersonnel';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=21262', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'SpecialEducationRelatedServicesPersonnel';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'SpecialEducationRelatedServicesPersonnel';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Titles of personnel employed and contracted to provide special education and related services for children with disabilities.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'RefSpecialEducationStaffCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Special Education Support Services Category', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'RefSpecialEducationStaffCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000558', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'RefSpecialEducationStaffCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=21549', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'RefSpecialEducationStaffCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'RefSpecialEducationStaffCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether a teacher is employed or contracted to work with children with disabilities who are ages 3 through 21.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'SpecialEducationTeacher';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Special Education Teacher', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'SpecialEducationTeacher';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000264', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'SpecialEducationTeacher';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=21264', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'SpecialEducationTeacher';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'SpecialEducationTeacher';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The ratio between the hours of work expected in a position and the hours of work normally expected in a full-time position in the same setting.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'FullTimeEquivalency';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Staff Full Time Equivalency', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'FullTimeEquivalency';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000118', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'FullTimeEquivalency';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=21118', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'FullTimeEquivalency';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'FullTimeEquivalency';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A percentage used to weight the educator''s assigned responsibility for student learning in a Class Section, particularly when more than one educator is assigned to the class section.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'ContributionPercentage';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Teaching Assignment Contribution Percentage', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'ContributionPercentage';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000649', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'ContributionPercentage';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=21651', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'ContributionPercentage';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'ContributionPercentage';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The role that the Staff Member has been assigned for a Class Section.  (A teacher may have the lead responsibility for one section and serve a supporting role for another section of the same course.)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'RefTeachingAssignmentRoleId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Teaching Assignment Role', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'RefTeachingAssignmentRoleId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000648', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'RefTeachingAssignmentRoleId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=21650', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'RefTeachingAssignmentRoleId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'RefTeachingAssignmentRoleId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Titles of employment, official status, or rank for staff working in a Title I program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'RefTitleIProgramStaffCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Title I Program Staff Category', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'RefTitleIProgramStaffCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000283', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'RefTitleIProgramStaffCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=21283', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'RefTitleIProgramStaffCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELStaffAssignment', @level2type = N'COLUMN', @level2name = N'RefTitleIProgramStaffCategoryId';

