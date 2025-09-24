CREATE TABLE [dbo].[K12StaffAssignment] (
    [K12StaffAssignmentId]                            INT            IDENTITY (1, 1) NOT NULL,
    [OrganizationPersonRoleId]                        INT            NOT NULL,
    [PrimaryAssignment]                               BIT            NULL,
    [TeacherOfRecord]                                 BIT            NULL,
    [FullTimeEquivalency]                             DECIMAL (5, 4) NULL,
    [ContributionPercentage]                          DECIMAL (5, 2) NULL,
    [ItinerantTeacher]                                BIT            NULL,
    [HighlyQualifiedTeacherIndicator]                 BIT            NULL,
    [SpecialEducationTeacher]                         BIT            NULL,
    [SpecialEducationRelatedServicesPersonnel]        BIT            NULL,
    [SpecialEducationParaprofessional]                BIT            NULL,
    [RefK12StaffClassificationId]                     INT            NULL,
    [RefProfessionalEducationJobClassificationId]     INT            NULL,
    [RefTeachingAssignmentRoleId]                     INT            NULL,
    [RefClassroomPositionTypeId]                      INT            NULL,
    [RefSpecialEducationStaffCategoryId]              INT            NULL,
    [RefSpecialEducationAgeGroupTaughtId]             INT            NULL,
    [RefMepStaffCategoryId]                           INT            NULL,
    [RefTitleIProgramStaffCategoryId]                 INT            NULL,
    [RefEDFactsTeacherInexperiencedStatusId]          INT            NULL,
    [RefEmergencyOrProvisionalCredentialStatusId]     INT            NULL,
    [RefOutOfFieldStatusId]                           INT            NULL,
    [RecordStartDateTime]                             DATETIME       NULL,
    [RecordEndDateTime]                               DATETIME       NULL,
    [RecordStatusId]                                  INT            NULL,
    [DataCollectionId]                                INT            NULL,
    [RefEdFactsCertificationStatusId]                 INT            NULL,
    [RefSpecialEducationTeacherQualificationStatusId] INT            NULL,
    CONSTRAINT [PK_K12StaffAssignmentId] PRIMARY KEY CLUSTERED ([K12StaffAssignmentId] ASC),
    CONSTRAINT [FK_K12StaffAssignment_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_K12StaffAssignment_OrganizationPerson] FOREIGN KEY ([OrganizationPersonRoleId]) REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_K12StaffAssignment_OrganizationPersonRole] FOREIGN KEY ([OrganizationPersonRoleId]) REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]),
    CONSTRAINT [FK_K12StaffAssignment_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_K12StaffAssignment_RefClassroomPositionType] FOREIGN KEY ([RefClassroomPositionTypeId]) REFERENCES [dbo].[RefClassroomPositionType] ([RefClassroomPositionTypeId]),
    CONSTRAINT [FK_K12StaffAssignment_RefEdFactsCertificationStatus] FOREIGN KEY ([RefEdFactsCertificationStatusId]) REFERENCES [dbo].[RefEdFactsCertificationStatus] ([RefEdFactsCertificationStatusId]),
    CONSTRAINT [FK_K12StaffAssignment_RefEDFactsTeacherInexperiencedStatus] FOREIGN KEY ([RefEDFactsTeacherInexperiencedStatusId]) REFERENCES [dbo].[RefEDFactsTeacherInexperiencedStatus] ([RefEDFactsTeacherInexperiencedStatusId]),
    CONSTRAINT [FK_K12StaffAssignment_RefEducationStaffClassification] FOREIGN KEY ([RefK12StaffClassificationId]) REFERENCES [dbo].[RefK12StaffClassification] ([RefK12StaffClassificationId]),
    CONSTRAINT [FK_K12StaffAssignment_RefEmergencyOrProvisionalCredentialStatus] FOREIGN KEY ([RefEmergencyOrProvisionalCredentialStatusId]) REFERENCES [dbo].[RefEmergencyOrProvisionalCredentialStatus] ([RefEmergencyOrProvisionalCredentialStatusId]),
    CONSTRAINT [FK_K12StaffAssignment_RefMepStaffCategory] FOREIGN KEY ([RefMepStaffCategoryId]) REFERENCES [dbo].[RefMepStaffCategory] ([RefMepStaffCategoryId]),
    CONSTRAINT [FK_K12StaffAssignment_RefOutOfFieldStatus] FOREIGN KEY ([RefOutOfFieldStatusId]) REFERENCES [dbo].[RefOutOfFieldStatus] ([RefOutOfFieldStatusId]),
    CONSTRAINT [FK_K12StaffAssignment_RefProfessionalEducationJobClassification] FOREIGN KEY ([RefProfessionalEducationJobClassificationId]) REFERENCES [dbo].[RefProfessionalEducationJobClassification] ([RefProfessionalEducationJobClassificationId]),
    CONSTRAINT [FK_K12StaffAssignment_RefSpecialEducationAgeGroupTaught] FOREIGN KEY ([RefSpecialEducationAgeGroupTaughtId]) REFERENCES [dbo].[RefSpecialEducationAgeGroupTaught] ([RefSpecialEducationAgeGroupTaughtId]),
    CONSTRAINT [FK_K12StaffAssignment_RefSpecialEducationStaffCategory] FOREIGN KEY ([RefSpecialEducationStaffCategoryId]) REFERENCES [dbo].[RefSpecialEducationStaffCategory] ([RefSpecialEducationStaffCategoryId]),
    CONSTRAINT [FK_K12StaffAssignment_RefSpecialEducationTeacherQualificationStatus] FOREIGN KEY ([RefSpecialEducationTeacherQualificationStatusId]) REFERENCES [dbo].[RefSpecialEducationTeacherQualificationStatus] ([RefSpecialEducationTeacherQualificationStatusId]),
    CONSTRAINT [FK_K12StaffAssignment_RefTeachingAssignmentRole] FOREIGN KEY ([RefTeachingAssignmentRoleId]) REFERENCES [dbo].[RefTeachingAssignmentRole] ([RefTeachingAssignmentRoleId]),
    CONSTRAINT [FK_K12StaffAssignment_RefTitleIProgramStaffCategory] FOREIGN KEY ([RefTitleIProgramStaffCategoryId]) REFERENCES [dbo].[RefTitleIProgramStaffCategory] ([RefTitleIProgramStaffCategoryId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Describes a person''s assignment to a K12 organization.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Inherited surrogate key from OrganizationPersonRole.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'OrganizationPersonRoleId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether the assignment is this the staff member''s primary assignment.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'PrimaryAssignment';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Primary Assignment Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'PrimaryAssignment';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000525', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'PrimaryAssignment';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=15516', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'PrimaryAssignment';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Staff member who has a Teacher of Record responsibility for a Class Section based upon the state''s definition of Teacher of Record.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'TeacherOfRecord';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Teacher of Record', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'TeacherOfRecord';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000647', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'TeacherOfRecord';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=15649', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'TeacherOfRecord';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The ratio between the hours of work expected in a position and the hours of work normally expected in a full-time position in the same setting.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'FullTimeEquivalency';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Staff Full Time Equivalency', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'FullTimeEquivalency';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000118', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'FullTimeEquivalency';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=15118', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'FullTimeEquivalency';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A percentage used to weight the educator''s assigned responsibility for student learning in a Class Section, particularly when more than one educator is assigned to the class section.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'ContributionPercentage';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Teaching Assignment Contribution Percentage', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'ContributionPercentage';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000649', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'ContributionPercentage';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=15651', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'ContributionPercentage';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether a teacher provides instruction in more than one instructional site.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'ItinerantTeacher';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Itinerant Teacher', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'ItinerantTeacher';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000528', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'ItinerantTeacher';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=15519', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'ItinerantTeacher';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication that the teacher has been classified as highly qualified based on assignment.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'HighlyQualifiedTeacherIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Highly Qualified Teacher Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'HighlyQualifiedTeacherIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000142', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'HighlyQualifiedTeacherIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=15142', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'HighlyQualifiedTeacherIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether a teacher is employed or contracted to work with children with disabilities who are ages 3 through 21.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'SpecialEducationTeacher';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Special Education Teacher', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'SpecialEducationTeacher';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000264', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'SpecialEducationTeacher';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=15264', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'SpecialEducationTeacher';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether a related services person is employed or contracted to work with children with disabilities who are ages 3 through 21.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'SpecialEducationRelatedServicesPersonnel';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Special Education Related Services Personnel', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'SpecialEducationRelatedServicesPersonnel';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000262', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'SpecialEducationRelatedServicesPersonnel';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=15262', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'SpecialEducationRelatedServicesPersonnel';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether a paraprofessional is employed or contracted to work with children with disabilities who are ages 3 through 21.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'SpecialEducationParaprofessional';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Special Education Paraprofessional', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'SpecialEducationParaprofessional';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000261', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'SpecialEducationParaprofessional';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=15261', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'SpecialEducationParaprofessional';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The titles of employment, official status, or rank of education staff.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefK12StaffClassificationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'K12 Staff Classification', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefK12StaffClassificationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000087', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefK12StaffClassificationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=15087', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefK12StaffClassificationId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefK12StaffClassificationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A general job classification that describes staff that performs duties requiring a high degree of knowledge and skills generally acquired through at least a baccalaureate degree (or its equivalent obtained through special study and/or experience) including skills in the field of education, educational psychology, educational social work, or an education therapy field.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefProfessionalEducationJobClassificationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Professional Educational Job Classification', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefProfessionalEducationJobClassificationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000220', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefProfessionalEducationJobClassificationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=15220', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefProfessionalEducationJobClassificationId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The role that the Staff Member has been assigned for a Class Section.  (A teacher may have the lead responsibility for one section and serve a supporting role for another section of the same course.)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefTeachingAssignmentRoleId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Teaching Assignment Role', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefTeachingAssignmentRoleId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000648', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefTeachingAssignmentRoleId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=15650', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefTeachingAssignmentRoleId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of position the staff member holds in the specific course section.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefClassroomPositionTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Classroom Position Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefClassroomPositionTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000622', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefClassroomPositionTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=15615', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefClassroomPositionTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Titles of personnel employed and contracted to provide special education and related services for children with disabilities.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefSpecialEducationStaffCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Special Education Support Services Category', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefSpecialEducationStaffCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000558', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefSpecialEducationStaffCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=15549', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefSpecialEducationStaffCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The age range of special education students taught.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefSpecialEducationAgeGroupTaughtId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Special Education Age Group Taught', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefSpecialEducationAgeGroupTaughtId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000564', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefSpecialEducationAgeGroupTaughtId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=15556', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefSpecialEducationAgeGroupTaughtId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Titles of employment, official status, or rank of staff working in the Migrant Education Program (MEP).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefMepStaffCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Migrant Education Program Staff Category', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefMepStaffCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000188', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefMepStaffCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=15188', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefMepStaffCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Titles of employment, official status, or rank for staff working in a Title I program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefTitleIProgramStaffCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Title I Program Staff Category', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefTitleIProgramStaffCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000283', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefTitleIProgramStaffCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=15283', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefTitleIProgramStaffCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether teachers have been identified as inexperienced as defined by the state.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefEDFactsTeacherInexperiencedStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'EDFacts Teacher Inexperienced Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefEDFactsTeacherInexperiencedStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001961', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefEDFactsTeacherInexperiencedStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20929', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefEDFactsTeacherInexperiencedStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefEDFactsTeacherInexperiencedStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether teachers have been identified as teaching a subject or field for which they are not certified or licensed as defined by the state.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefOutOfFieldStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'EDFacts Teacher Out of Field Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefOutOfFieldStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001962', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefOutOfFieldStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20930', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefOutOfFieldStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefOutOfFieldStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=16898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether an educator holds the certification or licensure required by their assignment.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefEdFactsCertificationStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'EDFacts Certification Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefEdFactsCertificationStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001997', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefEdFactsCertificationStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=22978', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefEdFactsCertificationStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefEdFactsCertificationStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether special education teachers are fully certified in the State..', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefSpecialEducationTeacherQualificationStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Special Education Teacher Qualification Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefSpecialEducationTeacherQualificationStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001996', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefSpecialEducationTeacherQualificationStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=22993', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefSpecialEducationTeacherQualificationStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefSpecialEducationTeacherQualificationStatusId';

