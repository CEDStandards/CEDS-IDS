
/*    Common Education Data Standards (CEDS)
      Version 4
      Normalized Data Schema (NDS)
      
	  Update script
	  
      This script updates a NDS version 3.01 model database to version 4.  
      
      WARNING!!!!
      This script is intended for use on a model database and should not 
      be used on a database that contains data.
      
      The script was generated from a model database 
      hosted on a Microsoft SQL Server 2008 R2 platform.  
      
      Questions on this script can be sent to ceds@ed.gov
      
      More information on the data model is available at the CEDS website:  
      http://ceds.ed.gov
      
*/




/*-- 
	 The following changes are for elements that existed in CEDS V3 but were updated or 
	 modified in some manner in version 4.  Includes column name changes, changes in 
	 definitions, and data type/size changes.     
--*/

PRINT N'Global ID 000013 - Course Aligned With Standards'
GO

EXEC sp_RENAME 'K12Course.[AlignedWithStateStandards]' , 'CourseAlignedWithStandards', 'COLUMN'
GO
EXEC sp_RENAME 'CteCourse.[AlignedWithStateStandards]' , 'CourseAlignedWithStandards', 'COLUMN'
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'An indication whether a course is aligned with the state''s standards. [CEDS Element: Course Aligned with Standards, ID:000013]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'K12Course',
@level2type = N'Column', @level2name = 'CourseAlignedWithStandards';
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'An indication whether a course is aligned with the state''s standards. [CEDS Element: Course Aligned with Standards, ID:000013]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'CteCourse',
@level2type = N'Column', @level2name = 'CourseAlignedWithStandards';
GO

PRINT N'Global ID 000055 - Course Identifier'
GO
ALTER TABLE OrganizationIdentifier ALTER COLUMN Identifier nvarchar(30)
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'A unique number or alphanumeric code assigned to an organization by a school, school system, a state, or other agency or entity. [CEDS Elements: Organization Identifier (000826), Class Section Identifier (000978), Course Identifier (000055), Adult Education Service Provider Identifier (001076), Program Identifier (000625), Local Education Agency Identifier (001068), School Identifier (001069), Classroom Identifier (000364), State Agency Identifier (001490), Responsible Organization Identifier (001466), Course Section Number (001315)]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'OrganizationIdentifier',
@level2type = N'Column', @level2name = 'Identifier';
GO

PRINT N'Global ID 000060 - Course GPA Applicability'
GO
EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'An indicator of whether or not this course being described is included in the computation of the student’s Grade Point Average (GPA). [CEDS Element: Course Grade Point Average Applicability, ID:000060]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'RefCourseGpaApplicability'
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'An indicator of whether or not this course being described is included in the computation of the student’s Grade Point Average (GPA). [CEDS Element: Course Grade Point Average Applicability, ID:000060] (Foreign key - RefCourseGpaApplicability)',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'RefCourseGpaApplicability',
@level2type = N'Column', @level2name = 'Type'
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'An indicator of whether or not this course being described is included in the computation of the student’s Grade Point Average (GPA). [CEDS Element: Course Grade Point Average Applicability, ID:000060] (Foreign key - RefCourseGpaApplicability)',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'K12Course',
@level2type = N'Column', @level2name = 'RefCourseGpaApplicabilityId'
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'An indicator of whether or not this course being described is included in the computation of the student’s Grade Point Average (GPA). [CEDS Element: Course Grade Point Average Applicability, ID:000060] (Foreign key - RefCourseGpaApplicability)',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'CteCourse',
@level2type = N'Column', @level2name = 'RefCourseGpaApplicabilityId'
GO

PRINT N'Replace GradePointAverageApplicability with FK to Ref table'
GO
if exists (Select top 1 organizationpersonroleid from dbo.K12StudentClassSection)
BEGIN
	SELECT * INTO dbo.K12StudentClassSectionBackup FROM dbo.K12StudentClassSection
END

ALTER TABLE dbo.K12StudentClassSection DROP COLUMN GradePointAverageAplicability;
ALTER TABLE dbo.K12StudentClassSection ADD RefCourseGpaApplicabilityId INT NULL;
ALTER TABLE dbo.K12StudentClassSection  WITH CHECK ADD  
	CONSTRAINT [FK_K12StudentClassSection _RefCourseGpaApplicability] FOREIGN KEY([RefCourseGpaApplicabilityId])
	REFERENCES [dbo].[RefCourseGpaApplicability] ([RefCourseGpaApplicabilityId])
ALTER TABLE dbo.K12StudentClassSection CHECK CONSTRAINT [FK_K12StudentClassSection _RefCourseGpaApplicability]
GO

EXEC sp_addextendedproperty
@name = N'MS_Description', @value = 'An indicator of whether or not this course being described is included in the computation of the student’s Grade Point Average (GPA). [CEDS Element: Course Grade Point Average Applicability, ID:000060] (Foreign key - RefCourseGpaApplicability)',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'K12StudentClassSection',
@level2type = N'Column', @level2name = 'RefCourseGpaApplicabilityId'
GO

PRINT N'Global ID 000076 - Attendance Status'
GO
-- Rename table
EXEC sp_RENAME 'RefDailyAttendanceStatus' , 'RefAttendanceStatus'
GO

-- Updated table description
EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'The status of a person''s attendance associated with an Attendance Event Type, Calendar Event Date, in an organization-person-role context. [CEDS Element: Attendance Status, ID:000076]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'RefAttendanceStatus'
GO

-- Rename PK column
EXEC sp_RENAME 'RefAttendanceStatus.RefDailyAttendanceStatusId' , 'RefAttendanceStatusId', 'COLUMN'
GO

-- Update PK column description
EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'Surrogate Key',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'RefAttendanceStatus',
@level2type = N'Column', @level2name = 'RefAttendanceStatusId'
GO

-- Update Type column description
EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'The status of a person''s attendance associated with an Attendance Event Type, Calendar Event Date, in an organization-person-role context. [CEDS Element: Attendance Status, ID:000076]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'RefAttendanceStatus',
@level2type = N'Column', @level2name = 'Type'
GO

-- Rename primary key 
EXEC sp_RENAME 'RefAttendanceStatus.PK_RefDailyAttendanceStatus', 
                'PK_RefAttendanceStatus';
GO
                
-- Rename FK
EXEC sp_RENAME 'FK_RefDailyAttendanceStatus_Organization', 
                'FK_RefAttendanceStatus_Organization';
GO

-- Rename column ID in other tables where used
EXEC sp_RENAME 'RoleAttendanceEvent.RefDailyAttendanceStatusId' , 'RefAttendanceStatusId', 'COLUMN'
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'The status of a person''s attendance associated with an Attendance Event Type, Calendar Event Date, in an organization-person-role context. [CEDS Element: Attendance Status, ID:000076]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'RoleAttendanceEvent',
@level2type = N'Column', @level2name = 'RefAttendanceStatusId'
GO

EXEC sp_RENAME 'FK_RoleAttendanceEvent_RefDailyAttendanceStatus', 
                'FK_RoleAttendanceEvent_RefAttendanceStatus';
GO

PRINT N'Global ID 000200 - Number of Credits Earned'
GO
EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'The number of credits an individual earns by the successful completion of a course. [CEDS Element: Number of Credits Earned, ID:000200]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'ProfessionalDevelopmentActivity',
@level2type = N'Column', @level2name = 'NumberOfCreditsEarned'
GO

EXEC sp_RENAME 'PsStudentClassSection.NumberOfCredisEarned' , 'NumberOfCreditsEarned', 'COLUMN'
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'The number of credits an individual earns by the successful completion of a course. [CEDS Element: Number of Credits Earned, ID:000200]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'PsStudentClassSection',
@level2type = N'Column', @level2name = 'NumberOfCreditsEarned'
GO

ALTER TABLE K12StudentClassSection ADD NumberOfCreditsEarned DECIMAL(9,2) NULL;
GO

EXEC sp_addextendedproperty
@name = N'MS_Description', @value = 'The number of credits an individual earns by the successful completion of a course. [CEDS Element: Number of Credits Earned, ID:000200]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'K12StudentClassSection',
@level2type = N'Column', @level2name = 'NumberOfCreditsEarned'
GO

PRINT N'Global ID 000225 - Program Type'
GO
EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'The system outlining instructional or non-instructional activities and procedures designed to accomplish a predetermined educational objective or set of objectives or to provide support services to a person and/or the community. [CEDS Elements: Program Type (000225)]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'RefProgramType'
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'The system outlining instructional or non-instructional activities and procedures designed to accomplish a predetermined educational objective or set of objectives or to provide support services to a person and/or the community. [CEDS Elements: Program Type (000225)]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'RefProgramType',
@level2type = N'Column', @level2name = 'Type'
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'The system outlining instructional or non-instructional activities and procedures designed to accomplish a predetermined educational objective or set of objectives or to provide support services to a person and/or the community. [CEDS Elements: Program Type (000225)]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'OrganizationProgramType',
@level2type = N'Column', @level2name = 'RefProgramTypeId'
GO

PRINT N'Global ID 000250 - SCED Sequence of Course'
GO
EXEC sp_RENAME 'Course.SequenceOfCourse' , 'SCEDSequenceOfCourse', 'COLUMN'
GO

PRINT N'Global ID 000260 - Special Education Exit Reason'
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'The reason children who were in special education at the start of the reporting period were not in special education at the end of the reporting period. [CEDS Element: Special Education Exit Reason, ID:000260]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'RefSpecialEducationExitReason'
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'The reason children who were in special education at the start of the reporting period were not in special education at the end of the reporting period. [CEDS Element: Special Education Exit Reason, ID:000260]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'RefSpecialEducationExitReason',
@level2type = N'Column', @level2name = 'Type'
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'The reason children who were in special education at the start of the reporting period were not in special education at the end of the reporting period. [CEDS Element: Special Education Exit Reason, ID:000260] (Foreign key - RefSpecialEducationExitReason)',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'ProgramParticipationSpecialEducation',
@level2type = N'Column', @level2name = 'RefSpecialEducationExitReasonId'
GO

PRINT N'Global ID 000305 - Proof of Residency Type'
GO
-- Rename table
EXEC sp_RENAME 'RefProofOfResidency' , 'RefProofOfResidencyType'
GO

-- Updated table description
EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'An accepted form of proof of residency in the district/county/other locality. [CEDS Element: Proof of Residency Type, ID:000305]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'RefProofOfResidencyType'
GO

-- Rename PK column
EXEC sp_RENAME 'RefProofOfResidencyType.RefProofOfResidencyId' , 'RefProofOfResidencyTypeId', 'COLUMN'
GO

-- Update PK column description
EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'An accepted form of proof of residency in the district/county/other locality. [CEDS Element: Proof of Residency Type, ID:000305]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'RefProofOfResidencyType',
@level2type = N'Column', @level2name = 'RefProofOfResidencyTypeId'
GO

-- Update Type column description
EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'An accepted form of proof of residency in the district/county/other locality. [CEDS Element: Proof of Residency Type, ID:000305]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'RefProofOfResidencyType',
@level2type = N'Column', @level2name = 'Type'
GO

-- Rename primary key 
EXEC sp_RENAME 'RefProofOfResidencyType.PK_RefProofOfResidency', 
                'PK_RefProofOfResidencyType';
GO
                
-- Rename FK
EXEC sp_RENAME 'FK_RefProofOfResidency_Organization', 'FK_RefProofOfResidencyType_Organization';
GO

-- Rename column ID in other tables where used
EXEC sp_RENAME 'Person.RefProofOfResidencyId' , 'RefProofOfResidencyTypeId', 'COLUMN'
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'An accepted form of proof of residency in the district/county/other locality. [CEDS Element: Proof of Residency Type, ID:000305]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'Person',
@level2type = N'Column', @level2name = 'RefProofOfResidencyTypeId'
GO

EXEC sp_RENAME 'FK_Person_RefProofOfResidency', 
                'FK_Person_RefProofOfResidencyType';
GO

EXEC sp_RENAME 'PersonFamily.RefProofOfResidencyId' , 'RefProofOfResidencyTypeId', 'COLUMN'
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'An accepted form of proof of residency in the district/county/other locality. [CEDS Element: Proof of Residency Type, ID:000305]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'PersonFamily',
@level2type = N'Column', @level2name = 'RefProofOfResidencyTypeId'
GO

EXEC sp_RENAME 'FK_PersonFamily_RefProofResidency', 
                'FK_PersonFamily_RefProofOfResidencyType';
GO

PRINT N'Global ID 000314'
GO

CREATE TABLE [dbo].[RefELChildDevelopmentalScreeningStatus](
	[RefELChildDevelopmentalScreeningStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Description] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
 CONSTRAINT [PK_RefELChildDevelopmentalScreeningStatus] PRIMARY KEY CLUSTERED 
(
	[RefELChildDevelopmentalScreeningStatusId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key' , @level0type=N'SCHEMA',
@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefELChildDevelopmentalScreeningStatus', 
@level2type=N'COLUMN',@level2name=N'RefELChildDevelopmentalScreeningStatusId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The result of a brief standardized screening tool aiding in the identification of children at risk of a developmental delay/disorder. [CEDS Element: Early Learning Child Development Screening Status, ID:000601]' , 
@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',
@level1name=N'RefELChildDevelopmentalScreeningStatus', 
@level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , 
@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefELChildDevelopmentalScreeningStatus', 
@level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', 
@value=N'Surrogate key from Organization identifying the publisher of the reference value.' , 
@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefELChildDevelopmentalScreeningStatus', 
@level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The result of a brief standardized screening tool aiding in the identification of children at risk of a developmental delay/disorder. [CEDS Element: Early Learning Child Development Screening Status, ID:000601]' , 
@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',
@level1name=N'RefELChildDevelopmentalScreeningStatus'
GO

PRINT N'Global ID 000315'
GO
CREATE TABLE [dbo].[RefDevelopmentalEvaluationFinding](
	[RefDevelopmentalEvaluationFindingId] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Description] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
 CONSTRAINT [PK_RefDevelopmentalEvaluationFinding] PRIMARY KEY CLUSTERED 
(
	[RefDevelopmentalEvaluationFindingId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key' , @level0type=N'SCHEMA',
@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefDevelopmentalEvaluationFinding', 
@level2type=N'COLUMN',@level2name=N'RefDevelopmentalEvaluationFindingId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Child developmental delay/disability determined by procedure used by appropriate qualified personnel. [CEDS Element: Developmental Evaluation Finding, ID:000315]' , 
@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',
@level1name=N'RefDevelopmentalEvaluationFinding', 
@level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'RefDevelopmentalEvaluationFinding', 
@level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', 
@value=N'Surrogate key from Organization identifying the publisher of the reference value.' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'RefDevelopmentalEvaluationFinding', 
@level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Child developmental delay/disability determined by procedure used by appropriate qualified personnel. [CEDS Element: Developmental Evaluation Finding, ID:000315]' , 
@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',
@level1name=N'RefDevelopmentalEvaluationFinding'
GO

PRINT N'Global ID 000336 - Dental Insurance Coverage Type'
GO
-- Rename table
EXEC sp_RENAME 'RefDentalInsuranceCoverage' , 'RefDentalInsuranceCoverageType'
GO

-- Updated table description
EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'The source of insurance covering an person''s dental care. [CEDS Element: Dental Insurance Coverage, ID:000336]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'RefDentalInsuranceCoverageType'
GO

-- Rename PK column
EXEC sp_RENAME 'RefDentalInsuranceCoverageType.RefDentalInsuranceCoverageId' , 'RefDentalInsuranceCoverageTypeId', 'COLUMN'
GO

-- Update PK column description
EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'Surrogate Key',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'RefDentalInsuranceCoverageType',
@level2type = N'Column', @level2name = 'RefDentalInsuranceCoverageTypeId'
GO

-- Update Type column description
EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'The source of insurance covering an person''s dental care. [CEDS Element: Dental Insurance Coverage, ID:000336]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'RefDentalInsuranceCoverageType',
@level2type = N'Column', @level2name = 'Type'
GO

-- Rename primary key 
EXEC sp_RENAME 'RefDentalInsuranceCoverageType.PK_RefDentalInsuranceCoverage', 
                'PK_RefDentalInsuranceCoverageType';
GO
                
-- Rename FK
EXEC sp_RENAME 'FK_RefDentalInsuranceType_Organization', 'FK_RefDentalInsuranceCoverageType_Organization';
GO

-- Rename column ID in other tables where used
EXEC sp_RENAME 'PersonHealth.RefDentalInsuranceCoverageId' , 'RefDentalInsuranceCoverageTypeId', 'COLUMN'
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'The source of insurance covering an person''s dental care. [CEDS Element: Dental Insurance Coverage, ID:000336]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'PersonHealth',
@level2type = N'Column', @level2name = 'RefDentalInsuranceCoverageTypeId'
GO

EXEC sp_RENAME 'FK_PersonHealth_RefDentalInsuranceCoverage', 
                'FK_PersonHealth_RefDentalInsuraceCoverageType';
GO

PRINT N'Global ID 000421 - Assessment Rubric Title'
GO
EXEC sp_RENAME 'AssessmentItemRubric.Name' , 'Title', 'COLUMN'
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'The title of the rubric. [CEDS Element: Assessment Rubric Title, ID:000421]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'AssessmentItemRubric',
@level2type = N'Column', @level2name = 'Title'
GO

PRINT N'Global ID 000422 - Assessment Rubric Identifier'
GO
EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'An identifier assigned to a rubric. [CEDS Element: Assessment Rubric Identifier, ID:000422]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'AssessmentItemRubric',
@level2type = N'Column', @level2name = 'Identifier'
GO

PRINT N'Global ID 000423 - Assessment Rubric URL Reference'
GO
EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'The URL location where the rubric may be found. [CEDS Element: Assessment Rubric URL Reference, ID:000423]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'AssessmentItemRubric',
@level2type = N'Column', @level2name = 'UrlReference'
GO

-- Rename table AssessmentItemRubric to Rubric
EXEC sp_RENAME 'AssessmentItemRubric', 'Rubric'
GO
EXEC sp_RENAME 'Rubric.AssessmentItemRubricId', 'RubricId', 'COLUMN'
GO
-- Rename primary key 
EXEC sp_RENAME 'Rubric.PK_AssessmentItemRubric', 'PK_Rubric';
GO

EXEC sp_RENAME 'AssessmentItem.AssessmentItemRubricId', 'RubricId', 'COLUMN'
GO
EXEC sp_RENAME 'FK_AssessmentItem_AssessmentItemRubric', 'FK_AssessmentItem_Rubric';
GO

PRINT N'Rubric Description: ID 001479'
GO
ALTER TABLE Rubric ADD [Description] nvarchar(max) NULL
GO

EXEC sp_addextendedproperty
@name = N'MS_Description', @value = 'Text describing the intended use of the rubric. [CEDS Element: Rubric Description, ID: 001479]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'Rubric',
@level2type = N'Column', @level2name = 'Description'
GO

PRINT N'Global ID 000482 - Terminated Title III Programs Due to Failure'
GO
EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'An indication of whether a Title III program or activity was terminated due to failure to meet goals. [CEDS Element: Terminated Title III Programs Due to Failure, ID:000482]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'K12LeaFederalreporting',
@level2type = N'Column', @level2name = 'TerminatedTitleIIIProgramFailure'
GO

PRINT N'Global ID 000517 - Course Description'
GO
EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'A description of the course content and/or goals. Reference may be made to state or national content standards. [CEDS Element: Course Description, ID:000517]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'Course',
@level2type = N'Column', @level2name = 'Description'
GO

PRINT N'Global ID 000596 - Additional Credit Type'
GO
EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'The type of credits or units of value available for the completion of a course in addition to Carnegie Units. [CEDS Element: Additional Credit Type, ID:000596]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'RefAdditionalCreditType'
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'The type of credits or units of value available for the completion of a course in addition to Carnegie Units. [CEDS Element: Additional Credit Type, ID:000596]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'RefAdditionalCreditType',
@level2type = N'Column', @level2name = 'Type'
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'The type of credits or units of value available for the completion of a course in addition to Carnegie Units. [CEDS Element: Additional Credit Type, ID:000596]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'K12Course',
@level2type = N'Column', @level2name = 'RefAdditionalCreditTypeId'
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'The type of credits or units of value available for the completion of a course in addition to Carnegie Units. [CEDS Element: Additional Credit Type, ID:000596]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'ClassSection',
@level2type = N'Column', @level2name = 'RefAdditionalCreditTypeId'
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'The type of credits or units of value available for the completion of a course in addition to Carnegie Units. [CEDS Element: Additional Credit Type, ID:000596]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'CteCourse',
@level2type = N'Column', @level2name = 'RefAdditionalCreditTypeId'
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'The type of credits or units of value available for the completion of a course in addition to Carnegie Units. [CEDS Element: Additional Credit Type, ID:000596]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'K12StudentClassSection',
@level2type = N'Column', @level2name = 'RefAdditionalCreditTypeId'
GO

PRINT N'Global ID 000716 - Program Sponsor Type'
GO
EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'A type of organization providing funds for a particular educational or service program or activity or for an individual''s participation in the program or activity. [CEDS Element: Program Sponsor Type, ID:000716]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'RefProgramSponsorType'
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'A type of organization providing funds for a particular educational or service program or activity or for an individual''s participation in the program or activity. [CEDS Element: Program Sponsor Type, ID:000716]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'RefProgramSponsorType',
@level2type = N'Column', @level2name = 'Type'
GO

EXEC sp_RENAME 'StaffCredential.RefProgramSponsorType', 'RefProgramSponsorTypeId', 'COLUMN'
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'A type of organization providing funds for a particular educational or service program or activity or for an individual''s participation in the program or activity. [CEDS Element: Program Sponsor Type, ID:000716]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'StaffCredential',
@level2type = N'Column', @level2name = 'RefProgramSponsorTypeId'
GO

PRINT N'Global ID 000762 - Sorority Participation Status'
GO
EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'Student is in membership in a chiefly social organization of women students at a college or university, usually designated by Greek letters. [CEDS Element: Sorority Participation Status, ID:000762]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'PsStudentEnrollment',
@level2type = N'Column', @level2name = 'SororityParticipationStatus'
GO

PRINT N'Global ID 000782 - Adult Education Special Program Type'
GO
-- Rename table
EXEC sp_RENAME 'RefAeProgramEnvironment' , 'RefAeSpecialProgramType'
GO

-- Updated table description
EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'The type, by location or delivery mode , of adult education instruction program in which an adult participates. [CEDS Element: Adult Education Special Program Environment, ID:000782]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'RefAeSpecialProgramType'
GO

-- Rename PK column
EXEC sp_RENAME 'RefAeSpecialProgramType.RefAeProgramEnvironmentId' , 'RefAeSpecialProgramTypeId', 'COLUMN'
GO

-- Update Type column description
EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'The type, by location or delivery mode , of adult education instruction program in which an adult participates. [CEDS Element: Adult Education Special Program Environment, ID:000782]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'RefAeSpecialProgramType',
@level2type = N'Column', @level2name = 'Type'
GO

-- Rename primary key 
EXEC sp_RENAME 'RefAeSpecialProgramType.PK_RefAeProgramEnvironment', 
                'PK_RefAeSpecialProgramType';
GO
                
-- Rename FK
EXEC sp_RENAME 'FK_RefAEProgramEnvironment_Organization', 'FK_RefAeSpecialProgramType_Organization';
GO

-- Rename column ID in other tables where used
EXEC sp_RENAME 'ProgramParticipationAE.RefAeProgramEnvironmentId' , 'RefAeSpecialProgramTypeId', 'COLUMN'
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'The type, by location or delivery mode , of adult education instruction program in which an adult participates. [CEDS Element: Adult Education Special Program Environment, ID:000782]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'ProgramParticipationAE',
@level2type = N'Column', @level2name = 'RefAeSpecialProgramTypeId'
GO

EXEC sp_RENAME 'FK_ProgramParticipationAE_RefAeProgramEnvironment', 
                'FK_ProgramParticipation_RefAeSpecialProgramType';
GO

PRINT N'Global ID 000810 - Professional Development Activity Title'
GO
EXEC sp_RENAME 'ProfessionalDevelopmentActivity.TrainingTitle' , 'ActivityTitle', 'COLUMN'
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'The title of an activity designed for the purpose of developing someone professionally. [CEDS Element: Professional Development Activity Title, ID:000810]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'ProfessionalDevelopmentActivity',
@level2type = N'Column', @level2name = 'ActivityTitle'
GO

PRINT N'Global ID 000829 - Early Childhood Program Type'
GO
-- Rename table
EXEC sp_RENAME 'RefEarlyChildhoodProgramTypeOffered' , 'RefEarlyChildhoodProgramType'
GO

-- Updated table description
EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'The system outlining activities and procedures based on a set of required services and standards. [CEDS Element: Early Childhood Program Type, ID:000829]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'RefEarlyChildhoodProgramType'
GO

-- Rename PK column
EXEC sp_RENAME 'RefEarlyChildhoodProgramType.RefEarlyChildhoodProgramTypeOfferedId' , 'RefEarlyChildhoodProgramTypeId', 'COLUMN'
GO

-- Update Type column description
EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'The system outlining activities and procedures based on a set of required services and standards. [CEDS Element: Early Childhood Program Type, ID:000829]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'RefEarlyChildhoodProgramType',
@level2type = N'Column', @level2name = 'Type'
GO

-- Rename primary key 
EXEC sp_RENAME 'RefEarlyChildhoodProgramType.PK_RefEarlyLearningProgramTypeOffered', 
                'PK_RefEarlyLearningProgramType';
GO
                
-- Rename FK
EXEC sp_RENAME 'FK_RefEarlyChildhoodProgramTypeOffered_Organization', 'FK_RefEarlyChildhoodProgramType_Organization';
GO

-- Rename column ID in other tables where used
EXEC sp_RENAME 'EarlyChildhoodProgramTypeOffered.RefEarlyChildhoodProgramTypeOfferedId' , 'RefEarlyChildhoodProgramTypeId', 'COLUMN'
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'The system outlining activities and procedures based on a set of required services and standards. [CEDS Element: Early Childhood Program Type, ID:000829]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'EarlyChildhoodProgramTypeOffered',
@level2type = N'Column', @level2name = 'RefEarlyChildhoodProgramTypeId'
GO

PRINT N'Global ID 000900 - Achievement Award Issuer Origin URL'
GO
EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'The Uniform Resource Locator (URL) from which the award was issued. [CEDS Element: Achievement Award Issuer Origin URL, ID:000900]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'Achievement',
@level2type = N'Column', @level2name = 'AwardIssuerOriginURL'
GO

PRINT N'Global ID 000922 - Learning Resource Based On URL'
GO
EXEC sp_RENAME 'LearningResource.IsBasedOnUrl' , 'BasedOnUrl', 'COLUMN'
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'A resource that was used in the creation of this resource. This term can be repeated for multiple sources. [CEDS Element: Learning Resource Based On URL, ID:000922]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'LearningResource',
@level2type = N'Column', @level2name = 'BasedOnUrl'
GO

PRINT N'Global ID 000924 - Learning Resource Time Required'
GO
EXEC sp_RENAME 'LearningResource.MinutesRequired' , 'TimeRequired', 'COLUMN'
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'The approximate or typical time it takes to work with or through this learning resource for the typical intended target audience. [CEDS Element: Learning Resource Time Required, ID:000924]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'LearningResource',
@level2type = N'Column', @level2name = 'TimeRequired'
GO

PRINT N'Global ID 000987 - Employed While Enrolled'
GO
EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'An individual who is a paid employee or works in his or her own business, profession, or farm, as reported through the State Unemployment Insurance Wage Report, FEDES, or WRIS, and at the same time is enrolled in secondary, postsecondary, or adult education or workforce programs. [CEDS Element: Employed While Enrolled, ID:000987]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'RefEmployedWhileEnrolled'
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'An individual who is a paid employee or works in his or her own business, profession, or farm, as reported through the State Unemployment Insurance Wage Report, FEDES, or WRIS, and at the same time is enrolled in secondary, postsecondary, or adult education or workforce programs. [CEDS Element: Employed While Enrolled, ID:000987]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'RefEmployedWhileEnrolled',
@level2type = N'Column', @level2name = 'Type'
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'An individual who is a paid employee or works in his or her own business, profession, or farm, as reported through the State Unemployment Insurance Wage Report, FEDES, or WRIS, and at the same time is enrolled in secondary, postsecondary, or adult education or workforce programs. [CEDS Element: Employed While Enrolled, ID:000987]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'K12StudentEmployment',
@level2type = N'Column', @level2name = 'RefEmployedWhileEnrolledId'
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'An individual who is a paid employee or works in his or her own business, profession, or farm, as reported through the State Unemployment Insurance Wage Report, FEDES, or WRIS, and at the same time is enrolled in secondary, postsecondary, or adult education or workforce programs. [CEDS Element: Employed While Enrolled, ID:000987]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'PsStudentEmployment',
@level2type = N'Column', @level2name = 'RefEmployedWhileEnrolledId'
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'An individual who is a paid employee or works in his or her own business, profession, or farm, as reported through the State Unemployment Insurance Wage Report, FEDES, or WRIS, and at the same time is enrolled in secondary, postsecondary, or adult education or workforce programs. [CEDS Element: Employed While Enrolled, ID:000987]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'AeStudentEmployment',
@level2type = N'Column', @level2name = 'RefEmployedWhileEnrolledId'
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'An individual who is a paid employee or works in his or her own business, profession, or farm, as reported through the State Unemployment Insurance Wage Report, FEDES, or WRIS, and at the same time is enrolled in secondary, postsecondary, or adult education or workforce programs. [CEDS Element: Employed While Enrolled, ID:000987]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'WorkforceEmploymentQuarterlyData',
@level2type = N'Column', @level2name = 'RefEmployedWhileEnrolledId'
GO

PRINT N'Global ID 000988 - EmployedAfterExit'
GO
EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'An individual who is a paid employee or works in his or her own business, profession, or farm, as reported through the State Unemployment Insurance Wage Report, FEDES, or WRIS, after exiting secondary, postsecondary, or adult education or workforce programs. [CEDS Element: Employed After Exit, ID:000988]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'RefEmployedAfterExit'
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'An individual who is a paid employee or works in his or her own business, profession, or farm, as reported through the State Unemployment Insurance Wage Report, FEDES, or WRIS, after exiting secondary, postsecondary, or adult education or workforce programs. [CEDS Element: Employed After Exit, ID:000988]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'RefEmployedAfterExit',
@level2type = N'Column', @level2name = 'Type'
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'An individual who is a paid employee or works in his or her own business, profession, or farm, as reported through the State Unemployment Insurance Wage Report, FEDES, or WRIS, after exiting secondary, postsecondary, or adult education or workforce programs. [CEDS Element: Employed After Exit, ID:000988]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'K12StudentEmployment',
@level2type = N'Column', @level2name = 'RefEmployedAfterExitId'
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'An individual who is a paid employee or works in his or her own business, profession, or farm, as reported through the State Unemployment Insurance Wage Report, FEDES, or WRIS, after exiting secondary, postsecondary, or adult education or workforce programs. [CEDS Element: Employed After Exit, ID:000988]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'PsStudentEmployment',
@level2type = N'Column', @level2name = 'RefEmployedAfterExitId'
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'An individual who is a paid employee or works in his or her own business, profession, or farm, as reported through the State Unemployment Insurance Wage Report, FEDES, or WRIS, after exiting secondary, postsecondary, or adult education or workforce programs. [CEDS Element: Employed After Exit, ID:000988]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'AeStudentEmployment',
@level2type = N'Column', @level2name = 'RefEmployedAfterExitId'
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'An individual who is a paid employee or works in his or her own business, profession, or farm, as reported through the State Unemployment Insurance Wage Report, FEDES, or WRIS, after exiting secondary, postsecondary, or adult education or workforce programs. [CEDS Element: Employed After Exit, ID:000988]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'WorkforceEmploymentQuarterlyData',
@level2type = N'Column', @level2name = 'RefEmployedAfterExitId'
GO

PRINT N'Global ID 000989 - Quarterly Earnings'
GO
EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'The quarterly amount paid to individuals found employed during the reference period. [CEDS Element: Quarterly Earnings, ID:000989]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'QuarterlyEmploymentRecord',
@level2type = N'Column', @level2name = 'Earnings'
GO

PRINT N'Global ID 000990 - Employment Location'
GO
CREATE TABLE [dbo].[RefEmploymentLocation](
	[RefEmploymentLocationId] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Description] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
 CONSTRAINT [PK_RefEmploymentLocation] PRIMARY KEY CLUSTERED 
(
	[RefEmploymentLocationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key' , @level0type=N'SCHEMA',
@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefEmploymentLocation', 
@level2type=N'COLUMN',@level2name=N'RefEmploymentLocationId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The state or other location in which an individual is found employed. [CEDS Element: Employment Location, ID:000990]' , 
@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',
@level1name=N'RefEmploymentLocation', 
@level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , 
@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',
@level1name=N'RefEmploymentLocation', 
@level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', 
@value=N'Surrogate key from Organization identifying the publisher of the reference value.' , 
@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',
@level1name=N'RefEmploymentLocation', 
@level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The state or other location in which an individual is found employed. [CEDS Element: Employment Location, ID:000990]' , 
@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',
@level1name=N'RefEmploymentLocation'
GO

if exists (Select top 1 QuarterlyEmploymentRecordId from dbo.QuarterlyEmploymentRecord)
BEGIN
	SELECT * INTO dbo.QuarterlyEmploymentRecordBackup FROM dbo.QuarterlyEmploymentRecord
END

ALTER TABLE dbo.QuarterlyEmploymentRecord DROP CONSTRAINT FK_QuarterlyEmploymentRecord_RefState
GO

ALTER TABLE dbo.QuarterlyEmploymentRecord DROP COLUMN RefEmploymentLocationStateId
GO

ALTER TABLE dbo.QuarterlyEmploymentRecord ADD RefEmploymentLocationId INT NULL;
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The state or other location in which an individual is found employed. [CEDS Element: Employment Location, ID:000990]' , 
@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',
@level1name=N'QuarterlyEmploymentRecord', 
@level2type=N'COLUMN',@level2name=N'RefEmploymentLocationId'
GO

ALTER TABLE [dbo].[QuarterlyEmploymentRecord]  WITH CHECK ADD  
	CONSTRAINT [FK_QuarterlyEmploymentRecord_RefEmploymentLocation] FOREIGN KEY([RefEmploymentLocationId])
	REFERENCES [dbo].[RefEmploymentLocation] ([RefEmploymentLocationId])
GO

ALTER TABLE [dbo].[QuarterlyEmploymentRecord] CHECK CONSTRAINT [FK_QuarterlyEmploymentRecord_RefEmploymentLocation]
GO

PRINT N'Global ID 000991 - Person Employed in Multiple Jobs Count'
GO
EXEC sp_RENAME 'WorkforceEmploymentQuarterlyData.PersonEmployedInMultipleJobs', 'EmployedInMultipleJobsCount', 'COLUMN'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The number of jobs held by a person. [CEDS Element: Person Employed in Multiple Jobs Count, ID:000991]' , 
@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',
@level1name=N'WorkforceEmploymentQuarterlyData', 
@level2type=N'COLUMN',@level2name=N'EmployedInMultipleJobsCount'
GO

PRINT N'Global ID 000993 - Employment Record Reference Period Start Date'
GO
EXEC sp_RENAME 'QuarterlyEmploymentRecord.ReferenceQuarterStartDate', 'ReferencePeriodStartDate', 'COLUMN'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The year, month, and day of the first day of the employment record reference period. [CEDS Element: Employment Record Reference Period Start Date, ID:000992]' , 
@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',
@level1name=N'QuarterlyEmploymentRecord', 
@level2type=N'COLUMN',@level2name=N'ReferencePeriodStartDate'
GO

PRINT N'Global ID 000995 - Employment Record Reference Period End Date'
GO
EXEC sp_RENAME 'QuarterlyEmploymentRecord.ReferenceQuarterEndDate', 'ReferencePeriodEndDate', 'COLUMN'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The year, month, and day of the last day of the employment record reference period. [CEDS Element: Employment Record Reference Period Start Date, ID:000992]' , 
@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',
@level1name=N'QuarterlyEmploymentRecord', 
@level2type=N'COLUMN',@level2name=N'ReferencePeriodEndDate'
GO


PRINT N'Global ID 000994 - Employment Record Administrative Data Source'
GO
EXEC sp_RENAME 'RefQerAdministrativeDataSource', 'RefERAdministrativeDataSource'
GO

EXEC sp_RENAME 'RefERAdministrativeDataSource.RefQerAdministrativeDataSourceId', 'RefERAdministrativeDataSourceId', 'COLUMN'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'Administrative data source of information used to collect employment and earnings-related data. [CEDS Element: Employment Record Administrative Data Source, ID:000994]' , 
@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',
@level1name=N'RefERAdministrativeDataSource'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'Administrative data source of information used to collect employment and earnings-related data. [CEDS Element: Employment Record Administrative Data Source, ID:000994]' , 
@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',
@level1name=N'RefERAdministrativeDataSource',
@level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sp_RENAME 'RefERAdministrativeDataSource.PK_RefQerAdministrativeDataSource', 'PK_RefERAdministrativeDataSource'
GO

EXEC sp_RENAME 'FK_RefQerAdministrativeDataSource_Organization', 'FK_RefERAdministrativeDataSource_Organization'
GO

EXEC sp_RENAME 'QuarterlyEmploymentRecord.RefQerAdministrativeDataSourceId', 'RefERAdministrativeDataSourceId', 'COLUMN'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'Administrative data source of information used to collect employment and earnings-related data. [CEDS Element: Employment Record Administrative Data Source, ID:000994]' , 
@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',
@level1name=N'QuarterlyEmploymentRecord',
@level2type=N'COLUMN',@level2name=N'RefERAdministrativeDataSourceId'
GO

EXEC sp_RENAME 'FK_QuarterlyEmploymentRecord_RefQerAdministrativeDataSource', 
  'FK_QuarterlyEmploymentRecord_RefERAdministrativeDataSource'
GO

PRINT N'Global ID 000997 - Workforce Program Participation'
GO
EXEC sp_RENAME 'RefWfProgramParticipationAfterExit', 'RefWfProgramParticipation'
GO

EXEC sp_RENAME 'RefWfProgramParticipation.RefWfProgramParticipationAfterExitId', 'RefWfProgramParticipationId', 'COLUMN'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The type of workforce and employment development program that an individual is participating in.  [CEDS Element: Workforce Program Participation, ID:000997]' , 
@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',
@level1name=N'RefWfProgramParticipation'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The type of workforce and employment development program that an individual is participating in.  [CEDS Element: Workforce Program Participation, ID:000997]' , 
@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',
@level1name=N'RefWfProgramParticipation',
@level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sp_RENAME 'RefWfProgramParticipation.PK_RefWfProgramParticipationAfterExit', 'PK_RefWfProgramParticipation'
GO

EXEC sp_RENAME 'FK_RefWFParticipationAfterExit_Organization', 'FK_RefWFProgramParticipation_Organization'
GO

EXEC sp_RENAME 'WorkforceProgramParticipation.RefWfProgramParticipationAfterExitId', 'RefWfProgramParticipationId', 'COLUMN'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The type of workforce and employment development program that an individual is participating in.  [CEDS Element: Workforce Program Participation, ID:000997]' , 
@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',
@level1name=N'WorkforceProgramParticipation',
@level2type=N'COLUMN',@level2name=N'RefWfProgramParticipationId'
GO

EXEC sp_RENAME 'FK_WorkforceProgramPartic_RefWfProgramParticipationAfterExit', 
  'FK_WorkforceProgramPartic_RefWfProgramParticipation'
GO

PRINT N'Global ID 001057 - Assessment Registration Grade Level To Be Assessed'
GO
EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The grade or developmental level of a student when registering for an assessment, when taking the assessment, or for which an assessment is design.  [CEDS Elements: Grade Level When Assessed (000126), Assessment Registration Grade Level To Be Assessed (001057)]' , 
@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',
@level1name=N'RefAssessmentGradeLevel'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The grade or developmental level of a student when registering for an assessment, when taking the assessment, or for which an assessment is design.  [CEDS Elements: Grade Level When Assessed (000126), Assessment Registration Grade Level To Be Assessed (001057)]' , 
@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',
@level1name=N'RefAssessmentGradeLevel',
@level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The grade or developmental level of a student when registering for an assessment, when taking the assessment, or for which an assessment is design.  [CEDS Elements: Grade Level When Assessed (000126), Assessment Registration Grade Level To Be Assessed (001057)]' , 
@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',
@level1name=N'AssessmentRegistration',
@level2type=N'COLUMN',@level2name=N'RefGradeLevelToBeAssessedId'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The grade or developmental level of a student when registering for an assessment, when taking the assessment, or for which an assessment is design.  [CEDS Elements: Grade Level When Assessed (000126), Assessment Registration Grade Level To Be Assessed (001057)]' , 
@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',
@level1name=N'AssessmentRegistration',
@level2type=N'COLUMN',@level2name=N'RefGradeLevelWhenAssessedId'
GO

PRINT N'Global ID 001061 -  Professional Development Activity Start Date'
GO
EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The date on which an individual begins a course, an education program or a development activity. [CEDS Element:  Professional Development Activity Start Date, ID:001061]' , 
@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',
@level1name=N'ProfessionalDevelopmentActivity',
@level2type=N'COLUMN',@level2name=N'ActivityStartDate'
GO

PRINT N'Global ID 001062 -  Professional Development Activity Completion Date'
GO
EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The date on which an individual completed a course, an education program or a  development activity. [CEDS Element:  Professional Development Activity Completion Date, ID:001062]' , 
@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',
@level1name=N'ProfessionalDevelopmentActivity',
@level2type=N'COLUMN',@level2name=N'ActivityCompletionDate'
GO

PRINT N'Global ID 001156, 001078   **** RefOrganizationType *****' 
GO
EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The type of educational organizations or entities. [Multiple CEDS Elements:  Organization Type (001156), Adult Education Provider Type (001078)]' , 
@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',
@level1name=N'RefOrganizationType'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The type of educational organizations or entities. [Multiple CEDS Elements:  Organization Type (001156), Adult Education Provider Type (001078)]' , 
@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',
@level1name=N'RefOrganizationType',
@level2type=N'COLUMN',@level2name=N'Type'
GO

PRINT N'Global ID 001187 - Assessment Form Intended Adminsistration End Date'
GO
EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The ending date of the time period in which the form is intended to be administered. [CEDS Element: Assessment Form Intended Administration End Date, ID:001187]' , 
@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',
@level1name=N'AssessmentForm',
@level2type=N'COLUMN',@level2name=N'IntendedAdministrationEndDate'
GO

PRINT N'Global ID 001216 - Learning Resource Version'
GO
EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'Defines the version of the learning resource as defined by the publisher. [CEDS Element: Learning Resource Version, ID:001216]' , 
@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',
@level1name=N'LearningResource',
@level2type=N'COLUMN',@level2name=N'Version'
GO

PRINT N'Global ID 001244 - Program Gifted Eligibility Criteria'
GO
EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'State/local code used to determine a student''s eligibility for Gifted/Talented program. [CEDS Element: Program Gifted Eligibility Criteria, ID:001244]' , 
@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',
@level1name=N'RefProgramGiftedEligibility'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'State/local code used to determine a student''s eligibility for Gifted/Talented program. [CEDS Element: Program Gifted Eligibility Criteria, ID:001244]' , 
@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',
@level1name=N'RefProgramGiftedEligibility',
@level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'State/local code used to determine a student''s eligibility for Gifted/Talented program. [CEDS Element: Program Gifted Eligibility Criteria, ID:001244]' , 
@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',
@level1name=N'K12ProgramOrService',
@level2type=N'COLUMN',@level2name=N'RefProgramGiftedEligibilityId'
GO

PRINT N'Global ID 001275 - Calendar Event Date'
GO
EXEC sp_RENAME 'OrganizationCalendarEvent.Date', 'EventDate', 'Column'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The date of the scheduled or unscheduled event. [CEDS Element: Calendar Event Date, ID:001275]' , 
@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',
@level1name=N'OrganizationCalendarEvent',
@level2type=N'COLUMN',@level2name=N'EventDate'
GO


PRINT N'*** Create Ref Tables for added CEDS V4 elements with option sets ***'
GO

/*-- 
	 This section creates Ref tables for new CEDS V4 elements that utilize an 
	 option set.  Does not create Ref tables for elements that use a Yes/No option set, 
	 a True/False option set, or option sets that are already in the NDS and contain 
	 commonly used options (e.g. RefLanguage).       
--*/


CREATE TABLE [dbo].[RefAccommodationsNeededType](
   [RefAccommodationsNeededTypeId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefAccommodationsNeededType] PRIMARY KEY CLUSTERED ([RefAccommodationsNeededTypeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefAccommodationsNeededType]  WITH CHECK ADD CONSTRAINT [FK_RefAccommodationsNeededType_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefAccommodationsNeededType] CHECK CONSTRAINT [FK_RefAccommodationsNeededType_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAccommodationsNeededType', @level2type=N'COLUMN',@level2name=N'RefAccommodationsNeededTypeId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Codes identifying the set of health accommodations. [CEDS Element: Accommodations Needed Type, ID:001277]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAccommodationsNeededType', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAccommodationsNeededType', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAccommodationsNeededType', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Codes identifying the set of health accommodations. [CEDS Element: Accommodations Needed Type, ID:001277]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAccommodationsNeededType'
GO


CREATE TABLE [dbo].[RefAllergySeverity](
   [RefAllergySeverityId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefAllergySeverity] PRIMARY KEY CLUSTERED ([RefAllergySeverityId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefAllergySeverity]  WITH CHECK ADD CONSTRAINT [FK_RefAllergySeverity_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefAllergySeverity] CHECK CONSTRAINT [FK_RefAllergySeverity_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAllergySeverity', @level2type=N'COLUMN',@level2name=N'RefAllergySeverityId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The level of severity of a person''s reaction to an allergen. [CEDS Element: Allergy Severity, ID:001282]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAllergySeverity', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAllergySeverity', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAllergySeverity', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The level of severity of a person''s reaction to an allergen. [CEDS Element: Allergy Severity, ID:001282]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAllergySeverity'
GO


CREATE TABLE [dbo].[RefAllergyType](
   [RefAllergyTypeId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefAllergyType] PRIMARY KEY CLUSTERED ([RefAllergyTypeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefAllergyType]  WITH CHECK ADD CONSTRAINT [FK_RefAllergyType_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefAllergyType] CHECK CONSTRAINT [FK_RefAllergyType_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAllergyType', @level2type=N'COLUMN',@level2name=N'RefAllergyTypeId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Type of allergy condition attributed to a person as defined by the SNOWMED Clinical Terms(r) vocabulary. [CEDS Element: Allergy Type, ID:001283]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAllergyType', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAllergyType', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAllergyType', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Type of allergy condition attributed to a person as defined by the SNOWMED Clinical Terms(r) vocabulary. [CEDS Element: Allergy Type, ID:001283]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAllergyType'
GO


CREATE TABLE [dbo].[RefBlendedLearningModelType](
   [RefBlendedLearningModelTypeId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefBlendedLearningModelType] PRIMARY KEY CLUSTERED ([RefBlendedLearningModelTypeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefBlendedLearningModelType]  WITH CHECK ADD CONSTRAINT [FK_RefBlendedLearningModelType_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefBlendedLearningModelType] CHECK CONSTRAINT [FK_RefBlendedLearningModelType_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefBlendedLearningModelType', @level2type=N'COLUMN',@level2name=N'RefBlendedLearningModelTypeId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A type of formal education program in which a student learns at least in part through online learning, with some element of student control over time, place, path, and/or pace; at least in part in a supervised brick-and-mortar location away from home; and the modalities along each student’s learning path within a course or subject are connected to provide an integrated learning experience. [CEDS Element: Blended Learning Model Type, ID:001287]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefBlendedLearningModelType', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefBlendedLearningModelType', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefBlendedLearningModelType', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A type of formal education program in which a student learns at least in part through online learning, with some element of student control over time, place, path, and/or pace; at least in part in a supervised brick-and-mortar location away from home; and the modalities along each student’s learning path within a course or subject are connected to provide an integrated learning experience. [CEDS Element: Blended Learning Model Type, ID:001287]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefBlendedLearningModelType'
GO


CREATE TABLE [dbo].[RefCareerCluster](
   [RefCareerClusterId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefCareerCluster] PRIMARY KEY CLUSTERED ([RefCareerClusterId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefCareerCluster]  WITH CHECK ADD CONSTRAINT [FK_RefCareerCluster_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefCareerCluster] CHECK CONSTRAINT [FK_RefCareerCluster_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCareerCluster', @level2type=N'COLUMN',@level2name=N'RefCareerClusterId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The career cluster that defines the industry or occupational focus which may be associated with a career pathways program, plan of study, or course. [CEDS Element: Career Cluster, ID:001288]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCareerCluster', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCareerCluster', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCareerCluster', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The career cluster that defines the industry or occupational focus which may be associated with a career pathways program, plan of study, or course. [CEDS Element: Career Cluster, ID:001288]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCareerCluster'
GO


CREATE TABLE [dbo].[RefCareerEducationPlanType](
   [RefCareerEducationPlanTypeId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefCareerEducationPlanType] PRIMARY KEY CLUSTERED ([RefCareerEducationPlanTypeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefCareerEducationPlanType]  WITH CHECK ADD CONSTRAINT [FK_RefCareerEducationPlanType_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefCareerEducationPlanType] CHECK CONSTRAINT [FK_RefCareerEducationPlanType_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCareerEducationPlanType', @level2type=N'COLUMN',@level2name=N'RefCareerEducationPlanTypeId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indicator of whether a student completed an individualized guidance and counseling plan. [CEDS Element: Career Education Plan Type, ID:001290]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCareerEducationPlanType', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCareerEducationPlanType', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCareerEducationPlanType', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indicator of whether a student completed an individualized guidance and counseling plan. [CEDS Element: Career Education Plan Type, ID:001290]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCareerEducationPlanType'
GO


CREATE TABLE [dbo].[RefCharterSchoolApprovalAgencyType](
   [RefCharterSchoolApprovalAgencyTypeId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefCharterSchoolApprovalAgencyType] PRIMARY KEY CLUSTERED ([RefCharterSchoolApprovalAgencyTypeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefCharterSchoolApprovalAgencyType]  WITH CHECK ADD CONSTRAINT [FK_RefCharterSchoolApprovalAgencyType_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefCharterSchoolApprovalAgencyType] CHECK CONSTRAINT [FK_RefCharterSchoolApprovalAgencyType_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCharterSchoolApprovalAgencyType', @level2type=N'COLUMN',@level2name=N'RefCharterSchoolApprovalAgencyTypeId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of agency that approved the establishment or continuation of a charter school. [CEDS Element: Charter School Approval Agency Type, ID:001292]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCharterSchoolApprovalAgencyType', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCharterSchoolApprovalAgencyType', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCharterSchoolApprovalAgencyType', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of agency that approved the establishment or continuation of a charter school. [CEDS Element: Charter School Approval Agency Type, ID:001292]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCharterSchoolApprovalAgencyType'
GO


CREATE TABLE [dbo].[RefCorrectionalEducationFacilityType](
   [RefCorrectionalEducationFacilityTypeId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefCorrectionalEducationFacilityType] PRIMARY KEY CLUSTERED ([RefCorrectionalEducationFacilityTypeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefCorrectionalEducationFacilityType]  WITH CHECK ADD CONSTRAINT [FK_RefCorrectionalEducationFacilityType_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefCorrectionalEducationFacilityType] CHECK CONSTRAINT [FK_RefCorrectionalEducationFacilityType_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCorrectionalEducationFacilityType', @level2type=N'COLUMN',@level2name=N'RefCorrectionalEducationFacilityTypeId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of facility in which an inmate receives correctional education services. [CEDS Element: Correctional Education Facility Type, ID:001296]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCorrectionalEducationFacilityType', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCorrectionalEducationFacilityType', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCorrectionalEducationFacilityType', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of facility in which an inmate receives correctional education services. [CEDS Element: Correctional Education Facility Type, ID:001296]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCorrectionalEducationFacilityType'
GO


CREATE TABLE [dbo].[RefChildOutcomesSummaryRating](
   [RefChildOutcomesSummaryRatingId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefChildOutcomesSummaryRating] PRIMARY KEY CLUSTERED ([RefChildOutcomesSummaryRatingId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefChildOutcomesSummaryRating]  WITH CHECK ADD CONSTRAINT [FK_RefChildOutcomesSummaryRating_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefChildOutcomesSummaryRating] CHECK CONSTRAINT [FK_RefChildOutcomesSummaryRating_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefChildOutcomesSummaryRating', @level2type=N'COLUMN',@level2name=N'RefChildOutcomesSummaryRatingId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Codes used to identify a child''s level of functioning. [CEDS Elements: Child Outcomes Summary Rating A (ID:001507), Child Outcomes Summary Rating B (ID:001508), Child Outcomes Summary Rating C (ID:001509)]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefChildOutcomesSummaryRating', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefChildOutcomesSummaryRating', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefChildOutcomesSummaryRating', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Codes used to identify a child''s level of functioning. [CEDS Elements: Child Outcomes Summary Rating A (ID:001507), Child Outcomes Summary Rating B (ID:001508), Child Outcomes Summary Rating C (ID:001509)]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefChildOutcomesSummaryRating'
GO



CREATE TABLE [dbo].[RefCourseAcademicGradeStatusCode](
   [RefCourseAcademicGradeStatusCodeId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefCourseAcademicGradeStatusCode] PRIMARY KEY CLUSTERED ([RefCourseAcademicGradeStatusCodeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefCourseAcademicGradeStatusCode]  WITH CHECK ADD CONSTRAINT [FK_RefCourseAcademicGradeStatusCode_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefCourseAcademicGradeStatusCode] CHECK CONSTRAINT [FK_RefCourseAcademicGradeStatusCode_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCourseAcademicGradeStatusCode', @level2type=N'COLUMN',@level2name=N'RefCourseAcademicGradeStatusCodeId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Additional information regarding the context of the given grade. [CEDS Element: Course Academic Grade Status Code, ID:001299]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCourseAcademicGradeStatusCode', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCourseAcademicGradeStatusCode', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCourseAcademicGradeStatusCode', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Additional information regarding the context of the given grade. [CEDS Element: Course Academic Grade Status Code, ID:001299]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCourseAcademicGradeStatusCode'
GO


CREATE TABLE [dbo].[RefCourseApplicableEducationLevel](
   [RefCourseApplicableEducationLevelId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefCourseApplicableEducationLevel] PRIMARY KEY CLUSTERED ([RefCourseApplicableEducationLevelId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefCourseApplicableEducationLevel]  WITH CHECK ADD CONSTRAINT [FK_RefCourseApplicableEducationLevel_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefCourseApplicableEducationLevel] CHECK CONSTRAINT [FK_RefCourseApplicableEducationLevel_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCourseApplicableEducationLevel', @level2type=N'COLUMN',@level2name=N'RefCourseApplicableEducationLevelId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The education level, grade level or primary instructional level at which a course is intended. [CEDS Element: Course Applicable Education Level, ID:001301]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCourseApplicableEducationLevel', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCourseApplicableEducationLevel', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCourseApplicableEducationLevel', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The education level, grade level or primary instructional level at which a course is intended. [CEDS Element: Course Applicable Education Level, ID:001301]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCourseApplicableEducationLevel'
GO


CREATE TABLE [dbo].[RefCourseCreditBasisType](
   [RefCourseCreditBasisTypeId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefCourseCreditBasisType] PRIMARY KEY CLUSTERED ([RefCourseCreditBasisTypeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefCourseCreditBasisType]  WITH CHECK ADD CONSTRAINT [FK_RefCourseCreditBasisType_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefCourseCreditBasisType] CHECK CONSTRAINT [FK_RefCourseCreditBasisType_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCourseCreditBasisType', @level2type=N'COLUMN',@level2name=N'RefCourseCreditBasisTypeId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of enrollment associated with the credit hours for the course. [CEDS Element: Course Credit Basis Type, ID:001303]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCourseCreditBasisType', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCourseCreditBasisType', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCourseCreditBasisType', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of enrollment associated with the credit hours for the course. [CEDS Element: Course Credit Basis Type, ID:001303]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCourseCreditBasisType'
GO


CREATE TABLE [dbo].[RefCourseCreditLevelType](
   [RefCourseCreditLevelTypeId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefCourseCreditLevelType] PRIMARY KEY CLUSTERED ([RefCourseCreditLevelTypeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefCourseCreditLevelType]  WITH CHECK ADD CONSTRAINT [FK_RefCourseCreditLevelType_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefCourseCreditLevelType] CHECK CONSTRAINT [FK_RefCourseCreditLevelType_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCourseCreditLevelType', @level2type=N'COLUMN',@level2name=N'RefCourseCreditLevelTypeId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The level of credit associated with the credit hours earned for the course. [CEDS Element: Course Credit Level Type, ID:001304]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCourseCreditLevelType', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCourseCreditLevelType', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCourseCreditLevelType', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The level of credit associated with the credit hours earned for the course. [CEDS Element: Course Credit Level Type, ID:001304]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCourseCreditLevelType'
GO


CREATE TABLE [dbo].[RefCourseHonorsType](
   [RefCourseHonorsTypeId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefCourseHonorsType] PRIMARY KEY CLUSTERED ([RefCourseHonorsTypeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefCourseHonorsType]  WITH CHECK ADD CONSTRAINT [FK_RefCourseHonorsType_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefCourseHonorsType] CHECK CONSTRAINT [FK_RefCourseHonorsType_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCourseHonorsType', @level2type=N'COLUMN',@level2name=N'RefCourseHonorsTypeId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the course is or can be counted as an honors course. [CEDS Element: Course Honors Type, ID:001307]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCourseHonorsType', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCourseHonorsType', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCourseHonorsType', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the course is or can be counted as an honors course. [CEDS Element: Course Honors Type, ID:001307]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCourseHonorsType'
GO


CREATE TABLE [dbo].[RefCourseInstructionMethod](
   [RefCourseInstructionMethodId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefCourseInstructionMethod] PRIMARY KEY CLUSTERED ([RefCourseInstructionMethodId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefCourseInstructionMethod]  WITH CHECK ADD CONSTRAINT [FK_RefCourseInstructionMethod_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefCourseInstructionMethod] CHECK CONSTRAINT [FK_RefCourseInstructionMethod_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCourseInstructionMethod', @level2type=N'COLUMN',@level2name=N'RefCourseInstructionMethodId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary method of instruction used for the course. [CEDS Element: Course Instruction Method, ID:001308]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCourseInstructionMethod', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCourseInstructionMethod', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCourseInstructionMethod', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary method of instruction used for the course. [CEDS Element: Course Instruction Method, ID:001308]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCourseInstructionMethod'
GO


CREATE TABLE [dbo].[RefCourseInstructionSiteType](
   [RefCourseInstructionSiteTypeId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefCourseInstructionSiteType] PRIMARY KEY CLUSTERED ([RefCourseInstructionSiteTypeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefCourseInstructionSiteType]  WITH CHECK ADD CONSTRAINT [FK_RefCourseInstructionSiteType_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefCourseInstructionSiteType] CHECK CONSTRAINT [FK_RefCourseInstructionSiteType_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCourseInstructionSiteType', @level2type=N'COLUMN',@level2name=N'RefCourseInstructionSiteTypeId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of the type of location at which the course is taught. [CEDS Element: Course Instruction Site Type, ID:001310]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCourseInstructionSiteType', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCourseInstructionSiteType', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCourseInstructionSiteType', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of the type of location at which the course is taught. [CEDS Element: Course Instruction Site Type, ID:001310]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCourseInstructionSiteType'
GO


CREATE TABLE [dbo].[RefCourseInteractionMode](
   [RefCourseInteractionModeId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefCourseInteractionMode] PRIMARY KEY CLUSTERED ([RefCourseInteractionModeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefCourseInteractionMode]  WITH CHECK ADD CONSTRAINT [FK_RefCourseInteractionMode_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefCourseInteractionMode] CHECK CONSTRAINT [FK_RefCourseInteractionMode_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCourseInteractionMode', @level2type=N'COLUMN',@level2name=N'RefCourseInteractionModeId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary type of interaction, synchronous or asynchronous, defined for the course. [CEDS Element: Course Interaction Mode, ID:001311]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCourseInteractionMode', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCourseInteractionMode', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCourseInteractionMode', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary type of interaction, synchronous or asynchronous, defined for the course. [CEDS Element: Course Interaction Mode, ID:001311]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCourseInteractionMode'
GO


CREATE TABLE [dbo].[RefCourseLevelType](
   [RefCourseLevelTypeId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefCourseLevelType] PRIMARY KEY CLUSTERED ([RefCourseLevelTypeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefCourseLevelType]  WITH CHECK ADD CONSTRAINT [FK_RefCourseLevelType_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefCourseLevelType] CHECK CONSTRAINT [FK_RefCourseLevelType_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCourseLevelType', @level2type=N'COLUMN',@level2name=N'RefCourseLevelTypeId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The level of work which is reflected in the credits associated with the academic course being described or the level of the typical individual taking the academic course. [CEDS Element: Course Level Type, ID:001312]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCourseLevelType', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCourseLevelType', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCourseLevelType', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The level of work which is reflected in the credits associated with the academic course being described or the level of the typical individual taking the academic course. [CEDS Element: Course Level Type, ID:001312]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCourseLevelType'
GO


CREATE TABLE [dbo].[RefCreditHoursAppliedOtherProgram](
   [RefCreditHoursAppliedOtherProgramId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefCreditHoursAppliedOtherProgram] PRIMARY KEY CLUSTERED ([RefCreditHoursAppliedOtherProgramId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefCreditHoursAppliedOtherProgram]  WITH CHECK ADD CONSTRAINT [FK_RefCreditHoursAppliedOtherProgram_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefCreditHoursAppliedOtherProgram] CHECK CONSTRAINT [FK_RefCreditHoursAppliedOtherProgram_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCreditHoursAppliedOtherProgram', @level2type=N'COLUMN',@level2name=N'RefCreditHoursAppliedOtherProgramId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Codes identifying the set of credit hours taken in other programs or degrees that were applied to the individual''s degree. [CEDS Element: Credit Hours Applied Other Program, ID:001317]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCreditHoursAppliedOtherProgram', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCreditHoursAppliedOtherProgram', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCreditHoursAppliedOtherProgram', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Codes identifying the set of credit hours taken in other programs or degrees that were applied to the individual''s degree. [CEDS Element: Credit Hours Applied Other Program, ID:001317]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCreditHoursAppliedOtherProgram'
GO


CREATE TABLE [dbo].[RefDisabilityConditionStatusCode](
   [RefDisabilityConditionStatusCodeId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefDisabilityConditionStatusCode] PRIMARY KEY CLUSTERED ([RefDisabilityConditionStatusCodeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefDisabilityConditionStatusCode]  WITH CHECK ADD CONSTRAINT [FK_RefDisabilityConditionStatusCode_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefDisabilityConditionStatusCode] CHECK CONSTRAINT [FK_RefDisabilityConditionStatusCode_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefDisabilityConditionStatusCode', @level2type=N'COLUMN',@level2name=N'RefDisabilityConditionStatusCodeId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code indicating the disability condition status. [CEDS Element: Disability Condition Status Type, ID:001319]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefDisabilityConditionStatusCode', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefDisabilityConditionStatusCode', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefDisabilityConditionStatusCode', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code indicating the disability condition status. [CEDS Element: Disability Condition Status Type, ID:001319]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefDisabilityConditionStatusCode'
GO


CREATE TABLE [dbo].[RefDisabilityConditionType](
   [RefDisabilityConditionTypeId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefDisabilityConditionType] PRIMARY KEY CLUSTERED ([RefDisabilityConditionTypeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefDisabilityConditionType]  WITH CHECK ADD CONSTRAINT [FK_RefDisabilityConditionType_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefDisabilityConditionType] CHECK CONSTRAINT [FK_RefDisabilityConditionType_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefDisabilityConditionType', @level2type=N'COLUMN',@level2name=N'RefDisabilityConditionTypeId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Codes identifying the set of disability conditions. [CEDS Element: Disability Condition Type, ID:001320]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefDisabilityConditionType', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefDisabilityConditionType', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefDisabilityConditionType', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Codes identifying the set of disability conditions. [CEDS Element: Disability Condition Type, ID:001320]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefDisabilityConditionType'
GO


CREATE TABLE [dbo].[RefDisabilityDeterminationSourceType](
   [RefDisabilityDeterminationSourceTypeId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefDisabilityDeterminationSourceType] PRIMARY KEY CLUSTERED ([RefDisabilityDeterminationSourceTypeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefDisabilityDeterminationSourceType]  WITH CHECK ADD CONSTRAINT [FK_RefDisabilityDeterminationSourceType_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefDisabilityDeterminationSourceType] CHECK CONSTRAINT [FK_RefDisabilityDeterminationSourceType_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefDisabilityDeterminationSourceType', @level2type=N'COLUMN',@level2name=N'RefDisabilityDeterminationSourceTypeId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Codes identifying the set of disability determination sources. [CEDS Element: Disability Determination Source Type, ID:001321]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefDisabilityDeterminationSourceType', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefDisabilityDeterminationSourceType', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefDisabilityDeterminationSourceType', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Codes identifying the set of disability determination sources. [CEDS Element: Disability Determination Source Type, ID:001321]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefDisabilityDeterminationSourceType'
GO

CREATE TABLE [dbo].[RefDoctoralExamsRequiredCode](
   [RefDoctoralExamsRequiredCodeId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefDoctoralExamsRequiredCode] PRIMARY KEY CLUSTERED ([RefDoctoralExamsRequiredCodeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefDoctoralExamsRequiredCode]  WITH CHECK ADD CONSTRAINT [FK_RefDoctoralExamsRequiredCode_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefDoctoralExamsRequiredCode] CHECK CONSTRAINT [FK_RefDoctoralExamsRequiredCode_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefDoctoralExamsRequiredCode', @level2type=N'COLUMN',@level2name=N'RefDoctoralExamsRequiredCodeId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A qualifier identifying the types of exams required of doctoral level individuals. [CEDS Element: Doctoral Exams Required Code, ID:001327]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefDoctoralExamsRequiredCode', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefDoctoralExamsRequiredCode', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefDoctoralExamsRequiredCode', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A qualifier identifying the types of exams required of doctoral level individuals. [CEDS Element: Doctoral Exams Required Code, ID:001327]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefDoctoralExamsRequiredCode'
GO

CREATE TABLE [dbo].[RefELFederalFundingType](
   [RefELFederalFundingTypeId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefELFederalFundingType] PRIMARY KEY CLUSTERED ([RefELFederalFundingTypeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefELFederalFundingType]  WITH CHECK ADD CONSTRAINT [FK_RefELFederalFundingType_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefELFederalFundingType] CHECK CONSTRAINT [FK_RefELFederalFundingType_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefELFederalFundingType', @level2type=N'COLUMN',@level2name=N'RefELFederalFundingTypeId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Federal source that contributes to the EL program [CEDS Element: Early Learning Federal Funding Type, ID:001328]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefELFederalFundingType', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefELFederalFundingType', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefELFederalFundingType', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Federal source that contributes to the EL program [CEDS Element: Early Learning Federal Funding Type, ID:001328]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefELFederalFundingType'
GO

CREATE TABLE [dbo].[RefELOtherFederalFundingSources](
   [RefELOtherFederalFundingSourcesId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefELOtherFederalFundingSources] PRIMARY KEY CLUSTERED ([RefELOtherFederalFundingSourcesId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefELOtherFederalFundingSources]  WITH CHECK ADD CONSTRAINT [FK_RefELOtherFederalFundingSources_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefELOtherFederalFundingSources] CHECK CONSTRAINT [FK_RefELOtherFederalFundingSources_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefELOtherFederalFundingSources', @level2type=N'COLUMN',@level2name=N'RefELOtherFederalFundingSourcesId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The other contributing funding sources. [CEDS Element: Early Learning Other Federal Funding Sources, ID:001335]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefELOtherFederalFundingSources', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefELOtherFederalFundingSources', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefELOtherFederalFundingSources', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The other contributing funding sources. [CEDS Element: Early Learning Other Federal Funding Sources, ID:001335]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefELOtherFederalFundingSources'
GO

CREATE TABLE [dbo].[RefELOutcomeMeasurementLevel](
   [RefELOutcomeMeasurementLevelId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefELOutcomeMeasurementLevel] PRIMARY KEY CLUSTERED ([RefELOutcomeMeasurementLevelId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefELOutcomeMeasurementLevel]  WITH CHECK ADD CONSTRAINT [FK_RefELOutcomeMeasurementLevel_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefELOutcomeMeasurementLevel] CHECK CONSTRAINT [FK_RefELOutcomeMeasurementLevel_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefELOutcomeMeasurementLevel', @level2type=N'COLUMN',@level2name=N'RefELOutcomeMeasurementLevelId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Use for outcome measures in early learning. [CEDS Element: Early Learning Outcome Measurement Level, ID:001336]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefELOutcomeMeasurementLevel', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefELOutcomeMeasurementLevel', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefELOutcomeMeasurementLevel', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Use for outcome measures in early learning. [CEDS Element: Early Learning Outcome Measurement Level, ID:001336]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefELOutcomeMeasurementLevel'
GO

CREATE TABLE [dbo].[RefOutcomeTimePoint](
   [RefOutcomeTimePointId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefOutcomeTimePoint] PRIMARY KEY CLUSTERED ([RefOutcomeTimePointId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefOutcomeTimePoint]  WITH CHECK ADD CONSTRAINT [FK_RefOutcomeTimePoint_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefOutcomeTimePoint] CHECK CONSTRAINT [FK_RefOutcomeTimePoint_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefOutcomeTimePoint', @level2type=N'COLUMN',@level2name=N'RefOutcomeTimePointId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The point in time for which the result is used for an outcome measure. [CEDS Element: Early Learning Outcome Time Point, ID:001503]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefOutcomeTimePoint', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefOutcomeTimePoint', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefOutcomeTimePoint', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The point in time for which the result is used for an outcome measure. [CEDS Element: Early Learning Outcome Time Point, ID:001503]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefOutcomeTimePoint'
GO

CREATE TABLE [dbo].[RefELProfessionalDevelopmentTopicArea](
   [RefELProfessionalDevelopmentTopicAreaId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefELProfessionalDevelopmentTopicArea] PRIMARY KEY CLUSTERED ([RefELProfessionalDevelopmentTopicAreaId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefELProfessionalDevelopmentTopicArea]  WITH CHECK ADD CONSTRAINT [FK_RefELProfessionalDevelopmentTopicArea_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefELProfessionalDevelopmentTopicArea] CHECK CONSTRAINT [FK_RefELProfessionalDevelopmentTopicArea_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefELProfessionalDevelopmentTopicArea', @level2type=N'COLUMN',@level2name=N'RefELProfessionalDevelopmentTopicAreaId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The topical area of competence needed for  professional development. [CEDS Element: Early Learning Professional Development Topic Area, ID:001337]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefELProfessionalDevelopmentTopicArea', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefELProfessionalDevelopmentTopicArea', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefELProfessionalDevelopmentTopicArea', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The topical area of competence needed for  professional development. [CEDS Element: Early Learning Professional Development Topic Area, ID:001337]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefELProfessionalDevelopmentTopicArea'
GO

CREATE TABLE [dbo].[RefELProgramEligibilityStatus](
   [RefELProgramEligibilityStatusId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefELProgramEligibilityStatus] PRIMARY KEY CLUSTERED ([RefELProgramEligibilityStatusId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefELProgramEligibilityStatus]  WITH CHECK ADD CONSTRAINT [FK_RefELProgramEligibilityStatus_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefELProgramEligibilityStatus] CHECK CONSTRAINT [FK_RefELProgramEligibilityStatus_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefELProgramEligibilityStatus', @level2type=N'COLUMN',@level2name=N'RefELProgramEligibilityStatusId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The status of eligibility for the child. [CEDS Element: Early Learning Program Eligibility Status, ID:001339]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefELProgramEligibilityStatus', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefELProgramEligibilityStatus', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefELProgramEligibilityStatus', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The status of eligibility for the child. [CEDS Element: Early Learning Program Eligibility Status, ID:001339]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefELProgramEligibilityStatus'
GO


CREATE TABLE [dbo].[RefEmployedPriorToEnrollment](
   [RefEmployedPriorToEnrollmentId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefEmployedPriorToEnrollment] PRIMARY KEY CLUSTERED ([RefEmployedPriorToEnrollmentId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefEmployedPriorToEnrollment]  WITH CHECK ADD CONSTRAINT [FK_RefEmployedPriorToEnrollment_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefEmployedPriorToEnrollment] CHECK CONSTRAINT [FK_RefEmployedPriorToEnrollment_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefEmployedPriorToEnrollment', @level2type=N'COLUMN',@level2name=N'RefEmployedPriorToEnrollmentId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An individual who is a paid employee or works in his or her own business, profession, or farm, as reported through the State Unemployment Insurance Wage Report, FEDES, or WRIS, before enrolling in secondary, postsecondary, or adult education or workforce programs. [CEDS Element: Employed Prior to Enrollment, ID:001342]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefEmployedPriorToEnrollment', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefEmployedPriorToEnrollment', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefEmployedPriorToEnrollment', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An individual who is a paid employee or works in his or her own business, profession, or farm, as reported through the State Unemployment Insurance Wage Report, FEDES, or WRIS, before enrolling in secondary, postsecondary, or adult education or workforce programs. [CEDS Element: Employed Prior to Enrollment, ID:001342]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefEmployedPriorToEnrollment'
GO


CREATE TABLE [dbo].[RefEmploymentStatusWhileEnrolled](
   [RefEmploymentStatusWhileEnrolledId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefEmploymentStatusWhileEnrolled] PRIMARY KEY CLUSTERED ([RefEmploymentStatusWhileEnrolledId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefEmploymentStatusWhileEnrolled]  WITH CHECK ADD CONSTRAINT [FK_RefEmploymentStatusWhileEnrolled_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefEmploymentStatusWhileEnrolled] CHECK CONSTRAINT [FK_RefEmploymentStatusWhileEnrolled_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefEmploymentStatusWhileEnrolled', @level2type=N'COLUMN',@level2name=N'RefEmploymentStatusWhileEnrolledId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of the individual''s employment status while enrolled. [CEDS Element: Employment Status While Enrolled, ID:001343]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefEmploymentStatusWhileEnrolled', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefEmploymentStatusWhileEnrolled', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefEmploymentStatusWhileEnrolled', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of the individual''s employment status while enrolled. [CEDS Element: Employment Status While Enrolled, ID:001343]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefEmploymentStatusWhileEnrolled'
GO


CREATE TABLE [dbo].[RefFinancialAccountCategory](
   [RefFinancialAccountCategoryId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefFinancialAccountCategory] PRIMARY KEY CLUSTERED ([RefFinancialAccountCategoryId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefFinancialAccountCategory]  WITH CHECK ADD CONSTRAINT [FK_RefFinancialAccountCategory_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefFinancialAccountCategory] CHECK CONSTRAINT [FK_RefFinancialAccountCategory_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefFinancialAccountCategory', @level2type=N'COLUMN',@level2name=N'RefFinancialAccountCategoryId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A label for a grouping of financial accounts, based on type and purpose. [CEDS Element: Financial Account Category, ID:001345]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefFinancialAccountCategory', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefFinancialAccountCategory', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefFinancialAccountCategory', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A label for a grouping of financial accounts, based on type and purpose. [CEDS Element: Financial Account Category, ID:001345]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefFinancialAccountCategory'
GO


CREATE TABLE [dbo].[RefFinancialAccountFundClassification](
   [RefFinancialAccountFundClassificationId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefFinancialAccountFundClassification] PRIMARY KEY CLUSTERED ([RefFinancialAccountFundClassificationId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefFinancialAccountFundClassification]  WITH CHECK ADD CONSTRAINT [FK_RefFinancialAccountFundClassification_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefFinancialAccountFundClassification] CHECK CONSTRAINT [FK_RefFinancialAccountFundClassification_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefFinancialAccountFundClassification', @level2type=N'COLUMN',@level2name=N'RefFinancialAccountFundClassificationId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A separate fiscal and accounting entity with a self-balancing set of accounts recording cash and other financial resources, together with all related liabilities and residual equities or balances, or changes therein. [CEDS Element: Financial Account Fund Classification, ID:001347]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefFinancialAccountFundClassification', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefFinancialAccountFundClassification', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefFinancialAccountFundClassification', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A separate fiscal and accounting entity with a self-balancing set of accounts recording cash and other financial resources, together with all related liabilities and residual equities or balances, or changes therein. [CEDS Element: Financial Account Fund Classification, ID:001347]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefFinancialAccountFundClassification'
GO


CREATE TABLE [dbo].[RefFinancialAccountProgramCode](
   [RefFinancialAccountProgramCodeId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefFinancialAccountProgramCode] PRIMARY KEY CLUSTERED ([RefFinancialAccountProgramCodeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefFinancialAccountProgramCode]  WITH CHECK ADD CONSTRAINT [FK_RefFinancialAccountProgramCode_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefFinancialAccountProgramCode] CHECK CONSTRAINT [FK_RefFinancialAccountProgramCode_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefFinancialAccountProgramCode', @level2type=N'COLUMN',@level2name=N'RefFinancialAccountProgramCodeId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The code associated with the program category used for financial accounting -- a plan of activities and procedures designed to accomplish a predetermined objective or set of objectives. [CEDS Element: Financial Account Program Code, ID:001349]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefFinancialAccountProgramCode', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefFinancialAccountProgramCode', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefFinancialAccountProgramCode', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The code associated with the program category used for financial accounting -- a plan of activities and procedures designed to accomplish a predetermined objective or set of objectives. [CEDS Element: Financial Account Program Code, ID:001349]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefFinancialAccountProgramCode'
GO


CREATE TABLE [dbo].[RefFinancialBalanceSheetAccountCode](
   [RefFinancialBalanceSheetAccountCodeId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefFinancialBalanceSheetAccountCode] PRIMARY KEY CLUSTERED ([RefFinancialBalanceSheetAccountCodeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefFinancialBalanceSheetAccountCode]  WITH CHECK ADD CONSTRAINT [FK_RefFinancialBalanceSheetAccountCode_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefFinancialBalanceSheetAccountCode] CHECK CONSTRAINT [FK_RefFinancialBalanceSheetAccountCode_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefFinancialBalanceSheetAccountCode', @level2type=N'COLUMN',@level2name=N'RefFinancialBalanceSheetAccountCodeId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Balance sheet accounts and statement of net asset accounts are used to track financial transactions for each fund. Such financial statements report assets, liabilities, and equity accounts only and are considered "snapshots" of how these accounts stand as of a certain point in time.  Based on codes specified in the NCES Handbook "Financial Accounting for Local and State School Systems: 2009 Edition." [CEDS Element: Financial Balance Sheet Account Code, ID:001353]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefFinancialBalanceSheetAccountCode', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefFinancialBalanceSheetAccountCode', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefFinancialBalanceSheetAccountCode', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Balance sheet accounts and statement of net asset accounts are used to track financial transactions for each fund. Such financial statements report assets, liabilities, and equity accounts only and are considered "snapshots" of how these accounts stand as of a certain point in time.  Based on codes specified in the NCES Handbook "Financial Accounting for Local and State School Systems: 2009 Edition." [CEDS Element: Financial Balance Sheet Account Code, ID:001353]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefFinancialBalanceSheetAccountCode'
GO


CREATE TABLE [dbo].[RefFinancialExpenditureFunctionCode](
   [RefFinancialExpenditureFunctionCodeId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefFinancialExpenditureFunctionCode] PRIMARY KEY CLUSTERED ([RefFinancialExpenditureFunctionCodeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefFinancialExpenditureFunctionCode]  WITH CHECK ADD CONSTRAINT [FK_RefFinancialExpenditureFunctionCode_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefFinancialExpenditureFunctionCode] CHECK CONSTRAINT [FK_RefFinancialExpenditureFunctionCode_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefFinancialExpenditureFunctionCode', @level2type=N'COLUMN',@level2name=N'RefFinancialExpenditureFunctionCodeId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The function describes the activity for which a service or material object is acquired. The functions of a school district are classified into five broad areas: instruction, support services, operation of non-instructional services, facilities acquisition and construction, and debt service.  Functions are further classified into sub functions. [CEDS Element: Financial Expenditure Function Code, ID:001354]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefFinancialExpenditureFunctionCode', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefFinancialExpenditureFunctionCode', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefFinancialExpenditureFunctionCode', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The function describes the activity for which a service or material object is acquired. The functions of a school district are classified into five broad areas: instruction, support services, operation of non-instructional services, facilities acquisition and construction, and debt service.  Functions are further classified into sub functions. [CEDS Element: Financial Expenditure Function Code, ID:001354]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefFinancialExpenditureFunctionCode'
GO


CREATE TABLE [dbo].[RefFinancialExpenditureObjectCode](
   [RefFinancialExpenditureObjectCodeId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefFinancialExpenditureObjectCode] PRIMARY KEY CLUSTERED ([RefFinancialExpenditureObjectCodeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefFinancialExpenditureObjectCode]  WITH CHECK ADD CONSTRAINT [FK_RefFinancialExpenditureObjectCode_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefFinancialExpenditureObjectCode] CHECK CONSTRAINT [FK_RefFinancialExpenditureObjectCode_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefFinancialExpenditureObjectCode', @level2type=N'COLUMN',@level2name=N'RefFinancialExpenditureObjectCodeId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This classification is used to describe the service or commodity obtained as the result of a specific expenditure. [CEDS Element: Financial Expenditure Object Code, ID:001355]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefFinancialExpenditureObjectCode', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefFinancialExpenditureObjectCode', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefFinancialExpenditureObjectCode', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This classification is used to describe the service or commodity obtained as the result of a specific expenditure. [CEDS Element: Financial Expenditure Object Code, ID:001355]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefFinancialExpenditureObjectCode'
GO


CREATE TABLE [dbo].[RefFinancialRevenueAccountCode](
   [RefFinancialRevenueAccountCodeId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefFinancialRevenueAccountCode] PRIMARY KEY CLUSTERED ([RefFinancialRevenueAccountCodeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefFinancialRevenueAccountCode]  WITH CHECK ADD CONSTRAINT [FK_RefFinancialRevenueAccountCode_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefFinancialRevenueAccountCode] CHECK CONSTRAINT [FK_RefFinancialRevenueAccountCode_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefFinancialRevenueAccountCode', @level2type=N'COLUMN',@level2name=N'RefFinancialRevenueAccountCodeId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Codes are for recording revenue and other receivables by source. Based on codes specified in the NCES Handbook "Financial Accounting for Local and State School Systems: 2009 Edition" [CEDS Element: Financial Revenue Account Code, ID:001468]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefFinancialRevenueAccountCode', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefFinancialRevenueAccountCode', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefFinancialRevenueAccountCode', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Codes are for recording revenue and other receivables by source. Based on codes specified in the NCES Handbook "Financial Accounting for Local and State School Systems: 2009 Edition" [CEDS Element: Financial Revenue Account Code, ID:001468]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefFinancialRevenueAccountCode'
GO


CREATE TABLE [dbo].[RefFrequencyOfService](
   [RefFrequencyOfServiceId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefFrequencyOfService] PRIMARY KEY CLUSTERED ([RefFrequencyOfServiceId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefFrequencyOfService]  WITH CHECK ADD CONSTRAINT [FK_RefFrequencyOfService_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefFrequencyOfService] CHECK CONSTRAINT [FK_RefFrequencyOfService_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefFrequencyOfService', @level2type=N'COLUMN',@level2name=N'RefFrequencyOfServiceId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The frequency at which a service is planned to occur. [CEDS Element: Frequency of Service, ID:001356]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefFrequencyOfService', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefFrequencyOfService', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefFrequencyOfService', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The frequency at which a service is planned to occur. [CEDS Element: Frequency of Service, ID:001356]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefFrequencyOfService'
GO


CREATE TABLE [dbo].[RefGraduateOrDoctoralExamResultsStatus](
   [RefGraduateOrDoctoralExamResultsStatusId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefGraduateOrDoctoralExamResultsStatus] PRIMARY KEY CLUSTERED ([RefGraduateOrDoctoralExamResultsStatusId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefGraduateOrDoctoralExamResultsStatus]  WITH CHECK ADD CONSTRAINT [FK_RefGraduateOrDoctoralExamResultsStatus_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefGraduateOrDoctoralExamResultsStatus] CHECK CONSTRAINT [FK_RefGraduateOrDoctoralExamResultsStatus_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefGraduateOrDoctoralExamResultsStatus', @level2type=N'COLUMN',@level2name=N'RefGraduateOrDoctoralExamResultsStatusId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The individual''s status in completing exams required for graduate or doctoral degree programs. [CEDS Element: Graduate or Doctoral Exam Results Status, ID:001357]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefGraduateOrDoctoralExamResultsStatus', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefGraduateOrDoctoralExamResultsStatus', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefGraduateOrDoctoralExamResultsStatus', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The individual''s status in completing exams required for graduate or doctoral degree programs. [CEDS Element: Graduate or Doctoral Exam Results Status, ID:001357]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefGraduateOrDoctoralExamResultsStatus'
GO


CREATE TABLE [dbo].[RefIDEAIEPStatus](
   [RefIDEAIEPStatusId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefIDEAIEPStatus] PRIMARY KEY CLUSTERED ([RefIDEAIEPStatusId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefIDEAIEPStatus]  WITH CHECK ADD CONSTRAINT [FK_RefIDEAIEPStatus_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefIDEAIEPStatus] CHECK CONSTRAINT [FK_RefIDEAIEPStatus_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefIDEAIEPStatus', @level2type=N'COLUMN',@level2name=N'RefIDEAIEPStatusId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The status of an individualized services plan for a specified reporting period or on a specified date. [CEDS Element: IDEA IEP Status, ID:001501]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefIDEAIEPStatus', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefIDEAIEPStatus', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefIDEAIEPStatus', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The status of an individualized services plan for a specified reporting period or on a specified date. [CEDS Element: IDEA IEP Status, ID:001501]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefIDEAIEPStatus'
GO


CREATE TABLE [dbo].[RefIncidentMultipleOffenseType](
   [RefIncidentMultipleOffenseTypeId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefIncidentMultipleOffenseType] PRIMARY KEY CLUSTERED ([RefIncidentMultipleOffenseTypeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefIncidentMultipleOffenseType]  WITH CHECK ADD CONSTRAINT [FK_RefIncidentMultipleOffenseType_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefIncidentMultipleOffenseType] CHECK CONSTRAINT [FK_RefIncidentMultipleOffenseType_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefIncidentMultipleOffenseType', @level2type=N'COLUMN',@level2name=N'RefIncidentMultipleOffenseTypeId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of whether the offense was primary or secondary in nature when a single incident included more than one type of offense. [CEDS Element: Incident Multiple Offense Type, ID:001369]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefIncidentMultipleOffenseType', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefIncidentMultipleOffenseType', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefIncidentMultipleOffenseType', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of whether the offense was primary or secondary in nature when a single incident included more than one type of offense. [CEDS Element: Incident Multiple Offense Type, ID:001369]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefIncidentMultipleOffenseType'
GO


CREATE TABLE [dbo].[RefIncidentPerpetratorInjuryType](
   [RefIncidentPerpetratorInjuryTypeId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefIncidentPerpetratorInjuryType] PRIMARY KEY CLUSTERED ([RefIncidentPerpetratorInjuryTypeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefIncidentPerpetratorInjuryType]  WITH CHECK ADD CONSTRAINT [FK_RefIncidentPerpetratorInjuryType_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefIncidentPerpetratorInjuryType] CHECK CONSTRAINT [FK_RefIncidentPerpetratorInjuryType_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefIncidentPerpetratorInjuryType', @level2type=N'COLUMN',@level2name=N'RefIncidentPerpetratorInjuryTypeId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of the occurrence of physical injury to the perpetrator(s) (participants) involved in the incident and‚ if so‚ the level of injury sustained. [CEDS Element: Incident Perpetrator Injury Type, ID:001371]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefIncidentPerpetratorInjuryType', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefIncidentPerpetratorInjuryType', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefIncidentPerpetratorInjuryType', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of the occurrence of physical injury to the perpetrator(s) (participants) involved in the incident and‚ if so‚ the level of injury sustained. [CEDS Element: Incident Perpetrator Injury Type, ID:001371]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefIncidentPerpetratorInjuryType'
GO

CREATE TABLE [dbo].[RefIncidentPersonType](
   [RefIncidentPersonTypeId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefIncidentPersonType] PRIMARY KEY CLUSTERED ([RefIncidentPersonTypeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefIncidentPersonType]  WITH CHECK ADD CONSTRAINT [FK_RefIncidentPersonType_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefIncidentPersonType] CHECK CONSTRAINT [FK_RefIncidentPersonType_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefIncidentPersonType', @level2type=N'COLUMN',@level2name=N'RefIncidentPersonTypeId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Information on the type of individual who was involved in an incident. [CEDS Elements: Incident Perpetrator Type (001372), Incident Witness Type (001380), Incident Victim Type (001378)]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefIncidentPersonType', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefIncidentPersonType', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefIncidentPersonType', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Information on the type of individual who was involved in an incident. [CEDS Elements: Incident Perpetrator Type (001372), Incident Witness Type (001380), Incident Victim Type (001378)]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefIncidentPersonType'
GO


CREATE TABLE [dbo].[RefIncidentPersonRoleType](
   [RefIncidentPersonRoleTypeId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefIncidentPersonRoleType] PRIMARY KEY CLUSTERED ([RefIncidentPersonRoleTypeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefIncidentPersonRoleType]  WITH CHECK ADD CONSTRAINT [FK_RefIncidentPersonRoleType_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefIncidentPersonRoleType] CHECK CONSTRAINT [FK_RefIncidentPersonRoleType_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefIncidentPersonRoleType', @level2type=N'COLUMN',@level2name=N'RefIncidentPersonRoleTypeId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The role or type of participation of a person in a discipline incident. [CEDS Element: Incident Person Role Type, ID:001373]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefIncidentPersonRoleType', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefIncidentPersonRoleType', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefIncidentPersonRoleType', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The role or type of participation of a person in a discipline incident. [CEDS Element: Incident Person Role Type, ID:001373]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefIncidentPersonRoleType'
GO


CREATE TABLE [dbo].[RefServiceFrequency](
   [RefServiceFrequencyId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefServiceFrequency] PRIMARY KEY CLUSTERED ([RefServiceFrequencyId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefServiceFrequency]  WITH CHECK ADD CONSTRAINT [FK_RefServiceFrequency_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefServiceFrequency] CHECK CONSTRAINT [FK_RefServiceFrequency_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefServiceFrequency', @level2type=N'COLUMN',@level2name=N'RefServiceFrequencyId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The frequency that a service is planned to be provided. [CEDS Element: Individualized Program Planned Service Frequency, ID:001519]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefServiceFrequency', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefServiceFrequency', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefServiceFrequency', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The frequency that a service is planned to be provided. [CEDS Element: Individualized Program Planned Service Frequency, ID:001519]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefServiceFrequency'
GO


CREATE TABLE [dbo].[RefIndividualizedProgramPlannedServiceType](
   [RefIndividualizedProgramPlannedServiceTypeId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefIndividualizedProgramPlannedServiceType] PRIMARY KEY CLUSTERED ([RefIndividualizedProgramPlannedServiceTypeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefIndividualizedProgramPlannedServiceType]  WITH CHECK ADD CONSTRAINT [FK_RefIndividualizedProgramPlannedServiceType_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefIndividualizedProgramPlannedServiceType] CHECK CONSTRAINT [FK_RefIndividualizedProgramPlannedServiceType_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefIndividualizedProgramPlannedServiceType', @level2type=N'COLUMN',@level2name=N'RefIndividualizedProgramPlannedServiceTypeId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The types of service that adapts the curriculum, materials, or instruction for students identified as needing special education because of a delay or disability. [CEDS Element: Individualized Program Planned Service Type, ID:001383]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefIndividualizedProgramPlannedServiceType', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefIndividualizedProgramPlannedServiceType', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefIndividualizedProgramPlannedServiceType', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The types of service that adapts the curriculum, materials, or instruction for students identified as needing special education because of a delay or disability. [CEDS Element: Individualized Program Planned Service Type, ID:001383]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefIndividualizedProgramPlannedServiceType'
GO


CREATE TABLE [dbo].[RefK12EndOfCourseRequirement](
   [RefK12EndOfCourseRequirementId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefK12EndOfCourseRequirement] PRIMARY KEY CLUSTERED ([RefK12EndOfCourseRequirementId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefK12EndOfCourseRequirement]  WITH CHECK ADD CONSTRAINT [FK_RefK12EndOfCourseRequirement_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefK12EndOfCourseRequirement] CHECK CONSTRAINT [FK_RefK12EndOfCourseRequirement_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefK12EndOfCourseRequirement', @level2type=N'COLUMN',@level2name=N'RefK12EndOfCourseRequirementId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that this course has an end of course examination required by the SEA or LEA. [CEDS Element: K12 End of Course Requirement, ID:001386]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefK12EndOfCourseRequirement', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefK12EndOfCourseRequirement', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefK12EndOfCourseRequirement', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that this course has an end of course examination required by the SEA or LEA. [CEDS Element: K12 End of Course Requirement, ID:001386]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefK12EndOfCourseRequirement'
GO


CREATE TABLE [dbo].[RefLearningResourceAccessAPIType](
   [RefLearningResourceAccessAPITypeId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefLearningResourceAccessAPIType] PRIMARY KEY CLUSTERED ([RefLearningResourceAccessAPITypeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefLearningResourceAccessAPIType]  WITH CHECK ADD CONSTRAINT [FK_RefLearningResourceAccessAPIType_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefLearningResourceAccessAPIType] CHECK CONSTRAINT [FK_RefLearningResourceAccessAPIType_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningResourceAccessAPIType', @level2type=N'COLUMN',@level2name=N'RefLearningResourceAccessAPITypeId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates that the learning resource is compatible with the referenced accessibility application programming interface (API). [CEDS Element: Learning Resource Access API Type, ID:001389]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningResourceAccessAPIType', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningResourceAccessAPIType', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningResourceAccessAPIType', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates that the learning resource is compatible with the referenced accessibility application programming interface (API). [CEDS Element: Learning Resource Access API Type, ID:001389]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningResourceAccessAPIType'
GO


CREATE TABLE [dbo].[RefLearningResourceAccessHazardType](
   [RefLearningResourceAccessHazardTypeId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefLearningResourceAccessHazardType] PRIMARY KEY CLUSTERED ([RefLearningResourceAccessHazardTypeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefLearningResourceAccessHazardType]  WITH CHECK ADD CONSTRAINT [FK_RefLearningResourceAccessHazardType_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefLearningResourceAccessHazardType] CHECK CONSTRAINT [FK_RefLearningResourceAccessHazardType_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningResourceAccessHazardType', @level2type=N'COLUMN',@level2name=N'RefLearningResourceAccessHazardTypeId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A characteristic of the described learning resource that is physiologically dangerous to some users. [CEDS Element: Learning Resource Access Hazard Type, ID:001390]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningResourceAccessHazardType', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningResourceAccessHazardType', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningResourceAccessHazardType', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A characteristic of the described learning resource that is physiologically dangerous to some users. [CEDS Element: Learning Resource Access Hazard Type, ID:001390]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningResourceAccessHazardType'
GO


CREATE TABLE [dbo].[RefLearningResourceAccessModeType](
   [RefLearningResourceAccessModeTypeId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefLearningResourceAccessModeType] PRIMARY KEY CLUSTERED ([RefLearningResourceAccessModeTypeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefLearningResourceAccessModeType]  WITH CHECK ADD CONSTRAINT [FK_RefLearningResourceAccessModeType_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefLearningResourceAccessModeType] CHECK CONSTRAINT [FK_RefLearningResourceAccessModeType_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningResourceAccessModeType', @level2type=N'COLUMN',@level2name=N'RefLearningResourceAccessModeTypeId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An access mode through which the intellectual content of a described learning resource or adaptation is communicated; if adaptations for the resource are known, the access modes of those adaptations are not included. [CEDS Element: Learning Resource Access Mode Type, ID:001391]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningResourceAccessModeType', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningResourceAccessModeType', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningResourceAccessModeType', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An access mode through which the intellectual content of a described learning resource or adaptation is communicated; if adaptations for the resource are known, the access modes of those adaptations are not included. [CEDS Element: Learning Resource Access Mode Type, ID:001391]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningResourceAccessModeType'
GO


CREATE TABLE [dbo].[RefLearningResourceBookFormatType](
   [RefLearningResourceBookFormatTypeId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefLearningResourceBookFormatType] PRIMARY KEY CLUSTERED ([RefLearningResourceBookFormatTypeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefLearningResourceBookFormatType]  WITH CHECK ADD CONSTRAINT [FK_RefLearningResourceBookFormatType_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefLearningResourceBookFormatType] CHECK CONSTRAINT [FK_RefLearningResourceBookFormatType_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningResourceBookFormatType', @level2type=N'COLUMN',@level2name=N'RefLearningResourceBookFormatTypeId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Specifies the format for a learning resource that is a book.  Other options may be considered for inclusion in the option set. [CEDS Element: Learning Resource Book Format Type, ID:001394]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningResourceBookFormatType', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningResourceBookFormatType', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningResourceBookFormatType', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Specifies the format for a learning resource that is a book.  Other options may be considered for inclusion in the option set. [CEDS Element: Learning Resource Book Format Type, ID:001394]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningResourceBookFormatType'
GO


CREATE TABLE [dbo].[RefLearningResourceControlFlexibilityType](
   [RefLearningResourceControlFlexibilityTypeId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefLearningResourceControlFlexibilityType] PRIMARY KEY CLUSTERED ([RefLearningResourceControlFlexibilityTypeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefLearningResourceControlFlexibilityType]  WITH CHECK ADD CONSTRAINT [FK_RefLearningResourceControlFlexibilityType_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefLearningResourceControlFlexibilityType] CHECK CONSTRAINT [FK_RefLearningResourceControlFlexibilityType_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningResourceControlFlexibilityType', @level2type=N'COLUMN',@level2name=N'RefLearningResourceControlFlexibilityTypeId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifies a single input method that is sufficient to control the described learning resource. [CEDS Element: Learning Resource Control Flexibility Type, ID:001395]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningResourceControlFlexibilityType', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningResourceControlFlexibilityType', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningResourceControlFlexibilityType', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifies a single input method that is sufficient to control the described learning resource. [CEDS Element: Learning Resource Control Flexibility Type, ID:001395]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningResourceControlFlexibilityType'
GO


CREATE TABLE [dbo].[RefLearningResourceDigitalMediaSubType](
   [RefLearningResourceDigitalMediaSubTypeId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefLearningResourceDigitalMediaSubType] PRIMARY KEY CLUSTERED ([RefLearningResourceDigitalMediaSubTypeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefLearningResourceDigitalMediaSubType]  WITH CHECK ADD CONSTRAINT [FK_RefLearningResourceDigitalMediaSubType_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefLearningResourceDigitalMediaSubType] CHECK CONSTRAINT [FK_RefLearningResourceDigitalMediaSubType_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningResourceDigitalMediaSubType', @level2type=N'COLUMN',@level2name=N'RefLearningResourceDigitalMediaSubTypeId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The media or file subtype of the digital resource being based on the Media Types and Subtypes, formerly known as MIME types, defined by the Internet Assigned Numbers Authority (IANA). [CEDS Element: Learning Resource Digital Media Sub Type, ID:001396]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningResourceDigitalMediaSubType', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningResourceDigitalMediaSubType', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningResourceDigitalMediaSubType', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The media or file subtype of the digital resource being based on the Media Types and Subtypes, formerly known as MIME types, defined by the Internet Assigned Numbers Authority (IANA). [CEDS Element: Learning Resource Digital Media Sub Type, ID:001396]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningResourceDigitalMediaSubType'
GO


CREATE TABLE [dbo].[RefLearningResourceDigitalMediaType](
   [RefLearningResourceDigitalMediaTypeId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefLearningResourceDigitalMediaType] PRIMARY KEY CLUSTERED ([RefLearningResourceDigitalMediaTypeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefLearningResourceDigitalMediaType]  WITH CHECK ADD CONSTRAINT [FK_RefLearningResourceDigitalMediaType_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefLearningResourceDigitalMediaType] CHECK CONSTRAINT [FK_RefLearningResourceDigitalMediaType_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningResourceDigitalMediaType', @level2type=N'COLUMN',@level2name=N'RefLearningResourceDigitalMediaTypeId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The media or file type of the digital resource being based on the media types defined by the Internet Assigned Numbers Authority (AINA) at http://www.iana.org/assignments/media-types. [CEDS Element: Learning Resource Digital Media Type, ID:001397]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningResourceDigitalMediaType', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningResourceDigitalMediaType', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningResourceDigitalMediaType', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The media or file type of the digital resource being based on the media types defined by the Internet Assigned Numbers Authority (AINA) at http://www.iana.org/assignments/media-types. [CEDS Element: Learning Resource Digital Media Type, ID:001397]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningResourceDigitalMediaType'
GO


CREATE TABLE [dbo].[RefLearningResourceMediaFeatureType](
   [RefLearningResourceMediaFeatureTypeId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefLearningResourceMediaFeatureType] PRIMARY KEY CLUSTERED ([RefLearningResourceMediaFeatureTypeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefLearningResourceMediaFeatureType]  WITH CHECK ADD CONSTRAINT [FK_RefLearningResourceMediaFeatureType_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefLearningResourceMediaFeatureType] CHECK CONSTRAINT [FK_RefLearningResourceMediaFeatureType_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningResourceMediaFeatureType', @level2type=N'COLUMN',@level2name=N'RefLearningResourceMediaFeatureTypeId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Accessible content features included with the learning resource. [CEDS Element: Learning Resource Media Feature Type, ID:001399]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningResourceMediaFeatureType', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningResourceMediaFeatureType', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningResourceMediaFeatureType', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Accessible content features included with the learning resource. [CEDS Element: Learning Resource Media Feature Type, ID:001399]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningResourceMediaFeatureType'
GO


CREATE TABLE [dbo].[RefLearningResourcePhysicalMediaType](
   [RefLearningResourcePhysicalMediaTypeId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefLearningResourcePhysicalMediaType] PRIMARY KEY CLUSTERED ([RefLearningResourcePhysicalMediaTypeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefLearningResourcePhysicalMediaType]  WITH CHECK ADD CONSTRAINT [FK_RefLearningResourcePhysicalMediaType_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefLearningResourcePhysicalMediaType] CHECK CONSTRAINT [FK_RefLearningResourcePhysicalMediaType_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningResourcePhysicalMediaType', @level2type=N'COLUMN',@level2name=N'RefLearningResourcePhysicalMediaTypeId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A type of physical media on which the Learning Resource is delivered or available. [CEDS Element: Learning Resource Physical Media Type, ID:001401]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningResourcePhysicalMediaType', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningResourcePhysicalMediaType', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningResourcePhysicalMediaType', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A type of physical media on which the Learning Resource is delivered or available. [CEDS Element: Learning Resource Physical Media Type, ID:001401]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningResourcePhysicalMediaType'
GO


CREATE TABLE [dbo].[RefLearningStandardItemNodeAccessibilityProfile](
   [RefLearningStandardItemNodeAccessibilityProfileId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefLearningStandardItemNodeAccessibilityProfile] PRIMARY KEY CLUSTERED ([RefLearningStandardItemNodeAccessibilityProfileId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefLearningStandardItemNodeAccessibilityProfile]  WITH CHECK ADD CONSTRAINT [FK_RefLearningStandardItemNodeAccessibilityProfile_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefLearningStandardItemNodeAccessibilityProfile] CHECK CONSTRAINT [FK_RefLearningStandardItemNodeAccessibilityProfile_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningStandardItemNodeAccessibilityProfile', @level2type=N'COLUMN',@level2name=N'RefLearningStandardItemNodeAccessibilityProfileId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When the Learning Standard Item is used as a node in a learning map, this element supports alternative pathways based on a learner''s accessibility profile.  The type selected indicates which accessibility profile the node is designed to address. [CEDS Element: Learning Standard Item Node Accessibility Profile, ID:001408]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningStandardItemNodeAccessibilityProfile', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningStandardItemNodeAccessibilityProfile', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningStandardItemNodeAccessibilityProfile', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When the Learning Standard Item is used as a node in a learning map, this element supports alternative pathways based on a learner''s accessibility profile.  The type selected indicates which accessibility profile the node is designed to address. [CEDS Element: Learning Standard Item Node Accessibility Profile, ID:001408]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningStandardItemNodeAccessibilityProfile'
GO


CREATE TABLE [dbo].[RefLearningStandardItemTestabilityType](
   [RefLearningStandardItemTestabilityTypeId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefLearningStandardItemTestabilityType] PRIMARY KEY CLUSTERED ([RefLearningStandardItemTestabilityTypeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefLearningStandardItemTestabilityType]  WITH CHECK ADD CONSTRAINT [FK_RefLearningStandardItemTestabilityType_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefLearningStandardItemTestabilityType] CHECK CONSTRAINT [FK_RefLearningStandardItemTestabilityType_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningStandardItemTestabilityType', @level2type=N'COLUMN',@level2name=N'RefLearningStandardItemTestabilityTypeId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates if the competency described in the Learning Standard Item Statement can be tested using one or more assessment items. [CEDS Element: Learning Standard Item Testability Type, ID:001411]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningStandardItemTestabilityType', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningStandardItemTestabilityType', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningStandardItemTestabilityType', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates if the competency described in the Learning Standard Item Statement can be tested using one or more assessment items. [CEDS Element: Learning Standard Item Testability Type, ID:001411]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningStandardItemTestabilityType'
GO


CREATE TABLE [dbo].[RefMethodOfServiceDelivery](
   [RefMethodOfServiceDeliveryId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefMethodOfServiceDelivery] PRIMARY KEY CLUSTERED ([RefMethodOfServiceDeliveryId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefMethodOfServiceDelivery]  WITH CHECK ADD CONSTRAINT [FK_RefMethodOfServiceDelivery_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefMethodOfServiceDelivery] CHECK CONSTRAINT [FK_RefMethodOfServiceDelivery_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefMethodOfServiceDelivery', @level2type=N'COLUMN',@level2name=N'RefMethodOfServiceDeliveryId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The method by which the services will be provided. [CEDS Element: Method of Service Delivery, ID:001510]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefMethodOfServiceDelivery', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefMethodOfServiceDelivery', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefMethodOfServiceDelivery', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The method by which the services will be provided. [CEDS Element: Method of Service Delivery, ID:001510]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefMethodOfServiceDelivery'
GO


CREATE TABLE [dbo].[RefNCESCollegeCourseMapCode](
   [RefNCESCollegeCourseMapCodeId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefNCESCollegeCourseMapCode] PRIMARY KEY CLUSTERED ([RefNCESCollegeCourseMapCodeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefNCESCollegeCourseMapCode]  WITH CHECK ADD CONSTRAINT [FK_RefNCESCollegeCourseMapCode_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefNCESCollegeCourseMapCode] CHECK CONSTRAINT [FK_RefNCESCollegeCourseMapCode_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefNCESCollegeCourseMapCode', @level2type=N'COLUMN',@level2name=N'RefNCESCollegeCourseMapCodeId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A taxonomy system for coding postsecondary courses in NCES research studies. [CEDS Element: NCES College Course Map Code, ID:001414]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefNCESCollegeCourseMapCode', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefNCESCollegeCourseMapCode', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefNCESCollegeCourseMapCode', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A taxonomy system for coding postsecondary courses in NCES research studies. [CEDS Element: NCES College Course Map Code, ID:001414]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefNCESCollegeCourseMapCode'
GO


CREATE TABLE [dbo].[RefOrganizationMonitoringNotifications](
   [RefOrganizationMonitoringNotificationsId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefOrganizationMonitoringNotifications] PRIMARY KEY CLUSTERED ([RefOrganizationMonitoringNotificationsId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefOrganizationMonitoringNotifications]  WITH CHECK ADD CONSTRAINT [FK_RefOrganizationMonitoringNotifications_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefOrganizationMonitoringNotifications] CHECK CONSTRAINT [FK_RefOrganizationMonitoringNotifications_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefOrganizationMonitoringNotifications', @level2type=N'COLUMN',@level2name=N'RefOrganizationMonitoringNotificationsId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Whether the organization received notification about monitoring [CEDS Element: Organization Monitoring Notifications, ID:001330]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefOrganizationMonitoringNotifications', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefOrganizationMonitoringNotifications', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefOrganizationMonitoringNotifications', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Whether the organization received notification about monitoring [CEDS Element: Organization Monitoring Notifications, ID:001330]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefOrganizationMonitoringNotifications'
GO


CREATE TABLE [dbo].[RefPDActivityApprovedFor](
   [RefPDActivityApprovedForId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefPDActivityApprovedFor] PRIMARY KEY CLUSTERED ([RefPDActivityApprovedForId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefPDActivityApprovedFor]  WITH CHECK ADD CONSTRAINT [FK_RefPDActivityApprovedFor_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefPDActivityApprovedFor] CHECK CONSTRAINT [FK_RefPDActivityApprovedFor_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefPDActivityApprovedFor', @level2type=N'COLUMN',@level2name=N'RefPDActivityApprovedForId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reference may be made to state or national content standards covered in the course. [CEDS Element: Professional Development Activity Approved For, ID:001433]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefPDActivityApprovedFor', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefPDActivityApprovedFor', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefPDActivityApprovedFor', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reference may be made to state or national content standards covered in the course. [CEDS Element: Professional Development Activity Approved For, ID:001433]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefPDActivityApprovedFor'
GO


CREATE TABLE [dbo].[RefPDActivityCreditType](
   [RefPDActivityCreditTypeId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefPDActivityCreditType] PRIMARY KEY CLUSTERED ([RefPDActivityCreditTypeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefPDActivityCreditType]  WITH CHECK ADD CONSTRAINT [FK_RefPDActivityCreditType_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefPDActivityCreditType] CHECK CONSTRAINT [FK_RefPDActivityCreditType_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefPDActivityCreditType', @level2type=N'COLUMN',@level2name=N'RefPDActivityCreditTypeId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of credit awarded. [CEDS Element: Professional Development Activity Credit Type, ID:001436]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefPDActivityCreditType', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefPDActivityCreditType', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefPDActivityCreditType', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of credit awarded. [CEDS Element: Professional Development Activity Credit Type, ID:001436]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefPDActivityCreditType'
GO


CREATE TABLE [dbo].[RefPDActivityEducationLevelsAddressed](
   [RefPDActivityEducationLevelsAddressedId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefPDActivityEducationLevelsAddressed] PRIMARY KEY CLUSTERED ([RefPDActivityEducationLevelsAddressedId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefPDActivityEducationLevelsAddressed]  WITH CHECK ADD CONSTRAINT [FK_RefPDActivityEducationLevelsAddressed_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefPDActivityEducationLevelsAddressed] CHECK CONSTRAINT [FK_RefPDActivityEducationLevelsAddressed_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefPDActivityEducationLevelsAddressed', @level2type=N'COLUMN',@level2name=N'RefPDActivityEducationLevelsAddressedId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An age group or education level to which the professional development Activity''s content pertains. [CEDS Element: Professional Development Activity Education Levels Addressed, ID:001279]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefPDActivityEducationLevelsAddressed', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefPDActivityEducationLevelsAddressed', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefPDActivityEducationLevelsAddressed', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An age group or education level to which the professional development Activity''s content pertains. [CEDS Element: Professional Development Activity Education Levels Addressed, ID:001279]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefPDActivityEducationLevelsAddressed'
GO


CREATE TABLE [dbo].[RefPDActivityLevel](
   [RefPDActivityLevelId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefPDActivityLevel] PRIMARY KEY CLUSTERED ([RefPDActivityLevelId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefPDActivityLevel]  WITH CHECK ADD CONSTRAINT [FK_RefPDActivityLevel_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefPDActivityLevel] CHECK CONSTRAINT [FK_RefPDActivityLevel_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefPDActivityLevel', @level2type=N'COLUMN',@level2name=N'RefPDActivityLevelId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indicator of the level of a professional development activity on the beginner to advanced continuum. [CEDS Element: Professional Development Activity Level, ID:001439]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefPDActivityLevel', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefPDActivityLevel', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefPDActivityLevel', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indicator of the level of a professional development activity on the beginner to advanced continuum. [CEDS Element: Professional Development Activity Level, ID:001439]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefPDActivityLevel'
GO


CREATE TABLE [dbo].[RefPDActivityTargetAudience](
   [RefPDActivityTargetAudienceId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefPDActivityTargetAudience] PRIMARY KEY CLUSTERED ([RefPDActivityTargetAudienceId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefPDActivityTargetAudience]  WITH CHECK ADD CONSTRAINT [FK_RefPDActivityTargetAudience_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefPDActivityTargetAudience] CHECK CONSTRAINT [FK_RefPDActivityTargetAudience_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefPDActivityTargetAudience', @level2type=N'COLUMN',@level2name=N'RefPDActivityTargetAudienceId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A categorization of the audience for which the professional development activity is intended. [CEDS Element: Professional Development Activity Target Audience, ID:001492]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefPDActivityTargetAudience', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefPDActivityTargetAudience', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefPDActivityTargetAudience', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A categorization of the audience for which the professional development activity is intended. [CEDS Element: Professional Development Activity Target Audience, ID:001492]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefPDActivityTargetAudience'
GO


CREATE TABLE [dbo].[RefPDActivityType](
   [RefPDActivityTypeId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefPDActivityType] PRIMARY KEY CLUSTERED ([RefPDActivityTypeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefPDActivityType]  WITH CHECK ADD CONSTRAINT [FK_RefPDActivityType_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefPDActivityType] CHECK CONSTRAINT [FK_RefPDActivityType_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefPDActivityType', @level2type=N'COLUMN',@level2name=N'RefPDActivityTypeId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The indication of the type of profesional development activity. [CEDS Element: Professional Development Activity Type, ID:001442]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefPDActivityType', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefPDActivityType', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefPDActivityType', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The indication of the type of profesional development activity. [CEDS Element: Professional Development Activity Type, ID:001442]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefPDActivityType'
GO


CREATE TABLE [dbo].[RefPDAudienceType](
   [RefPDAudienceTypeId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefPDAudienceType] PRIMARY KEY CLUSTERED ([RefPDAudienceTypeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefPDAudienceType]  WITH CHECK ADD CONSTRAINT [FK_RefPDAudienceType_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefPDAudienceType] CHECK CONSTRAINT [FK_RefPDAudienceType_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefPDAudienceType', @level2type=N'COLUMN',@level2name=N'RefPDAudienceTypeId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of audience for the professional development activity. [CEDS Element: Professional Development Audience Type, ID:001430]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefPDAudienceType', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefPDAudienceType', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefPDAudienceType', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of audience for the professional development activity. [CEDS Element: Professional Development Audience Type, ID:001430]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefPDAudienceType'
GO


CREATE TABLE [dbo].[RefPDDeliveryMethod](
   [RefPDDeliveryMethodId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefPDDeliveryMethod] PRIMARY KEY CLUSTERED ([RefPDDeliveryMethodId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefPDDeliveryMethod]  WITH CHECK ADD CONSTRAINT [FK_RefPDDeliveryMethod_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefPDDeliveryMethod] CHECK CONSTRAINT [FK_RefPDDeliveryMethod_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefPDDeliveryMethod', @level2type=N'COLUMN',@level2name=N'RefPDDeliveryMethodId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The method by which a session is delivered [CEDS Element: Professional Development Delivery Method, ID:001431]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefPDDeliveryMethod', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefPDDeliveryMethod', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefPDDeliveryMethod', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The method by which a session is delivered [CEDS Element: Professional Development Delivery Method, ID:001431]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefPDDeliveryMethod'
GO


CREATE TABLE [dbo].[RefPDInstructionalDeliveryMode](
   [RefPDInstructionalDeliveryModeId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefPDInstructionalDeliveryMode] PRIMARY KEY CLUSTERED ([RefPDInstructionalDeliveryModeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefPDInstructionalDeliveryMode]  WITH CHECK ADD CONSTRAINT [FK_RefPDInstructionalDeliveryMode_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefPDInstructionalDeliveryMode] CHECK CONSTRAINT [FK_RefPDInstructionalDeliveryMode_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefPDInstructionalDeliveryMode', @level2type=N'COLUMN',@level2name=N'RefPDInstructionalDeliveryModeId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary setting or medium of professional development delivery. [CEDS Element: Professional Development Instructional Delivery Mode, ID:001458]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefPDInstructionalDeliveryMode', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefPDInstructionalDeliveryMode', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefPDInstructionalDeliveryMode', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary setting or medium of professional development delivery. [CEDS Element: Professional Development Instructional Delivery Mode, ID:001458]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefPDInstructionalDeliveryMode'
GO


CREATE TABLE [dbo].[RefPDSessionStatus](
   [RefPDSessionStatusId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefPDSessionStatus] PRIMARY KEY CLUSTERED ([RefPDSessionStatusId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefPDSessionStatus]  WITH CHECK ADD CONSTRAINT [FK_RefPDSessionStatus_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefPDSessionStatus] CHECK CONSTRAINT [FK_RefPDSessionStatus_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefPDSessionStatus', @level2type=N'COLUMN',@level2name=N'RefPDSessionStatusId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The current status of a professional development session [CEDS Element: Professional Development Session Status, ID:001457]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefPDSessionStatus', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefPDSessionStatus', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefPDSessionStatus', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The current status of a professional development session [CEDS Element: Professional Development Session Status, ID:001457]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefPDSessionStatus'
GO


CREATE TABLE [dbo].[RefPurposeOfMonitoringVisit](
   [RefPurposeOfMonitoringVisitId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefPurposeOfMonitoringVisit] PRIMARY KEY CLUSTERED ([RefPurposeOfMonitoringVisitId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefPurposeOfMonitoringVisit]  WITH CHECK ADD CONSTRAINT [FK_RefPurposeOfMonitoringVisit_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefPurposeOfMonitoringVisit] CHECK CONSTRAINT [FK_RefPurposeOfMonitoringVisit_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefPurposeOfMonitoringVisit', @level2type=N'COLUMN',@level2name=N'RefPurposeOfMonitoringVisitId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The purpose for the monitoring visit. [CEDS Element: Purpose of Monitoring Visit, ID:001333]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefPurposeOfMonitoringVisit', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefPurposeOfMonitoringVisit', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefPurposeOfMonitoringVisit', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The purpose for the monitoring visit. [CEDS Element: Purpose of Monitoring Visit, ID:001333]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefPurposeOfMonitoringVisit'
GO


CREATE TABLE [dbo].[RefReasonDelayTransitionConf](
   [RefReasonDelayTransitionConfId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefReasonDelayTransitionConf] PRIMARY KEY CLUSTERED ([RefReasonDelayTransitionConfId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefReasonDelayTransitionConf]  WITH CHECK ADD CONSTRAINT [FK_RefReasonDelayTransitionConf_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefReasonDelayTransitionConf] CHECK CONSTRAINT [FK_RefReasonDelayTransitionConf_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefReasonDelayTransitionConf', @level2type=N'COLUMN',@level2name=N'RefReasonDelayTransitionConfId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The reasons for the delay of a transition conference. [CEDS Element: Reason for Delay of Transition Conference, ID:001521]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefReasonDelayTransitionConf', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefReasonDelayTransitionConf', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefReasonDelayTransitionConf', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The reasons for the delay of a transition conference. [CEDS Element: Reason for Delay of Transition Conference, ID:001521]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefReasonDelayTransitionConf'
GO


CREATE TABLE [dbo].[RefReferralOutcome](
   [RefReferralOutcomeId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefReferralOutcome] PRIMARY KEY CLUSTERED ([RefReferralOutcomeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefReferralOutcome]  WITH CHECK ADD CONSTRAINT [FK_RefReferralOutcome_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefReferralOutcome] CHECK CONSTRAINT [FK_RefReferralOutcome_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefReferralOutcome', @level2type=N'COLUMN',@level2name=N'RefReferralOutcomeId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The outcome of the referral. [CEDS Element: Referral Outcome, ID:001482]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefReferralOutcome', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefReferralOutcome', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefReferralOutcome', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The outcome of the referral. [CEDS Element: Referral Outcome, ID:001482]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefReferralOutcome'
GO


CREATE TABLE [dbo].[RefSCEDCourseLevel](
   [RefSCEDCourseLevelId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefSCEDCourseLevel] PRIMARY KEY CLUSTERED ([RefSCEDCourseLevelId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefSCEDCourseLevel]  WITH CHECK ADD CONSTRAINT [FK_RefSCEDCourseLevel_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefSCEDCourseLevel] CHECK CONSTRAINT [FK_RefSCEDCourseLevel_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefSCEDCourseLevel', @level2type=N'COLUMN',@level2name=N'RefSCEDCourseLevelId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N' The course''s level of rigor. [CEDS Element: School Codes for the Exchange of Data Course Level, ID:001516]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefSCEDCourseLevel', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefSCEDCourseLevel', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefSCEDCourseLevel', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N' The course''s level of rigor. [CEDS Element: School Codes for the Exchange of Data Course Level, ID:001516]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefSCEDCourseLevel'
GO


CREATE TABLE [dbo].[RefSCEDCourseSubjectArea](
   [RefSCEDCourseSubjectAreaId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefSCEDCourseSubjectArea] PRIMARY KEY CLUSTERED ([RefSCEDCourseSubjectAreaId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefSCEDCourseSubjectArea]  WITH CHECK ADD CONSTRAINT [FK_RefSCEDCourseSubjectArea_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefSCEDCourseSubjectArea] CHECK CONSTRAINT [FK_RefSCEDCourseSubjectArea_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefSCEDCourseSubjectArea', @level2type=N'COLUMN',@level2name=N'RefSCEDCourseSubjectAreaId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The intended major subject area of the education course. [CEDS Element: School Codes for the Exchange of Data Course Subject Area, ID:001518]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefSCEDCourseSubjectArea', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefSCEDCourseSubjectArea', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefSCEDCourseSubjectArea', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The intended major subject area of the education course. [CEDS Element: School Codes for the Exchange of Data Course Subject Area, ID:001518]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefSCEDCourseSubjectArea'
GO



CREATE TABLE [dbo].[RefTechnicalAssistanceDeliveryType](
   [RefTechnicalAssistanceDeliveryTypeId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefTechnicalAssistanceDeliveryType] PRIMARY KEY CLUSTERED ([RefTechnicalAssistanceDeliveryTypeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefTechnicalAssistanceDeliveryType]  WITH CHECK ADD CONSTRAINT [FK_RefTechnicalAssistanceDeliveryType_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefTechnicalAssistanceDeliveryType] CHECK CONSTRAINT [FK_RefTechnicalAssistanceDeliveryType_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefTechnicalAssistanceDeliveryType', @level2type=N'COLUMN',@level2name=N'RefTechnicalAssistanceDeliveryTypeId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The method of delivery of technical assistance received/provided [CEDS Element: Technical Assistance Delivery Type, ID:001494]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefTechnicalAssistanceDeliveryType', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefTechnicalAssistanceDeliveryType', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefTechnicalAssistanceDeliveryType', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The method of delivery of technical assistance received/provided [CEDS Element: Technical Assistance Delivery Type, ID:001494]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefTechnicalAssistanceDeliveryType'
GO


CREATE TABLE [dbo].[RefTechnicalAssistanceType](
   [RefTechnicalAssistanceTypeId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefTechnicalAssistanceType] PRIMARY KEY CLUSTERED ([RefTechnicalAssistanceTypeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefTechnicalAssistanceType]  WITH CHECK ADD CONSTRAINT [FK_RefTechnicalAssistanceType_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefTechnicalAssistanceType] CHECK CONSTRAINT [FK_RefTechnicalAssistanceType_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefTechnicalAssistanceType', @level2type=N'COLUMN',@level2name=N'RefTechnicalAssistanceTypeId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'They type of technical assistance provided [CEDS Element: Technical Assistance Type, ID:001495]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefTechnicalAssistanceType', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefTechnicalAssistanceType', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefTechnicalAssistanceType', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'They type of technical assistance provided [CEDS Element: Technical Assistance Type, ID:001495]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefTechnicalAssistanceType'
GO

CREATE TABLE [dbo].[RefWorkbasedLearningOpportunityType](
   [RefWorkbasedLearningOpportunityTypeId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefWorkbasedLearningOpportunityType] PRIMARY KEY CLUSTERED ([RefWorkbasedLearningOpportunityTypeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefWorkbasedLearningOpportunityType]  WITH CHECK ADD CONSTRAINT [FK_RefWorkbasedLearningOpportunityType_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefWorkbasedLearningOpportunityType] CHECK CONSTRAINT [FK_RefWorkbasedLearningOpportunityType_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefWorkbasedLearningOpportunityType', @level2type=N'COLUMN',@level2name=N'RefWorkbasedLearningOpportunityTypeId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of work-based learning opportunity a student participated in. [CEDS Element: Work-based Learning Opportunity Type, ID:001499]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefWorkbasedLearningOpportunityType', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefWorkbasedLearningOpportunityType', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefWorkbasedLearningOpportunityType', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of work-based learning opportunity a student participated in. [CEDS Element: Work-based Learning Opportunity Type, ID:001499]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefWorkbasedLearningOpportunityType'
GO


/*--------------------------------------------------------------------------------


	 Adds/edit/deletes of tables and columns in support of new CEDS elements as well
	 as existing elements that are to be utilized in different domains/context.  
	 Included here are also changes to entity names as requested by the stakeholder 
	 groups.  


*/--------------------------------------------------------------------------------


/*-- 
	 This section includes changes as requested for the PostSecondary stakeholder 
	 group.  
--*/


PRINT N'Rename entity PsStudentClassSection to PsStudentSection'
GO
EXEC sp_RENAME 'PsStudentClassSection', 'PsStudentSection'
GO

PRINT N'Replace PsStudentSectionID, PsStudentId, and ClassSectionId with OrganizationPersonRole'
GO
if exists (Select top 1 PsStudentClassSectionId from dbo.PsStudentSection)
BEGIN
	SELECT * INTO dbo.PsStudentClassSectionBackup FROM dbo.PsStudentSection
	DELETE FROM dbo.PsStudentSection
END
GO
EXEC sp_RENAME 'PsStudentSection.PsStudentClassSectionId', 'OrganizationPersonRoleId', 'COLUMN'
GO
EXEC sp_RENAME 'PK_PsStudentClassSection', 'PK_PsStudentSection'
GO

ALTER TABLE dbo.PsStudentSection DROP CONSTRAINT FK_PsStudentClassSection_OrganizationPersonRole
GO
ALTER TABLE dbo.PsStudentSection DROP COLUMN PsStudentId;
GO
ALTER TABLE dbo.PsStudentSection DROP CONSTRAINT FK_PsStudentClassSection_ClassSection
GO
ALTER TABLE dbo.PsStudentSection DROP COLUMN ClassSectionId;
GO
ALTER TABLE dbo.PsStudentSection WITH CHECK ADD CONSTRAINT [FK_PsStudentSection_OrganizationPersonRole]
  FOREIGN KEY([OrganizationPersonRoleId]) REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId])

ALTER TABLE dbo.PsStudentSection CHECK CONSTRAINT [FK_PsStudentSection_OrganizationPersonRole]
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The association of an organization (e.g. school, section, employer) to a person with the role (e.g. student, ).' , 
@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PsStudentSection', 
@level2type=N'COLUMN',@level2name=N'OrganizationPersonRoleId'
GO


PRINT N'Table [dbo].[AeCourse]'
GO
CREATE TABLE [dbo].[AeCourse](
	[OrganizationId] [int] NOT NULL,
	[RefCourseLevelTypeId] [int] NULL,
 CONSTRAINT [PK_AeCourse] PRIMARY KEY CLUSTERED 
(
	[OrganizationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Inherited surrogate key from Course' , 
@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AeCourse', 
@level2type=N'COLUMN',@level2name=N'OrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', 
@value=N'The level of work which is reflected in the credits associated with the academic course being described or the level of the typical individual taking the academic course. [CEDS Element: Course Level Type, ID:001312]' , 
@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AeCourse', 
@level2type=N'COLUMN',@level2name=N'RefCourseLevelTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', 
@value=N'The organization of subject matter and related learning experiences provided for the instruction of students on a regular or systematic basis, usually for a predetermined period of time (e.g., a semester or two-week workshop) to an individual or group of students (e.g., a class). ' , 
@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AeCourse'
GO


PRINT N'Assessment Accommodation Category'
GO
CREATE TABLE [dbo].[RefAssessmentAccommodationCategory](
	[RefAssessmentAccommodationCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Description] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
 CONSTRAINT [PK_RefAssessmentAccommodationCategory] PRIMARY KEY CLUSTERED 
(
	[RefAssessmentAccommodationCategoryId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key' , @level0type=N'SCHEMA',
@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAssessmentAccommodationCategory', 
@level2type=N'COLUMN',@level2name=N'RefAssessmentAccommodationCategoryId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A category of accommodations needed for a given assessment. [CEDS Element: Assessment Accommodation Category, ID:000383]' , 
@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',
@level1name=N'RefAssessmentAccommodationCategory', 
@level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'RefAssessmentAccommodationCategory', 
@level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', 
@value=N'Surrogate key from Organization identifying the publisher of the reference value.' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'RefAssessmentAccommodationCategory', 
@level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A category of accommodations needed for a given assessment. [CEDS Element: Assessment Accommodation Category, ID:000383]' , 
@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',
@level1name=N'RefAssessmentAccommodationCategory'
GO

ALTER TABLE dbo.AssessmentParticipantSession_Accommodation ADD RefAssessmentAccommodationCategoryId INT NULL;
GO

ALTER TABLE dbo.AssessmentParticipantSession_Accommodation  WITH CHECK ADD  
	CONSTRAINT [FK_AssessPartSession_Accommodation _RefAssessmentAccommodationCategory] 
	FOREIGN KEY([RefAssessmentAccommodationCategoryId])
	REFERENCES [dbo].[RefAssessmentAccommodationCategory] ([RefAssessmentAccommodationCategoryId])
ALTER TABLE dbo.AssessmentParticipantSession_Accommodation CHECK 
	CONSTRAINT [FK_AssessPartSession_Accommodation _RefAssessmentAccommodationCategory] 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A category of accommodations needed for a given assessment. [CEDS Element: Assessment Accommodation Category, ID:000383]' , 
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'AssessmentParticipantSession_Accommodation',
@level2type = N'Column', @level2name = 'RefAssessmentAccommodationCategoryId'
GO

ALTER TABLE dbo.AssessmentRegistration_Accommodation ADD RefAssessmentAccommodationCategoryId INT NULL;
GO

ALTER TABLE dbo.AssessmentRegistration_Accommodation  WITH CHECK ADD  
	CONSTRAINT [FK_AssessReg_Accommodation _RefAssessmentAccommodationCategory] 
	FOREIGN KEY([RefAssessmentAccommodationCategoryId])
	REFERENCES [dbo].[RefAssessmentAccommodationCategory] ([RefAssessmentAccommodationCategoryId])
ALTER TABLE dbo.AssessmentRegistration_Accommodation CHECK 
	CONSTRAINT [FK_AssessReg_Accommodation _RefAssessmentAccommodationCategory] 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A category of accommodations needed for a given assessment. [CEDS Element: Assessment Accommodation Category, ID:000383]' , 
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'AssessmentRegistration_Accommodation',
@level2type = N'Column', @level2name = 'RefAssessmentAccommodationCategoryId'
GO


PRINT N'Course Title'
GO
EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The name or title of a non-person entity such as an organization, institution, agency, business, program or course. [CEDS Elements: Organization Name (000204), Name of Institution (000191), Program Name (000626), Responsible Organization Name (000631), Course Title (000067), Postsecondary Course Title (000068)]' , 
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'Organization',
@level2type = N'Column', @level2name = 'Name'
GO

PRINT N'001487 - Short Name of Institution'
GO
ALTER TABLE dbo.Organization ADD ShortName nvarchar(30) NULL;
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the organization, which may be the abbreviated form of the full legally accepted name. [CEDS Element: Short Name Of Institution, ID: 001487]' , 
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'Organization',
@level2type = N'Column', @level2name = 'ShortName'
GO

PRINT N'000054 - Course begin date, 001300 Course Add Date'
GO
EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The date on which a session begins. [CEDS Elements: Session Begin Date (000251), Course Begin Date (000054), Course Add Date (001300)]' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'OrganizationCalendarSession', 
@level2type=N'COLUMN',@level2name=N'BeginDate'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The session during which the Class/Section is held. [CEDS Elements: Course Begin Date (000054), Course End Date (000059)]' , 
@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ClassSection', 
@level2type=N'COLUMN',@level2name=N'OrganizationCalendarSessionId'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The date associated with the commencement/entry/start of a role for a person at an organization.  [Related CEDS ID''s:000007, 000097, 000326, 000793, 000974, 000346, 000590, 000645, 000998, 001300]' , 
@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrganizationPersonRole', 
@level2type=N'COLUMN',@level2name=N'EntryDate'
GO

PRINT N'001305 Exit Date'
GO
EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The date associated with the termination/exit/end of a role for a person at an organization.  [Related CEDS IDs: 000008, 000527, 000059, 000795, 000646, 000999, 000107, 000591, 000327, 000999, 001305]' , 
@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrganizationPersonRole', 
@level2type=N'COLUMN',@level2name=N'ExitDate'
GO

PRINT N'000059 - Course end date'
GO
EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The date on which a session ends. [CEDS Elements: Session End Date (000253), Course End Date (000059)]' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'OrganizationCalendarSession', 
@level2type=N'COLUMN',@level2name=N'EndDate'
GO

PRINT N'Organization Identification System'
GO
EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'A coding scheme that is used for identification and record-keeping purposes by an organization.  [Organization Identification System (000827), Adult Education Service Provider Identification System (000781), Agency Course Identifier (001280), Course Code System (000056), Federal School Code (000111), Institution IPEDS UnitID (000166), Local Education Agency Identification System (001072), Local Education Agency Supervisory Union Identification Number (000175), Office of Postsecondary Education Identifier (000203), School Identification System (001073), State Agency Identification System (001491), Course Section Number (001315)]' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'RefOrganizationIdentificationSystem'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'A coding scheme that is used for identification and record-keeping purposes by an organization.  [Organization Identification System (000827), Adult Education Service Provider Identification System (000781), Agency Course Identifier (001280), Course Code System (000056), Federal School Code (000111), Institution IPEDS UnitID (000166), Local Education Agency Identification System (001072), Local Education Agency Supervisory Union Identification Number (000175), Office of Postsecondary Education Identifier (000203), School Identification System (001073), State Agency Identification System (001491), Course Section Number (001315)]' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'RefOrganizationIdentificationSystem', 
@level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'A coding scheme that is used for identification and record-keeping purposes by an organization.  [Organization Identification System (000827), Adult Education Service Provider Identification System (000781), Agency Course Identifier (001280), Course Code System (000056), Federal School Code (000111), Institution IPEDS UnitID (000166), Local Education Agency Identification System (001072), Local Education Agency Supervisory Union Identification Number (000175), Office of Postsecondary Education Identifier (000203), School Identification System (001073), State Agency Identification System (001491), Course Section Number (001315)]' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'OrganizationIdentifier', 
@level2type=N'COLUMN',@level2name=N'RefOrganizationIdentificationSystemId'
GO

PRINT N'RefOganizationIdentifierType'
GO
CREATE TABLE [dbo].[RefOrganizationIdentifierType](
   [RefOrganizationIdentifierTypeId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefOrganizationIdentifierType] PRIMARY KEY CLUSTERED ([RefOrganizationIdentifierTypeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefOrganizationIdentifierType]  WITH CHECK ADD CONSTRAINT [FK_RefOrganizationIdentifierType_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefOrganizationIdentifierType] CHECK CONSTRAINT [FK_RefOrganizationIdentifierType_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefOrganizationIdentifierType', 
	@level2type=N'COLUMN',@level2name=N'RefOrganizationIdentifierTypeId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'List of identification system types.' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefOrganizationIdentifierType', 
	@level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefOrganizationIdentifierType', 
	@level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefOrganizationIdentifierType', 
	@level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'List of identification system types.' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefOrganizationIdentifierType'
GO

ALTER TABLE dbo.RefOrganizationIdentificationSystem ADD RefOrganizationIdentifierTypeId INT NULL;
GO

ALTER TABLE dbo.RefOrganizationIdentificationSystem  WITH CHECK ADD  
	CONSTRAINT [FK_RefOrgIdentificationSystem _RefOrganizationIdentifierType] 
	FOREIGN KEY([RefOrganizationIdentifierTypeId])
	REFERENCES [dbo].[RefOrganizationIdentifierType] ([RefOrganizationIdentifierTypeId])
GO
	
ALTER TABLE dbo.RefOrganizationIdentificationSystem CHECK 
	CONSTRAINT [FK_RefOrgIdentificationSystem _RefOrganizationIdentifierType] 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'List of identification system types.' , 
	@level0type = N'Schema', @level0name = 'dbo',
	@level1type = N'Table', @level1name = 'RefOrganizationIdentificationSystem',
	@level2type = N'Column', @level2name = 'RefOrganizationIdentifierTypeId'
GO

PRINT N'RefPersonIdentifierType'
GO
CREATE TABLE [dbo].[RefPersonIdentifierType](
   [RefPersonIdentifierTypeId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefPersonIdentifierType] PRIMARY KEY CLUSTERED ([RefPersonIdentifierTypeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefPersonIdentifierType]  WITH CHECK ADD CONSTRAINT [FK_RefPersonIdentifierType_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefPersonIdentifierType] CHECK CONSTRAINT [FK_RefPersonIdentifierType_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefPersonIdentifierType', 
	@level2type=N'COLUMN',@level2name=N'RefPersonIdentifierTypeId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'List of identification system types.' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefPersonIdentifierType', 
	@level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefPersonIdentifierType', 
	@level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefPersonIdentifierType', 
	@level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'List of identification system types.' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefPersonIdentifierType' 
GO

ALTER TABLE dbo.RefPersonIdentificationSystem ADD RefPersonIdentifierTypeId INT NULL;
GO

ALTER TABLE dbo.RefPersonIdentificationSystem  WITH CHECK ADD  
	CONSTRAINT [FK_RefPersonIdentificationSystem _RefPersonIdentifierType] 
	FOREIGN KEY([RefPersonIdentifierTypeId])
	REFERENCES [dbo].[RefPersonIdentifierType] ([RefPersonIdentifierTypeId])
GO
	
ALTER TABLE dbo.RefPersonIdentificationSystem CHECK 
	CONSTRAINT [FK_RefPersonIdentificationSystem _RefPersonIdentifierType] 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'List of identification system types.' , 
	@level0type = N'Schema', @level0name = 'dbo',
	@level1type = N'Table', @level1name = 'RefPersonIdentificationSystem',
	@level2type = N'Column', @level2name = 'RefPersonIdentifierTypeId'
GO


-- Person Disability / Accommodation Needed Type
ALTER TABLE dbo.PersonDisability ADD RefAccommodationsNeededTypeId INT NULL;
GO

ALTER TABLE dbo.PersonDisability WITH CHECK ADD  
	CONSTRAINT [FK_PersonDisability_RefAccommodationsNeededType] 
	FOREIGN KEY([RefAccommodationsNeededTypeId])
	REFERENCES [dbo].[RefAccommodationsNeededType] ([RefAccommodationsNeededTypeId])
ALTER TABLE dbo.PersonDisability CHECK  
	CONSTRAINT [FK_PersonDisability_RefAccommodationsNeededType] 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Codes identifying the set of health accommodations. [CEDS Element: Accommodations Needed Type, ID:001277]' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'PersonDisability', 
@level2type=N'COLUMN',@level2name=N'RefAccommodationsNeededTypeId'
GO

PRINT N'Person Disability / Disability Condition Type'
GO
ALTER TABLE dbo.PersonDisability ADD RefDisabilityConditionTypeId INT NULL;
GO

ALTER TABLE dbo.PersonDisability WITH CHECK ADD  
	CONSTRAINT [FK_PersonDisability_RefDisabilityConditionType] 
	FOREIGN KEY([RefDisabilityConditionTypeId])
	REFERENCES [dbo].[RefDisabilityConditionType] ([RefDisabilityConditionTypeId])
ALTER TABLE dbo.PersonDisability CHECK 
	CONSTRAINT [FK_PersonDisability_RefDisabilityConditionType] 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Codes identifying the set of disability conditions. [CEDS Element: Disability Condition Type, ID:001320]' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'PersonDisability', 
@level2type=N'COLUMN',@level2name=N'RefDisabilityConditionTypeId'
GO


PRINT N'Person Disability / Disability Determination Source Type'
GO
ALTER TABLE dbo.PersonDisability ADD RefDisabilityDeterminationSourceTypeId INT NULL;
GO

ALTER TABLE dbo.PersonDisability WITH CHECK ADD  
	CONSTRAINT [FK_PersonDisability_RefDisabilityDeterminationSourceType] 
	FOREIGN KEY([RefDisabilityDeterminationSourceTypeId])
	REFERENCES [dbo].[RefDisabilityDeterminationSourceType] ([RefDisabilityDeterminationSourceTypeId])
ALTER TABLE dbo.PersonDisability CHECK 
	CONSTRAINT [FK_PersonDisability_RefDisabilityDeterminationSourceType] 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Codes identifying the set of disability determination sources. [CEDS Element: Disability Determination Source Type, ID:001321]' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'PersonDisability', 
@level2type=N'COLUMN',@level2name=N'RefDisabilityDeterminationSourceTypeId'
GO

PRINT N'IDEA Indicator, Single Parent Status, Migrant Status'
GO
EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'Status types for a person where the possible condition is either Yes (True) or No (False). [CEDS Element IDs: Economic Disadvantage Status (000081), IDEA Indicator (000151), Migrant Status (000189), Single Parent Or Single Pregnant Woman Status (000580)]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefPersonStatusType'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'Status types for a person where the possible condition is either Yes (True) or No (False). [CEDS Element IDs: Economic Disadvantage Status (000081), IDEA Indicator (000151), Migrant Status (000189), Single Parent Or Single Pregnant Woman Status (000580)]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefPersonStatusType', 
	@level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'Status types for a person where the possible condition is either Yes (True) or No (False). [CEDS Element IDs: Economic Disadvantage Status (000081), IDEA Indicator (000151), Migrant Status (000189), Single Parent Or Single Pregnant Woman Status (000580)]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PersonStatus', 
	@level2type=N'COLUMN',@level2name=N'RefPersonStatusTypeId'
GO


PRINT N'Primary Disability Type'
GO
EXEC sp_RENAME 'RefDisabilityType.RefDisabilityId', 'RefDisabilityTypeId', 'COLUMN'
GO
EXEC sp_RENAME 'XPKRefDisability', 'PK_RefDisabilityType'
GO

EXEC sp_RENAME 'PersonDisability.RefPrimaryDisibilityId', 'PrimaryDisabilityTypeId', 'COLUMN'
GO
EXEC sp_RENAME 'FK_PersonDisability_RefDisability', 'FK_PersonDisability_RefDisabilityType'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The disability condition that best describes a person''s impairment. [CEDS Element: Primary Disability Type, ID:000218]' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'PersonDisability', 
@level2type=N'COLUMN',@level2name=N'PrimaryDisabilityTypeId'
GO

PRINT N'Person Identification'
GO
EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The types of person identifiers. [CEDS Elements: Child Identification System (ID:000785), Social Security Number (ID:000259),  Staff Member Identification System (ID:001074), Student Identification System (ID:001075)]' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'RefPersonIdentificationSystem'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The types of person identifiers. [CEDS Elements: Child Identification System (ID:000785), Social Security Number (ID:000259),  Staff Member Identification System (ID:001074), Student Identification System (ID:001075)]' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'RefPersonIdentificationSystem', 
@level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The types of person identifiers. [CEDS Elements: Child Identification System (ID:000785), Social Security Number (ID:000259),  Staff Member Identification System (ID:001074), Student Identification System (ID:001075)]' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'PersonIdentifier', 
@level2type=N'COLUMN',@level2name=N'RefPersonIdentificationSystemId'
GO

PRINT N'Other Name Type'
GO
EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The types of previous, alternate or other names for a person. [CEDS Element: Other Name Type, ID:000634]' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'RefOtherNameType'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The types of previous, alternate or other names for a person. [CEDS Element: Other Name Type, ID:000634]' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'RefOtherNameType', 
@level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The types of previous, alternate or other names for a person. [CEDS Element: Other Name Type, ID:000634]' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'PersonOtherName', 
@level2type=N'COLUMN',@level2name=N'RefOtherNameTypeId'
GO

ALTER TABLE PersonOtherName ALTER COLUMN RefOtherNameTypeID INT NULL
GO

PRINT N'Other First Name'
GO
ALTER TABLE PersonOtherName ADD FirstName NVARCHAR(35) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A first name given to a person. [CEDS Element: Other First Name, ID:001514]' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'PersonOtherName', 
@level2type=N'COLUMN',@level2name=N'FirstName'
GO

PRINT N'Other Middle Name'
GO
ALTER TABLE PersonOtherName ADD MiddleName NVARCHAR(35) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A middle name given to a person. [CEDS Element: Other First Name, ID:001515]' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'PersonOtherName', 
@level2type=N'COLUMN',@level2name=N'MiddleName'
GO

PRINT N'Other Last Name'
GO
ALTER TABLE PersonOtherName ADD LastName NVARCHAR(35) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A last name given to a person. [CEDS Element: Other First Name, ID:001513]' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'PersonOtherName', 
@level2type=N'COLUMN',@level2name=N'LastName'
GO

PRINT N'Instructional Hours Completed'
GO
ALTER TABLE PsStudentEnrollment ALTER COLUMN InstructionalActivityHoursCompleted DECIMAL(9,2) NULL
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The number of credit hours and/or contact hours successfully completed by a person during a term. [CEDS Element: Instructional Hours Completed, ID:000362]' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'PsStudentEnrollment', 
@level2type=N'COLUMN',@level2name=N'InstructionalActivityHoursCompleted'
GO

ALTER TABLE ProgramParticipationAE ADD InstructionalActivityHoursCompleted DECIMAL(9,2) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of credit hours and/or contact hours successfully completed by a person during a term. [CEDS Element: Instructional Hours Completed, ID:000362]' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'ProgramParticipationAE', 
@level2type=N'COLUMN',@level2name=N'InstructionalActivityHoursCompleted'
GO

PRINT N'Alternative Route to Licensure or Certification  ID 000769'
GO
CREATE TABLE [dbo].[RefAltRouteToCertificationOrLicensure](
   [RefAltRouteToCertificationOrLicensureId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefAltRouteToCertificationOrLicensure] PRIMARY KEY CLUSTERED 
	([RefAltRouteToCertificationOrLicensureId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefAltRouteToCertificationOrLicensure]  WITH CHECK ADD CONSTRAINT [FK_RefAltRouteToCertificationOrLicensure_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefAltRouteToCertificationOrLicensure] CHECK CONSTRAINT [FK_RefAltRouteToCertificationOrLicensure_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', 
	@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',
	@level1name=N'RefAltRouteToCertificationOrLicensure', 
	@level2type=N'COLUMN',@level2name=N'RefAltRouteToCertificationOrLicensureId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of whether a person is enrolled in an alternative teacher preparation program as defined by Title II. [CEDS Element: Alternative Route to Certification or Licensure, ID:000769]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefAltRouteToCertificationOrLicensure', 
	@level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefAltRouteToCertificationOrLicensure', 
	@level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefAltRouteToCertificationOrLicensure', 
	@level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of whether a person is enrolled in an alternative teacher preparation program as defined by Title II. [CEDS Element: Alternative Route to Certification or Licensure, ID:000769]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefAltRouteToCertificationOrLicensure'
GO

ALTER TABLE ProgramParticipationTeacherPrep ADD RefAltRouteToCertificationOrLicensureId INT NULL
GO

ALTER TABLE [dbo].[ProgramParticipationTeacherPrep] WITH CHECK ADD CONSTRAINT [FK_ProgramParticipationTeacherPrep_RefAltRouteToCertificationOrLicensure]
  FOREIGN KEY([RefAltRouteToCertificationOrLicensureId]) REFERENCES [dbo].[RefAltRouteToCertificationOrLicensure] ([RefAltRouteToCertificationOrLicensureId])
GO

ALTER TABLE [dbo].[ProgramParticipationTeacherPrep] CHECK CONSTRAINT [FK_ProgramParticipationTeacherPrep_RefAltRouteToCertificationOrLicensure]
GO

PRINT N'Course Credit Basis Type, ID 001303'
GO
ALTER TABLE PsCourse ADD RefCourseCreditBasisTypeId INT NULL
GO

ALTER TABLE [dbo].[PsCourse] WITH CHECK ADD CONSTRAINT [FK_PsCourse_RefCourseCreditBasisType]
  FOREIGN KEY([RefCourseCreditBasisTypeId]) REFERENCES [dbo].[RefCourseCreditBasisType] ([RefCourseCreditBasisTypeId])
GO

ALTER TABLE [dbo].[PsCourse] CHECK CONSTRAINT [FK_PsCourse_RefCourseCreditBasisType]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of enrollment associated with the credit hours for the course. [CEDS Element: Course Credit Basis Type, ID:001303]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PsCourse', 
	@level2type=N'COLUMN',@level2name=N'RefCourseCreditBasisTypeId'
GO

PRINT N'Course Credit Level Type, ID 001304'
GO
ALTER TABLE PsCourse ADD RefCourseCreditLevelTypeId INT NULL
GO

ALTER TABLE [dbo].[PsCourse] WITH CHECK ADD CONSTRAINT [FK_PsCourse_RefCourseCreditLevelType]
  FOREIGN KEY([RefCourseCreditLevelTypeId]) REFERENCES [dbo].[RefCourseCreditLevelType] ([RefCourseCreditLevelTypeId])
GO

ALTER TABLE [dbo].[PsCourse] CHECK CONSTRAINT [FK_PsCourse_RefCourseCreditLevelType]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The level of credit associated with the credit hours earned for the course. [CEDS Element: Course Credit Level Type, ID:001304]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PsCourse', 
	@level2type=N'COLUMN',@level2name=N'RefCourseCreditLevelTypeId'
GO

PRINT N'Course Number, ID 001314'
GO
ALTER TABLE PsCourse ADD CourseNumber NVARCHAR(30) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The official reference number portion of a course identifier. This number normally designates the level of the course as well as the level of the individual expected to enroll in the course. [CEDS Element: Course Number, ID:001314]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PsCourse', 
	@level2type=N'COLUMN',@level2name=N'CourseNumber'
GO

PRINT N'Original Course Identifier, ID 001420'
GO
ALTER TABLE PsCourse ADD OriginalCourseIdentifier NVARCHAR(30) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The course identifier as it was listed when the credit was earned (e.g. before a system conversion) to show consistency between present transcripts and older ones. [CEDS Element: Course Number, ID:001420]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PsCourse', 
	@level2type=N'COLUMN',@level2name=N'OriginalCourseIdentifier'
GO

PRINT N'Override School Course Number, ID 001422'
GO
ALTER TABLE PsCourse ADD OverrideSchoolCourseNumber NVARCHAR(30) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of the way an academic course was identified at an educational institution. [CEDS Element: Override School Course Number, ID:001422]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PsCourse', 
	@level2type=N'COLUMN',@level2name=N'OverrideSchoolCourseNumber'
GO

PRINT N'NCES College Course Map Code, ID 001414'
GO
ALTER TABLE PsCourse ADD RefNCESCollegeCourseMapCodeId INT NULL
GO

ALTER TABLE [dbo].[PsCourse] WITH CHECK ADD CONSTRAINT [FK_PsCourse_RefNCESCollegeCourseMapCode]
  FOREIGN KEY([RefNCESCollegeCourseMapCodeId]) REFERENCES [dbo].[RefNCESCollegeCourseMapCode] ([RefNCESCollegeCourseMapCodeId])
GO

ALTER TABLE [dbo].[PsCourse] CHECK CONSTRAINT [FK_PsCourse_RefNCESCollegeCourseMapCode]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A taxonomy system for coding postsecondary courses in NCES research studies. [CEDS Element: NCES College Course Map Code, ID:001414]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PsCourse', 
	@level2type=N'COLUMN',@level2name=N'RefNCESCollegeCourseMapCodeId'
GO

PRINT N'NCAA Eligibility'
GO
ALTER TABLE PsCourse ADD NCAAEligibilityInd INT NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the course is approved for determining NCAA eligibility. [CEDS Element: NCAA Eligibility, ID: 001413]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PsCourse', 
	@level2type=N'COLUMN',@level2name=N'NCAAEligibilityInd'
GO


PRINT N'Advanced Placement Course Code, ID 001278'
GO
CREATE TABLE [dbo].[RefAdvancedPlacementCourseCode](
   [RefAdvancedPlacementCourseCodeId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefAdvancedPlacementCourseCode] PRIMARY KEY CLUSTERED 
	([RefAdvancedPlacementCourseCodeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefAdvancedPlacementCourseCode]  WITH CHECK ADD CONSTRAINT [FK_RefAdvancedPlacementCourseCode_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefAdvancedPlacementCourseCode] CHECK CONSTRAINT [FK_RefAdvancedPlacementCourseCode_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', 
	@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',
	@level1name=N'RefAdvancedPlacementCourseCode', 
	@level2type=N'COLUMN',@level2name=N'RefAdvancedPlacementCourseCodeId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Course areas for advanced placement or credit. For a list of codes see http://apcentral.collegeboard.com/apc/public/courses/teachers_corner/index.html . [CEDS Element: Advanced Placement Course Code, ID:001278]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefAdvancedPlacementCourseCode', 
	@level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefAdvancedPlacementCourseCode', 
	@level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefAdvancedPlacementCourseCode', 
	@level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Course areas for advanced placement or credit. For a list of codes see http://apcentral.collegeboard.com/apc/public/courses/teachers_corner/index.html . [CEDS Element: Advanced Placement Course Code, ID:001278]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefAdvancedPlacementCourseCode'
GO


ALTER TABLE ClassSection ADD [RefAdvancedPlacementCourseCodeId] [int] NULL
GO

ALTER TABLE [dbo].[ClassSection] WITH CHECK ADD CONSTRAINT [FK_ClassSection_RefAdvancedPlacementCourseCodeId]
  FOREIGN KEY([RefAdvancedPlacementCourseCodeId]) 
  REFERENCES [dbo].[RefAdvancedPlacementCourseCode] ([RefAdvancedPlacementCourseCodeId])
GO

ALTER TABLE [dbo].[ClassSection] CHECK CONSTRAINT [FK_ClassSection_RefAdvancedPlacementCourseCodeId]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Course areas for advanced placement or credit. For a list of codes see http://apcentral.collegeboard.com/apc/public/courses/teachers_corner/index.html . [CEDS Element: Advanced Placement Course Code, ID:001278]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ClassSection', 
	@level2type=N'COLUMN',@level2name=N'RefAdvancedPlacementCourseCodeId'
GO


PRINT N'New table PsSection'
GO
CREATE TABLE [dbo].[PsSection](
   [OrganizationId] [int] NOT NULL,
   CONSTRAINT [PK_PsSection] PRIMARY KEY CLUSTERED 
	([OrganizationId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PsSection] WITH CHECK ADD CONSTRAINT [FK_PsSection_Organization]
  FOREIGN KEY([OrganizationId]) REFERENCES [dbo].[ClassSection] ([OrganizationId])
GO

ALTER TABLE [dbo].[PsSection] CHECK CONSTRAINT [FK_PsSection_Organization]
GO


PRINT N'Course Academic Grade Scale Code, ID 001298'
GO
ALTER TABLE PsSection ADD GradeValueQualifier NCHAR(2) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The grading scale used by an academic educational institution for an academic course. [CEDS Element: Course Academic Grade Scale Code, ID:001298]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PsSection', 
	@level2type=N'COLUMN',@level2name=N'GradeValueQualifier'
GO

PRINT N'Course CIP Code, ID 001502'
GO
ALTER TABLE PsSection ADD RefCipCodeId int NULL
GO

ALTER TABLE dbo.PsSection WITH CHECK ADD  
	CONSTRAINT [FK_PsSection_RefCipCode] FOREIGN KEY([RefCipCodeId])
	REFERENCES [dbo].[RefCipCode] ([RefCipCodeId])
GO

ALTER TABLE dbo.PsSection CHECK CONSTRAINT [FK_PsSection_RefCipCode] 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A six-digit code in the form xx.xxxx that identifies instructional program specialties within educational institutions. [CEDS Element: Classification of Instructional Program Code, ID:000043, Course CIP Code, ID:001502]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PsSection', 
	@level2type=N'COLUMN',@level2name=N'RefCipCodeId'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'A six-digit code in the form xx.xxxx that identifies instructional program specialties within educational institutions. [CEDS Element: Classification of Instructional Program Code, ID:000043, Course CIP Code, ID:001502]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefCipCode'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'A six-digit code in the form xx.xxxx that identifies instructional program specialties within educational institutions. [CEDS Element: Classification of Instructional Program Code, ID:000043, Course CIP Code, ID:001502]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefCipCode', 
	@level2type=N'COLUMN',@level2name=N'Type'
GO

PRINT N'Course GPA Applicability, ID 000060'
GO
ALTER TABLE dbo.PsSection ADD RefCourseGpaApplicabilityId INT NULL;
GO

ALTER TABLE dbo.PsSection  WITH CHECK ADD  
	CONSTRAINT [FK_PsSection _RefCourseGpaApplicability] FOREIGN KEY([RefCourseGpaApplicabilityId])
	REFERENCES [dbo].[RefCourseGpaApplicability] ([RefCourseGpaApplicabilityId])
GO

ALTER TABLE dbo.PsSection CHECK CONSTRAINT [FK_PsSection _RefCourseGpaApplicability]
GO

EXEC sp_addextendedproperty
@name = N'MS_Description', @value = 'An indicator of whether or not this course being described is included in the computation of the student’s Grade Point Average (GPA). [CEDS Element: Course Grade Point Average Applicability, ID:000060]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'PsSection',
@level2type = N'Column', @level2name = 'RefCourseGpaApplicabilityId'
GO

PRINT N'Course Honors Type, ID 001307'
GO
ALTER TABLE dbo.PsSection ADD RefCourseHonorsTypeId INT NULL;
GO

ALTER TABLE dbo.PsSection  WITH CHECK ADD  
	CONSTRAINT [FK_PsSection _RefCourseHonorsType] FOREIGN KEY([RefCourseHonorsTypeId])
	REFERENCES [dbo].[RefCourseHonorsType] ([RefCourseHonorsTypeId])
GO

ALTER TABLE dbo.PsSection CHECK CONSTRAINT [FK_PsSection _RefCourseHonorsType]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the course is or can be counted as an honors course. [CEDS Element: Course Honors Type, ID:001307]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PsSection', 
	@level2type=N'COLUMN',@level2name=N'RefCourseHonorsTypeId'
GO

PRINT N'Course Instruction Method, ID 001308'
GO
ALTER TABLE dbo.PsSection ADD RefCourseInstructionMethodId INT NULL;
GO

ALTER TABLE dbo.PsSection  WITH CHECK ADD  
	CONSTRAINT [FK_PsSection _RefCourseInstructionMethod] FOREIGN KEY([RefCourseInstructionMethodId])
	REFERENCES [dbo].[RefCourseInstructionMethod] ([RefCourseInstructionMethodId])
GO

ALTER TABLE dbo.PsSection CHECK CONSTRAINT [FK_PsSection _RefCourseInstructionMethod]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary method of instruction used for the course. [CEDS Element: Course Instruction Method, ID:001308]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PsSection', 
	@level2type=N'COLUMN',@level2name=N'RefCourseInstructionMethodId'
GO

PRINT N'Course Level Type, ID 001312'
GO
ALTER TABLE dbo.PsSection ADD RefCourseLevelTypeId INT NULL;
GO

ALTER TABLE dbo.PsSection  WITH CHECK ADD  
	CONSTRAINT [FK_PsSection _RefCourseLevelType] FOREIGN KEY([RefCourseLevelTypeId])
	REFERENCES [dbo].[RefCourseLevelType] ([RefCourseLevelTypeId])
GO

ALTER TABLE dbo.PsSection CHECK CONSTRAINT [FK_PsSection _RefCourseLevelType]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The level of work which is reflected in the credits associated with the academic course being described or the level of the typical individual taking the academic course. [CEDS Element: Course Level Type, ID:001312]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PsSection', 
	@level2type=N'COLUMN',@level2name=N'RefCourseLevelTypeId'
GO

PRINT N'Course Instruction Site Name, ID 001309'
GO
CREATE TABLE [dbo].[PsSectionLocation](
   [OrganizationId] [int] NOT NULL,
   [CourseInstructionSiteName] nvarchar(60) NULL
   CONSTRAINT [PK_PsSectionLocation] PRIMARY KEY CLUSTERED 
	([OrganizationId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PsSectionLocation] WITH CHECK ADD CONSTRAINT [FK_PsSectionLocation_PsSection]
  FOREIGN KEY([OrganizationId]) REFERENCES [dbo].[PsSection] ([OrganizationId])
GO

ALTER TABLE [dbo].[PsSectionLocation] CHECK CONSTRAINT [FK_PsSectionLocation_PsSection]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the location at which the course is taught. [CEDS Element: Course Level Type, ID:001309]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PsSectionLocation', 
	@level2type=N'COLUMN',@level2name=N'CourseInstructionSiteName'
GO

PRINT N'Course Instruction Site Type, ID 001310'
GO
ALTER TABLE dbo.PsSectionLocation ADD RefCourseInstructionSiteTypeId int null;
GO

ALTER TABLE [dbo].[PsSectionLocation] WITH CHECK ADD CONSTRAINT [FK_PsSectionLocation_RefCourseInstructionSiteType]
  FOREIGN KEY([RefCourseInstructionSiteTypeId]) REFERENCES [dbo].[RefCourseInstructionSiteType] ([RefCourseInstructionSiteTypeId])
GO

ALTER TABLE [dbo].[PsSectionLocation] CHECK CONSTRAINT [FK_PsSectionLocation_RefCourseInstructionSiteType]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of the type of location at which the course is taught. [CEDS Element: Course Instruction Site Type, ID:001310]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PsSectionLocation', 
	@level2type=N'COLUMN',@level2name=N'RefCourseInstructionSiteTypeId'
GO

PRINT N'Postsecondary Student Entering Term, ID 001427'
GO
ALTER TABLE dbo.PsStudentAcademicRecord ADD EnteringTerm nvarchar(30) null;
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The term and year of the initial enrollment of an individual in credit bearing courses or developmental/remedial courses at an institution after completing high school or a high school equivalency program (e.g., GED, Adult High School Diploma). [CEDS Element: Postsecondary Student Entering Term, ID:001427]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PsStudentAcademicRecord', 
	@level2type=N'COLUMN',@level2name=N'EnteringTerm'
GO

PRINT N'Course Total 001316'
GO
ALTER TABLE dbo.PsStudentAcademicRecord ADD CourseTotal INT null;
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total number of courses listed on a transcript. Used as a check digit for integrity purposes. [CEDS Element: Course Total, ID:001316]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PsStudentAcademicRecord', 
	@level2type=N'COLUMN',@level2name=N'CourseTotal'
GO


ALTER TABLE dbo.PsStudentAcademicRecord ADD RefCreditHoursAppliedOtherProgramId INT null;
GO

ALTER TABLE [dbo].[PsStudentAcademicRecord] WITH CHECK ADD CONSTRAINT [FK_PsStudentAcademicRecord_RefCreditHours]
  FOREIGN KEY([RefCreditHoursAppliedOtherProgramId]) 
  REFERENCES [dbo].[RefCreditHoursAppliedOtherProgram] ([RefCreditHoursAppliedOtherProgramId])
GO

ALTER TABLE [dbo].[PsStudentAcademicRecord] CHECK CONSTRAINT [FK_PsStudentAcademicRecord_RefCreditHours]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Codes identifying the set of credit hours taken in other programs or degrees that were applied to the individual''s degree. [CEDS Element: Credit Hours Applied Other Program, ID:001317]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PsStudentAcademicRecord', 
	@level2type=N'COLUMN',@level2name=N'RefCreditHoursAppliedOtherProgramId'
GO


PRINT N'Graduation Student Cohort, ID 000584'
GO
CREATE TABLE dbo.PsStudentCohort(
	[OrganizationPersonRoleId] [int] NOT NULL,
	[CohortGraduationYear] [nchar](4) NULL,
 CONSTRAINT [PK_PsStudentCohort] PRIMARY KEY CLUSTERED 
(
	[OrganizationPersonRoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PsStudentCohort] WITH CHECK ADD CONSTRAINT [FK_PsStudentCohort_OrganizationPersonRole]
  FOREIGN KEY([OrganizationPersonRoleId]) REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId])
GO

ALTER TABLE [dbo].[PsStudentCohort] CHECK CONSTRAINT [FK_PsStudentCohort_OrganizationPersonRole]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from OrganizationPersonRole.' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PsStudentCohort', 
	@level2type=N'COLUMN',@level2name=N'OrganizationPersonRoleId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The year the cohort graduated with a regular high school diploma. [CEDS Element: Cohort Graduation Year, ID:000584]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PsStudentCohort', 
	@level2type=N'COLUMN',@level2name=N'CohortGraduationYear'
GO


PRINT N'Course Academic Grade Status Code, ID 001299'
GO
CREATE TABLE dbo.PsStudentCourseSectionMark(
	[OrganizationPersonRoleId] [int] NOT NULL,
	[RefCourseAcademicGradeStatusCodeId] int NULL,
 CONSTRAINT [PK_PsStudentCourseSectionMark] PRIMARY KEY CLUSTERED 
(
	[OrganizationPersonRoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PsStudentCourseSectionMark] WITH CHECK ADD CONSTRAINT [FK_PsStudentCourseSectionMark_StudentSection]
  FOREIGN KEY([OrganizationPersonRoleId]) REFERENCES [dbo].[PsStudentSection] ([OrganizationPersonRoleId])
GO

ALTER TABLE [dbo].[PsStudentCourseSectionMark] CHECK CONSTRAINT [FK_PsStudentCourseSectionMark_StudentSection]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from PsStudentSection.' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PsStudentCourseSectionMark', 
	@level2type=N'COLUMN',@level2name=N'OrganizationPersonRoleId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Additional information regarding the context of the given grade. [CEDS Element: Course Academic Grade Status Code, ID:001299]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PsStudentCourseSectionMark', 
	@level2type=N'COLUMN',@level2name=N'RefCourseAcademicGradeStatusCodeId'
GO

PRINT N'Course Narrative Explanation Grade, ID 001313'
GO
ALTER TABLE dbo.PsStudentCourseSectionMark ADD CourseNarrativeExplanationGrade nvarchar(300) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The narrative of the grade awarded to an individual in an academic course in those cases where a course does not receive a letter or numeric grade included in the grading scale of the Course Academic Grade Qualifier. [CEDS Element: Course Narrative Explanation Grade, ID:001313]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PsStudentCourseSectionMark', 
	@level2type=N'COLUMN',@level2name=N'CourseNarrativeExplanationGrade'
GO

PRINT N'Number of Dependents, ID 001415'
GO
ALTER TABLE PsStudentDemographic ADD NumberOfDependents int null
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of children or other dependents who live with the student and receive more than half their support from them. [CEDS Element: Number of Dependents, ID:001415]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PsStudentDemographic', 
	@level2type=N'COLUMN',@level2name=N'NumberOfDependents'
GO


PRINT N'Disability Condition Status Type, 001319'
GO
ALTER TABLE dbo.PersonDisability ADD RefDisabilityConditionStatusCodeId int null
GO

ALTER TABLE [dbo].[PersonDisability] WITH CHECK ADD CONSTRAINT [FK_PersonDisability_RefDisabilityConditionStatusCode]
  FOREIGN KEY([RefDisabilityConditionStatusCodeId]) REFERENCES [dbo].[RefDisabilityConditionStatusCode] ([RefDisabilityConditionStatusCodeId])
GO

ALTER TABLE [dbo].[PersonDisability] CHECK CONSTRAINT [FK_PersonDisability_RefDisabilityConditionStatusCode]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code indicating the disability condition status. [CEDS Element: Disability Condition Status Type, ID:001319]' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'PersonDisability', 
@level2type=N'COLUMN',@level2name=N'RefDisabilityConditionStatusCodeId'
GO

PRINT N'Employment Status While Enrolled, ID 001343'
GO
ALTER TABLE PsStudentEmployment ADD RefEmploymentStatusWhileEnrolledId int null
GO

ALTER TABLE [dbo].[PsStudentEmployment] WITH CHECK ADD CONSTRAINT [FK_PsStudentEmployment_RefEmploymentStatusWhileEnrolled]
  FOREIGN KEY([RefEmploymentStatusWhileEnrolledId]) REFERENCES [dbo].[RefEmploymentStatusWhileEnrolled] ([RefEmploymentStatusWhileEnrolledId])
GO

ALTER TABLE [dbo].[PsStudentEmployment] CHECK CONSTRAINT [FK_PsStudentEmployment_RefEmploymentStatusWhileEnrolled]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of the individual''s employment status while enrolled. [CEDS Element: Employment Status While Enrolled, ID:001343]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PsStudentEmployment', 
	@level2type=N'COLUMN',@level2name=N'RefEmploymentStatusWhileEnrolledId'
GO

PRINT N'Distance Education Program Enrollment Indicator, ID 001323'
GO
ALTER TABLE PsStudentEnrollment ADD DistanceEducationProgramEnrollmentInd bit null
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An individual''s enrollment in a program for which all the required coursework for program completion is able to be completed via distance education courses. Distance education is education that uses one or more technologies to deliver instruction to individuals who are separated from the instructor and to support regular and substantive interaction between the individuals and the instructor synchronously or asynchronously. [CEDS Element: Distance Education Program Enrollment Indicator, ID :01323]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PsStudentEnrollment', 
	@level2type=N'COLUMN',@level2name=N'DistanceEducationProgramEnrollmentInd'
GO

PRINT N'Doctoral Candidacy Admit Indicator, ID 001324'
GO
ALTER TABLE PsStudentEnrollment ADD DoctoralCandidacyAdmitInd bit null
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The individual''s status in being admitted as a doctoral candidate. [CEDS Element: Doctoral Candidacy Admit Indicator, ID:001324]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PsStudentEnrollment', 
	@level2type=N'COLUMN',@level2name=N'DoctoralCandidacyAdmitInd'
GO

PRINT N'Doctoral Candidacy Date, ID 001325'
GO
ALTER TABLE PsStudentEnrollment ADD DoctoralCandidacyDate date null
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date on which the individual was admitted to doctoral candidate status. [CEDS Element: Doctoral Candidacy Date, ID:001325]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PsStudentEnrollment', 
	@level2type=N'COLUMN',@level2name=N'DoctoralCandidacyDate'
GO

PRINT N'Doctoral Exam Taken Date, ID 001326'
GO
ALTER TABLE PsStudentEnrollment ADD DoctoralExamTakenDate date null
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date on which the individual took an exam for advancement in, continuation or completion of a doctoral program.	[CEDS Element: Doctoral Exam Taken Date, ID:001326]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PsStudentEnrollment', 
	@level2type=N'COLUMN',@level2name=N'DoctoralExamTakenDate'
GO

PRINT N'Doctoral Exam Required Code, ID 001327'
GO
ALTER TABLE PsStudentEnrollment ADD RefDoctoralExamsRequiredCodeId int null
GO

ALTER TABLE [dbo].[PsStudentEnrollment] WITH CHECK ADD CONSTRAINT [FK_PsStudentEnrollment_RefDoctoralExamsRequiredCode]
  FOREIGN KEY([RefDoctoralExamsRequiredCodeId]) REFERENCES [dbo].[RefDoctoralExamsRequiredCode] ([RefDoctoralExamsRequiredCodeId])
GO

ALTER TABLE [dbo].[PsStudentEnrollment] CHECK CONSTRAINT [FK_PsStudentEnrollment_RefDoctoralExamsRequiredCode]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A qualifier identifying the types of exams required of doctoral level individuals. [CEDS Element: Doctoral Exams Required Code, ID:001327]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PsStudentEnrollment', 
	@level2type=N'COLUMN',@level2name=N'RefDoctoralExamsRequiredCodeId'
GO

PRINT N'Graduate or Doctoral Exam Results Status, ID:001357'
GO
ALTER TABLE PsStudentEnrollment ADD RefGraduateOrDoctoralExamResultsStatusId int null
GO

ALTER TABLE [dbo].[PsStudentEnrollment] WITH CHECK ADD CONSTRAINT [FK_PsStudentEnrollment_RefGraduateOrDoctoralExamResultsStatus]
  FOREIGN KEY([RefGraduateOrDoctoralExamResultsStatusId]) REFERENCES [dbo].[RefGraduateOrDoctoralExamResultsStatus] ([RefGraduateOrDoctoralExamResultsStatusId])
GO

ALTER TABLE [dbo].[PsStudentEnrollment] CHECK CONSTRAINT [FK_PsStudentEnrollment_RefGraduateOrDoctoralExamResultsStatus]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The individual''s status in completing exams required for graduate or doctoral degree programs. [CEDS Element: Graduate or Doctoral Exam Results Status, ID:001357]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PsStudentEnrollment', 
	@level2type=N'COLUMN',@level2name=N'RefGraduateOrDoctoralExamResultsStatusId'
GO

PRINT N'Oral Defense Completed Indicator, ID: 001416'
GO
ALTER TABLE PsStudentEnrollment ADD OralDefenseCompletedIndicator bit null
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of the individual''s completion of an oral defense. The requirement to conduct an oral defense by doctoral individuals may vary across institutions, programs, or fields of study. [CEDS Element: Oral Defense Completed Indicator, ID: 001416]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PsStudentEnrollment', 
	@level2type=N'COLUMN',@level2name=N'OralDefenseCompletedIndicator'
GO

PRINT N'Oral Defense Date, ID: 001417'
GO
ALTER TABLE PsStudentEnrollment ADD OralDefenseDate date null
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date on which the individual gave an oral defense. [CEDS Element: Oral Defense Date, ID: 001417]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PsStudentEnrollment', 
	@level2type=N'COLUMN',@level2name=N'OralDefenseDate'
GO

PRINT N'Postsecondary Entering Student Indicator, ID: 001426'
GO
ALTER TABLE PsStudentEnrollment ADD PostsecondaryEnteringStudentInd bit null
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The initial enrollment of an individual in credit bearing courses or developmental/remedial courses at an institution after completing high school or a high school equivalency program (e.g. GED, Adult High School Diploma). [CEDS Element: Postsecondary Entering Student Indicator, ID: 001426]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PsStudentEnrollment', 
	@level2type=N'COLUMN',@level2name=N'PostsecondaryEnteringStudentInd'
GO

PRINT N'Thesis or Dissertation Title, ID: 001496'
GO
ALTER TABLE PsStudentEnrollment ADD ThesisOrDissertationTitle nvarchar(300) null
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title of the thesis or dissertation. [CEDS Element: Thesis or Dissertation Title, ID: 001496]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PsStudentEnrollment', 
	@level2type=N'COLUMN',@level2name=N'ThesisOrDissertationTitle'
GO

PRINT N'Distance Education Course Enrollment'
GO
EXEC sp_RENAME 'PsStudentEnrollment.RefDistanceEducationCourseEnollmentrId', 'RefDistanceEducationCourseEnollmentId', 'COLUMN'
GO

PRINT N'Financial Aid Income Level, ID: 001352'
GO
ALTER TABLE PsStudentFinancialAid ADD FinancialAidIncomeLevel decimal(9,2) null
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The income level of an individual that is used by an institution''s financial aid office to determine an individual''s Expected Family Contribution (EFC). For dependent students this will include the parents'' adjusted gross income and the student''s adjusted gross income. For independent students this will include the student''s adjusted gross income. [CEDS Element: Financial Aid Income Level, ID: 001352]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PsStudentFinancialAid', 
	@level2type=N'COLUMN',@level2name=N'FinancialAidIncomeLevel'
GO

PRINT N'Course Repeat Code, ID: 000065'
GO
ALTER TABLE PsStudentSection ADD RefCourseRepeatCodeId int null
GO

ALTER TABLE [dbo].[PsStudentSection] WITH CHECK ADD CONSTRAINT [FK_PsStudentSection_RefCourseRepeatCode]
  FOREIGN KEY([RefCourseRepeatCodeId]) REFERENCES [dbo].[RefCourseRepeatCode] ([RefCourseRepeatCodeId])
GO

ALTER TABLE [dbo].[PsStudentSection] CHECK CONSTRAINT [FK_PsStudentSection_RefCourseRepeatCode]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates that an academic course has been repeated by a student and how that repeat is to be computed in the student''s academic grade average. [CEDS Element: Course Repeat Code, ID:000065]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PsStudentSection', 
	@level2type=N'COLUMN',@level2name=N'RefCourseRepeatCodeId'
GO


PRINT N'Employment End Date, ID: 000795'
GO
EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The last date when a status applied to an individual. [CEDS Elements: Enrollment Status End Date (000975), Status End Date (001228), Employment End Date (000795)]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RoleStatus', 
	@level2type=N'COLUMN',@level2name=N'StatusEndDate'
GO

PRINT N'Employment Start Date, ID: 000346'
GO
EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The date that a status became applicable to an individual. [CEDS Elements: Enrollment Status Start Date (000974), Status Start Date (001227), Employment Start Date (000346)]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RoleStatus', 
	@level2type=N'COLUMN',@level2name=N'StatusStartDate'
GO

PRINT N'Career and Technical Education Instructor Industry Certification, ID: 001318'
GO
ALTER TABLE StaffCredential ADD CTEInstructorIndustryCertification bit null
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of whether a Career and Technical Education (CTE) instructor holds a current industry-recognized credential related to their teaching field. [CEDS Element: Career and Technical Education Instructor Industry Certification, ID: 001318]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'StaffCredential', 
	@level2type=N'COLUMN',@level2name=N'CTEInstructorIndustryCertification'
GO

PRINT N'Address type for Learner'
GO
EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The type of address for a person. [CEDS Elements: Address Type for Learner or Family (000010), Address Type for  (000722)]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefPersonLocationType'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The type of address for a person. [CEDS Elements: Address Type for Learner or Family (000010), Address Type for  (000722)]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PersonAddress', 
	@level2type=N'COLUMN',@level2name=N'RefPersonLocationTypeId'
GO

PRINT N'Country Code'
GO
EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The unique two character International Organization for Standardization (ISO) code for the country in which an address is located. [CEDS Element: Country Code, ID:000050]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PersonAddress', 
	@level2type=N'COLUMN',@level2name=N'RefCountryId'
GO

PRINT N'RefLanguage'
GO
EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The specific language or dialect that a person uses to communicate. [CEDS Element: Language Code (000317), Learning Resource Language (000919), Language of Session (001388)]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefLanguage'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The specific language or dialect that a person uses to communicate. [CEDS Element: Language Code (000317), Learning Resource Language (000919)]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefLanguage', 
	@level2type=N'COLUMN',@level2name=N'Type'
GO

PRINT N'State Abbreviation'
GO
EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The abbreviation for the state (within the United States) or outlying area in which an address is located. [CEDS Element: State Abbreviation, ID:000267]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PersonAddress', 
	@level2type=N'COLUMN',@level2name=N'RefStateId'
GO




/*-- 

	 This section includes changes as requested for the K12 and Assessment 
	 stakeholder groups.  

--*/

PRINT N'Indident - Student ID is not an identifier, it is the unique ID in OrgPersonRole'
GO
EXEC sp_RENAME 'Incident.StudentId', 'OrganizationPersonRoleId', 'COLUMN'
GO

PRINT N'AssessmentItem_LearningStandardItem can be removed, use LearningStandardItemAssociation instead.'
GO
if exists (Select top 1 AssessmentItem_AssessmentLearningStandardItemId from dbo.AssessmentItem_LearningStandardItem)
	BEGIN
		EXEC sp_RENAME 'AssessmentItem_LearningStandardItem', 'AssessmentItem_LearningStandardItemBackup';
	END
else
	DROP TABLE AssessmentItem_LearningStandardItem
GO

PRINT N'Rubric Criterion'
GO
CREATE TABLE dbo.RubricCriterion(
	[RubricCriterionId] int IDENTITY(1,1) NOT NULL,
	[Category] nvarchar(30) NULL,
	[Title] nvarchar(30) NULL,
	[Description] nvarchar(max) NULL,
	[Weight] decimal NULL,
	[Position] int NULL,
	[RubricId] int NOT NULL,
 CONSTRAINT [PK_RubricCriterion] PRIMARY KEY CLUSTERED 
(
	[RubricCriterionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RubricCriterion] WITH CHECK ADD CONSTRAINT [FK_RubricCriterion_Rubric]
  FOREIGN KEY([RubricId]) REFERENCES [dbo].[Rubric] ([RubricId])
GO

ALTER TABLE [dbo].[RubricCriterion] CHECK CONSTRAINT [FK_RubricCriterion_Rubric]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key.' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RubricCriterion', 
	@level2type=N'COLUMN',@level2name=N'RubricCriterionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title of the rubric criterion. [CEDS Element: Rubric Criterion Title, ID:001477]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RubricCriterion', 
	@level2type=N'COLUMN',@level2name=N'Title'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Text describing a criterion that must be met to demonstrate quality for a product, process, or performance task. [CEDS Element: Rubric Criterion Description, ID:001471' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RubricCriterion', 
	@level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A numeric weight assigned to this Rubric Criterion, used for scored rubrics. [CEDS Element: Rubric Criterion Weight, ID: 001478]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RubricCriterion', 
	@level2type=N'COLUMN',@level2name=N'Weight'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A numeric value representing this criterion''s position in the criteria list for this rubric. [CEDS Element: Rubric Criteriod Position, ID: 001476]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RubricCriterion', 
	@level2type=N'COLUMN',@level2name=N'Position'
GO

PRINT N'Rubric CriterionLevel'
GO
CREATE TABLE dbo.RubricCriterionLevel(
	[RubricCriterionLevelId] int IDENTITY(1,1) NOT NULL,
	[Description] nvarchar(max) NULL,
	[Quality] nvarchar(max) NULL,
	[Score] decimal NULL,
	[Feedback] nvarchar(max) NULL,
	[Position] int NULL,
	[RubricCriterionId] int NOT NULL,
 CONSTRAINT [PK_RubricCriterionLevel] PRIMARY KEY CLUSTERED 
(
	[RubricCriterionLevelId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RubricCriterionLevel] WITH CHECK ADD CONSTRAINT [FK_RubricCriterionLevel_RubricCriterion]
  FOREIGN KEY([RubricCriterionId]) REFERENCES [dbo].[RubricCriterion] ([RubricCriterionId])
GO

ALTER TABLE [dbo].[RubricCriterionLevel] CHECK CONSTRAINT [FK_RubricCriterionLevel_RubricCriterion]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key.' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RubricCriterionLevel', 
	@level2type=N'COLUMN',@level2name=N'RubricCriterionLevelId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Text describing a criterion that must be met to demonstrate quality for a product, process, or performance task. [CEDS Element: Rubric Criterion Level Description, ID:001470]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RubricCriterionLevel', 
	@level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A qualitative description of this degree of achievement used for column headers or row labels in tabular rubrics. [CEDS Element: Rubric Criterion Level Quality Label, ID: 001474]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RubricCriterionLevel', 
	@level2type=N'COLUMN',@level2name=N'Quality'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The points awarded for achieving this level. [CEDS Element: Rubric Criterion Level Score, ID: 001475]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RubricCriterionLevel', 
	@level2type=N'COLUMN',@level2name=N'Score'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Pre-defined feedback text to be relayed to the person or organization being evaluated.  This may include guidance and suggestions for improvement or development. [CEDS Element: Rubric Criterion Level Feedback, ID: 001472]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RubricCriterionLevel', 
	@level2type=N'COLUMN',@level2name=N'Feedback'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A numeric value representing the level''s position in the list of levels defined for the Rubric Criterion. [CEDS Element: Rubric Criterion Level Position, ID: 001473]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RubricCriterionLevel', 
	@level2type=N'COLUMN',@level2name=N'Position'
GO



PRINT N'Rename table ProfessionalDevelopmentActivity to StaffProfessionalDevelopmentActivity'
GO
if exists (Select top 1 ProfessionalDevelopmentActivityId from dbo.ProfessionalDevelopmentActivity)
	BEGIN
		SELECT * INTO ProfessionalDevelomentActivityBackup FROM ProfessionalDevelopmentActivity
	END
GO

EXEC sp_RENAME 'ProfessionalDevelopmentActivity', 'StaffProfessionalDevelopmentActivity'
GO

EXEC sp_RENAME 'StaffProfessionalDevelopmentActivity.ProfessionalDevelopmentActivityId', 'StaffProfessionalDevelopmentActivityId', 'COLUMN'
GO

EXEC sp_RENAME 'StaffProfessionalDevelopmentActivity.ProfessionalDevelopmentId', 'ProfessionalDevelopmentRequirementId', 'COLUMN'
GO

EXEC sp_RENAME 'StaffProfessionalDevelopmentActivity.TrainingIdentifier', 'ActivityIdentifier', 'COLUMN'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to the Professional Development Activity as assigned by the organization offering the activity. [CEDS Element: Professional Development Activity Identifier, ID: 000809]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'StaffProfessionalDevelopmentActivity', 
	@level2type=N'COLUMN',@level2name=N'ActivityIdentifier'
GO

EXEC sp_RENAME 'PK_ProfessionalDevelopmentActivity', 'PK_StaffProfessionalDevelopmentActivity'
GO

EXEC sp_RENAME 'FK_ProfessionalDevelopmentActivity_ProfessionalDevelopment', 'FK_PDActivity_PDRequirement'
GO

EXEC sp_RENAME 'FK_ProfessionalDevelopmentActivity_RefCourseCreditUnit', 'FK_PDActivity_RefCourseCreditUnit'
GO

EXEC sp_RENAME 'FK_ProfessionalDevelopmentActivity_RefProfDevFinancialSupport', 'FK_PD_RefProfDevFinancialSupport'
GO

EXEC sp_RENAME 'StaffProfessionalDevelopmentActivity.ActivityTitle', 'ActivityTitle', 'COLUMN'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'Information about a person''s participation in a professional development activity and outcomes from that participation that may be related to a Professional Development Requirement.  The StaffProfessionalDevelopmentActivity may also be more granularly defined as a person''s participation in a specific Professional Development Session, indicated by reference.' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'StaffProfessionalDevelopmentActivity'
GO


PRINT N'Add new table ProfessionalDevelopmentActivity '
CREATE TABLE [dbo].[ProfessionalDevelopmentActivity](
	[ProfessionalDevelopmentActivityId] [int] IDENTITY(1,1) NOT NULL,
	[CourseId] [int] NULL,
	[ProfessionalDevelopmentRequirementId] [int] NOT NULL,
	[Title] [nvarchar](50) NULL,
	[ActivityIdentifier] [nvarchar](30) NULL,
	[Description] [nvarchar](2000) NULL,
	[Objective] [nvarchar](2000) NULL,
	[ActivityCode] [nvarchar](30) NULL,
	[ApprovalCode] [nvarchar](30) NULL,
	[Cost] [decimal](6,2) NULL,
	[Credits] [decimal](6,2) NULL,
	[RefCourseCreditUnitId] [int] NULL,
	[ScholarshipStatus] [bit] NULL,
	[RefProfessionalDevelopmentFinancialSupportId] [int] NULL,
 CONSTRAINT [PK_ProfessionalDevelopmentActivity] PRIMARY KEY CLUSTERED 
(
	[ProfessionalDevelopmentActivityId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ProfessionalDevelopmentActivity', 
	@level2type=N'COLUMN',@level2name=N'ProfessionalDevelopmentActivityId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign key - Course.' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ProfessionalDevelopmentActivity', 
	@level2type=N'COLUMN',@level2name=N'CourseId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign key - ProfessionaDevelopmentRequirement.' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ProfessionalDevelopmentActivity', 
	@level2type=N'COLUMN',@level2name=N'ProfessionalDevelopmentRequirementId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title of an activity designed for the purpose of developing someone professionally. [CEDS Element: Professional Development Activity Title, ID:000810]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ProfessionalDevelopmentActivity', 
	@level2type=N'COLUMN',@level2name=N'Title'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to the Professional Development Activity as assigned by the organization offering the activity. [CEDS Element: Professional Development Activity Identifier, ID: 000809]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ProfessionalDevelopmentActivity', 
	@level2type=N'COLUMN',@level2name=N'ActivityIdentifier'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A description of the content covered in the professional development activity. [CEDS Element: Professional Development Activity Description, ID: 001438]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ProfessionalDevelopmentActivity', 
	@level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The expected outcomes of a participant in an activity. [CEDS Element: Professional Development Activity Objective, ID: 001440]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ProfessionalDevelopmentActivity', 
	@level2type=N'COLUMN',@level2name=N'Objective'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code assigned to an professional development activity by the organization offering the activity that is unique to the non-variable activity details. [CEDS Element: Professional Development Activity Code, ID: 001434]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ProfessionalDevelopmentActivity', 
	@level2type=N'COLUMN',@level2name=N'ActivityCode'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code given to an event by approval organization. [CEDS Element: Professional Development Approval Code, ID: 001432]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ProfessionalDevelopmentActivity', 
	@level2type=N'COLUMN',@level2name=N'ApprovalCode'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The cost for an attendee to participate in a professional development activity. [CEDS Element: Professional Development Activity Cost, ID: 001435]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ProfessionalDevelopmentActivity', 
	@level2type=N'COLUMN',@level2name=N'Cost'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of credits a professional development activity provides. [CEDS Element: Professional Development Activity Credits, ID: 001437]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ProfessionalDevelopmentActivity', 
	@level2type=N'COLUMN',@level2name=N'Credits'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of whether a scholarship was received for the person to participate in the professional development. [CEDS Element: Professional Development Scholarship Status, ID:000811]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ProfessionalDevelopmentActivity', 
	@level2type=N'COLUMN',@level2name=N'ScholarshipStatus'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of financial assistance received in support of non-credit professional development activities. [CEDS Element: Professional Development Financial Support Type, ID:000812]  (Foreign key - RefProfessionalDevelopmentFinancialSupport)' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ProfessionalDevelopmentActivity', 
	@level2type=N'COLUMN',@level2name=N'RefProfessionalDevelopmentFinancialSupportId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of credit (unit, semester, or quarter) associated with the credit hours earned for the course.  [CEDS Element: Course Credit Units, ID:000057]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ProfessionalDevelopmentActivity', 
	@level2type=N'COLUMN',@level2name=N'RefCourseCreditUnitId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An activity designed for the purpose of developing somebody professionally.' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ProfessionalDevelopmentActivity'
GO

ALTER TABLE [dbo].[ProfessionalDevelopmentActivity]  WITH CHECK ADD  
	CONSTRAINT [FK_PDSession_PDRequirement] FOREIGN KEY([ProfessionalDevelopmentRequirementId])
	REFERENCES [dbo].[ProfessionalDevelopmentRequirement] ([ProfessionalDevelopmentRequirementId])
GO

ALTER TABLE [dbo].[ProfessionalDevelopmentActivity] CHECK CONSTRAINT [FK_PDSession_PDRequirement]
GO

ALTER TABLE [dbo].[ProfessionalDevelopmentActivity]  WITH CHECK ADD  
	CONSTRAINT [FK_PDSession_RefCourseCreditUnit] FOREIGN KEY([RefCourseCreditUnitId])
	REFERENCES [dbo].[RefCourseCreditUnit] ([RefCourseCreditUnitId])
GO

ALTER TABLE [dbo].[ProfessionalDevelopmentActivity] CHECK CONSTRAINT [FK_PDSession_RefCourseCreditUnit]
GO

ALTER TABLE [dbo].[ProfessionalDevelopmentActivity]  WITH CHECK ADD  
	CONSTRAINT [FK_PDSession_RefProfDevFinancialSupport] FOREIGN KEY([RefProfessionalDevelopmentFinancialSupportId])
	REFERENCES [dbo].[RefProfessionalDevelopmentFinancialSupport] ([RefProfessionalDevelopmentFinancialSupportId])
GO

ALTER TABLE [dbo].[ProfessionalDevelopmentActivity] CHECK CONSTRAINT [FK_PDSession_RefProfDevFinancialSupport]
GO

ALTER TABLE [dbo].[ProfessionalDevelopmentActivity]  WITH CHECK ADD  
	CONSTRAINT [FK_PDSession_Course] FOREIGN KEY([CourseId])
	REFERENCES [dbo].[Course] ([OrganizationId])
GO

ALTER TABLE [dbo].[ProfessionalDevelopmentActivity] CHECK CONSTRAINT [FK_PDSession_Course]
GO


PRINT N'Create table ProfessionalDevelopmentSession'
GO
CREATE TABLE [dbo].[ProfessionalDevelopmentSession](
	[ProfessionalDevelopmentSessionId] [int] IDENTITY(1,1) NOT NULL,
	[ProfessionalDevelopmentActivityId] [int] NOT NULL,
	[SessionIdentifier] [nvarchar](30) NULL,  
	[RefPDDeliveryMethodId] [int] NULL,
	[Capacity] [int] NULL,
	[StartDate] [date] NULL,
	[StartTime] [nvarchar](15) NULL,
	[EndDate] [date] NULL,
	[EndTime] [nvarchar](15) NULL,
	[LocationName] [nvarchar](60) NULL,
	[EvaluationMethod] [nvarchar](30) NULL,
	[EvaluationScore] [nvarchar](30) NULL,
	[ExpirationDate] [date] NULL,
	[RefPDSessionStatusId] [int] NULL,
	[RefPDInstructionalDeliveryModeId] [int] NULL,
 CONSTRAINT [PK_ProfessionalDevelopmentSession] PRIMARY KEY CLUSTERED 
(
	[ProfessionalDevelopmentSessionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ProfessionalDevelopmentSession', 
	@level2type=N'COLUMN',@level2name=N'ProfessionalDevelopmentSessionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign key - Professional Development Activity' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ProfessionalDevelopmentSession', 
	@level2type=N'COLUMN',@level2name=N'ProfessionalDevelopmentActivityId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique, non-duplicated, identification number assigned by the registry data system for a session of a particular professional development session. [CEDS Element: Professional Development Session Identifier, ID: 001452]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ProfessionalDevelopmentSession', 
	@level2type=N'COLUMN',@level2name=N'SessionIdentifier'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The method by which a session is delivered [CEDS Element: Professional Development Delivery Method, ID:001431]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ProfessionalDevelopmentSession', 
	@level2type=N'COLUMN',@level2name=N'RefPDDeliveryMethodId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total number of participants that can be accommodated by a professional development session. [CEDS Element: Professional Development Session Capacity, ID: 001446]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ProfessionalDevelopmentSession', 
	@level2type=N'COLUMN',@level2name=N'Capacity'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date a professional development session begins. [CEDS Element: Professional Development Session Start Date, ID: 001455]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ProfessionalDevelopmentSession', 
	@level2type=N'COLUMN',@level2name=N'StartDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The time at which a professional development session begins. [CEDS Element: Professional Development Session Start Time, ID: 001456]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ProfessionalDevelopmentSession', 
	@level2type=N'COLUMN',@level2name=N'StartTime'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date a professional development session ends. [CEDS Element: Professional Development Session End Date, ID: 001447]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ProfessionalDevelopmentSession', 
	@level2type=N'COLUMN',@level2name=N'EndDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The time at which a professional development session ends. [CEDS Element: Professional Development Session End Time, ID: 001448]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ProfessionalDevelopmentSession', 
	@level2type=N'COLUMN',@level2name=N'EndTime'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of a location where a professional development session will be held. [CEDS Element: Professional Development Session Location Name, ID:001454]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ProfessionalDevelopmentSession', 
	@level2type=N'COLUMN',@level2name=N'LocationName'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The method used to evaluate a professional development session. [CEDS Element: Professional Development Session Evaluation Method, ID:001449]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ProfessionalDevelopmentSession', 
	@level2type=N'COLUMN',@level2name=N'EvaluationMethod'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The score or rating used to determine if a professional development session was successful. [CEDS Element: Professional Developmnet Session Evaluation Score, ID:001450]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ProfessionalDevelopmentSession', 
	@level2type=N'COLUMN',@level2name=N'EvaluationScore'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date on which any certificate awarded as part of a professional development activity expires.  [CEDS Element: Professional Development Session Expiration Date, ID:001451]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ProfessionalDevelopmentSession', 
	@level2type=N'COLUMN',@level2name=N'ExpirationDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The current status of a professional development session [CEDS Element: Professional Development Session Status, ID:001457]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ProfessionalDevelopmentSession', 
	@level2type=N'COLUMN',@level2name=N'RefPDSessionStatusId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary setting or medium of professional development delivery. [CEDS Element: Professional Development Instructional Delivery Mode, ID:001458]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ProfessionalDevelopmentSession', 
	@level2type=N'COLUMN',@level2name=N'RefPDInstructionalDeliveryModeId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An Session designed for the purpose of developing somebody professionally.' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ProfessionalDevelopmentSession'
GO

ALTER TABLE [dbo].[ProfessionalDevelopmentSession]  WITH CHECK ADD  
	CONSTRAINT [FK_PDSession_PDActivity] FOREIGN KEY([ProfessionalDevelopmentActivityId])
	REFERENCES [dbo].[ProfessionalDevelopmentActivity] ([ProfessionalDevelopmentActivityId])
GO

ALTER TABLE [dbo].[ProfessionalDevelopmentSession] CHECK CONSTRAINT [FK_PDSession_PDActivity]
GO

ALTER TABLE [dbo].[ProfessionalDevelopmentSession]  WITH CHECK ADD  
	CONSTRAINT [FK_PDSession_RefPDSessionStatus] FOREIGN KEY([RefPDSessionStatusId])
	REFERENCES [dbo].[RefPDSessionStatus] ([RefPDSessionStatusId])
GO

ALTER TABLE [dbo].[ProfessionalDevelopmentSession] CHECK CONSTRAINT [FK_PDSession_RefPDSessionStatus]
GO

ALTER TABLE [dbo].[ProfessionalDevelopmentSession]  WITH CHECK ADD  
	CONSTRAINT [FK_PDSession_RefPDInstructionalDeliveryMode] FOREIGN KEY([RefPDInstructionalDeliveryModeId])
	REFERENCES [dbo].[RefPDInstructionalDeliveryMode] ([RefPDInstructionalDeliveryModeId])
GO

ALTER TABLE [dbo].[ProfessionalDevelopmentSession] CHECK CONSTRAINT [FK_PDSession_RefPDInstructionalDeliveryMode]
GO

-- Add FK's to Staff Professional Development Activity
ALTER TABLE StaffProfessionalDevelopmentActivity ADD ProfessionalDevelopmentActivityId INT NOT NULL
GO

ALTER TABLE [dbo].[StaffProfessionalDevelopmentActivity]  WITH CHECK ADD  
	CONSTRAINT [FK_StaffPDActivity_PDActivity] FOREIGN KEY([ProfessionalDevelopmentActivityId])
	REFERENCES [dbo].[ProfessionalDevelopmentActivity] ([ProfessionalDevelopmentActivityId])
GO

ALTER TABLE [dbo].[StaffProfessionalDevelopmentActivity] CHECK CONSTRAINT [FK_StaffPDActivity_PDActivity] 
GO

ALTER TABLE StaffProfessionalDevelopmentActivity ADD OrganizationPersonRoleId INT NOT NULL
GO

ALTER TABLE [dbo].[StaffProfessionalDevelopmentActivity]  WITH CHECK ADD  
	CONSTRAINT [FK_StaffPDActivity_OrgPersonRole] FOREIGN KEY([OrganizationPersonRoleId])
	REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId])
GO

ALTER TABLE [dbo].[StaffProfessionalDevelopmentActivity] CHECK CONSTRAINT [FK_StaffPDActivity_OrgPersonRole] 
GO

ALTER TABLE StaffProfessionalDevelopmentActivity ADD ProfessionalDevelopmentSessionId INT NOT NULL
GO

ALTER TABLE [dbo].[StaffProfessionalDevelopmentActivity]  WITH CHECK ADD  
	CONSTRAINT [FK_StaffPDActivity_PDSession] FOREIGN KEY([ProfessionalDevelopmentSessionId])
	REFERENCES [dbo].[ProfessionalDevelopmentSession] ([ProfessionalDevelopmentSessionId])
GO

ALTER TABLE [dbo].[StaffProfessionalDevelopmentActivity] CHECK CONSTRAINT [FK_StaffPDActivity_PDSession] 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign key - Professional Development Session' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'StaffProfessionalDevelopmentActivity', 
	@level2type=N'COLUMN',@level2name=N'ProfessionalDevelopmentSessionId'
GO

PRINT N'Financial Account'
GO
CREATE TABLE [dbo].[FinancialAccount](
	[FinancialAccountId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar] (100) NOT NULL,
	[Description] [nvarchar](300) NULL,  
	[AccountNumber] [nvarchar](30) NULL,
	[RefFinancialAccountCategoryId] [int] NULL,
 CONSTRAINT [PK_FinancialAccount] PRIMARY KEY CLUSTERED 
(
	[FinancialAccountId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[FinancialAccount]  WITH CHECK ADD  
	CONSTRAINT [FK_FinancialAccount_RefFinancialAccountCategory] FOREIGN KEY([RefFinancialAccountCategoryId])
	REFERENCES [dbo].[RefFinancialAccountCategory] ([RefFinancialAccountCategoryId])
GO

ALTER TABLE [dbo].[FinancialAccount] CHECK CONSTRAINT [FK_FinancialAccount_RefFinancialAccountCategory] 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'FinancialAccount', 
	@level2type=N'COLUMN',@level2name=N'FinancialAccountId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name given to the financial account in an educational institution''s accounting system. [CEDS Element: Financial Account Name, ID: 001348]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'FinancialAccount', 
	@level2type=N'COLUMN',@level2name=N'Name'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description for the financial account in an educational institution''s accounting system. [CEDS Eleement: Financial Account Description, ID: 001346]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'FinancialAccount', 
	@level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A label for a grouping of financial accounts, based on type and purpose. [CEDS Element: Financial Account Category, ID:001345]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'FinancialAccount', 
	@level2type=N'COLUMN',@level2name=N'RefFinancialAccountCategoryId'
GO


PRINT N'OrganizationFinancial'
GO
CREATE TABLE [dbo].[OrganizationFinancial](
	[OrganizationFinancialId] [int] IDENTITY(1,1) NOT NULL,
	[FinancialAccountId] [int] NOT NULL,
	[OrganizationCalendarSessionId] [int] NOT NULL,
	[ActualValue] [decimal](12,2) NULL,  
	[BudgetedValue] [decimal](12,1) NULL,
 CONSTRAINT [PK_OrganizationFinancial] PRIMARY KEY CLUSTERED 
(
	[OrganizationFinancialId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[OrganizationFinancial]  WITH CHECK ADD  
	CONSTRAINT [FK_OrganizationFinancial_FinancialAccount] FOREIGN KEY([FinancialAccountId])
	REFERENCES [dbo].[FinancialAccount] ([FinancialAccountId])
GO

ALTER TABLE [dbo].[OrganizationFinancial] CHECK CONSTRAINT [FK_OrganizationFinancial_FinancialAccount] 
GO

ALTER TABLE [dbo].[OrganizationFinancial]  WITH CHECK ADD  
	CONSTRAINT [FK_OrganizationFinancial_OrgCalendarSession] FOREIGN KEY([OrganizationCalendarSessionId])
	REFERENCES [dbo].[OrganizationCalendarSession] ([OrganizationCalendarSessionId])
GO

ALTER TABLE [dbo].[OrganizationFinancial] CHECK CONSTRAINT [FK_OrganizationFinancial_OrgCalendarSession] 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The intersection of FinancialAccount and OrganizationCalendarSession (representing an AccountingPeriod) and containing the values for that accounting period.' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'OrganizationFinancial' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'OrganizationFinancial', 
	@level2type=N'COLUMN',@level2name=N'OrganizationFinancialId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign key to FinancialAccount' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'OrganizationFinancial', 
	@level2type=N'COLUMN',@level2name=N'FinancialAccountId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign key to OrganizationCalendarSession' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'OrganizationFinancial', 
	@level2type=N'COLUMN',@level2name=N'OrganizationCalendarSessionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The actual value of a financial account for the specified accounting period or academic session. [CEDS Element: Financial Accounting Period Actual Value, ID: 001350]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'OrganizationFinancial', 
	@level2type=N'COLUMN',@level2name=N'ActualValue'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The budgeted value of a financial account for the specified accounting period or academic session. [CEDS Element: Financial Accounting Period Budgeted Value, ID: 001351]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'OrganizationFinancial', 
	@level2type=N'COLUMN',@level2name=N'BudgetedValue'
GO


PRINT N'AssessmentItemRubricCriterionResult'
GO
CREATE TABLE [dbo].[AssessmentItemRubricCriterionResult](
	[AssessmentItemResponseId] [int] NOT NULL,
	[RubricCriterionLevelId] [int] NOT NULL,
 CONSTRAINT [PK_AssessmentItemRubricCriterionResult] PRIMARY KEY CLUSTERED 
(
	[AssessmentItemResponseId], [RubricCriterionLevelId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[AssessmentItemRubricCriterionResult]  WITH CHECK ADD  
	CONSTRAINT [FK_AssessItemRubricCriterionResult_AssessItemResponse] FOREIGN KEY([AssessmentItemResponseId])
	REFERENCES [dbo].[AssessmentItemResponse] ([AssessmentItemResponseId])
GO

ALTER TABLE [dbo].[AssessmentItemRubricCriterionResult] CHECK CONSTRAINT [FK_AssessItemRubricCriterionResult_AssessItemResponse] 
GO

ALTER TABLE [dbo].[AssessmentItemRubricCriterionResult]  WITH CHECK ADD  
	CONSTRAINT [FK_AssessItemRubricCriterionResult_RubricCriterionLevel] FOREIGN KEY([RubricCriterionLevelId])
	REFERENCES [dbo].[RubricCriterionLevel] ([RubricCriterionLevelId])
GO

ALTER TABLE [dbo].[AssessmentItemRubricCriterionResult] CHECK CONSTRAINT [FK_AssessItemRubricCriterionResult_RubricCriterionLevel] 
GO


/* --1219  */

PRINT N'Person Allergy'
GO
CREATE TABLE [dbo].[PersonAllergy](
	[PersonAllergyId] [int] IDENTITY(1,1) NOT NULL,
	[PersonId] [int] NOT NULL,
	[RefAllergyTypeId] [int] NOT NULL,
	[RefAllergySeverityId] [int] NULL,
	[ReactionDescription] [nvarchar] (2000) NULL, 
 CONSTRAINT [PK_PersonAllergy] PRIMARY KEY CLUSTERED 
(
	[PersonAllergyId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key.' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PersonAllergy', 
	@level2type=N'COLUMN',@level2name=N'PersonAllergyId'
GO

ALTER TABLE [dbo].[PersonAllergy]  WITH CHECK ADD  
	CONSTRAINT [FK_PersonAllergy_Person] FOREIGN KEY([PersonId])
	REFERENCES [dbo].[Person] ([PersonId])
GO

ALTER TABLE [dbo].[PersonAllergy] CHECK CONSTRAINT [FK_PersonAllergy_Person] 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Person.' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PersonAllergy', 
	@level2type=N'COLUMN',@level2name=N'PersonId'
GO

ALTER TABLE [dbo].[PersonAllergy]  WITH CHECK ADD  
	CONSTRAINT [FK_PersonAllergy_RefAllergyTypeId] FOREIGN KEY([RefAllergyTypeId])
	REFERENCES [dbo].[RefAllergyType] ([RefAllergyTypeId])
GO

ALTER TABLE [dbo].[PersonAllergy] CHECK CONSTRAINT [FK_PersonAllergy_RefAllergyTypeId] 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Type of allergy condition attributed to a person as defined by the SNOWMED Clinical Terms(r) vocabulary. [CEDS Element: Allergy Type, ID:001283]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PersonAllergy', 
	@level2type=N'COLUMN',@level2name=N'RefAllergyTypeId'
GO

ALTER TABLE [dbo].[PersonAllergy]  WITH CHECK ADD  
	CONSTRAINT [FK_PersonAllergy_RefAllergySeverity] FOREIGN KEY([RefAllergySeverityId])
	REFERENCES [dbo].[RefAllergySeverity] ([RefAllergySeverityId])
GO

ALTER TABLE [dbo].[PersonAllergy] CHECK CONSTRAINT [FK_PersonAllergy_RefAllergySeverity] 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The level of severity of a person''s reaction to an allergen. [CEDS Element: Allergy Severity, ID:001282]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PersonAllergy', 
	@level2type=N'COLUMN',@level2name=N'RefAllergySeverityId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Describes symptoms know to be associated with a person''s reaction to an allergen. [CEDS Element: Allergy Reaction Description, ID:001281]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PersonAllergy', 
	@level2type=N'COLUMN',@level2name=N'ReactionDescription'
GO

PRINT N'Career Education Plan'
GO
CREATE TABLE [dbo].[PersonCareerEducationPlan](
	[PersonCareerEducationPlanId] [int] IDENTITY(1,1) NOT NULL,
	[PersonId] [int] NOT NULL,
	[LastUpdated] [date] NULL,
	[RefCareerEducationPlanTypeId] [int] NULL,
 CONSTRAINT [PK_PersonCareerEducationPlan] PRIMARY KEY CLUSTERED 
(
	[PersonCareerEducationPlanId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key.' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PersonCareerEducationPlan', 
	@level2type=N'COLUMN',@level2name=N'PersonCareerEducationPlanId'
GO

ALTER TABLE [dbo].[PersonCareerEducationPlan]  WITH CHECK ADD  
	CONSTRAINT [FK_PersonCareerEducationPlan_Person] FOREIGN KEY([PersonId])
	REFERENCES [dbo].[Person] ([PersonId])
GO

ALTER TABLE [dbo].[PersonCareerEducationPlan] CHECK CONSTRAINT [FK_PersonCareerEducationPlan_Person] 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Person.' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PersonCareerEducationPlan', 
	@level2type=N'COLUMN',@level2name=N'PersonId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date on which a student''s career plan was last updated.  [CEDS Element: Career Education Plan Date, ID:001289' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PersonCareerEducationPlan', 
	@level2type=N'COLUMN',@level2name=N'LastUpdated'
GO

ALTER TABLE [dbo].[PersonCareerEducationPlan]  WITH CHECK ADD  
	CONSTRAINT [FK_PersonCareerEducationPlan_RefCareerEduPlanType] FOREIGN KEY([RefCareerEducationPlanTypeId])
	REFERENCES [dbo].[RefCareerEducationPlanType] ([RefCareerEducationPlanTypeId])
GO

ALTER TABLE [dbo].[PersonCareerEducationPlan] CHECK CONSTRAINT [FK_PersonCareerEducationPlan_RefCareerEduPlanType] 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indicator of whether a student completed an individualized guidance and counseling plan. [CEDS Element: Career Education Plan Type, ID:001290]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PersonCareerEducationPlan', 
	@level2type=N'COLUMN',@level2name=N'RefCareerEducationPlanTypeId'
GO

PRINT N'Consent To Share Data, ID 001295'
GO
ALTER TABLE ElEnrollment ADD ConsentToShareDataInd bit null
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Primary Caregiver has provided consent to share child and family assessment survey data entered during the current State Fiscal year with external agencies who provide services for the family or its members. [CEDS Element: Consent to Share Data, ID:001295]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ElEnrollment', 
	@level2type=N'COLUMN',@level2name=N'ConsentToShareDataInd'
GO

PRINT N'Rename table AssessmentSubtestResult to AssessmentResult'
GO
EXEC sp_RENAME 'AssessmentSubtestResult', 'AssessmentResult'
GO

EXEC sp_RENAME 'AssessmentResult.AssessmentSubtestResultId', 'AssessmentResultId', 'COLUMN'
GO

EXEC sp_RENAME 'PK_AssessmentSubtestResult', 'PK_AssessmentResult'
GO

EXEC sp_RENAME 'FK_AssessmentSubtestResult_AssessmentRegistration', 'FK_AssessmentResult_AssessmentRegistration'
GO

EXEC sp_RENAME 'FK_AssessmentSubTestResult_FormSubTest', 'FK_AssessmentResult_FormSubTest'
GO

EXEC sp_RENAME 'FK_AssessmentSubtestResult_RefAssessmentPretestOutcome', 'FK_AssessmentResult_RefAssessmentPretestOutcome'
GO

EXEC sp_RENAME 'FK_AssessmentSubtestResult_RefScoreMetricType', 'FK_AssessmentResult_RefScoreMetricType'
GO

PRINT N'Add EL Outcome Measurement Level, ID 001336'
GO
ALTER TABLE AssessmentResult ADD RefELOutcomeMeasurementLevelId [int] null
GO

ALTER TABLE [dbo].[AssessmentResult]  WITH CHECK ADD  
	CONSTRAINT [FK_AssessmentResult_RefELOutcomeMeasurement] FOREIGN KEY([RefELOutcomeMeasurementLevelId])
	REFERENCES [dbo].[RefELOutcomeMeasurementLevel] ([RefELOutcomeMeasurementLevelId])
GO

ALTER TABLE [dbo].[AssessmentResult] CHECK CONSTRAINT [FK_AssessmentResult_RefELOutcomeMeasurement] 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Use for outcome measures in early learning. [CEDS Element: Early Learning Outcome Measurement Level, ID:001336]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'AssessmentResult', 
	@level2type=N'COLUMN',@level2name=N'RefELOutcomeMeasurementLevelId'
GO


PRINT N'New table for EL Child Demographics'
GO
CREATE TABLE [dbo].[ELChildDemographic](
	[PersonId] [int] NOT NULL,
	[FosterCareStartDate] [date] NULL,
	[FosterCareEndDate] [date] NULL,
	[OtherRaceIndicator] bit NULL,
 CONSTRAINT [PK_ELChildDemographic] PRIMARY KEY CLUSTERED 
(
	[PersonId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ELChildDemographic] WITH CHECK ADD  
	CONSTRAINT [FK_ELChildDemographic_Person] FOREIGN KEY([PersonId])
	REFERENCES [dbo].[Person] ([PersonId])
GO

ALTER TABLE [dbo].[ELChildDemographic] CHECK CONSTRAINT [FK_ELChildDemographic_Person] 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Person.' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ELChildDemographic', 
	@level2type=N'COLUMN',@level2name=N'PersonId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date a child or youth entered foster care. [CEDS Element: Foster Care Start Date, ID: 001523]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ELChildDemographic', 
	@level2type=N'COLUMN',@level2name=N'FosterCareStartDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date a child or youth exited foster care. [CEDS Element: Foster Care Start Date, ID: 001522]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ELChildDemographic', 
	@level2type=N'COLUMN',@level2name=N'FosterCareEndDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Race other than American Indian, Black, Asian, White, Native Pacific Islander. [CEDS Element: Other Race Indicator, ID: 001421]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ELChildDemographic', 
	@level2type=N'COLUMN',@level2name=N'OtherRaceIndicator'
GO


PRINT N'New table for EL Child IDEA'
GO
CREATE TABLE [dbo].[ELChildIDEA](
	[PersonId] [int] NOT NULL,
	[RefIDEAIEPStatusId] [int] NULL,
	[PartB619PotentialEligibilityInd] [bit] NULL,
	[PartCToBSharingNotificationDate] [date] NULL,
	[PartCToBDateOfTransitionConference] [date] NULL,
	[PartCToBDateOfTransitionConferenceDecline] [date] NULL,
	[PartCToBDateOfTransitionPlanStepsOrServices] [date] NULL,
	[PartCToBParentNotificationOptOutDate] [date] NULL,
	[PartCToBParentNotificationOptOutInd] [bit] NULL,
	[ReasonForDeclinedServices] nvarchar(max) NULL,
	[RefReasonDelayTransitionConfId] [int] NULL,
 CONSTRAINT [PK_ELChildIDEA] PRIMARY KEY CLUSTERED 
(
	[PersonId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ELChildIDEA] WITH CHECK ADD  
	CONSTRAINT [FK_ELChildIDEA_Person] FOREIGN KEY([PersonId])
	REFERENCES [dbo].[Person] ([PersonId])
GO

ALTER TABLE [dbo].[ELChildIDEA] CHECK CONSTRAINT [FK_ELChildIDEA_Person] 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Person.' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ELChildIDEA', 
	@level2type=N'COLUMN',@level2name=N'PersonId'
GO

ALTER TABLE [dbo].[ELChildIDEA] WITH CHECK ADD  
	CONSTRAINT [FK_ELChildIDEA_RefIDEAIEPStatus] FOREIGN KEY([RefIDEAIEPStatusId])
	REFERENCES [dbo].[RefIDEAIEPStatus] ([RefIDEAIEPStatusId])
GO

ALTER TABLE [dbo].[ELChildIDEA] CHECK CONSTRAINT [FK_ELChildIDEA_RefIDEAIEPStatus] 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The status of an individualized services plan for a specified reporting period or on a specified date. [CEDS Element: IDEA IEP Status, ID:001501]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ELChildIDEA', 
	@level2type=N'COLUMN',@level2name=N'RefIDEAIEPStatusId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The determination of whether a child is potentially eligible for Part B 619 services. [CEDS Element: IDEA Part B 619 Potential Eligibility Indicator, ID: 001360]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ELChildIDEA', 
	@level2type=N'COLUMN',@level2name=N'PartB619PotentialEligibilityInd'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date that notification is provided to the LEA and SEA of an eligible child with an  Individual Family Service Plan (IFSP) of the impending notification to the local education agency.  [CEDS Element: IDEA Part C to B Sharing Notification Date, ID:001500]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ELChildIDEA', 
	@level2type=N'COLUMN',@level2name=N'PartCToBSharingNotificationDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date of the transition conference from Part C to Part B 619. [CEDS Element: IDEA Part C to Part B Date of Transition Conference, ID:001365]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ELChildIDEA', 
	@level2type=N'COLUMN',@level2name=N'PartCToBDateOfTransitionConference'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the parents declined approval for the transition conference from Part C to Part B 619. [CEDS Element: IDEA Part C to Part B Date of Transition Conference Decline, ID:001366]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ELChildIDEA', 
	@level2type=N'COLUMN',@level2name=N'PartCToBDateOfTransitionConferenceDecline'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date transition steps and services were added to the Individual Family Service Plan (IFSP). [CEDS Element: IDEA Part C to Part B Date of Transition Plan Steps or Services, ID:001367]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ELChildIDEA', 
	@level2type=N'COLUMN',@level2name=N'PartCToBDateOfTransitionPlanStepsOrServices'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date that parents of an eligible child with an Individual Family Service Plan (IFSP) opt out of the impending notification to the local education agency for support of a child''s transition from IDEA Part C to IDEA Part B. [CEDS Element: IDEA Part C to Part B Parent Notification Opt Out Date, ID:001364]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ELChildIDEA', 
	@level2type=N'COLUMN',@level2name=N'PartCToBParentNotificationOptOutDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates that parents of an eligible child with an Individual Family Service Plan (IFSP) have opted out of the impending notification to the local education agency for support of a child''s transition from IDEA Part C to IDEA Part B. [CEDS Element: IDEA Part C to Part B Parent Notification Opt Out Indicator, ID:001363]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ELChildIDEA', 
	@level2type=N'COLUMN',@level2name=N'PartCToBParentNotificationOptOutInd'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The reason given for declining the recommended services. [CEDS Element: Reason for Declined Services, ID:001488]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ELChildIDEA', 
	@level2type=N'COLUMN',@level2name=N'ReasonForDeclinedServices'
GO


ALTER TABLE [dbo].[ELChildIDEA] WITH CHECK ADD  
	CONSTRAINT [FK_ELChildIDEA_RefReasonDelayTransitionConf] FOREIGN KEY([RefReasonDelayTransitionConfId])
	REFERENCES [dbo].[RefReasonDelayTransitionConf] ([RefReasonDelayTransitionConfId])
GO

ALTER TABLE [dbo].[ELChildIDEA] CHECK CONSTRAINT [FK_ELChildIDEA_RefReasonDelayTransitionConf] 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The reasons for the delay of a transition conference. [CEDS Element: Reason for Delay of Transition Conference, ID:001521]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ELChildIDEA', 
	@level2type=N'COLUMN',@level2name=N'RefReasonDelayTransitionConfId'
GO

PRINT N'New table ElChildOutcomeSummary'
GO
CREATE TABLE [dbo].[ELChildOutcomeSummary](
	[PersonId] [int] NOT NULL,
	[COSProgressAIndicator] [bit] NULL,
	[COSProgressBIndicator] [bit] NULL,
	[COSProgressCIndicator] [bit] NULL,
	[COSRatingAId] [int] NULL,
	[COSRatingBId] [int] NULL,
	[COSRatingCId] [int] NULL,
 CONSTRAINT [PK_ELChildOutcomeSummary] PRIMARY KEY CLUSTERED 
(
	[PersonId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ELChildOutcomeSummary] WITH CHECK ADD  
	CONSTRAINT [FK_ELChildOutcomeSummary_Person] FOREIGN KEY([PersonId])
	REFERENCES [dbo].[Person] ([PersonId])
GO

ALTER TABLE [dbo].[ELChildOutcomeSummary] CHECK CONSTRAINT [FK_ELChildOutcomeSummary_Person] 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Person.' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ELChildOutcomeSummary', 
	@level2type=N'COLUMN',@level2name=N'PersonId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates that the child demonstrates progress in positive social-emotional skills (including social relationships). [CEDS Element: Child Outcomes Summary Progress A Indicator, ID: 001504]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ELChildOutcomeSummary', 
	@level2type=N'COLUMN',@level2name=N'COSProgressAIndicator'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates that the child demonstrates progress in acquisition and use of knowledge and skills (including early language/communication. [CEDS Element: Child Outcomes Summary Progress A Indicator, ID: 001505]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ELChildOutcomeSummary', 
	@level2type=N'COLUMN',@level2name=N'COSProgressBIndicator'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates that the child demonstrates progress in use of appropriate behaviors to meet their needs. [CEDS Element: Child Outcomes Summary Progress A Indicator, ID: 001506]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ELChildOutcomeSummary', 
	@level2type=N'COLUMN',@level2name=N'COSProgressCIndicator'
GO

ALTER TABLE [dbo].[ELChildOutcomeSummary] WITH CHECK ADD  
	CONSTRAINT [FK_ELChildOutcomeSummary_COSRatingA] FOREIGN KEY([COSRatingAId])
	REFERENCES [dbo].[RefChildOutcomesSummaryRating] ([RefChildOutcomesSummaryRatingId])
GO

ALTER TABLE [dbo].[ELChildOutcomeSummary] CHECK CONSTRAINT [FK_ELChildOutcomeSummary_COSRatingA] 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Child''s level of functioning in positive social-emotional skills (including social relationships). [CEDS Element: Child Outcomes Summary Rating A, ID:001507]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ELChildOutcomeSummary', 
	@level2type=N'COLUMN',@level2name=N'COSRatingAId'
GO

ALTER TABLE [dbo].[ELChildOutcomeSummary] WITH CHECK ADD  
	CONSTRAINT [FK_ELChildOutcomeSummary_COSRatingB] FOREIGN KEY([COSRatingBId])
	REFERENCES [dbo].[RefChildOutcomesSummaryRating] ([RefChildOutcomesSummaryRatingId])
GO

ALTER TABLE [dbo].[ELChildOutcomeSummary] CHECK CONSTRAINT [FK_ELChildOutcomeSummary_COSRatingB] 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Child''s level of functioning in the acquisition and use of knowledge and skills (including early language/communication. [CEDS Element: Child Outcomes Summary Rating B, ID:001508]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ELChildOutcomeSummary', 
	@level2type=N'COLUMN',@level2name=N'COSRatingBId'
GO

ALTER TABLE [dbo].[ELChildOutcomeSummary] WITH CHECK ADD  
	CONSTRAINT [FK_ELChildOutcomeSummary_COSRatingC] FOREIGN KEY([COSRatingCId])
	REFERENCES [dbo].[RefChildOutcomesSummaryRating] ([RefChildOutcomesSummaryRatingId])
GO

ALTER TABLE [dbo].[ELChildOutcomeSummary] CHECK CONSTRAINT [FK_ELChildOutcomeSummary_COSRatingC] 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Child''s level of functioning in the use of appropriate behaviors to meet their needs. [CEDS Element: Child Outcomes Summary Rating C, ID:001509]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ELChildOutcomeSummary', 
	@level2type=N'COLUMN',@level2name=N'COSRatingCId'
GO

PRINT N'001328 EarlyLearningFederalFundingType'
GO
ALTER TABLE ELEnrollment ADD RefELFederalFundingTypeId INT NULL
GO

ALTER TABLE [dbo].[ELEnrollment] WITH CHECK ADD  
	CONSTRAINT [FK_ELEnrollment_RefELFederalFundingType] FOREIGN KEY([RefELFederalFundingTypeId])
	REFERENCES [dbo].[RefELFederalFundingType] ([RefELFederalFundingTypeId])
GO

ALTER TABLE [dbo].[ELEnrollment] CHECK CONSTRAINT [FK_ELEnrollment_RefELFederalFundingType] 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Federal source that contributes to the EL program [CEDS Element: Early Learning Federal Funding Type, ID:001328]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ELEnrollment', 
	@level2type=N'COLUMN',@level2name=N'RefELFederalFundingTypeId'
GO

PRINT N'EL Other Funding'
GO
CREATE TABLE [dbo].[ELEnrolmentOtherFunding](
	[ELEnrollmentOtherFundingId] [int] IDENTITY(1,1) NOT NULL,
	[PersonId] [int] NOT NULL,
	[RefELOtherFederalFundingSourcesId] [int] NOT NULL,
 CONSTRAINT [PK_ELEnrollmentOtherFunding] PRIMARY KEY CLUSTERED 
(
	[ELEnrollmentOtherFundingId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ELEnrolmentOtherFunding] WITH CHECK ADD  
	CONSTRAINT [FK_ELEnrolmentOtherFunding_Person] FOREIGN KEY([PersonId])
	REFERENCES [dbo].[Person] ([PersonId])
GO

ALTER TABLE [dbo].[ELEnrolmentOtherFunding] CHECK CONSTRAINT [FK_ELEnrolmentOtherFunding_Person] 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ELEnrolmentOtherFunding', 
	@level2type=N'COLUMN',@level2name=N'ELEnrollmentOtherFundingId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Person.' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ELEnrolmentOtherFunding', 
	@level2type=N'COLUMN',@level2name=N'PersonId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The other contributing funding sources. [CEDS Element: Early Learning Other Federal Funding Sources, ID:001335]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ELEnrolmentOtherFunding', 
	@level2type=N'COLUMN',@level2name=N'RefELOtherFederalFundingSourcesId'
GO

PRINT N'EL Organization Monitoring'
GO
CREATE TABLE [dbo].[ELOrganizationMonitoring](
	[ELOrganizationMonitoringId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationId] [int] NOT NULL,
	[VisitStartDate] [date] NULL,
	[VisitEndDate] [date] NULL,
	[RefPurposeOfMonitoringVisitId] [int] NULL,
	[TypeOfMonitoring] [nvarchar](300) NULL,
	[RefOrganizationMonitoringNotificationsId] [int] NULL,
 CONSTRAINT [PK_ELOrganizationMonitoring] PRIMARY KEY CLUSTERED 
(
	[ELOrganizationMonitoringId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ELOrganizationMonitoring', 
	@level2type=N'COLUMN',@level2name=N'ELOrganizationMonitoringId'
GO

ALTER TABLE [dbo].[ELOrganizationMonitoring] WITH CHECK ADD  
	CONSTRAINT [FK_ELOrganizationMonitoring_Organization] FOREIGN KEY([OrganizationId])
	REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[ELOrganizationMonitoring] CHECK CONSTRAINT [FK_ELOrganizationMonitoring_Organization] 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization.' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ELOrganizationMonitoring', 
	@level2type=N'COLUMN',@level2name=N'OrganizationId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date that monitoring visit began. [CEDS Element: Monitoring Visit Start Date, ID:001331 ]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ELOrganizationMonitoring', 
	@level2type=N'COLUMN',@level2name=N'VisitStartDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date that monitoring visit ended. [CEDS Element: Monitoring Visit End Date, ID: 001332]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ELOrganizationMonitoring', 
	@level2type=N'COLUMN',@level2name=N'VisitEndDate'
GO

ALTER TABLE [dbo].[ELOrganizationMonitoring] WITH CHECK ADD  
	CONSTRAINT [FK_ELOrganizationMonitoring_RefPurposeOfMonitoringVisit] FOREIGN KEY([RefPurposeOfMonitoringVisitId])
	REFERENCES [dbo].[RefPurposeOfMonitoringVisit] ([RefPurposeOfMonitoringVisitId])
GO

ALTER TABLE [dbo].[ELOrganizationMonitoring] CHECK CONSTRAINT [FK_ELOrganizationMonitoring_RefPurposeOfMonitoringVisit] 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The purpose for the monitoring visit. [CEDS Element: Purpose of Monitoring Visit, ID:001333]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ELOrganizationMonitoring', 
	@level2type=N'COLUMN',@level2name=N'RefPurposeOfMonitoringVisitId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of monitoring on the organization. [CEDS Element: Organization Type of Monitoring, ID: 001334]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ELOrganizationMonitoring', 
	@level2type=N'COLUMN',@level2name=N'TypeOfMonitoring'
GO

ALTER TABLE [dbo].[ELOrganizationMonitoring] WITH CHECK ADD  
	CONSTRAINT [FK_ELOrganizationMonitoring_RefOrganizationMonitoringNotifications] 
	FOREIGN KEY([RefOrganizationMonitoringNotificationsId])
	REFERENCES [dbo].[RefOrganizationMonitoringNotifications] ([RefOrganizationMonitoringNotificationsId])
GO

ALTER TABLE [dbo].[ELOrganizationMonitoring] CHECK CONSTRAINT [FK_ELOrganizationMonitoring_RefOrganizationMonitoringNotifications] 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Whether the organization received notification about monitoring [CEDS Element: Organization Monitoring Notifications, ID:001330]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ELOrganizationMonitoring', 
	@level2type=N'COLUMN',@level2name=N'RefOrganizationMonitoringNotificationsId'
GO

PRINT N'EL Quality Initiative'
GO
CREATE TABLE [dbo].[ELQualityInitiative](
	[ELQualityInitiativeId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationId] [int] NOT NULL,
	[MaximumScore] [nvarchar](30) NULL,
	[MinimumScore] [nvarchar](30) NULL,
	[ScoreLevel] [nvarchar](30) NULL,
	[ParticipationIndicator] [bit] NULL,
	[ParticipationStartDate] [date] NULL,
	[ParticipationEndDate] [date] NULL,
 CONSTRAINT [PK_ELQualityInitiative] PRIMARY KEY CLUSTERED 
(
	[ELQualityInitiativeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ELQualityInitiative', 
	@level2type=N'COLUMN',@level2name=N'ELQualityInitiativeId'
GO

ALTER TABLE [dbo].[ELQualityInitiative] WITH CHECK ADD  
	CONSTRAINT [FK_ELQualityInitiative_Organization] FOREIGN KEY([OrganizationId])
	REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[ELQualityInitiative] CHECK CONSTRAINT [FK_ELQualityInitiative_Organization] 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization.' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ELQualityInitiative', 
	@level2type=N'COLUMN',@level2name=N'OrganizationId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The maximum score option for the QRIS or other quality initiative. [CEDS Element: Quality Initiative Maximum Score,ID: 001460]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ELQualityInitiative', 
	@level2type=N'COLUMN',@level2name=N'MaximumScore'
GO


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The minimum score option for the QRIS or other quality initiative. [CEDS Element: Quality Initiative Minimum Score,ID: 001461]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ELQualityInitiative', 
	@level2type=N'COLUMN',@level2name=N'MinimumScore'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The score, rating or level received by a program for its Quality Rating and Improvement System (QRIS) or other quality initiative. [CEDS Element: Quality Initiative Score Level,ID: 001462]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ELQualityInitiative', 
	@level2type=N'COLUMN',@level2name=N'ScoreLevel'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Site participates in a quality improvement initiative component other than QRIS. [CEDS Element: Quality Initiative Participation Indicator,ID: 001463]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ELQualityInitiative', 
	@level2type=N'COLUMN',@level2name=N'ParticipationIndicator'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The quality initiative start date. [CEDS Element: Quality Initiative Participation Start Date,ID: 001465]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ELQualityInitiative', 
	@level2type=N'COLUMN',@level2name=N'ParticipationStartDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The quality initiative end date. [CEDS Element: Quality Initiative Participation End Date,ID: 001464]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ELQualityInitiative', 
	@level2type=N'COLUMN',@level2name=N'ParticipationEndDate'
GO

PRINT N'EL Staff Assignment'
GO
CREATE TABLE [dbo].[ELStaffAssignment](
	[OrganizationPersonRoleId] [int] NOT NULL,
	[ItinerantProvider] [bit] NOT NULL,
 CONSTRAINT [PK_ELStaffAssignment] PRIMARY KEY CLUSTERED 
(
	[OrganizationPersonRoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from OrganizationPersonRole' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ELStaffAssignment', 
	@level2type=N'COLUMN',@level2name=N'OrganizationPersonRoleId'
GO

ALTER TABLE [dbo].[ELStaffAssignment] WITH CHECK ADD  
	CONSTRAINT [FK_ELStaffAssignment_OrgPersonRole] FOREIGN KEY([OrganizationPersonRoleId])
	REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId])
GO

ALTER TABLE [dbo].[ELStaffAssignment] CHECK CONSTRAINT [FK_ELStaffAssignment_OrgPersonRole] 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of whether a person provides services at more than one site. [CEDS Element: Itinerant Provider, ID: 001384]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ELStaffAssignment', 
	@level2type=N'COLUMN',@level2name=N'ItinerantProvider'
GO

PRINT N'EL Staff Education'
GO
ALTER TABLE ELStaffEducation ADD RefELProfessionalDevelopmentTopicAreaId INT NULL
GO

ALTER TABLE [dbo].[ELStaffEducation] WITH CHECK ADD  
	CONSTRAINT [FK_ELStaffEducation_RefELPDTopicArea] FOREIGN KEY([RefELProfessionalDevelopmentTopicAreaId])
	REFERENCES [dbo].[RefELProfessionalDevelopmentTopicArea] ([RefELProfessionalDevelopmentTopicAreaId])
GO

ALTER TABLE [dbo].[ELStaffEducation] CHECK CONSTRAINT [FK_ELStaffEducation_RefELPDTopicArea] 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The topical area of competence needed for  professional development. [CEDS Element: Early Learning Professional Development Topic Area, ID:001337]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ELStaffEducation', 
	@level2type=N'COLUMN',@level2name=N'RefELProfessionalDevelopmentTopicAreaId'
GO

PRINT N'Staff Employment'
GO
ALTER TABLE StaffEmployment ADD UnionMembershipName [nvarchar](200) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the labor organization of which the person is a member. [CEDS Element: Union Membership Name, ID:001497]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'StaffEmployment', 
	@level2type=N'COLUMN',@level2name=N'UnionMembershipName'
GO

PRINT N'Weeks Employed Per Year'
GO
ALTER TABLE StaffEmployment ADD WeeksEmployedPerYear [int] NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of weeks employed by year. [CEDS Element: Weeks Employed Per Year, ID: 001498]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'StaffEmployment', 
	@level2type=N'COLUMN',@level2name=N'WeeksEmployedPerYear'
GO

PRINT N'IndividualizedProgramService'
GO
CREATE TABLE [dbo].[IndividualizedProgramService](
	[IndividualizedProgramServiceId] [int] IDENTITY(1,1) NOT NULL,
	[PersonId] [int] NOT NULL,
	[RefIndividualizedProgramPlannedServiceTypeId] [int] NULL,
	[RefMethodOfServiceDeliveryId] [int] NULL,
	[RefServiceFrequencyId] [int] NULL,
	[PlannedServiceDuration] [decimal](6,2) NULL,
	[PlannedServiceStartDate] [date] NULL,
 CONSTRAINT [PK_IndividualizedProgramService] PRIMARY KEY CLUSTERED 
(
	[IndividualizedProgramServiceId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'IndividualizedProgramService', 
	@level2type=N'COLUMN',@level2name=N'IndividualizedProgramServiceId'
GO

ALTER TABLE [dbo].[IndividualizedProgramService] WITH CHECK ADD  
	CONSTRAINT [FK_IndividualizedProgramService_Person] FOREIGN KEY([PersonId])
	REFERENCES [dbo].[Person] ([PersonId])
GO

ALTER TABLE [dbo].[IndividualizedProgramService] CHECK CONSTRAINT [FK_IndividualizedProgramService_Person] 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Person' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'IndividualizedProgramService', 
	@level2type=N'COLUMN',@level2name=N'PersonId'
GO


ALTER TABLE [dbo].[IndividualizedProgramService] WITH CHECK ADD  
	CONSTRAINT [FK_IndividualizedProgramService_RefIndividualizedProgramPlannedServiceType] 
	FOREIGN KEY([RefIndividualizedProgramPlannedServiceTypeId])
	REFERENCES [dbo].[RefIndividualizedProgramPlannedServiceType] ([RefIndividualizedProgramPlannedServiceTypeId])
GO

ALTER TABLE [dbo].[IndividualizedProgramService] CHECK CONSTRAINT [FK_IndividualizedProgramService_RefIndividualizedProgramPlannedServiceType] 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The types of service that adapts the curriculum, materials, or instruction for students identified as needing special education because of a delay or disability. [CEDS Element: Individualized Program Planned Service Type, ID: 001383]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'IndividualizedProgramService', 
	@level2type=N'COLUMN',@level2name=N'RefIndividualizedProgramPlannedServiceTypeId'
GO

ALTER TABLE [dbo].[IndividualizedProgramService] WITH CHECK ADD  
	CONSTRAINT [FK_IndividualizedProgramService_RefMethodOfServiceDelivery] 
	FOREIGN KEY([RefMethodOfServiceDeliveryId])
	REFERENCES [dbo].[RefMethodOfServiceDelivery] ([RefMethodOfServiceDeliveryId])
GO

ALTER TABLE [dbo].[IndividualizedProgramService] CHECK CONSTRAINT [FK_IndividualizedProgramService_RefMethodOfServiceDelivery] 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The method by which the services will be provided. [CEDS Element: Method of Service Delivery, ID: 001510]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'IndividualizedProgramService', 
	@level2type=N'COLUMN',@level2name=N'RefMethodOfServiceDeliveryId'
GO

ALTER TABLE [dbo].[IndividualizedProgramService] WITH CHECK ADD  
	CONSTRAINT [FK_IndividualizedProgramService_RefServiceFrequency] 
	FOREIGN KEY([RefServiceFrequencyId])
	REFERENCES [dbo].[RefServiceFrequency] ([RefServiceFrequencyId])
GO

ALTER TABLE [dbo].[IndividualizedProgramService] CHECK CONSTRAINT [FK_IndividualizedProgramService_RefServiceFrequency] 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The frequency that a service is planned to be provided. [CEDS Element: Individualized Program Planned Service Frequency, ID: 001519]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'IndividualizedProgramService', 
	@level2type=N'COLUMN',@level2name=N'RefServiceFrequencyId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The length, in hours, that delivery of the service is planned. [CEDS Element: Individualized Program Planned Service Duration, ID:001520]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'IndividualizedProgramService', 
	@level2type=N'COLUMN',@level2name=N'PlannedServiceDuration'
GO


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the service is planned to begin. [CEDS Element: Individualized Program Planned Service Start Date, ID: 001381]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'IndividualizedProgramService', 
	@level2type=N'COLUMN',@level2name=N'PlannedServiceStartDate'
GO


PRINT N'Organization Accreditation'
GO
ALTER TABLE [dbo].[OrganizationAccreditation] ADD [SeekingAccreditationDate] [date] NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date in which accreditation process was started (but not officially approved or denied) [CEDS Element: Organization Seeking Accreditation Date ID: 001419]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'OrganizationAccreditation', 
	@level2type=N'COLUMN',@level2name=N'SeekingAccreditationDate'
GO


PRINT N'Staff Technical Assistance'
GO
CREATE TABLE [dbo].[StaffTechnicalAssistance](
	[StaffTechnicalAssistanceId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationPersonRoleId] [int] NOT NULL,
	[RefTechnicalAssistanceTypeId] [int] NULL,
	[RefTechnicalAssistanceDeliveryTypeId] [int] NULL,
	[TechnicalAssistanceApprovedInd] [bit] NULL,
 CONSTRAINT [PK_StaffTechnicalAssistance] PRIMARY KEY CLUSTERED 
(
	[StaffTechnicalAssistanceId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'StaffTechnicalAssistance', 
	@level2type=N'COLUMN',@level2name=N'StaffTechnicalAssistanceId'
GO

ALTER TABLE [dbo].[StaffTechnicalAssistance] WITH CHECK ADD  
	CONSTRAINT [FK_StaffTechnicalAssistance_OrgPersonRole] FOREIGN KEY([OrganizationPersonRoleId])
	REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId])
GO

ALTER TABLE [dbo].[StaffTechnicalAssistance] CHECK CONSTRAINT [FK_StaffTechnicalAssistance_OrgPersonRole] 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization Person Role' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'StaffTechnicalAssistance', 
	@level2type=N'COLUMN',@level2name=N'OrganizationPersonRoleId'
GO

ALTER TABLE [dbo].[StaffTechnicalAssistance] WITH CHECK ADD  
	CONSTRAINT [FK_StaffTechnicalAssistance_RefTechnicalAssistanceType] FOREIGN KEY([RefTechnicalAssistanceTypeId])
	REFERENCES [dbo].[RefTechnicalAssistanceType] ([RefTechnicalAssistanceTypeId])
GO

ALTER TABLE [dbo].[StaffTechnicalAssistance] CHECK CONSTRAINT [FK_StaffTechnicalAssistance_RefTechnicalAssistanceType] 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'They type of technical assistance provided [CEDS Element: Technical Assistance Type, ID:001495]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'StaffTechnicalAssistance', 
	@level2type=N'COLUMN',@level2name=N'RefTechnicalAssistanceTypeId'
GO

ALTER TABLE [dbo].[StaffTechnicalAssistance] WITH CHECK ADD  
	CONSTRAINT [FK_StaffTechnicalAssistance_RefTechnicalAssistanceDeliveryType] FOREIGN KEY([RefTechnicalAssistanceDeliveryTypeId])
	REFERENCES [dbo].[RefTechnicalAssistanceDeliveryType] ([RefTechnicalAssistanceDeliveryTypeId])
GO

ALTER TABLE [dbo].[StaffTechnicalAssistance] CHECK CONSTRAINT [FK_StaffTechnicalAssistance_RefTechnicalAssistanceDeliveryType] 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The method of delivery of technical assistance received/provided [CEDS Element: Technical Assistance Delivery Type, ID:001494]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'StaffTechnicalAssistance', 
	@level2type=N'COLUMN',@level2name=N'RefTechnicalAssistanceDeliveryTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates whether or not the technical assistance was approved. [CEDS Element: Technical Assistance Approved Indicator, ID: 001493]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'StaffTechnicalAssistance', 
	@level2type=N'COLUMN',@level2name=N'TechnicalAssistanceApprovedInd'
GO

PRINT N'Organization Technical Assistance'
GO
CREATE TABLE [dbo].[OrganizationTechnicalAssistance](
	[OrganizationTechnicalAssistanceId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationId] [int] NOT NULL,
	[RefTechnicalAssistanceTypeId] [int] NULL,
	[RefTechnicalAssistanceDeliveryTypeId] [int] NULL,
	[TechnicalAssistanceApprovedInd] [bit] NULL,
 CONSTRAINT [PK_OrganizationTechnicalAssistance] PRIMARY KEY CLUSTERED 
(
	[OrganizationTechnicalAssistanceId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'OrganizationTechnicalAssistance', 
	@level2type=N'COLUMN',@level2name=N'OrganizationTechnicalAssistanceId'
GO

ALTER TABLE [dbo].[OrganizationTechnicalAssistance] WITH CHECK ADD  
	CONSTRAINT [FK_OrganizationTechnicalAssistance_Organization] FOREIGN KEY([OrganizationId])
	REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[OrganizationTechnicalAssistance] CHECK CONSTRAINT [FK_OrganizationTechnicalAssistance_Organization] 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'OrganizationTechnicalAssistance', 
	@level2type=N'COLUMN',@level2name=N'OrganizationId'
GO

ALTER TABLE [dbo].[OrganizationTechnicalAssistance] WITH CHECK ADD  
	CONSTRAINT [FK_OrganizationTechnicalAssistance_RefTechnicalAssistanceType] FOREIGN KEY([RefTechnicalAssistanceTypeId])
	REFERENCES [dbo].[RefTechnicalAssistanceType] ([RefTechnicalAssistanceTypeId])
GO

ALTER TABLE [dbo].[OrganizationTechnicalAssistance] CHECK CONSTRAINT [FK_OrganizationTechnicalAssistance_RefTechnicalAssistanceType] 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'They type of technical assistance provided [CEDS Element: Technical Assistance Type, ID:001495]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'OrganizationTechnicalAssistance', 
	@level2type=N'COLUMN',@level2name=N'RefTechnicalAssistanceTypeId'
GO

ALTER TABLE [dbo].[OrganizationTechnicalAssistance] WITH CHECK ADD  
	CONSTRAINT [FK_OrganizationTechnicalAssistance_RefTechnicalAssistanceDeliveryType] FOREIGN KEY([RefTechnicalAssistanceDeliveryTypeId])
	REFERENCES [dbo].[RefTechnicalAssistanceDeliveryType] ([RefTechnicalAssistanceDeliveryTypeId])
GO

ALTER TABLE [dbo].[OrganizationTechnicalAssistance] CHECK CONSTRAINT [FK_OrganizationTechnicalAssistance_RefTechnicalAssistanceDeliveryType] 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The method of delivery of technical assistance received/provided [CEDS Element: Technical Assistance Delivery Type, ID:001494]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'OrganizationTechnicalAssistance', 
	@level2type=N'COLUMN',@level2name=N'RefTechnicalAssistanceDeliveryTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates whether or not the technical assistance was approved. [CEDS Element: Technical Assistance Approved Indicator, ID: 001493]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'OrganizationTechnicalAssistance', 
	@level2type=N'COLUMN',@level2name=N'TechnicalAssistanceApprovedInd'
GO

PRINT N'Person Credential'
GO
ALTER TABLE PersonCredential ADD ProfessionalCertificateOrLicenseNumber nvarchar(30) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number issued by the credentialing/licensing agency. [CEDS Element: Professional Certificate or License Number, ID: 001429]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PersonCredential', 
	@level2type=N'COLUMN',@level2name=N'ProfessionalCertificateOrLicenseNumber'
GO

PRINT N'Person Health'
GO
ALTER TABLE PersonHealth ADD HealthScreeningEquipmentUsed nvarchar(300) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The screening equipment used for the hearing screening or the method used for the vision screening. [CEDS Element: Health Screening Equipment Used, ID: 001358]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PersonHealth', 
	@level2type=N'COLUMN',@level2name=N'HealthScreeningEquipmentUsed'
GO

ALTER TABLE PersonHealth ADD HealthScreeningFollowUpRecommendation nvarchar(max) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Recommended frequency for screener or for specific child- add something to assessment design or administration. [CEDS Element: Health Screening Follow-up Recommendation, ID: 001359]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PersonHealth', 
	@level2type=N'COLUMN',@level2name=N'HealthScreeningFollowUpRecommendation'
GO

PRINT N'PersonReferral'
GO
CREATE TABLE [dbo].[PersonReferral](
	[PersonReferralId] [int] IDENTITY(1,1) NOT NULL,
	[PersonId] [int] NOT NULL,
	[ReferralDate] [date] NULL,
	[Reason] [nvarchar](max) NULL,
	[Source] [nvarchar](60) NULL,
	[ReferralType] [nvarchar](60) NULL,
	[ReferredTo] [nvarchar](60) NULL,
	[RefReferralOutcomeId] [int] NULL,
 CONSTRAINT [PK_PersonReferral] PRIMARY KEY CLUSTERED 
(
	[PersonReferralId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PersonReferral', 
	@level2type=N'COLUMN',@level2name=N'PersonReferralId'
GO

ALTER TABLE [dbo].[PersonReferral] WITH CHECK ADD  
	CONSTRAINT [FK_PersonReferral_Person] FOREIGN KEY([PersonId])
	REFERENCES [dbo].[Person] ([PersonId])
GO

ALTER TABLE [dbo].[PersonReferral] CHECK CONSTRAINT [FK_PersonReferral_Person] 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Person' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PersonReferral', 
	@level2type=N'COLUMN',@level2name=N'PersonId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date of referral. [CEDS Element: Referral Date, ID: 001481]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PersonReferral', 
	@level2type=N'COLUMN',@level2name=N'ReferralDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The reason for the referral. [CEDS Element: Referral Reason, ID: 001483]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PersonReferral', 
	@level2type=N'COLUMN',@level2name=N'Reason'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The program or organization making the initial referral. [CEDS Element: Referral Source, ID: 001484]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PersonReferral', 
	@level2type=N'COLUMN',@level2name=N'Source'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of referral. [CEDS Element: Referral Type, ID: 001485]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PersonReferral', 
	@level2type=N'COLUMN',@level2name=N'ReferralType'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The program or organization to which the child/family was referred. [CEDS Element: Referred To, ID: 001486]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PersonReferral', 
	@level2type=N'COLUMN',@level2name=N'ReferredTo'
GO

ALTER TABLE [dbo].[PersonReferral] WITH CHECK ADD  
	CONSTRAINT [FK_PersonReferral_RefReferralOutcome] FOREIGN KEY([RefReferralOutcomeId])
	REFERENCES [dbo].[RefReferralOutcome] ([RefReferralOutcomeId])
GO

ALTER TABLE [dbo].[PersonReferral] CHECK CONSTRAINT [FK_PersonReferral_RefReferralOutcome] 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The outcome of the referral. [CEDS Element: Referral Outcome, ID: 001482]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PersonReferral', 
	@level2type=N'COLUMN',@level2name=N'RefReferralOutcomeId'
GO

PRINT N'Person Relationship'
GO
ALTER TABLE PersonRelationship ADD EmergencyContactInd [bit] NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates whether or not the person is a designated emergency contact for the learner. [CEDS Element: Emergency Contact Indicator, ID: 001341]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PersonRelationship', 
	@level2type=N'COLUMN',@level2name=N'EmergencyContactInd'
GO

ALTER TABLE PersonRelationship ADD ContactPriorityNumber [int] NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The numeric order in the preferred sequence and priority for contacting a person related to the learner. [CEDS Element: Person Relationship to Learner Contact Priority Number, ID: 001423]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PersonRelationship', 
	@level2type=N'COLUMN',@level2name=N'ContactPriorityNumber'
GO

ALTER TABLE PersonRelationship ADD ContactRestrictions [nvarchar](2000) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Restrictions for student and/or teacher contact with the individual (e.g., the student may not be picked up by the individual) [CEDS Element: Person Relationship to Learner Contact Restrictions Description, ID: 001424]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PersonRelationship', 
	@level2type=N'COLUMN',@level2name=N'ContactRestrictions'
GO

ALTER TABLE PersonRelationship ADD LivesWithIndicator [bit] NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates whether or not the learner lives with the related person. [CEDS Element: Person Relationship to Learner Lives With Indicator, ID: 001425]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PersonRelationship', 
	@level2type=N'COLUMN',@level2name=N'LivesWithIndicator'
GO

ALTER TABLE PersonRelationship ADD PrimaryContactIndicator [bit] NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates that a person is a primary contact within the specified context, such as a primary parental contact specified in Person Relationship to Learner or a primary administrative contact for an organization. [CEDS Element: Primary Contact Indicator, ID: 001428]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PersonRelationship', 
	@level2type=N'COLUMN',@level2name=N'PrimaryContactIndicator'
GO

PRINT N'Sponsoring Agency Name'
GO
ALTER TABLE ProfessionalDevelopmentSession ADD SponsoringAgencyName [nvarchar](60) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the sponsoring agency. [CEDS Element: Sponsoring Agency Name, ID: 001489]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ProfessionalDevelopmentSession', 
	@level2type=N'COLUMN',@level2name=N'SponsoringAgencyName'
GO


PRINT N'EL Child Program Eligibility'
GO
CREATE TABLE [dbo].[ELChildProgramEligibility](
	[OrganizationPersonRoleId] [int] NOT NULL,
	[RefELProgramEligibilityStatusId] [int] NULL,
	[StatusDate] [date] NULL,
	[ExpirationDate] [date] NULL,	
 CONSTRAINT [PK_ELChildProgramEligibility] PRIMARY KEY CLUSTERED 
(
	[OrganizationPersonRoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ELChildProgramEligibility] WITH CHECK ADD  
	CONSTRAINT [FK_ELChildProgramEligibility_OrgPersonRole] FOREIGN KEY([OrganizationPersonRoleId])
	REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId])
GO

ALTER TABLE [dbo].[ELChildProgramEligibility] CHECK CONSTRAINT [FK_ELChildProgramEligibility_OrgPersonRole] 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from OrganizationPersonRole' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ELChildProgramEligibility', 
	@level2type=N'COLUMN',@level2name=N'OrganizationPersonRoleId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The status of eligibility for the child. [CEDS Element: Early Learning Program Eligibility Status, ID:001339]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ELChildProgramEligibility', 
	@level2type=N'COLUMN',@level2name=N'RefELProgramEligibilityStatusId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date on which the child is no longer eligible for the Program. [CEDS Element: Early Learning Program Eligibility Expiration Date, 001338]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ELChildProgramEligibility', 
	@level2type=N'COLUMN',@level2name=N'ExpirationDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date of status of eligibility. [CEDS Element: Early Learning Program Eligibility Status Date, ID: 001340]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ELChildProgramEligibility', 
	@level2type=N'COLUMN',@level2name=N'StatusDate'
GO

PRINT N'Learning Standard Item Association'
GO
ALTER TABLE LearningStandardItemAssociation ADD ConnectionCitation [nvarchar](300) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Any citation appropriate to evidence the connection between nodes. [CEDS Element: Learning Standard Item Association Connection Citation, ID: 001402]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'LearningStandardItemAssociation', 
	@level2type=N'COLUMN',@level2name=N'ConnectionCitation'
GO

ALTER TABLE LearningStandardItemAssociation ADD OriginNodeName [nvarchar](30) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name of the origin node when the Learning Standard Item Association is used as a connector in a learning map. [CEDS Element: Learning Standard Item Association Origin Node Name, ID: 001405]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'LearningStandardItemAssociation', 
	@level2type=N'COLUMN',@level2name=N'OriginNodeName'
GO

ALTER TABLE LearningStandardItemAssociation ADD OriginNodeURI [nvarchar](300) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'URI of the origin node when the Learning Standard Item Association is used as a connector in a learning map. [CEDS Element: Learning Standard Item Association Origin Node URI, ID: 001406]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'LearningStandardItemAssociation', 
	@level2type=N'COLUMN',@level2name=N'OriginNodeURI'
GO

ALTER TABLE LearningStandardItemAssociation ADD DestinationNodeName [nvarchar](30) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name of the destination node when the Learning Standard Item Association is used as a connector in a learning map. [CEDS Element: Learning Standard Item Association Destination Node Name, ID: 001403]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'LearningStandardItemAssociation', 
	@level2type=N'COLUMN',@level2name=N'DestinationNodeName'
GO

ALTER TABLE LearningStandardItemAssociation ADD DestinationNodeURI [nvarchar](300) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'URI of the destination node when the Learning Standard Item Association is used as a connector in a learning map. [CEDS Element: Learning Standard Item Association Destination Node URI, ID: 001404]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'LearningStandardItemAssociation', 
	@level2type=N'COLUMN',@level2name=N'DestinationNodeURI'

ALTER TABLE LearningStandardItemAssociation ADD Weight [decimal](9,3) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the relative significance this connection has for the destination node in a learning map. [CEDS Element: Learning Standard Item Association Weight, ID: 001407]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'LearningStandardItemAssociation', 
	@level2type=N'COLUMN',@level2name=N'Weight'
GO

PRINT N'Learning Standard Item'
GO
ALTER TABLE LearningStandardItem ADD CurrentVersionIndicator [bit] NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates that this is the most current version of the Learning Standard Item. [CEDS Element: Learning Standard Item Current Version Indicator, ID: 001525]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'LearningStandardItem', 
	@level2type=N'COLUMN',@level2name=N'CurrentVersionIndicator'
GO

ALTER TABLE LearningStandardItem ADD PreviousVersionIdentifier [nvarchar](36) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique identifier of the previous version of the Learning Standard Item if the statement was modified. [CEDS Element: Learning Standard Item Previous Version Identifier, ID: 001524]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'LearningStandardItem', 
	@level2type=N'COLUMN',@level2name=N'PreviousVersionIdentifier'
GO

ALTER TABLE LearningStandardItem ADD ValidStartDate [date] NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The year, month and day the standards item was adopted by the jurisdiction in which it was intended to apply. [CEDS Element: Learning Standard Item Valid Start, ID: 001512]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'LearningStandardItem', 
	@level2type=N'COLUMN',@level2name=N'ValidStartDate'
GO

ALTER TABLE LearningStandardItem ADD ValidEndDate [date] NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The year, month and day the standards item was deprecated/replaced by the jurisdiction in which it was intended to apply. [CEDS Element: Learning Standard Item Valid End Date, ID: 001511]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'LearningStandardItem', 
	@level2type=N'COLUMN',@level2name=N'ValidEndDate'
GO

ALTER TABLE LearningStandardItem ADD NodeName [nvarchar](30) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name or label displayed on the node when this learning standard item is used in a learning map. [CEDS Element: Learning Standard Item Node Name, ID: 001409]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'LearningStandardItem', 
	@level2type=N'COLUMN',@level2name=N'NodeName'
GO


PRINT N'Language of Session'
GO
ALTER TABLE ProfessionalDevelopmentSession ADD RefLanguageId [int] NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The language in which the professional development session is delivered. [CEDS Element: Language of Session, ID: 001388]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ProfessionalDevelopmentSession', 
	@level2type=N'COLUMN',@level2name=N'RefLanguageId'
GO

ALTER TABLE [dbo].[ProfessionalDevelopmentSession] WITH CHECK ADD  
	CONSTRAINT [FK_PDSession_RefLanguage] FOREIGN KEY([RefLanguageId])
	REFERENCES [dbo].[RefLanguage] ([RefLanguageId])
GO

ALTER TABLE [dbo].[ProfessionalDevelopmentSession] CHECK CONSTRAINT [FK_PDSession_RefLanguage] 
GO


PRINT N'Career Pathways Program Participation Indicator (001291), Correctional Education (001297)'
GO
EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'Identifies the code or additional attribute that further defines the individual''s participation in the program. [CEDS Elements: Kindergarten Program Participation Type (000714), GED Preparation Program Participation Status (000120), Career Pathways Program Participation Indicator (001291), Correctional Education Reentry Services Participation Indicator (001297)]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefParticipationType', 
	@level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'Identifies the code or additional attribute that further defines the individual''s participation in the program. [CEDS Elements: Kindergarten Program Participation Type (000714), GED Preparation Program Participation Status (000120), Career Pathways Program Participation Indicator (001291), Correctional Education Reentry Services Participation Indicator (001297)]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefParticipationType'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'Identifies the code or additional attribute that further defines the individual''s participation in the program. [CEDS Elements: Kindergarten Program Participation Type (000714), GED Preparation Program Participation Status (000120), Career Pathways Program Participation Indicator (001291), Correctional Education Reentry Services Participation Indicator (001297)]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PersonProgramParticipation', 
	@level2type=N'COLUMN',@level2name=N'RefParticipationTypeId'
GO

PRINT N'Charter School Approval Year'
GO
ALTER TABLE K12School ADD CharterSchoolApprovalYear [nvarchar](9) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year in which a charter school was initially approved. (YYYY-YYYY) [CEDS Elements: Charter School Approval Year, ID: 001293]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'K12School', 
	@level2type=N'COLUMN',@level2name=N'CharterSchoolApprovalYear'
GO

PRINT N'Course Certification Description'
GO
ALTER TABLE Course ADD CertificationDescription [nvarchar] (300) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A description of the certification or recognition associated with this course (ex. Networking, CAD, etc.) [CEDS Elements: Course Certification Description, ID: 001302]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'Course', 
	@level2type=N'COLUMN',@level2name=N'CertificationDescription'
GO

PRINT N'Course Funding Program (001306)'
GO
ALTER TABLE K12Course ADD FundingProgram [nvarchar](30) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A program through which the course is funded. [CEDS Elements: Course Funding Program, ID: 001306]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'K12Course', 
	@level2type=N'COLUMN',@level2name=N'FundingProgram'
GO

PRINT N'IncientPerson'
GO
CREATE TABLE [dbo].[IncidentPerson](
   [IncidentId] [int] NOT NULL, 
   [PersonId] [int] NOT NULL,
   [Identifier] [int] NULL,
   [RefIncidentPersonRoleTypeId] [int] NOT NULL,
   [RefIncidentPersonTypeId] [int] NULL,
   CONSTRAINT [PK_IncidentPerson] PRIMARY KEY NONCLUSTERED ([IncidentId], [PersonId], [RefIncidentPersonRoleTypeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[IncidentPerson]  WITH CHECK ADD CONSTRAINT [FK_IncidentPerson_Incident]
  FOREIGN KEY([IncidentId]) REFERENCES [dbo].[Incident] ([IncidentId])
GO

ALTER TABLE [dbo].[IncidentPerson] CHECK CONSTRAINT [FK_IncidentPerson_Incident]
GO

ALTER TABLE [dbo].[IncidentPerson]  WITH CHECK ADD CONSTRAINT [FK_IncidentPerson_Person]
  FOREIGN KEY([PersonId]) REFERENCES [dbo].[Person] ([PersonId])
GO

ALTER TABLE [dbo].[IncidentPerson] CHECK CONSTRAINT [FK_IncidentPerson_Person]
GO

ALTER TABLE [dbo].[IncidentPerson]  WITH CHECK ADD CONSTRAINT [FK_IncidentPerson_RefIncidentPersonType]
  FOREIGN KEY([RefIncidentPersonTypeId]) REFERENCES [dbo].[RefIncidentPersonType] ([RefIncidentPersonTypeId])
GO

ALTER TABLE [dbo].[IncidentPerson] CHECK CONSTRAINT [FK_IncidentPerson_RefIncidentPersonType]
GO

ALTER TABLE [dbo].[IncidentPerson]  WITH CHECK ADD CONSTRAINT [FK_IncidentPerson_RefIncidentPersonRoleType]
  FOREIGN KEY([RefIncidentPersonRoleTypeId]) REFERENCES [dbo].[RefIncidentPersonRoleType] ([RefIncidentPersonRoleTypeId])
GO

ALTER TABLE [dbo].[IncidentPerson] CHECK CONSTRAINT [FK_IncidentPerson_RefIncidentPersonRoleType]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Person''s identifier. [CEDS Element: Incident Perpetrator Identifier (001370), Incident Victim Identifier (001377), Incident Witness Identifier (001379)]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'IncidentPerson', 
	@level2type=N'COLUMN',@level2name=N'Identifier'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The role or type of participation of a person in a discipline incident. [CEDS Element: Incident Person Role Type, ID:001373]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'IncidentPerson', 
	@level2type=N'COLUMN',@level2name=N'RefIncidentPersonRoleTypeId'
GO


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Information on the type of individual who was involved in an incident. [CEDS Elements: Incident Perpetrator Type (001372), Incident Witness Type (001380), Incident Victim Type (001378)]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'IncidentPerson', 
	@level2type=N'COLUMN',@level2name=N'RefIncidentPersonTypeId'
GO

PRINT N'Incident'
GO
ALTER TABLE Incident ADD RegulationViolatedDescription [nvarchar](100) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A description of the rule‚ regulation‚ or standard that was violated when an incident occurred (e.g.‚ the identification of a relevant law‚ conduct standard‚ or acceptable use policy). [CEDS Element: Incident Regulation Violated Description, ID: 001374]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'Incident', 
	@level2type=N'COLUMN',@level2name=N'RegulationViolatedDescription'
GO

ALTER TABLE Incident ADD RelatedToDisabilityManifestationInd [bit] NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication whether a student’s behavior (offense) was a manifestation of‚ or related to‚ a disability condition. [CEDS Element: Incident Related to Disability Manifestation, ID: 001375]', 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'Incident', 
	@level2type=N'COLUMN',@level2name=N'RelatedToDisabilityManifestationInd'
GO

ALTER TABLE Incident ADD ReportedToLawEnforcementInd [bit] NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the school resource officer or any other law enforcement official was notified about the incident‚ regardless of whether official action is taken. [CEDS Element: Incident Reported to Law Enforcement Indicator, ID: 001376]', 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'Incident', 
	@level2type=N'COLUMN',@level2name=N'ReportedToLawEnforcementInd'
GO


PRINT N'Military Enlistment'
GO
ALTER TABLE WorkforceEmploymentQuarterlyData ADD MilitaryEnlistmentAfterExit [bit] NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An individual who is a member of the uniformed armed forces of the United States as reported through FEDES after exiting secondary, postsecondary, or adult education or workforce programs. [CEDS Element: Military Enlistment After Exit, ID: 001412]', 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'WorkforceEmploymentQuarterlyData', 
	@level2type=N'COLUMN',@level2name=N'MilitaryEnlistmentAfterExit'
GO

PRINT N'Responsible Organization Type'
GO
EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The type of services/instruction the organization is responsible for the student. [CEDS Elements: Responsible School Type (000595), Responsible School Identifier (000638), Responsible District Type (000594), Responsible District Identifier (000637), Responsible Organization Type (001467)]', 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefK12ResponsibilityType', 
	@level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The type of services/instruction the organization is responsible for the student. [CEDS Elements: Responsible School Type (000595), Responsible School Identifier (000638), Responsible District Type (000594), Responsible District Identifier (000637), Responsible Organization Type (001467)]', 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefK12ResponsibilityType'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The type of services/instruction the organization is responsible for the student. [CEDS Elements: Responsible School Type (000595), Responsible School Identifier (000638), Responsible District Type (000594), Responsible District Identifier (000637), Responsible Organization Type (001467)]', 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'K12OrganizationStudentResponsibility', 
	@level2type=N'COLUMN',@level2name=N'RefK12ResponsibilityTypeId'
GO

PRINT N'Early Learning Group Size'
GO
ALTER TABLE ELClassSection ADD GroupSize [int] NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of slots/spaces available. [CEDS Element: Early Learning Group Size, ID: 001329]', 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ELClassSection', 
	@level2type=N'COLUMN',@level2name=N'GroupSize'
GO

PRINT N'Family or Consumer Education Course'
GO
ALTER TABLE K12Course ADD FamilyConsumerSciencesCourseInd [bit] NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the course is associated with the Family and Consumer Sciences plan of study. [CEDS Element: Family and Consumer Sciences Course Indicator, ID: 001344]', 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'K12Course', 
	@level2type=N'COLUMN',@level2name=N'FamilyConsumerSciencesCourseInd'
GO

PRINT N'Learning Resource Adapted From'
GO
ALTER TABLE LearningResource ADD AdaptedFromURL [nvarchar](300) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'URL identifier of a learning resource for which this resource is an adaptation. [CEDS Element: Learning Resource Adapted From URL, ID: 001398]', 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'LearningResource', 
	@level2type=N'COLUMN',@level2name=N'AdaptedFromURL'
GO

PRINT N'Learning Resource Assistive Technologies'
GO
ALTER TABLE LearningResource ADD AssistiveTechnologiesCompatibleInd [bit] NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates that the learning resource is compatible with assistive technologies. [CEDS Element: Learning Resource Assistive Technologies Compatible Indicator, ID: 001393]', 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'LearningResource', 
	@level2type=N'COLUMN',@level2name=N'AssistiveTechnologiesCompatibleInd'
GO

PRINT N'Learning Resource Peer Rating Sample Size'
GO
ALTER TABLE LearningResource ADD PeerRatingSampleSize [int] NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The sample size of a peer rating value. Only used when the Peer Rating Value is collected in aggregate as an average of multiple atomic/individual ratings. [CEDS Element: Learning Resource Peer Rating Sample Size, ID: 001400]', 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'LearningResource', 
	@level2type=N'COLUMN',@level2name=N'PeerRatingSampleSize'
GO


PRINT N'Learning Resource Competency Alignment Type'
GO
CREATE TABLE [dbo].[RefLearningResourceCompetencyAlignmentType](
   [RefLearningResourceCompetencyAlignmentTypeId] [int] IDENTITY(1,1) NOT NULL,
   [Type] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Description] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   CONSTRAINT [PK_RefLearningResourceCompetencyAlignmentType] PRIMARY KEY CLUSTERED ([RefLearningResourceCompetencyAlignmentTypeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefLearningResourceCompetencyAlignmentType]  WITH CHECK ADD CONSTRAINT [FK_RefLearningResourceCompetencyAlignmentType_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefLearningResourceCompetencyAlignmentType] CHECK CONSTRAINT [FK_RefLearningResourceCompetencyAlignmentType_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningResourceCompetencyAlignmentType', @level2type=N'COLUMN',@level2name=N'RefLearningResourceCompetencyAlignmentTypeId' 
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The alignment relationship between the resource and the competency. [CEDS Element: Learning Resource Competency Alignment Type, ID: 00879]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefLearningResourceCompetencyAlignmentType', 
	@level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningResourceCompetencyAlignmentType', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningResourceCompetencyAlignmentType', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The alignment relationship between the resource and the competency. [CEDS Element: Learning Resource Competency Alignment Type, ID: 00879]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefLearningResourceCompetencyAlignmentType'
GO

PRINT N'Assessment Item Result XML'
GO
ALTER TABLE AssessmentItemResponse ADD ResultXML [nvarchar](max) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The assessment item result formatted according to the IMS Global QTI Specification. [CEDS Element: Assessment Item Result XML, ID: 001284]', 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'AssessmentItemResponse', 
	@level2type=N'COLUMN',@level2name=N'ResultXML'
GO

PRINT N'Disciplinary Action IEP Placement Meeting Indicator	'
GO
ALTER TABLE K12StudentDiscipline ADD IEPPlacementMeetingIndicator [bit] NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication as to whether an offense and/or disciplinary action resulted in a meeting of a student’s Individualized Education Program (IEP) team to determine appropriate placement. [CEDS Element: Disciplinary Action IEP Placement Meeting Indicator, ID: 001322]', 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'K12StudentDiscipline', 
	@level2type=N'COLUMN',@level2name=N'IEPPlacementMeetingIndicator'
GO

PRINT N'Learning Resource Adaptation URL'
GO
CREATE TABLE [dbo].[LearningResourceAdaptation](
   [LearningResourceAdaptationId] [int] IDENTITY(1,1) NOT NULL, 
   [LearningResourceId] [int] NOT NULL,
   [AdaptationURL] [nvarchar](300) NOT NULL,
   CONSTRAINT [PK_LearningResourceAdaptation] PRIMARY KEY NONCLUSTERED ([LearningResourceAdaptationId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[LearningResourceAdaptation]  WITH CHECK ADD CONSTRAINT [FK_LearningResourceAdaptation_LR]
  FOREIGN KEY([LearningResourceId]) REFERENCES [dbo].[LearningResource] ([LearningResourceId])
GO

ALTER TABLE [dbo].[LearningResourceAdaptation] CHECK CONSTRAINT [FK_LearningResourceAdaptation_LR]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Uniform Resource Locator of a learning resource that is an adaptation for this resource. [CEDS Element: Learning Resource Adaptation URL, ID: 001392]	' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'LearningResourceAdaptation', 
	@level2type=N'COLUMN',@level2name=N'AdaptationURL'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'LearningResourceAdaptation', 
	@level2type=N'COLUMN',@level2name=N'LearningResourceAdaptationId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign key to LearningResource' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'LearningResourceAdaptation', 
	@level2type=N'COLUMN',@level2name=N'LearningResourceId'
GO

PRINT N'Competency Alignment Type'
GO
EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'Defines the nature of the association between a Learning Standard Item and an associated  data object  such as a Learning Resource, an Assessment Item, or even another Learning Standard Item. [CEDS Elements: Learning Standard Item Association Type (000869), Learning Resource Competency Alignment Type (000879)]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefLearningStandardItemAssociationType', 
	@level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'Defines the nature of the association between a Learning Standard Item and an associated  data object  such as a Learning Resource, an Assessment Item, or even another Learning Standard Item. [CEDS Elements: Learning Standard Item Association Type (000869), Learning Resource Competency Alignment Type (000879)]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefLearningStandardItemAssociationType'
GO

PRINT N'Professional Development Funding Source'
Go
ALTER TABLE ProfessionalDevelopmentSession ADD FundingSource [nvarchar](30) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary source of funding for a professional development session. [CEDS Element: Professional Development Funding Source, ID: 001443]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ProfessionalDevelopmentSession', 
	@level2type=N'COLUMN',@level2name=N'FundingSource'
GO

PRINT N'ProfessionalDevelopmentSessionInstructor'
GO
CREATE TABLE [dbo].[ProfessionalDevelopmentSessionInstructor](
   [ProfessionalDevelopmentSessionInstructorId] [int] IDENTITY(1,1) NOT NULL, 
   [ProfessionalDevelopmentSessionId] [int] NOT NULL,
   [OrganizationPersonRoleId] [int] NOT NULL,
   CONSTRAINT [PK_ProfessionalDevelopmentSessionInstructor] PRIMARY KEY NONCLUSTERED ([ProfessionalDevelopmentSessionInstructorId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ProfessionalDevelopmentSessionInstructor]  WITH CHECK 
  ADD CONSTRAINT [FK_PDSessionInstructor_PDSession]
  FOREIGN KEY([ProfessionalDevelopmentSessionId]) REFERENCES [dbo].[ProfessionalDevelopmentSession] ([ProfessionalDevelopmentSessionId])
GO

ALTER TABLE [dbo].[ProfessionalDevelopmentSessionInstructor] CHECK CONSTRAINT [FK_PDSessionInstructor_PDSession]
GO

ALTER TABLE [dbo].[ProfessionalDevelopmentSessionInstructor]  WITH CHECK 
  ADD CONSTRAINT [FK_PDSessionInstructor_OrgPersonRole]
  FOREIGN KEY([OrganizationPersonRoleId]) REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId])
GO


ALTER TABLE [dbo].[ProfessionalDevelopmentSessionInstructor] CHECK CONSTRAINT [FK_PDSessionInstructor_OrgPersonRole]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ProfessionalDevelopmentSessionInstructor', 
	@level2type=N'COLUMN',@level2name=N'ProfessionalDevelopmentSessionInstructorId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign key to ProfessionalDevelopmentSession' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ProfessionalDevelopmentSessionInstructor', 
	@level2type=N'COLUMN',@level2name=N'ProfessionalDevelopmentSessionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign key to OrganizationPersonRole' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ProfessionalDevelopmentSessionInstructor', 
	@level2type=N'COLUMN',@level2name=N'OrganizationPersonRoleId'
GO

PRINT N'Person Identifier'
GO
EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to a person by an organization, a state, or other agency or entity.  [Related CEDS Elements: Child Identifier (001080), Staff Member Identifier (001070), Student Identifier (001071), Professional Development Instructor Identifier (001444)]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PersonIdentifier', 
	@level2type=N'COLUMN',@level2name=N'Identifier'
GO

PRINT N'Professional Developmnet Publish Activity Ind'
GO
ALTER TABLE ProfessionalDevelopmentActivity ADD PublishIndicator [bit] NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indicator of whether the professional development activity should be published. [CEDS Element: Professional Development Publish Activity Indicator, ID: 001445]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ProfessionalDevelopmentActivity', 
	@level2type=N'COLUMN',@level2name=N'PublishIndicator'
GO

PRINT N'Add many-to-many association between Assessment Result and Assessment Performance Level'
GO
CREATE TABLE [dbo].[AssessmentResult_PerformanceLevel](
   [AssessmentResult_PerformanceLevelId] [int] IDENTITY(1,1) NOT NULL, 
   [AssessmentResultId] [int] NOT NULL,
   [AssessmentPerformanceLevelId] [int] NOT NULL,
   CONSTRAINT [PK_AssessmentResult_PerformanceLevel] PRIMARY KEY NONCLUSTERED ([AssessmentResult_PerformanceLevelId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[AssessmentResult_PerformanceLevel]  WITH CHECK 
  ADD CONSTRAINT [FK_AssessmentResult_PerformanceLevel_AssessmentResult]
  FOREIGN KEY([AssessmentResultId]) REFERENCES [dbo].[AssessmentResult] ([AssessmentResultId])
GO

ALTER TABLE [dbo].[AssessmentResult_PerformanceLevel] CHECK CONSTRAINT [FK_AssessmentResult_PerformanceLevel_AssessmentResult]
GO

ALTER TABLE [dbo].[AssessmentResult_PerformanceLevel]  WITH CHECK 
  ADD CONSTRAINT [FK_AssessmentResult_PerformanceLevel_AssessmentPerformanceLevel]
  FOREIGN KEY([AssessmentPerformanceLevelId]) REFERENCES [dbo].[AssessmentPerformanceLevel] ([AssessmentPerformanceLevelId])
GO

ALTER TABLE [dbo].[AssessmentResult_PerformanceLevel] CHECK CONSTRAINT [FK_AssessmentResult_PerformanceLevel_AssessmentPerformanceLevel]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign key to AssessmentResult.  [Related CEDS Elements: Developmental Evaluation Finding (000315), Early Learning Child Developmental Screening Status (000314)]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'AssessmentResult_PerformanceLevel', 
	@level2type=N'COLUMN',@level2name=N'AssessmentResultId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign key to AssessmentPerformanceLevel.  [Related CEDS Elements: Developmental Evaluation Finding (000315), Early Learning Child Developmental Screening Status (000314)]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'AssessmentResult_PerformanceLevel', 
	@level2type=N'COLUMN',@level2name=N'AssessmentPerformanceLevelId'
GO

PRINT N'remove AssessmentSubtestResultID from AssessmentPerformanceLevel'
GO
ALTER TABLE AssessmentPerformanceLevel DROP CONSTRAINT FK_PerformanceLevel_AssessmentSubtestResult
GO

ALTER TABLE AssessmentPerformanceLevel DROP COLUMN AssessmentSubtestResultId
GO

PRINT N'SCED Changes'
GO
ALTER TABLE CteCourse DROP CONSTRAINT FK_CteCourse_RefSecondaryCourseLevel
GO
ALTER TABLE CteCourse DROP COLUMN RefSecondaryCourseLevelId
GO
ALTER TABLE CteCourse DROP CONSTRAINT FK_CteCourse_RefSecondaryCourseSubjectArea
GO
ALTER TABLE CteCourse DROP COLUMN RefSecondaryCourseSubjectAreaId
GO

ALTER TABLE K12Course DROP CONSTRAINT FK_K12Course_RefPriorToSecondarySubject
GO
ALTER TABLE K12Course DROP COLUMN RefPriorToSecondarySubjectId
GO
ALTER TABLE K12Course DROP CONSTRAINT FK_K12Course_RefSecondaryCourseSubject
GO
ALTER TABLE K12Course DROP COLUMN RefSecondaryCourseSubjectAreaId
GO
ALTER TABLE K12Course DROP CONSTRAINT FK_K12Course_RefSecondaryCourseLevel
GO
ALTER TABLE K12Course DROP COLUMN RefSecondaryCourseLevelId
GO

ALTER TABLE CteCourse ADD SCEDCourseCode [nchar](5) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The five-digit SCED code. The first two-digits of the code represent the Course Subject Area and the next three digits identify the course number. These identifiers are fairly general but provide enough specificity to identify the course''s topic and to distinguish it from other courses in that subject area. [CEDS Element: School Codes for the Exchange of Data Course Code, ID: 001517]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'CteCourse', 
	@level2type=N'COLUMN',@level2name=N'SCEDCourseCode'
GO

ALTER TABLE K12Course ADD SCEDCourseCode [nchar](5) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The five-digit SCED code. The first two-digits of the code represent the Course Subject Area and the next three digits identify the course number. These identifiers are fairly general but provide enough specificity to identify the course''s topic and to distinguish it from other courses in that subject area. [CEDS Element: School Codes for the Exchange of Data Course Code, ID: 001517]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'K12Course', 
	@level2type=N'COLUMN',@level2name=N'SCEDCourseCode'
GO

ALTER TABLE K12Course ADD SCEDGradeSpan [nchar](4) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The grade span for which the course is appropriate. [CEDS Element: School Codes for the Exchange of Data Grade Span, ID: 001480]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'K12Course', 
	@level2type=N'COLUMN',@level2name=N'SCEDGradeSpan'
GO

ALTER TABLE CteCourse ADD RefSCEDCourseLevelId [int] NULL
GO

ALTER TABLE [dbo].[CteCourse]  WITH CHECK 
  ADD CONSTRAINT [FK_CteCourse_RefSCEDCourseLevel]
  FOREIGN KEY([RefSCEDCourseLevelId]) REFERENCES [dbo].[RefSCEDCourseLevel] ([RefSCEDCourseLevelId])
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N' The course''s level of rigor. [CEDS Element: School Codes for the Exchange of Data Course Level, ID:001516]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'CteCourse', 
	@level2type=N'COLUMN',@level2name=N'RefSCEDCourseLevelId'
GO

ALTER TABLE K12Course ADD RefSCEDCourseLevelId [int] NULL
GO

ALTER TABLE [dbo].[K12Course]  WITH CHECK 
  ADD CONSTRAINT [FK_K12Course_RefSCEDCourseLevel]
  FOREIGN KEY([RefSCEDCourseLevelId]) REFERENCES [dbo].[RefSCEDCourseLevel] ([RefSCEDCourseLevelId])
GO

ALTER TABLE [dbo].[K12Course] CHECK CONSTRAINT [FK_K12Course_RefSCEDCourseLevel]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N' The course''s level of rigor. [CEDS Element: School Codes for the Exchange of Data Course Level, ID:001516]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'K12Course', 
	@level2type=N'COLUMN',@level2name=N'RefSCEDCourseLevelId'
GO

ALTER TABLE CteCourse ADD RefSCEDCourseSubjectAreaId [int] NULL
GO

ALTER TABLE [dbo].[CteCourse]  WITH CHECK 
  ADD CONSTRAINT [FK_CteCourse_RefSCEDCourseSubjectArea]
  FOREIGN KEY([RefSCEDCourseSubjectAreaId]) REFERENCES [dbo].[RefSCEDCourseSubjectArea] ([RefSCEDCourseSubjectAreaId])
GO

ALTER TABLE [dbo].[CteCourse] CHECK CONSTRAINT [FK_CteCourse_RefSCEDCourseSubjectArea]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The intended major subject area of the education course. [CEDS Element: School Codes for the Exchange of Data Course Subject Area, ID:001518]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'CteCourse', 
	@level2type=N'COLUMN',@level2name=N'RefSCEDCourseSubjectAreaId'
GO

ALTER TABLE K12Course ADD RefSCEDCourseSubjectAreaId [int] NULL
GO

ALTER TABLE [dbo].[K12Course]  WITH CHECK 
  ADD CONSTRAINT [FK_K12Course_RefSCEDCourseSubjectArea]
  FOREIGN KEY([RefSCEDCourseSubjectAreaId]) REFERENCES [dbo].[RefSCEDCourseSubjectArea] ([RefSCEDCourseSubjectAreaId])
GO

ALTER TABLE [dbo].[K12Course] CHECK CONSTRAINT [FK_K12Course_RefSCEDCourseSubjectArea]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The intended major subject area of the education course. [CEDS Element: School Codes for the Exchange of Data Course Subject Area, ID:001518]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'K12Course', 
	@level2type=N'COLUMN',@level2name=N'RefSCEDCourseSubjectAreaId'
GO

ALTER TABLE CteCourse ADD RefCareerClusterId [int] NULL
GO

ALTER TABLE [dbo].[CteCourse]  WITH CHECK 
  ADD CONSTRAINT [FK_CteCourse_RefCareerCluster]
  FOREIGN KEY([RefCareerClusterId]) REFERENCES [dbo].[RefCareerCluster] ([RefCareerClusterId])
GO

ALTER TABLE [dbo].[CteCourse] CHECK CONSTRAINT [FK_CteCourse_RefCareerCluster]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The career cluster that defines the industry or occupational focus which may be associated with a career pathways program, plan of study, or course. [CEDS Element: Career Cluster, ID:001288]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'CteCourse', 
	@level2type=N'COLUMN',@level2name=N'RefCareerClusterId'
GO

ALTER TABLE K12Course ADD RefCareerClusterId [int] NULL
GO

ALTER TABLE [dbo].[K12Course]  WITH CHECK 
  ADD CONSTRAINT [FK_K12Course_RefCareerCluster]
  FOREIGN KEY([RefCareerClusterId]) REFERENCES [dbo].[RefCareerCluster] ([RefCareerClusterId])
GO

ALTER TABLE [dbo].[K12Course] CHECK CONSTRAINT [FK_K12Course_RefCareerCluster]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The career cluster that defines the industry or occupational focus which may be associated with a career pathways program, plan of study, or course. [CEDS Element: Career Cluster, ID:001288]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'K12Course', 
	@level2type=N'COLUMN',@level2name=N'RefCareerClusterId'
GO

ALTER TABLE AeCourse ADD RefCareerClusterId [int] NULL
GO

ALTER TABLE [dbo].[AeCourse]  WITH CHECK 
  ADD CONSTRAINT [FK_AeCourse_RefCareerCluster]
  FOREIGN KEY([RefCareerClusterId]) REFERENCES [dbo].[RefCareerCluster] ([RefCareerClusterId])
GO

ALTER TABLE [dbo].[AeCourse] CHECK CONSTRAINT [FK_AeCourse_RefCareerCluster]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The career cluster that defines the industry or occupational focus which may be associated with a career pathways program, plan of study, or course. [CEDS Element: Career Cluster, ID:001288]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'AeCourse', 
	@level2type=N'COLUMN',@level2name=N'RefCareerClusterId'
GO

ALTER TABLE PsCourse DROP CONSTRAINT FK_PsCourse_RefPsCourseLevel
GO
ALTER TABLE PsCourse DROP COLUMN RefPsCourseLevelId
GO

ALTER TABLE Achievement DROP COLUMN RecognitionDate
GO

ALTER TABLE Achievement DROP COLUMN AwardExpiresDate
GO

ALTER TABLE LearningResource DROP CONSTRAINT FK_LearningResource_RefLRMediaType
GO
ALTER TABLE LearningResource DROP COLUMN RefLearningResourceMediaTypeId
GO

ALTER TABLE WorkforceProgramParticipation DROP CONSTRAINT FK_WorkforceProgramPartic_RefWfProgramParticipationWhileEnroll
GO
ALTER TABLE WorkforceProgramParticipation DROP COLUMN RefWfProgramParticipationWhileEnrolledId
GO

-- Additional Ref table instances in data tables

PRINT N'001279 Prof Dev Activity Education Level'
GO
CREATE TABLE [dbo].[PDActivityEducationLevel](
   [PDActivityEducationLevelId] [int] IDENTITY(1,1) NOT NULL, 
   [ProfessionalDevelopmentActivityId] [int] NOT NULL,
   [RefPDActivityEducationLevelsAddressedId] [int] NOT NULL,
   CONSTRAINT [PK_PDActivityEducationLevel] PRIMARY KEY NONCLUSTERED ([PDActivityEducationLevelId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PDActivityEducationLevel]  WITH CHECK 
  ADD CONSTRAINT [FK_PDActivityEducationLevel_PDActivity]
  FOREIGN KEY([ProfessionalDevelopmentActivityId]) REFERENCES [dbo].[ProfessionalDevelopmentActivity] ([ProfessionalDevelopmentActivityId])
GO

ALTER TABLE [dbo].[PDActivityEducationLevel] CHECK CONSTRAINT [FK_PDActivityEducationLevel_PDActivity]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PDActivityEducationLevel', 
	@level2type=N'COLUMN',@level2name=N'PDActivityEducationLevelId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign key to ProfessionalDevelopmentActivity' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PDActivityEducationLevel', 
	@level2type=N'COLUMN',@level2name=N'ProfessionalDevelopmentActivityId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An age group or education level to which the professional development Activity''s content pertains. [CEDS Element: Professional Development Activity Education Levels Addressed, ID:001279]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PDActivityEducationLevel', 
	@level2type=N'COLUMN',@level2name=N'RefPDActivityEducationLevelsAddressedId'
GO

PRINT N'001287 Blended Learning Model'
GO
ALTER TABLE K12Course ADD RefBlendedLearningModelTypeId [int] NULL
GO

ALTER TABLE [dbo].[K12Course]  WITH CHECK 
  ADD CONSTRAINT [FK_K12Course_RefBlendedLearningModel]
  FOREIGN KEY([RefBlendedLearningModelTypeId]) REFERENCES [dbo].[RefBlendedLearningModelType] ([RefBlendedLearningModelTypeId])
GO

ALTER TABLE [dbo].[K12Course] CHECK CONSTRAINT [FK_K12Course_RefBlendedLearningModel]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A type of formal education program in which a student learns at least in part through online learning, with some element of student control over time, place, path, and/or pace; at least in part in a supervised brick-and-mortar location away from home; and the modalities along each student’s learning path within a course or subject are connected to provide an integrated learning experience. [CEDS Element: Blended Learning Model Type, ID:001287]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'K12Course', 
	@level2type=N'COLUMN',@level2name=N'RefBlendedLearningModelTypeId'
GO

PRINT N'001292 Charter School Approval Agency Type'
GO
ALTER TABLE K12School ADD RefCharterSchoolApprovalAgencyTypeId [int] NULL
GO

ALTER TABLE [dbo].[K12School]  WITH CHECK 
  ADD CONSTRAINT [FK_K12School_RefCharterSchoolApprovalAgencyTypeId]
  FOREIGN KEY([RefCharterSchoolApprovalAgencyTypeId]) REFERENCES [dbo].[RefCharterSchoolApprovalAgencyType] ([RefCharterSchoolApprovalAgencyTypeId])
GO

ALTER TABLE [dbo].[K12School] CHECK CONSTRAINT [FK_K12School_RefCharterSchoolApprovalAgencyTypeId]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of agency that approved the establishment or continuation of a charter school. [CEDS Element: Charter School Approval Agency Type, ID:001292]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'K12School', 
	@level2type=N'COLUMN',@level2name=N'RefCharterSchoolApprovalAgencyTypeId'
GO

PRINT N'001299 Course Academic Grade Status Code'
GO
ALTER TABLE PsStudentSection ADD RefCourseAcademicGradeStatusCodeId [int] NULL
GO

ALTER TABLE [dbo].[PsStudentSection]  WITH CHECK 
  ADD CONSTRAINT [FK_PsStudentSection_RefCourseAcademicGradeStatusCode]
  FOREIGN KEY([RefCourseAcademicGradeStatusCodeId]) REFERENCES [dbo].[RefCourseAcademicGradeStatusCode] ([RefCourseAcademicGradeStatusCodeId])
GO

ALTER TABLE [dbo].[PsStudentSection] CHECK CONSTRAINT [FK_PsStudentSection_RefCourseAcademicGradeStatusCode]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Additional information regarding the context of the given grade. [CEDS Element: Course Academic Grade Status Code, ID:001299]' ,
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PsStudentSection', 
	@level2type=N'COLUMN',@level2name=N'RefCourseAcademicGradeStatusCodeId'
GO

PRINT N'001301 Course Applicable Education Level'
GO
ALTER TABLE Course ADD RefCourseApplicableEducationLevelId [int] NULL
GO

ALTER TABLE [dbo].[Course]  WITH CHECK 
  ADD CONSTRAINT [FK_Course_RefCourseApplicableEducationLevel]
  FOREIGN KEY([RefCourseApplicableEducationLevelId]) REFERENCES [dbo].[RefCourseApplicableEducationLevel] ([RefCourseApplicableEducationLevelId])
GO

ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_RefCourseApplicableEducationLevel]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The education level, grade level or primary instructional level at which a course is intended. [CEDS Element: Course Applicable Education Level, ID:001301]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'Course', 
	@level2type=N'COLUMN',@level2name=N'RefCourseApplicableEducationLevelId'
GO

PRINT N'001311 Course Interaction Model'
ALTER TABLE K12Course ADD RefCourseInteractionModeId [int] NULL
GO

ALTER TABLE [dbo].[K12Course] WITH CHECK 
  ADD CONSTRAINT [FK_K12Course]
  FOREIGN KEY([RefCourseInteractionModeId]) REFERENCES [dbo].[RefCourseInteractionMode] ([RefCourseInteractionModeId])
GO

ALTER TABLE [dbo].[K12Course] CHECK CONSTRAINT [FK_K12Course]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary type of interaction, synchronous or asynchronous, defined for the course. [CEDS Element: Course Interaction Mode, ID:001311]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'K12Course', 
	@level2type=N'COLUMN',@level2name=N'RefCourseInteractionModeId'
GO

PRINT N'001342 Employed Prior To Enrollment'
GO
ALTER TABLE QuarterlyEmploymentRecord ADD RefEmployedPriorToEnrollmentId [int] NULL
GO

ALTER TABLE [dbo].[QuarterlyEmploymentRecord] WITH CHECK 
  ADD CONSTRAINT [FK_QuarterlyEmploymentRecord_RefEmployedPriorToEnrollment]
  FOREIGN KEY([RefEmployedPriorToEnrollmentId]) REFERENCES [dbo].[RefEmployedPriorToEnrollment] ([RefEmployedPriorToEnrollmentId])
GO

ALTER TABLE [dbo].[QuarterlyEmploymentRecord] CHECK CONSTRAINT [FK_QuarterlyEmploymentRecord_RefEmployedPriorToEnrollment]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An individual who is a paid employee or works in his or her own business, profession, or farm, as reported through the State Unemployment Insurance Wage Report, FEDES, or WRIS, before enrolling in secondary, postsecondary, or adult education or workforce programs. [CEDS Element: Employed Prior to Enrollment, ID:001342]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'QuarterlyEmploymentRecord', 
	@level2type=N'COLUMN',@level2name=N'RefEmployedPriorToEnrollmentId'
GO

PRINT N'001347 Financial Account Fund Classification'
GO
ALTER TABLE FinancialAccount ADD RefFinancialAccountFundClassificationId [int] NULL
GO

ALTER TABLE [dbo].[FinancialAccount] WITH CHECK 
  ADD CONSTRAINT [FK_FinancialAccount_RefFinancialAccountFundClassification]
  FOREIGN KEY([RefFinancialAccountFundClassificationId]) REFERENCES [dbo].[RefFinancialAccountFundClassification] ([RefFinancialAccountFundClassificationId])
GO

ALTER TABLE [dbo].[FinancialAccount] CHECK CONSTRAINT [FK_FinancialAccount_RefFinancialAccountFundClassification]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A separate fiscal and accounting entity with a self-balancing set of accounts recording cash and other financial resources, together with all related liabilities and residual equities or balances, or changes therein. [CEDS Element: Financial Account Fund Classification, ID:001347]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'FinancialAccount', 
	@level2type=N'COLUMN',@level2name=N'RefFinancialAccountFundClassificationId'
GO

PRINT N'001349 Financial Account Program Code'
GO
ALTER TABLE FinancialAccount ADD RefFinancialAccountProgramCodeId [int] NULL
GO

ALTER TABLE [dbo].[FinancialAccount] WITH CHECK 
  ADD CONSTRAINT [FK_FinancialAccount_RefFinancialAccountProgramCode]
  FOREIGN KEY([RefFinancialAccountProgramCodeId]) REFERENCES [dbo].[RefFinancialAccountProgramCode] ([RefFinancialAccountProgramCodeId])
GO

ALTER TABLE [dbo].[FinancialAccount] CHECK CONSTRAINT [FK_FinancialAccount_RefFinancialAccountProgramCode]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The code associated with the program category used for financial accounting -- a plan of activities and procedures designed to accomplish a predetermined objective or set of objectives. [CEDS Element: Financial Account Program Code, ID:001349]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'FinancialAccount', 
	@level2type=N'COLUMN',@level2name=N'RefFinancialAccountProgramCodeId'
GO


PRINT N'001353 Financial Balance Sheet Account Code'
GO
ALTER TABLE FinancialAccount ADD RefFinancialBalanceSheetAccountCodeId [int] NULL
GO

ALTER TABLE [dbo].[FinancialAccount] WITH CHECK 
  ADD CONSTRAINT [FK_FinancialAccount_RefFinancialBalanceSheetAccountCode]
  FOREIGN KEY([RefFinancialBalanceSheetAccountCodeId]) 
  REFERENCES [dbo].[RefFinancialBalanceSheetAccountCode] ([RefFinancialBalanceSheetAccountCodeId])
GO

ALTER TABLE [dbo].[FinancialAccount] CHECK CONSTRAINT [FK_FinancialAccount_RefFinancialBalanceSheetAccountCode]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Balance sheet accounts and statement of net asset accounts are used to track financial transactions for each fund. Such financial statements report assets, liabilities, and equity accounts only and are considered "snapshots" of how these accounts stand as of a certain point in time.  Based on codes specified in the NCES Handbook "Financial Accounting for Local and State School Systems: 2009 Edition." [CEDS Element: Financial Balance Sheet Account Code, ID:001353]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'FinancialAccount', 
	@level2type=N'COLUMN',@level2name=N'RefFinancialBalanceSheetAccountCodeId'
GO

PRINT N'001354 Finanial Expenditure Function Code'
GO
ALTER TABLE FinancialAccount ADD RefFinancialExpenditureFunctionCodeId [int] NULL
GO

ALTER TABLE [dbo].[FinancialAccount] WITH CHECK 
  ADD CONSTRAINT [FK_FinancialAccount_RefFinancialExpenditureFunctionCode]
  FOREIGN KEY([RefFinancialExpenditureFunctionCodeId]) 
  REFERENCES [dbo].[RefFinancialExpenditureFunctionCode] ([RefFinancialExpenditureFunctionCodeId])
GO

ALTER TABLE [dbo].[FinancialAccount] CHECK CONSTRAINT [FK_FinancialAccount_RefFinancialExpenditureFunctionCode]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The function describes the activity for which a service or material object is acquired. The functions of a school district are classified into five broad areas: instruction, support services, operation of non-instructional services, facilities acquisition and construction, and debt service.  Functions are further classified into sub functions. [CEDS Element: Financial Expenditure Function Code, ID:001354]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'FinancialAccount', 
	@level2type=N'COLUMN',@level2name=N'RefFinancialExpenditureFunctionCodeId'
GO

PRINT N'001355 Financial Expenditure Objective Code'
GO
ALTER TABLE FinancialAccount ADD RefFinancialExpenditureObjectCodeId [int] NULL
GO

ALTER TABLE [dbo].[FinancialAccount] WITH CHECK 
  ADD CONSTRAINT [FK_FinancialAccount_RefFinancialExpenditureObjectCode]
  FOREIGN KEY([RefFinancialExpenditureObjectCodeId]) 
  REFERENCES [dbo].[RefFinancialExpenditureObjectCode] ([RefFinancialExpenditureObjectCodeId])
GO

ALTER TABLE [dbo].[FinancialAccount] CHECK CONSTRAINT [FK_FinancialAccount_RefFinancialExpenditureObjectCode]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This classification is used to describe the service or commodity obtained as the result of a specific expenditure. [CEDS Element: Financial Expenditure Object Code, ID:001355]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'FinancialAccount', 
	@level2type=N'COLUMN',@level2name=N'RefFinancialExpenditureObjectCodeId'
GO


PRINT N'001356 Frequency of Service'
GO
ALTER TABLE ELClassSectionService ADD RefFrequencyOfServiceId [int] NULL
GO

ALTER TABLE [dbo].[ELClassSectionService] WITH CHECK 
  ADD CONSTRAINT [FK_ELClassSectionService_RefFrequencyOfServiceId]
  FOREIGN KEY([RefFrequencyOfServiceId]) REFERENCES [dbo].[RefFrequencyOfService] ([RefFrequencyOfServiceId])
GO

ALTER TABLE [dbo].[ELClassSectionService] CHECK CONSTRAINT [FK_ELClassSectionService_RefFrequencyOfServiceId]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The frequency at which a service is planned to occur. [CEDS Element: Frequency of Service, ID:001356]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ELClassSectionService', 
	@level2type=N'COLUMN',@level2name=N'RefFrequencyOfServiceId'
GO


PRINT N'001369 Incident Multiple Offense Type'
GO
ALTER TABLE Incident ADD RefIncidentMultipleOffenseTypeId [int] NULL
GO

ALTER TABLE [dbo].[Incident] WITH CHECK 
  ADD CONSTRAINT [FK_Incident_RefIncidentMultipleOffenseType]
  FOREIGN KEY([RefIncidentMultipleOffenseTypeId]) REFERENCES [dbo].[RefIncidentMultipleOffenseType] ([RefIncidentMultipleOffenseTypeId])
GO

ALTER TABLE [dbo].[Incident] CHECK CONSTRAINT [FK_Incident_RefIncidentMultipleOffenseType]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of whether the offense was primary or secondary in nature when a single incident included more than one type of offense. [CEDS Element: Incident Multiple Offense Type, ID:001369]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',
	@level1name=N'Incident', 
	@level2type=N'COLUMN',@level2name=N'RefIncidentMultipleOffenseTypeId'
GO

PRINT N'001371 Incident Perpetrator Injury Type'
GO
ALTER TABLE Incident ADD RefIncidentPerpetratorInjuryTypeId [int] NULL
GO

ALTER TABLE [dbo].[Incident] WITH CHECK 
  ADD CONSTRAINT [FK_Incident_RefIncidentPerpetratorInjuryType]
  FOREIGN KEY([RefIncidentPerpetratorInjuryTypeId]) REFERENCES [dbo].[RefIncidentPerpetratorInjuryType] ([RefIncidentPerpetratorInjuryTypeId])
GO

ALTER TABLE [dbo].[Incident] CHECK CONSTRAINT [FK_Incident_RefIncidentPerpetratorInjuryType]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of the occurrence of physical injury to the perpetrator(s) (participants) involved in the incident and‚ if so‚ the level of injury sustained. [CEDS Element: Incident Perpetrator Injury Type, ID:001371]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'Incident', 
	@level2type=N'COLUMN',@level2name=N'RefIncidentPerpetratorInjuryTypeId'
GO

PRINT N'001386 End of Course Requirement'
GO
ALTER TABLE K12Course ADD RefK12EndOfCourseRequirementId [int] NULL
GO

ALTER TABLE [dbo].[K12Course] WITH CHECK 
  ADD CONSTRAINT [FK_K12Course_RefK12EndOfCourseRequirement]
  FOREIGN KEY([RefK12EndOfCourseRequirementId]) REFERENCES [dbo].[RefK12EndOfCourseRequirement] ([RefK12EndOfCourseRequirementId])
GO

ALTER TABLE [dbo].[K12Course] CHECK CONSTRAINT [FK_K12Course_RefK12EndOfCourseRequirement]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that this course has an end of course examination required by the SEA or LEA. [CEDS Element: K12 End of Course Requirement, ID:001386]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'K12Course', 
	@level2type=N'COLUMN',@level2name=N'RefK12EndOfCourseRequirementId'
GO

PRINT N'001389 Learning Resource Access API Type'
GO
ALTER TABLE LearningResource ADD RefLearningResourceAccessAPITypeId [int] NULL
GO

ALTER TABLE [dbo].[LearningResource] WITH CHECK 
  ADD CONSTRAINT [FK_LearningResource_RefLearningResourceAccessAPIType]
  FOREIGN KEY([RefLearningResourceAccessAPITypeId]) REFERENCES [dbo].[RefLearningResourceAccessAPIType] ([RefLearningResourceAccessAPITypeId])
GO

ALTER TABLE [dbo].[LearningResource] CHECK CONSTRAINT [FK_LearningResource_RefLearningResourceAccessAPIType]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates that the learning resource is compatible with the referenced accessibility application programming interface (API). [CEDS Element: Learning Resource Access API Type, ID:001389]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'LearningResource', 
	@level2type=N'COLUMN',@level2name=N'RefLearningResourceAccessAPITypeId'
GO

PRINT N'001390 Learning Resource Access Hazard Type'
GO
ALTER TABLE LearningResource ADD RefLearningResourceAccessHazardTypeId [int] NULL
GO

ALTER TABLE [dbo].[LearningResource] WITH CHECK 
  ADD CONSTRAINT [FK_LearningResource_RefLearningResourceAccessHazardType]
  FOREIGN KEY([RefLearningResourceAccessHazardTypeId]) 
  REFERENCES [dbo].[RefLearningResourceAccessHazardType] ([RefLearningResourceAccessHazardTypeId])
GO

ALTER TABLE [dbo].[LearningResource] CHECK CONSTRAINT [FK_LearningResource_RefLearningResourceAccessHazardType]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A characteristic of the described learning resource that is physiologically dangerous to some users. [CEDS Element: Learning Resource Access Hazard Type, ID:001390]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'LearningResource', 
	@level2type=N'COLUMN',@level2name=N'RefLearningResourceAccessHazardTypeId'
GO

PRINT N'001391 Learning Resource Access Mode Type'
GO
ALTER TABLE LearningResource ADD RefLearningResourceAccessModeTypeId [int] NULL
GO

ALTER TABLE [dbo].[LearningResource] WITH CHECK 
  ADD CONSTRAINT [FK_LearningResource_RefLearningResourceAccessModeType]
  FOREIGN KEY([RefLearningResourceAccessModeTypeId]) REFERENCES [dbo].[RefLearningResourceAccessModeType] ([RefLearningResourceAccessModeTypeId])
GO

ALTER TABLE [dbo].[LearningResource] CHECK CONSTRAINT [FK_LearningResource_RefLearningResourceAccessModeType]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An access mode through which the intellectual content of a described learning resource or adaptation is communicated; if adaptations for the resource are known, the access modes of those adaptations are not included. [CEDS Element: Learning Resource Access Mode Type, ID:001391]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'LearningResource', 
	@level2type=N'COLUMN',@level2name=N'RefLearningResourceAccessModeTypeId'
GO

PRINT N'001394 Learning Resource Book Format Type'
GO
ALTER TABLE LearningResource ADD RefLearningResourceBookFormatTypeId [int] NULL
GO

ALTER TABLE [dbo].[LearningResource] WITH CHECK 
  ADD CONSTRAINT [FK_LearningResource_RefLearningResourceBookFormatTypeId]
  FOREIGN KEY([RefLearningResourceBookFormatTypeId]) REFERENCES [dbo].[RefLearningResourceBookFormatType] ([RefLearningResourceBookFormatTypeId])
GO

ALTER TABLE [dbo].[LearningResource] CHECK CONSTRAINT [FK_LearningResource_RefLearningResourceBookFormatTypeId]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Specifies the format for a learning resource that is a book.  Other options may be considered for inclusion in the option set. [CEDS Element: Learning Resource Book Format Type, ID:001394]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'LearningResource', 
	@level2type=N'COLUMN',@level2name=N'RefLearningResourceBookFormatTypeId'
GO

PRINT N'001395 Learning Resource Control Flexibility Type'
GO
ALTER TABLE LearningResource ADD RefLearningResourceControlFlexibilityTypeId [int] NULL
GO

ALTER TABLE [dbo].[LearningResource] WITH CHECK 
  ADD CONSTRAINT [FK_LearningResource_RefLearningResourceControlFlexibilityType]
  FOREIGN KEY([RefLearningResourceControlFlexibilityTypeId]) 
  REFERENCES [dbo].[RefLearningResourceControlFlexibilityType] ([RefLearningResourceControlFlexibilityTypeId])
GO

ALTER TABLE [dbo].[LearningResource] CHECK CONSTRAINT [FK_LearningResource_RefLearningResourceControlFlexibilityType]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifies a single input method that is sufficient to control the described learning resource. [CEDS Element: Learning Resource Control Flexibility Type, ID:001395]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'LearningResource', 
	@level2type=N'COLUMN',@level2name=N'RefLearningResourceControlFlexibilityTypeId'
GO


PRINT N'001396 Learning Resource Digital Media Sub Type'
GO
ALTER TABLE LearningResource ADD RefLearningResourceDigitalMediaSubTypeId [int] NULL
GO

ALTER TABLE [dbo].[LearningResource] WITH CHECK 
  ADD CONSTRAINT [FK_LearningResource_RefLearningResourceDigitalMediaSubType]
  FOREIGN KEY([RefLearningResourceDigitalMediaSubTypeId]) 
  REFERENCES [dbo].[RefLearningResourceDigitalMediaSubType] ([RefLearningResourceDigitalMediaSubTypeId])
GO

ALTER TABLE [dbo].[LearningResource] CHECK CONSTRAINT [FK_LearningResource_RefLearningResourceDigitalMediaSubType]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The media or file subtype of the digital resource being based on the Media Types and Subtypes, formerly known as MIME types, defined by the Internet Assigned Numbers Authority (IANA). [CEDS Element: Learning Resource Digital Media Sub Type, ID:001396]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'LearningResource', 
	@level2type=N'COLUMN',@level2name=N'RefLearningResourceDigitalMediaSubTypeId'
GO

PRINT N'001397 Learning Resource Digital Media Type'
GO

ALTER TABLE LearningResource ADD RefLearningResourceDigitalMediaTypeId [int] NULL
GO

ALTER TABLE [dbo].[LearningResource] WITH CHECK 
  ADD CONSTRAINT [FK_LearningResource_RefLearningResourceDigitalMediaType]
  FOREIGN KEY([RefLearningResourceDigitalMediaTypeId]) 
  REFERENCES [dbo].[RefLearningResourceDigitalMediaType] ([RefLearningResourceDigitalMediaTypeId])
GO

ALTER TABLE [dbo].[LearningResource] CHECK CONSTRAINT [FK_LearningResource_RefLearningResourceDigitalMediaType]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The media or file type of the digital resource being based on the media types defined by the Internet Assigned Numbers Authority (AINA) at http://www.iana.org/assignments/media-types. [CEDS Element: Learning Resource Digital Media Type, ID:001397]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'LearningResource', 
	@level2type=N'COLUMN',@level2name=N'RefLearningResourceDigitalMediaTypeId'
GO


PRINT N'001399 Learning Resource Media Feature'
GO
CREATE TABLE [dbo].[LearningResourceMediaFeature](
   [LearningResourceMediaFeatureId] [int] IDENTITY(1,1) NOT NULL, 
   [LearningResourceId] [int] NOT NULL,
   [RefLearningResourceMediaFeatureTypeId] [int] NOT NULL,
   CONSTRAINT [PK_LearningResourceMediaFeature] PRIMARY KEY NONCLUSTERED ([LearningResourceMediaFeatureId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[LearningResourceMediaFeature] WITH CHECK 
  ADD CONSTRAINT [FK_LearningResourceMediaFeature_LearningResource]
  FOREIGN KEY([LearningResourceId]) REFERENCES [dbo].[LearningResource] ([LearningResourceId])
GO

ALTER TABLE [dbo].[LearningResourceMediaFeature] CHECK CONSTRAINT [FK_LearningResourceMediaFeature_LearningResource]
GO

ALTER TABLE [dbo].[LearningResourceMediaFeature] WITH CHECK 
  ADD CONSTRAINT [FK_LearningResourceMediaFeature_RefLearningResourceMediaFeatureType]
  FOREIGN KEY([RefLearningResourceMediaFeatureTypeId]) 
  REFERENCES [dbo].[RefLearningResourceMediaFeatureType] ([RefLearningResourceMediaFeatureTypeId])
GO

ALTER TABLE [dbo].[LearningResourceMediaFeature] CHECK CONSTRAINT [FK_LearningResourceMediaFeature_RefLearningResourceMediaFeatureType]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Accessible content features included with the learning resource. [CEDS Element: Learning Resource Media Feature Type, ID:001399]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'LearningResourceMediaFeature', 
	@level2type=N'COLUMN',@level2name=N'RefLearningResourceMediaFeatureTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign key to LearningResource' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'LearningResourceMediaFeature', 
	@level2type=N'COLUMN',@level2name=N'LearningResourceId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'LearningResourceMediaFeature', 
	@level2type=N'COLUMN',@level2name=N'LearningResourceMediaFeatureId'
GO

PRINT N'001401 Learning Resource Physical Media'
GO
CREATE TABLE [dbo].[LearningResourcePhysicalMedia](
   [LearningResourcePhysicalMediaId] [int] IDENTITY(1,1) NOT NULL, 
   [LearningResourceId] [int] NOT NULL,
   [RefLearningResourcePhysicalMediaTypeId] [int] NOT NULL,
   CONSTRAINT [PK_LearningResourcePhysicalMedia] PRIMARY KEY NONCLUSTERED ([LearningResourcePhysicalMediaId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[LearningResourcePhysicalMedia] WITH CHECK 
  ADD CONSTRAINT [FK_LearningResourcePhysicalMedia_LearningResource]
  FOREIGN KEY([LearningResourceId]) REFERENCES [dbo].[LearningResource] ([LearningResourceId])
GO

ALTER TABLE [dbo].[LearningResourcePhysicalMedia] CHECK CONSTRAINT [FK_LearningResourcePhysicalMedia_LearningResource]
GO

ALTER TABLE [dbo].[LearningResourcePhysicalMedia] WITH CHECK 
  ADD CONSTRAINT [FK_LearningResourcePhysicalMedia_RefLearningResourcePhysicalMediaType]
  FOREIGN KEY([RefLearningResourcePhysicalMediaTypeId]) 
  REFERENCES [dbo].[RefLearningResourcePhysicalMediaType] ([RefLearningResourcePhysicalMediaTypeId])
GO

ALTER TABLE [dbo].[LearningResourcePhysicalMedia] CHECK CONSTRAINT [FK_LearningResourcePhysicalMedia_RefLearningResourcePhysicalMediaType]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A type of physical media on which the Learning Resource is delivered or available. [CEDS Element: Learning Resource Physical Media Type, ID:001401]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'LearningResourcePhysicalMedia', 
	@level2type=N'COLUMN',@level2name=N'RefLearningResourcePhysicalMediaTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign key to LearningResource' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'LearningResourcePhysicalMedia', 
	@level2type=N'COLUMN',@level2name=N'LearningResourceId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'LearningResourcePhysicalMedia', 
	@level2type=N'COLUMN',@level2name=N'LearningResourcePhysicalMediaId'
GO


PRINT N'001430 Prof Dev Audiance Type'
GO
ALTER TABLE ProfessionalDevelopmentActivity ADD RefPDAudienceTypeId [int] NULL
GO

ALTER TABLE [dbo].[ProfessionalDevelopmentActivity] WITH CHECK 
  ADD CONSTRAINT [FK_ProfessionalDevelopmentActivity_RefPDAudienceType]
  FOREIGN KEY([RefPDAudienceTypeId]) REFERENCES [dbo].[RefPDAudienceType] ([RefPDAudienceTypeId])
GO

ALTER TABLE [dbo].[ProfessionalDevelopmentActivity] CHECK CONSTRAINT [FK_ProfessionalDevelopmentActivity_RefPDAudienceType]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of audience for the professional development activity. [CEDS Element: Professional Development Audience Type, ID:001430]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ProfessionalDevelopmentActivity', 
	@level2type=N'COLUMN',@level2name=N'RefPDAudienceTypeId'
GO


PRINT N'001433 Prof Dev Activity Approval For'
GO

ALTER TABLE ProfessionalDevelopmentActivity ADD RefPDActivityApprovedForId [int] NULL
GO

ALTER TABLE [dbo].[ProfessionalDevelopmentActivity] WITH CHECK 
  ADD CONSTRAINT [FK_ProfessionalDevelopmentActivity_RefPDActivityApprovedFor]
  FOREIGN KEY([RefPDActivityApprovedForId]) 
  REFERENCES [dbo].[RefPDActivityApprovedFor] ([RefPDActivityApprovedForId])
GO

ALTER TABLE [dbo].[ProfessionalDevelopmentActivity] CHECK CONSTRAINT [FK_ProfessionalDevelopmentActivity_RefPDActivityApprovedFor]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reference may be made to state or national content standards covered in the course. [CEDS Element: Professional Development Activity Approved For, ID:001433]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ProfessionalDevelopmentActivity', 
	@level2type=N'COLUMN',@level2name=N'RefPDActivityApprovedForId'
GO

PRINT N'001436 Prof Dev Activity Credit Type'
GO
ALTER TABLE ProfessionalDevelopmentActivity ADD RefPDActivityCreditTypeId [int] NULL
GO

ALTER TABLE [dbo].[ProfessionalDevelopmentActivity] WITH CHECK 
  ADD CONSTRAINT [FK_ProfessionalDevelopmentActivity_RefPDActivityCreditType]
  FOREIGN KEY([RefPDActivityCreditTypeId]) 
  REFERENCES [dbo].[RefPDActivityCreditType] ([RefPDActivityCreditTypeId])
GO

ALTER TABLE [dbo].[ProfessionalDevelopmentActivity] CHECK CONSTRAINT [FK_ProfessionalDevelopmentActivity_RefPDActivityCreditType]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of credit awarded. [CEDS Element: Professional Development Activity Credit Type, ID:001436]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ProfessionalDevelopmentActivity', 
	@level2type=N'COLUMN',@level2name=N'RefPDActivityCreditTypeId'
GO


PRINT N'001439 Prof Dev Activity Level'
GO
ALTER TABLE ProfessionalDevelopmentActivity ADD RefPDActivityLevelId [int] NULL
GO

ALTER TABLE [dbo].[ProfessionalDevelopmentActivity] WITH CHECK 
  ADD CONSTRAINT [FK_ProfessionalDevelopmentActivity_RefPDActivityLevel]
  FOREIGN KEY([RefPDActivityLevelId]) 
  REFERENCES [dbo].[RefPDActivityLevel] ([RefPDActivityLevelId])
GO

ALTER TABLE [dbo].[ProfessionalDevelopmentActivity] CHECK CONSTRAINT [FK_ProfessionalDevelopmentActivity_RefPDActivityLevel]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indicator of the level of a professional development activity on the beginner to advanced continuum. [CEDS Element: Professional Development Activity Level, ID:001439]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ProfessionalDevelopmentActivity', 
	@level2type=N'COLUMN',@level2name=N'RefPDActivityLevelId'
GO


PRINT N'001442 Prof Dev Activity Type'
GO
ALTER TABLE ProfessionalDevelopmentActivity ADD RefPDActivityTypeId [int] NULL
GO

ALTER TABLE [dbo].[ProfessionalDevelopmentActivity] WITH CHECK 
  ADD CONSTRAINT [FK_ProfessionalDevelopmentActivity_RefPDActivityType]
  FOREIGN KEY([RefPDActivityTypeId]) 
  REFERENCES [dbo].[RefPDActivityType] ([RefPDActivityTypeId])
GO

ALTER TABLE [dbo].[ProfessionalDevelopmentActivity] CHECK CONSTRAINT [FK_ProfessionalDevelopmentActivity_RefPDActivityType]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The indication of the type of profesional development activity. [CEDS Element: Professional Development Activity Type, ID:001442]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ProfessionalDevelopmentActivity', 
	@level2type=N'COLUMN',@level2name=N'RefPDActivityTypeId'
GO


PRINT N'001503 Outcome Time Point'
GO

ALTER TABLE AssessmentResult ADD RefOutcomeTimePointId [int] NULL
GO

ALTER TABLE [dbo].[AssessmentResult] WITH CHECK 
  ADD CONSTRAINT [FK_AssessmentResult_RefOutcomeTimePoint]
  FOREIGN KEY([RefOutcomeTimePointId]) REFERENCES [dbo].[RefOutcomeTimePoint] ([RefOutcomeTimePointId])
GO

ALTER TABLE [dbo].[AssessmentResult] CHECK CONSTRAINT [FK_AssessmentResult_RefOutcomeTimePoint]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The point in time for which the result is used for an outcome measure. [CEDS Element: Early Learning Outcome Time Point, ID:001503]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'AssessmentResult', 
	@level2type=N'COLUMN',@level2name=N'RefOutcomeTimePointId'
GO

PRINT N'001296 Correctional Education Facility Type'
GO
ALTER TABLE ProgramParticipationAE ADD RefCorrectionalEducationFacilityTypeId [int] NULL
GO

ALTER TABLE [dbo].[ProgramParticipationAE] WITH CHECK 
  ADD CONSTRAINT [FK_ProgramParticipationAE_RefCorrectionalEducationFacilityType]
  FOREIGN KEY([RefCorrectionalEducationFacilityTypeId]) 
  REFERENCES [dbo].[RefCorrectionalEducationFacilityType] ([RefCorrectionalEducationFacilityTypeId])
GO

ALTER TABLE [dbo].[ProgramParticipationAE] CHECK CONSTRAINT [FK_ProgramParticipationAE_RefCorrectionalEducationFacilityType]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of facility in which an inmate receives correctional education services. [CEDS Element: Correctional Education Facility Type, ID:001296]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ProgramParticipationAE', 
	@level2type=N'COLUMN',@level2name=N'RefCorrectionalEducationFacilityTypeId'
GO


PRINT N'001408 Learning Standard Item Node Accessibility Profile'
GO
ALTER TABLE LearningStandardItem ADD RefLearningStandardItemNodeAccessibilityProfileId [int] NULL
GO

ALTER TABLE [dbo].[LearningStandardItem] WITH CHECK 
  ADD CONSTRAINT [FK_LearningStandardItem_RefLearningStandardItemNodeAccessibilityProfile]
  FOREIGN KEY([RefLearningStandardItemNodeAccessibilityProfileId]) 
  REFERENCES [dbo].[RefLearningStandardItemNodeAccessibilityProfile] ([RefLearningStandardItemNodeAccessibilityProfileId])
GO

ALTER TABLE [dbo].[LearningStandardItem] CHECK 
  CONSTRAINT [FK_LearningStandardItem_RefLearningStandardItemNodeAccessibilityProfile]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When the Learning Standard Item is used as a node in a learning map, this element supports alternative pathways based on a learner''s accessibility profile.  The type selected indicates which accessibility profile the node is designed to address. [CEDS Element: Learning Standard Item Node Accessibility Profile, ID:001408]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'LearningStandardItem', 
	@level2type=N'COLUMN',@level2name=N'RefLearningStandardItemNodeAccessibilityProfileId'
GO

PRINT N'001411 Learning Standard Testability Type'
GO
ALTER TABLE LearningStandardItem ADD RefLearningStandardItemTestabilityTypeId [int] NULL
GO

ALTER TABLE [dbo].[LearningStandardItem] WITH CHECK 
  ADD CONSTRAINT [FK_LearningStandardItem_RefLearningStandardItemTestabilityType]
  FOREIGN KEY([RefLearningStandardItemTestabilityTypeId]) 
  REFERENCES [dbo].[RefLearningStandardItemTestabilityType] ([RefLearningStandardItemTestabilityTypeId])
GO

ALTER TABLE [dbo].[LearningStandardItem] CHECK 
  CONSTRAINT [FK_LearningStandardItem_RefLearningStandardItemTestabilityType]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates if the competency described in the Learning Standard Item Statement can be tested using one or more assessment items. [CEDS Element: Learning Standard Item Testability Type, ID:001411]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'LearningStandardItem', 
	@level2type=N'COLUMN',@level2name=N'RefLearningStandardItemTestabilityTypeId'
GO


PRINT N'001418 Operational Status'
GO
EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'Organization operating status values.  [CEDS Elements: School Operational Status (000533), Local Education Agency Operational Status (000174), Organization Operational Status (001418)]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefOperationalStatus'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'Organization operating status values.  [CEDS Elements: School Operational Status (000533), Local Education Agency Operational Status (000174), Organization Operational Status (001418)]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefOperationalStatus', 
	@level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'Organization operating status values.  [CEDS Elements: School Operational Status (000533), Local Education Agency Operational Status (000174), Organization Operational Status (001418)]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'OrganizationOperationalStatus', 
	@level2type=N'COLUMN',@level2name=N'RefOperationalStatusId'
GO

PRINT N'001499 Workbased Learning Opportunity Type'
GO
ALTER TABLE K12Course ADD RefWorkbasedLearningOpportunityTypeId [int] NULL
GO

ALTER TABLE [dbo].[K12Course] WITH CHECK 
  ADD CONSTRAINT [FK_K12Course_RefWorkbasedLearningOpportunityType]
  FOREIGN KEY([RefWorkbasedLearningOpportunityTypeId]) 
  REFERENCES [dbo].[RefWorkbasedLearningOpportunityType] ([RefWorkbasedLearningOpportunityTypeId])
GO

ALTER TABLE [dbo].[K12Course] CHECK CONSTRAINT [FK_K12Course_RefWorkbasedLearningOpportunityType]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of work-based learning opportunity a student participated in. [CEDS Element: Work-based Learning Opportunity Type, ID:001499]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'K12Course', 
	@level2type=N'COLUMN',@level2name=N'RefWorkbasedLearningOpportunityTypeId'
GO

ALTER TABLE ProgramParticipationAE ADD RefWorkbasedLearningOpportunityTypeId [int] NULL
GO

ALTER TABLE [dbo].[ProgramParticipationAE] WITH CHECK 
  ADD CONSTRAINT [FK_ProgramParticipationAE_RefWorkbasedLearningOpportunityType]
  FOREIGN KEY([RefWorkbasedLearningOpportunityTypeId]) 
  REFERENCES [dbo].[RefWorkbasedLearningOpportunityType] ([RefWorkbasedLearningOpportunityTypeId])
GO

ALTER TABLE [dbo].[ProgramParticipationAE] CHECK CONSTRAINT [FK_ProgramParticipationAE_RefWorkbasedLearningOpportunityType]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of work-based learning opportunity a student participated in. [CEDS Element: Work-based Learning Opportunity Type, ID:001499]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ProgramParticipationAE', 
	@level2type=N'COLUMN',@level2name=N'RefWorkbasedLearningOpportunityTypeId'
GO

ALTER TABLE ProgramParticipationCte ADD RefWorkbasedLearningOpportunityTypeId [int] NULL
GO

ALTER TABLE [dbo].[ProgramParticipationCte] WITH CHECK 
  ADD CONSTRAINT [FK_ProgramParticipationCte_RefWorkbasedLearningOpportunityType]
  FOREIGN KEY([RefWorkbasedLearningOpportunityTypeId]) 
  REFERENCES [dbo].[RefWorkbasedLearningOpportunityType] ([RefWorkbasedLearningOpportunityTypeId])
GO

ALTER TABLE [dbo].[ProgramParticipationCte] CHECK CONSTRAINT [FK_ProgramParticipationCte_RefWorkbasedLearningOpportunityType]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of work-based learning opportunity a student participated in. [CEDS Element: Work-based Learning Opportunity Type, ID:001499]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ProgramParticipationCte', 
	@level2type=N'COLUMN',@level2name=N'RefWorkbasedLearningOpportunityTypeId'
GO

ALTER TABLE PsStudentProgram ADD RefWorkbasedLearningOpportunityTypeId [int] NULL
GO

ALTER TABLE [dbo].[PsStudentProgram] WITH CHECK 
  ADD CONSTRAINT [FK_PsStudentProgram_RefWorkbasedLearningOpportunityType]
  FOREIGN KEY([RefWorkbasedLearningOpportunityTypeId]) 
  REFERENCES [dbo].[RefWorkbasedLearningOpportunityType] ([RefWorkbasedLearningOpportunityTypeId])
GO

ALTER TABLE [dbo].[PsStudentProgram] CHECK CONSTRAINT [FK_PsStudentProgram_RefWorkbasedLearningOpportunityType]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of work-based learning opportunity a student participated in. [CEDS Element: Work-based Learning Opportunity Type, ID:001499]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PsStudentProgram', 
	@level2type=N'COLUMN',@level2name=N'RefWorkbasedLearningOpportunityTypeId'
GO
 
PRINT N'001246 Education Level'
GO
EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The extent of formal instruction a person has received (e.g., the highest grade in school completed or its equivalent or the highest degree received). [CEDS Elements: Highest Level of Education Completed (000141),  Learning Resource Education Level (001246)]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefEducationLevel', 
	@level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The extent of formal instruction a person has received (e.g., the highest grade in school completed or its equivalent or the highest degree received). [CEDS Elements: Highest Level of Education Completed (000141),  Learning Resource Education Level (001246)]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefEducationLevel'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The extent of formal instruction a person has received (e.g., the highest grade in school completed or its equivalent or the highest degree received). [CEDS Elements: Highest Level of Education Completed (000141),  Learning Resource Education Level (001246)]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'LearningResourceEducationLevel', 
	@level2type=N'COLUMN',@level2name=N'RefEducationLevelId'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The extent of formal instruction a person has received (e.g., the highest grade in school completed or its equivalent or the highest degree received). [CEDS Elements: Highest Level of Education Completed (000141),  Learning Resource Education Level (001246)]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'LearningStandardItemEducationLevel', 
	@level2type=N'COLUMN',@level2name=N'RefEducationLevelId'
GO

PRINT N'Address issues for columns that should allow nulls'
GO
ALTER TABLE RefAssessmentAccommodationType ALTER COLUMN RefJurisdictionId int NULL
GO

ALTER TABLE dbo.RefEarlyChildhoodEnrollmentServiceType ALTER COLUMN Code nvarchar(50) NULL
GO

ALTER TABLE dbo.RefParticipationType ALTER COLUMN OrganizationId int NULL
GO

ALTER TABLE dbo.RefProficiencyTargetAyp ALTER COLUMN RefJurisdictionId int NULL
GO

-- Add new Type tables needed by Ref tables to support types of Ref lists
PRINT N'Table [dbo].[RefEducationLevelType]'
GO
CREATE TABLE [dbo].[RefEducationLevelType](
	[RefEducationLevelTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Description] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
 CONSTRAINT [PK_RefEducationLevelType] PRIMARY KEY CLUSTERED 
(
	[RefEducationLevelTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[RefEducationLevelType]  WITH CHECK ADD  CONSTRAINT [FK_RefEducationLevelType_Organization] 
	FOREIGN KEY([RefJurisdictionId])
	REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefEducationLevelType] CHECK CONSTRAINT [FK_RefEducationLevelType_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefEducationLevelType', @level2type=N'COLUMN',@level2name=N'RefEducationLevelTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'List of education level types.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefEducationLevelType', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefEducationLevelType', @level2type=N'COLUMN',@level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefEducationLevelType', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'List of identification system types.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefEducationLevelType'
GO

ALTER TABLE [dbo].[RefEducationLevel]  WITH CHECK ADD [RefEducationLevelTypeId]  [int] NULL
GO

ALTER TABLE [dbo].[RefEducationLevel]  WITH CHECK ADD  CONSTRAINT [FK_RefEducationLevel_RefEducationLevelType] 
	FOREIGN KEY([RefEducationLevelTypeId])
	REFERENCES [dbo].[RefEducationLevelType] ([RefEducationLevelTypeId])
GO

ALTER TABLE [dbo].[RefEducationLevel] CHECK CONSTRAINT [FK_RefEducationLevel_RefEducationLevelType]
GO

PRINT N'RefGradeLevelType'
GO

CREATE TABLE [dbo].[RefGradeLevelType](
	[RefGradeLevelTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Description] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
 CONSTRAINT [PK_RefGradeLevelType] PRIMARY KEY CLUSTERED 
(
	[RefGradeLevelTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[RefGradeLevelType]  WITH CHECK ADD  CONSTRAINT [FK_RefGradeLevelType_Organization] 
	FOREIGN KEY([RefJurisdictionId])
	REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefGradeLevelType] CHECK CONSTRAINT [FK_RefGradeLevelType_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefGradeLevelType', @level2type=N'COLUMN',@level2name=N'RefGradeLevelTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'List of grade level types.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefGradeLevelType', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefGradeLevelType', @level2type=N'COLUMN',@level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefGradeLevelType', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'List of identification system types.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefGradeLevelType'
GO

/****** Object:  Table [dbo].[RefGradeLevel] Column [RefGradeLevelTypeId] ******/
ALTER TABLE [dbo].[RefGradeLevel]  WITH CHECK ADD [RefGradeLevelTypeId]  [int] NULL
GO

ALTER TABLE [dbo].[RefGradeLevel]  WITH CHECK ADD  CONSTRAINT [FK_RefGradeLevel_RefGradeLevelType] 
	FOREIGN KEY([RefGradeLevelTypeId])
	REFERENCES [dbo].[RefGradeLevelType] ([RefGradeLevelTypeId])
GO

ALTER TABLE [dbo].[RefGradeLevel] CHECK CONSTRAINT [FK_RefGradeLevel_RefGradeLevelType]
GO

PRINT N'RefOperationalStatusType'
GO
CREATE TABLE [dbo].[RefOperationalStatusType](
	[RefOperationalStatusTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Description] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
 CONSTRAINT [PK_RefOperationalStatusType] PRIMARY KEY CLUSTERED 
(
	[RefOperationalStatusTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[RefOperationalStatusType]  WITH CHECK ADD  CONSTRAINT [FK_RefOperationalStatusType_Organization] 
	FOREIGN KEY([RefJurisdictionId])
	REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefOperationalStatusType] CHECK CONSTRAINT [FK_RefOperationalStatusType_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefOperationalStatusType', @level2type=N'COLUMN',@level2name=N'RefOperationalStatusTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'List of operational status types.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefOperationalStatusType', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefOperationalStatusType', @level2type=N'COLUMN',@level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefOperationalStatusType', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'List of identification system types.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefOperationalStatusType'
GO

/****** Object:  Table [dbo].[RefOperationalStatus] Column [RefOperationalStatusTypeId] ******/
ALTER TABLE [dbo].[RefOperationalStatus]  WITH CHECK ADD [RefOperationalStatusTypeId]  [int] NULL
GO

ALTER TABLE [dbo].[RefOperationalStatus]  WITH CHECK ADD  CONSTRAINT [FK_RefOperationalStatus_RefOperationalStatusType]
	FOREIGN KEY([RefOperationalStatusTypeId])
	REFERENCES [dbo].[RefOperationalStatusType] ([RefOperationalStatusTypeId])
GO

ALTER TABLE [dbo].[RefOperationalStatus] CHECK CONSTRAINT [FK_RefOperationalStatus_RefOperationalStatusType]
GO

PRINT N'RefAddressType'
GO
CREATE TABLE [dbo].[RefAddressType](
	[RefAddressTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Description] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
 CONSTRAINT [PK_RefAddressType] PRIMARY KEY CLUSTERED 
(
	[RefAddressTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[RefAddressType]  WITH CHECK ADD  CONSTRAINT [FK_RefAddressType_Organization] 
	FOREIGN KEY([RefJurisdictionId])
	REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefAddressType] CHECK CONSTRAINT [FK_RefAddressType_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAddressType', @level2type=N'COLUMN',@level2name=N'RefAddressTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'List of address types.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAddressType', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAddressType', @level2type=N'COLUMN',@level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAddressType', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'List of identification system types.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAddressType'
GO

/****** Object:  Table [dbo].[RefPersonLocationType] Column [RefAddressTypeId] ******/
ALTER TABLE [dbo].[RefPersonLocationType]  WITH CHECK ADD [RefAddressTypeId]  [int] NULL
GO

ALTER TABLE [dbo].[RefPersonLocationType]  WITH CHECK ADD  CONSTRAINT [FK_RefPersonLocationType_RefAddressType] 
	FOREIGN KEY([RefAddressTypeId])
	REFERENCES [dbo].[RefAddressType] ([RefAddressTypeId])
GO

ALTER TABLE [dbo].[RefPersonLocationType] CHECK CONSTRAINT [FK_RefPersonLocationType_RefAddressType]
GO

PRINT N'RefOrganizationElementType'
GO
CREATE TABLE [dbo].[RefOrganizationElementType](
	[RefOrganizationElementTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Description] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
 CONSTRAINT [PK_RefOrganizationElementType] PRIMARY KEY CLUSTERED 
(
	[RefOrganizationElementTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[RefOrganizationElementType]  WITH CHECK ADD  CONSTRAINT [FK_RefOrganizationElementType_Organization] 
	FOREIGN KEY([RefJurisdictionId])
	REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefOrganizationElementType] CHECK CONSTRAINT [FK_RefOrganizationElementType_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefOrganizationElementType', @level2type=N'COLUMN',@level2name=N'RefOrganizationElementTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'List of organization type element types.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefOrganizationElementType', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefOrganizationElementType', @level2type=N'COLUMN',@level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefOrganizationElementType', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'List of identification system types.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefOrganizationElementType'
GO

/****** Object:  Table [dbo].[RefOrganizationType] Column [RefOrganizationElementTypeId] ******/
ALTER TABLE [dbo].[RefOrganizationType]  WITH CHECK ADD [RefOrganizationElementTypeId]  [int] NULL
GO

ALTER TABLE [dbo].[RefOrganizationType]  WITH CHECK ADD  CONSTRAINT [FK_RefOrganizationType_RefOrganizationElementType] 
	FOREIGN KEY([RefOrganizationElementTypeId])
	REFERENCES [dbo].[RefOrganizationElementType] ([RefOrganizationElementTypeId])
GO

ALTER TABLE [dbo].[RefOrganizationType] CHECK CONSTRAINT [FK_RefOrganizationType_RefOrganizationElementType]
GO

PRINT N'Drop Ref tables that are no longer used'
GO
DROP TABLE RefDevelopmentalEvaluationFinding
GO
 
DROP TABLE RefELChildDevelopmentalScreeningStatus
GO

DROP TABLE RefLearningResourceMediaType
GO

DROP TABLE RefPriorToSecondarySubject
GO

DROP TABLE RefPsCourseLevel
GO

DROP TABLE RefSecondaryCourseSubjectArea
GO

DROP TABLE RefSecondaryCourseLevel
GO

DROP TABLE RefWfProgramParticipationWhileEnrolled
GO




PRINT N'Column rename - renames columns in Ref tables to new template. Also adds a Sort Order column'
GO

PRINT N'RefAbsentAttendanceCategory'
GO
EXEC sp_RENAME @objname = N'RefAbsentAttendanceCategory.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAbsentAttendanceCategory.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAbsentAttendanceCategory] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefAcademicAwardLevel'
GO
EXEC sp_RENAME @objname = N'RefAcademicAwardLevel.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAcademicAwardLevel.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAcademicAwardLevel] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefAcademicHonorType'
GO
EXEC sp_RENAME @objname = N'RefAcademicHonorType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAcademicHonorType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAcademicHonorType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefAcademicRank'
GO
EXEC sp_RENAME @objname = N'RefAcademicRank.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAcademicRank.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAcademicRank] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefAcademicSubject'
GO
EXEC sp_RENAME @objname = N'RefAcademicSubject.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAcademicSubject.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAcademicSubject] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefAcademicTermDesignator'
GO
EXEC sp_RENAME @objname = N'RefAcademicTermDesignator.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAcademicTermDesignator.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAcademicTermDesignator] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefAccommodationsNeededType'
GO
EXEC sp_RENAME @objname = N'RefAccommodationsNeededType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAccommodationsNeededType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAccommodationsNeededType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefAccreditationAgency'
GO
EXEC sp_RENAME @objname = N'RefAccreditationAgency.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAccreditationAgency.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAccreditationAgency] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefActivityRecognitionType'
GO
EXEC sp_RENAME @objname = N'RefActivityRecognitionType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefActivityRecognitionType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefActivityRecognitionType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefAdditionalCreditType'
GO
EXEC sp_RENAME @objname = N'RefAdditionalCreditType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAdditionalCreditType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAdditionalCreditType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefAddressType'
GO
EXEC sp_RENAME @objname = N'RefAddressType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAddressType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAddressType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefAdministrativeFundingControl'
GO
EXEC sp_RENAME @objname = N'RefAdministrativeFundingControl.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAdministrativeFundingControl.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAdministrativeFundingControl] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefAdmittedStudent'
GO
EXEC sp_RENAME @objname = N'RefAdmittedStudent.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAdmittedStudent.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAdmittedStudent] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefAdvancedPlacementCourseCode'
GO
EXEC sp_RENAME @objname = N'RefAdvancedPlacementCourseCode.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAdvancedPlacementCourseCode.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAdvancedPlacementCourseCode] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefAeCertificationType'
GO
EXEC sp_RENAME @objname = N'RefAeCertificationType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAeCertificationType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAeCertificationType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefAeFunctioningLevelAtIntake'
GO
EXEC sp_RENAME @objname = N'RefAeFunctioningLevelAtIntake.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAeFunctioningLevelAtIntake.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAeFunctioningLevelAtIntake] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefAeFunctioningLevelAtPosttest'
GO
EXEC sp_RENAME @objname = N'RefAeFunctioningLevelAtPosttest.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAeFunctioningLevelAtPosttest.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAeFunctioningLevelAtPosttest] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefAeInstructionalProgramType'
GO
EXEC sp_RENAME @objname = N'RefAeInstructionalProgramType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAeInstructionalProgramType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAeInstructionalProgramType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefAePostsecondaryTransitionAction'
GO
EXEC sp_RENAME @objname = N'RefAePostsecondaryTransitionAction.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAePostsecondaryTransitionAction.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAePostsecondaryTransitionAction] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefAeSpecialProgramType'
GO
EXEC sp_RENAME @objname = N'RefAeSpecialProgramType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAeSpecialProgramType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAeSpecialProgramType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefAeStaffClassification'
GO
EXEC sp_RENAME @objname = N'RefAeStaffClassification.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAeStaffClassification.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAeStaffClassification] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefAeStaffEmploymentStatus'
GO
EXEC sp_RENAME @objname = N'RefAeStaffEmploymentStatus.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAeStaffEmploymentStatus.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAeStaffEmploymentStatus] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefAllergySeverity'
GO
EXEC sp_RENAME @objname = N'RefAllergySeverity.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAllergySeverity.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAllergySeverity] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefAllergyType'
GO
EXEC sp_RENAME @objname = N'RefAllergyType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAllergyType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAllergyType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefAlternateFundUses'
GO
EXEC sp_RENAME @objname = N'RefAlternateFundUses.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAlternateFundUses.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAlternateFundUses] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefAlternativeSchoolFocus'
GO
EXEC sp_RENAME @objname = N'RefAlternativeSchoolFocus.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAlternativeSchoolFocus.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAlternativeSchoolFocus] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefAltRouteToCertificationOrLicensure'
GO
EXEC sp_RENAME @objname = N'RefAltRouteToCertificationOrLicensure.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAltRouteToCertificationOrLicensure.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAltRouteToCertificationOrLicensure] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefAmaoAttainmentStatus'
GO
EXEC sp_RENAME @objname = N'RefAmaoAttainmentStatus.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAmaoAttainmentStatus.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAmaoAttainmentStatus] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefApipInteractionType'
GO
EXEC sp_RENAME @objname = N'RefApipInteractionType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefApipInteractionType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefApipInteractionType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefAssessmentAccommodationCategory'
GO
EXEC sp_RENAME @objname = N'RefAssessmentAccommodationCategory.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAssessmentAccommodationCategory.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAssessmentAccommodationCategory] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefAssessmentAccommodationType'
GO
EXEC sp_RENAME @objname = N'RefAssessmentAccommodationType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAssessmentAccommodationType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAssessmentAccommodationType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefAssessmentAssetIdentifierType'
GO
EXEC sp_RENAME @objname = N'RefAssessmentAssetIdentifierType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAssessmentAssetIdentifierType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAssessmentAssetIdentifierType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefAssessmentAssetType'
GO
EXEC sp_RENAME @objname = N'RefAssessmentAssetType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAssessmentAssetType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAssessmentAssetType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefAssessmentFormSectionIdentificationSystem'
GO
EXEC sp_RENAME @objname = N'RefAssessmentFormSectionIdentificationSystem.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAssessmentFormSectionIdentificationSystem.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAssessmentFormSectionIdentificationSystem] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefAssessmentGradeLevel'
GO
EXEC sp_RENAME @objname = N'RefAssessmentGradeLevel.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAssessmentGradeLevel.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAssessmentGradeLevel] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefAssessmentItemCharacteristicType'
GO
EXEC sp_RENAME @objname = N'RefAssessmentItemCharacteristicType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAssessmentItemCharacteristicType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAssessmentItemCharacteristicType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefAssessmentItemResponseStatus'
GO
EXEC sp_RENAME @objname = N'RefAssessmentItemResponseStatus.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAssessmentItemResponseStatus.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAssessmentItemResponseStatus] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefAssessmentItemType'
GO
EXEC sp_RENAME @objname = N'RefAssessmentItemType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAssessmentItemType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAssessmentItemType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefAssessmentNeedAlternativeRepresentationType'
GO
EXEC sp_RENAME @objname = N'RefAssessmentNeedAlternativeRepresentationType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAssessmentNeedAlternativeRepresentationType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAssessmentNeedAlternativeRepresentationType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefAssessmentNeedBrailleGradeType'
GO
EXEC sp_RENAME @objname = N'RefAssessmentNeedBrailleGradeType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAssessmentNeedBrailleGradeType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAssessmentNeedBrailleGradeType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefAssessmentNeedBrailleMarkType'
GO
EXEC sp_RENAME @objname = N'RefAssessmentNeedBrailleMarkType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAssessmentNeedBrailleMarkType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAssessmentNeedBrailleMarkType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefAssessmentNeedBrailleStatusCellType'
GO
EXEC sp_RENAME @objname = N'RefAssessmentNeedBrailleStatusCellType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAssessmentNeedBrailleStatusCellType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAssessmentNeedBrailleStatusCellType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefAssessmentNeedHazardType'
GO
EXEC sp_RENAME @objname = N'RefAssessmentNeedHazardType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAssessmentNeedHazardType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAssessmentNeedHazardType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefAssessmentNeedIncreasedWhitespacingType'
GO
EXEC sp_RENAME @objname = N'RefAssessmentNeedIncreasedWhitespacingType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAssessmentNeedIncreasedWhitespacingType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAssessmentNeedIncreasedWhitespacingType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefAssessmentNeedLanguageLearnerType'
GO
EXEC sp_RENAME @objname = N'RefAssessmentNeedLanguageLearnerType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAssessmentNeedLanguageLearnerType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAssessmentNeedLanguageLearnerType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefAssessmentNeedMaskingType'
GO
EXEC sp_RENAME @objname = N'RefAssessmentNeedMaskingType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAssessmentNeedMaskingType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAssessmentNeedMaskingType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefAssessmentNeedNumberOfBrailleDots'
GO
EXEC sp_RENAME @objname = N'RefAssessmentNeedNumberOfBrailleDots.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAssessmentNeedNumberOfBrailleDots.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAssessmentNeedNumberOfBrailleDots] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefAssessmentNeedSigningType'
GO
EXEC sp_RENAME @objname = N'RefAssessmentNeedSigningType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAssessmentNeedSigningType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAssessmentNeedSigningType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefAssessmentNeedSpokenSourcePreferenceType'
GO
EXEC sp_RENAME @objname = N'RefAssessmentNeedSpokenSourcePreferenceType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAssessmentNeedSpokenSourcePreferenceType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAssessmentNeedSpokenSourcePreferenceType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefAssessmentNeedSupportTool'
GO
EXEC sp_RENAME @objname = N'RefAssessmentNeedSupportTool.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAssessmentNeedSupportTool.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAssessmentNeedSupportTool] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefAssessmentNeedUsageType'
GO
EXEC sp_RENAME @objname = N'RefAssessmentNeedUsageType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAssessmentNeedUsageType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAssessmentNeedUsageType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefAssessmentNeedUserSpokenPreferenceType'
GO
EXEC sp_RENAME @objname = N'RefAssessmentNeedUserSpokenPreferenceType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAssessmentNeedUserSpokenPreferenceType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAssessmentNeedUserSpokenPreferenceType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefAssessmentParticipationIndicator'
GO
EXEC sp_RENAME @objname = N'RefAssessmentParticipationIndicator.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAssessmentParticipationIndicator.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAssessmentParticipationIndicator] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefAssessmentPlatformType'
GO
EXEC sp_RENAME @objname = N'RefAssessmentPlatformType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAssessmentPlatformType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAssessmentPlatformType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefAssessmentPretestOutcome'
GO
EXEC sp_RENAME @objname = N'RefAssessmentPretestOutcome.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAssessmentPretestOutcome.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAssessmentPretestOutcome] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefAssessmentPurpose'
GO
EXEC sp_RENAME @objname = N'RefAssessmentPurpose.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAssessmentPurpose.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAssessmentPurpose] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefAssessmentReasonNotCompleting'
GO
EXEC sp_RENAME @objname = N'RefAssessmentReasonNotCompleting.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAssessmentReasonNotCompleting.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAssessmentReasonNotCompleting] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefAssessmentReasonNotTested'
GO
EXEC sp_RENAME @objname = N'RefAssessmentReasonNotTested.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAssessmentReasonNotTested.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAssessmentReasonNotTested] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefAssessmentReportingMethod'
GO
EXEC sp_RENAME @objname = N'RefAssessmentReportingMethod.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAssessmentReportingMethod.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAssessmentReportingMethod] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefAssessmentSessionSpecialCircumstanceType'
GO
EXEC sp_RENAME @objname = N'RefAssessmentSessionSpecialCircumstanceType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAssessmentSessionSpecialCircumstanceType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAssessmentSessionSpecialCircumstanceType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefAssessmentSessionStaffRoleType'
GO
EXEC sp_RENAME @objname = N'RefAssessmentSessionStaffRoleType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAssessmentSessionStaffRoleType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAssessmentSessionStaffRoleType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefAssessmentSessionType'
GO
EXEC sp_RENAME @objname = N'RefAssessmentSessionType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAssessmentSessionType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAssessmentSessionType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefAssessmentSubtestIdentifierType'
GO
EXEC sp_RENAME @objname = N'RefAssessmentSubtestIdentifierType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAssessmentSubtestIdentifierType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAssessmentSubtestIdentifierType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefAssessmentType'
GO
EXEC sp_RENAME @objname = N'RefAssessmentType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAssessmentType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAssessmentType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefAssessmentTypeChildrenWithDisabilities'
GO
EXEC sp_RENAME @objname = N'RefAssessmentTypeChildrenWithDisabilities.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAssessmentTypeChildrenWithDisabilities.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAssessmentTypeChildrenWithDisabilities] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefAttendanceEventType'
GO
EXEC sp_RENAME @objname = N'RefAttendanceEventType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAttendanceEventType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAttendanceEventType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefAttendanceStatus'
GO
EXEC sp_RENAME @objname = N'RefAttendanceStatus.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAttendanceStatus.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAttendanceStatus] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefAypStatus'
GO
EXEC sp_RENAME @objname = N'RefAypStatus.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefAypStatus.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefAypStatus] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefBarrierToEducatingHomeless'
GO
EXEC sp_RENAME @objname = N'RefBarrierToEducatingHomeless.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefBarrierToEducatingHomeless.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefBarrierToEducatingHomeless] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefBlendedLearningModelType'
GO
EXEC sp_RENAME @objname = N'RefBlendedLearningModelType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefBlendedLearningModelType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefBlendedLearningModelType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefBloomsTaxonomyDomain'
GO
EXEC sp_RENAME @objname = N'RefBloomsTaxonomyDomain.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefBloomsTaxonomyDomain.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefBloomsTaxonomyDomain] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefBuildingUseType'
GO
EXEC sp_RENAME @objname = N'RefBuildingUseType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefBuildingUseType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefBuildingUseType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefCalendarEventType'
GO
EXEC sp_RENAME @objname = N'RefCalendarEventType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefCalendarEventType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefCalendarEventType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefCampusResidencyType'
GO
EXEC sp_RENAME @objname = N'RefCampusResidencyType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefCampusResidencyType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefCampusResidencyType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefCareerCluster'
GO
EXEC sp_RENAME @objname = N'RefCareerCluster.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefCareerCluster.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefCareerCluster] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefCareerEducationPlanType'
GO
EXEC sp_RENAME @objname = N'RefCareerEducationPlanType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefCareerEducationPlanType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefCareerEducationPlanType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefCarnegieBasicClassification'
GO
EXEC sp_RENAME @objname = N'RefCarnegieBasicClassification.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefCarnegieBasicClassification.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefCarnegieBasicClassification] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefCharterSchoolApprovalAgencyType'
GO
EXEC sp_RENAME @objname = N'RefCharterSchoolApprovalAgencyType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefCharterSchoolApprovalAgencyType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefCharterSchoolApprovalAgencyType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefCharterSchoolType'
GO
EXEC sp_RENAME @objname = N'RefCharterSchoolType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefCharterSchoolType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefCharterSchoolType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefChildDevelopmentAssociateType'
GO
EXEC sp_RENAME @objname = N'RefChildDevelopmentAssociateType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefChildDevelopmentAssociateType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefChildDevelopmentAssociateType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefChildOutcomesSummaryRating'
GO
EXEC sp_RENAME @objname = N'RefChildOutcomesSummaryRating.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefChildOutcomesSummaryRating.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefChildOutcomesSummaryRating] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefCipCode'
GO
EXEC sp_RENAME @objname = N'RefCipCode.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefCipCode.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefCipCode] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefCipUse'
GO
EXEC sp_RENAME @objname = N'RefCipUse.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefCipUse.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefCipUse] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefCipVersion'
GO
EXEC sp_RENAME @objname = N'RefCipVersion.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefCipVersion.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefCipVersion] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefClassroomPositionType'
GO
EXEC sp_RENAME @objname = N'RefClassroomPositionType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefClassroomPositionType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefClassroomPositionType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefClassSectionAssessmentReportingMethod'
GO
EXEC sp_RENAME @objname = N'RefClassSectionAssessmentReportingMethod.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefClassSectionAssessmentReportingMethod.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefClassSectionAssessmentReportingMethod] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefClassSectionDeliveryModel'
GO
EXEC sp_RENAME @objname = N'RefClassSectionDeliveryModel.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefClassSectionDeliveryModel.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefClassSectionDeliveryModel] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefClassSectionEnrollmentStatusType'
GO
EXEC sp_RENAME @objname = N'RefClassSectionEnrollmentStatusType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefClassSectionEnrollmentStatusType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefClassSectionEnrollmentStatusType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefClassSectionEnrollmentType'
GO
EXEC sp_RENAME @objname = N'RefClassSectionEnrollmentType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefClassSectionEnrollmentType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefClassSectionEnrollmentType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefClassSectionEntryType'
GO
EXEC sp_RENAME @objname = N'RefClassSectionEntryType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefClassSectionEntryType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefClassSectionEntryType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefClassSectionExitType'
GO
EXEC sp_RENAME @objname = N'RefClassSectionExitType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefClassSectionExitType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefClassSectionExitType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefCohortExclusion'
GO
EXEC sp_RENAME @objname = N'RefCohortExclusion.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefCohortExclusion.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefCohortExclusion] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefCommunicationMethod'
GO
EXEC sp_RENAME @objname = N'RefCommunicationMethod.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefCommunicationMethod.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefCommunicationMethod] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefContentStandardType'
GO
EXEC sp_RENAME @objname = N'RefContentStandardType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefContentStandardType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefContentStandardType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefContinuationOfServices'
GO
EXEC sp_RENAME @objname = N'RefContinuationOfServices.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefContinuationOfServices.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefContinuationOfServices] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefControlOfInstitution'
GO
EXEC sp_RENAME @objname = N'RefControlOfInstitution.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefControlOfInstitution.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefControlOfInstitution] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefCoreKnowledgeArea'
GO
EXEC sp_RENAME @objname = N'RefCoreKnowledgeArea.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefCoreKnowledgeArea.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefCoreKnowledgeArea] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefCorrectionalEducationFacilityType'
GO
EXEC sp_RENAME @objname = N'RefCorrectionalEducationFacilityType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefCorrectionalEducationFacilityType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefCorrectionalEducationFacilityType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefCorrectiveActionType'
GO
EXEC sp_RENAME @objname = N'RefCorrectiveActionType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefCorrectiveActionType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefCorrectiveActionType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefCountry'
GO
EXEC sp_RENAME @objname = N'RefCountry.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefCountry.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefCountry] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefCounty'
GO
EXEC sp_RENAME @objname = N'RefCounty.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefCounty.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefCounty] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefCourseAcademicGradeStatusCode'
GO
EXEC sp_RENAME @objname = N'RefCourseAcademicGradeStatusCode.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefCourseAcademicGradeStatusCode.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefCourseAcademicGradeStatusCode] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefCourseApplicableEducationLevel'
GO
EXEC sp_RENAME @objname = N'RefCourseApplicableEducationLevel.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefCourseApplicableEducationLevel.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefCourseApplicableEducationLevel] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefCourseCreditBasisType'
GO
EXEC sp_RENAME @objname = N'RefCourseCreditBasisType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefCourseCreditBasisType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefCourseCreditBasisType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefCourseCreditLevelType'
GO
EXEC sp_RENAME @objname = N'RefCourseCreditLevelType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefCourseCreditLevelType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefCourseCreditLevelType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefCourseCreditUnit'
GO
EXEC sp_RENAME @objname = N'RefCourseCreditUnit.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefCourseCreditUnit.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefCourseCreditUnit] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefCourseGpaApplicability'
GO
EXEC sp_RENAME @objname = N'RefCourseGpaApplicability.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefCourseGpaApplicability.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefCourseGpaApplicability] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefCourseHonorsType'
GO
EXEC sp_RENAME @objname = N'RefCourseHonorsType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefCourseHonorsType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefCourseHonorsType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefCourseInstructionMethod'
GO
EXEC sp_RENAME @objname = N'RefCourseInstructionMethod.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefCourseInstructionMethod.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefCourseInstructionMethod] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefCourseInstructionSiteType'
GO
EXEC sp_RENAME @objname = N'RefCourseInstructionSiteType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefCourseInstructionSiteType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefCourseInstructionSiteType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefCourseInteractionMode'
GO
EXEC sp_RENAME @objname = N'RefCourseInteractionMode.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefCourseInteractionMode.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefCourseInteractionMode] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefCourseLevelCharacteristic'
GO
EXEC sp_RENAME @objname = N'RefCourseLevelCharacteristic.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefCourseLevelCharacteristic.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefCourseLevelCharacteristic] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefCourseLevelType'
GO
EXEC sp_RENAME @objname = N'RefCourseLevelType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefCourseLevelType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefCourseLevelType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefCourseRepeatCode'
GO
EXEC sp_RENAME @objname = N'RefCourseRepeatCode.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefCourseRepeatCode.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefCourseRepeatCode] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefCredentialType'
GO
EXEC sp_RENAME @objname = N'RefCredentialType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefCredentialType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefCredentialType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefCreditHoursAppliedOtherProgram'
GO
EXEC sp_RENAME @objname = N'RefCreditHoursAppliedOtherProgram.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefCreditHoursAppliedOtherProgram.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefCreditHoursAppliedOtherProgram] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefCreditTypeEarned'
GO
EXEC sp_RENAME @objname = N'RefCreditTypeEarned.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefCreditTypeEarned.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefCreditTypeEarned] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefCriticalTeacherShortageCandidate'
GO
EXEC sp_RENAME @objname = N'RefCriticalTeacherShortageCandidate.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefCriticalTeacherShortageCandidate.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefCriticalTeacherShortageCandidate] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefCteGraduationRateInclusion'
GO
EXEC sp_RENAME @objname = N'RefCteGraduationRateInclusion.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefCteGraduationRateInclusion.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefCteGraduationRateInclusion] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefCteNonTraditionalGenderStatus'
GO
EXEC sp_RENAME @objname = N'RefCteNonTraditionalGenderStatus.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefCteNonTraditionalGenderStatus.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefCteNonTraditionalGenderStatus] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefCurriculumFrameworkType'
GO
EXEC sp_RENAME @objname = N'RefCurriculumFrameworkType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefCurriculumFrameworkType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefCurriculumFrameworkType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefDegreeOrCertificateType'
GO
EXEC sp_RENAME @objname = N'RefDegreeOrCertificateType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefDegreeOrCertificateType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefDegreeOrCertificateType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefDentalInsuranceCoverageType'
GO
EXEC sp_RENAME @objname = N'RefDentalInsuranceCoverageType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefDentalInsuranceCoverageType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefDentalInsuranceCoverageType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefDentalScreeningStatus'
GO
EXEC sp_RENAME @objname = N'RefDentalScreeningStatus.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefDentalScreeningStatus.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefDentalScreeningStatus] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefDependencyStatus'
GO
EXEC sp_RENAME @objname = N'RefDependencyStatus.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefDependencyStatus.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefDependencyStatus] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefDisabilityConditionStatusCode'
GO
EXEC sp_RENAME @objname = N'RefDisabilityConditionStatusCode.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefDisabilityConditionStatusCode.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefDisabilityConditionStatusCode] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefDisabilityConditionType'
GO
EXEC sp_RENAME @objname = N'RefDisabilityConditionType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefDisabilityConditionType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefDisabilityConditionType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefDisabilityDeterminationSourceType'
GO
EXEC sp_RENAME @objname = N'RefDisabilityDeterminationSourceType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefDisabilityDeterminationSourceType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefDisabilityDeterminationSourceType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefDisabilityType'
GO
EXEC sp_RENAME @objname = N'RefDisabilityType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefDisabilityType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefDisabilityType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefDisciplinaryActionTaken'
GO
EXEC sp_RENAME @objname = N'RefDisciplinaryActionTaken.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefDisciplinaryActionTaken.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefDisciplinaryActionTaken] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefDisciplineLengthDifferenceReason'
GO
EXEC sp_RENAME @objname = N'RefDisciplineLengthDifferenceReason.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefDisciplineLengthDifferenceReason.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefDisciplineLengthDifferenceReason] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefDisciplineMethodFirearms'
GO
EXEC sp_RENAME @objname = N'RefDisciplineMethodFirearms.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefDisciplineMethodFirearms.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefDisciplineMethodFirearms] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefDisciplineMethodOfCwd'
GO
EXEC sp_RENAME @objname = N'RefDisciplineMethodOfCwd.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefDisciplineMethodOfCwd.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefDisciplineMethodOfCwd] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefDisciplineReason'
GO
EXEC sp_RENAME @objname = N'RefDisciplineReason.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefDisciplineReason.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefDisciplineReason] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefDistanceEducationCourseEnrollment'
GO
EXEC sp_RENAME @objname = N'RefDistanceEducationCourseEnrollment.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefDistanceEducationCourseEnrollment.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefDistanceEducationCourseEnrollment] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefDoctoralExamsRequiredCode'
GO
EXEC sp_RENAME @objname = N'RefDoctoralExamsRequiredCode.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefDoctoralExamsRequiredCode.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefDoctoralExamsRequiredCode] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefEarlyChildhoodCredential'
GO
EXEC sp_RENAME @objname = N'RefEarlyChildhoodCredential.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefEarlyChildhoodCredential.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefEarlyChildhoodCredential] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefEarlyChildhoodEnrollmentServiceType'
GO
EXEC sp_RENAME @objname = N'RefEarlyChildhoodEnrollmentServiceType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefEarlyChildhoodEnrollmentServiceType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefEarlyChildhoodEnrollmentServiceType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefEarlyChildhoodProgramType'
GO
EXEC sp_RENAME @objname = N'RefEarlyChildhoodProgramType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefEarlyChildhoodProgramType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefEarlyChildhoodProgramType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefEducationLevel'
GO
EXEC sp_RENAME @objname = N'RefEducationLevel.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefEducationLevel.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefEducationLevel] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefEducationLevelType'
GO
EXEC sp_RENAME @objname = N'RefEducationLevelType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefEducationLevelType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefEducationLevelType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefEducationStaffClassification'
GO
EXEC sp_RENAME @objname = N'RefEducationStaffClassification.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefEducationStaffClassification.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefEducationStaffClassification] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefELClassGroupCurriculumType'
GO
EXEC sp_RENAME @objname = N'RefELClassGroupCurriculumType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefELClassGroupCurriculumType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefELClassGroupCurriculumType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefElementaryMiddleAdditional'
GO
EXEC sp_RENAME @objname = N'RefElementaryMiddleAdditional.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefElementaryMiddleAdditional.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefElementaryMiddleAdditional] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefELExperience'
GO
EXEC sp_RENAME @objname = N'RefELExperience.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefELExperience.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefELExperience] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefELFacilityLicensingStatus'
GO
EXEC sp_RENAME @objname = N'RefELFacilityLicensingStatus.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefELFacilityLicensingStatus.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefELFacilityLicensingStatus] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefELFederalFundingType'
GO
EXEC sp_RENAME @objname = N'RefELFederalFundingType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefELFederalFundingType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefELFederalFundingType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefELGroupSizeStandardMet'
GO
EXEC sp_RENAME @objname = N'RefELGroupSizeStandardMet.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefELGroupSizeStandardMet.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefELGroupSizeStandardMet] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefELLevelOfSpecialization'
GO
EXEC sp_RENAME @objname = N'RefELLevelOfSpecialization.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefELLevelOfSpecialization.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefELLevelOfSpecialization] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefELOtherFederalFundingSources'
GO
EXEC sp_RENAME @objname = N'RefELOtherFederalFundingSources.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefELOtherFederalFundingSources.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefELOtherFederalFundingSources] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefELOutcomeMeasurementLevel'
GO
EXEC sp_RENAME @objname = N'RefELOutcomeMeasurementLevel.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefELOutcomeMeasurementLevel.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefELOutcomeMeasurementLevel] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefELProfessionalDevelopmentTopicArea'
GO
EXEC sp_RENAME @objname = N'RefELProfessionalDevelopmentTopicArea.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefELProfessionalDevelopmentTopicArea.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefELProfessionalDevelopmentTopicArea] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefELProgramEligibility'
GO
EXEC sp_RENAME @objname = N'RefELProgramEligibility.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefELProgramEligibility.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefELProgramEligibility] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefELProgramEligibilityStatus'
GO
EXEC sp_RENAME @objname = N'RefELProgramEligibilityStatus.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefELProgramEligibilityStatus.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefELProgramEligibilityStatus] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefELProgramLicenseStatus'
GO
EXEC sp_RENAME @objname = N'RefELProgramLicenseStatus.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefELProgramLicenseStatus.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefELProgramLicenseStatus] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefELServiceType'
GO
EXEC sp_RENAME @objname = N'RefELServiceType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefELServiceType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefELServiceType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefEmailType'
GO
EXEC sp_RENAME @objname = N'RefEmailType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefEmailType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefEmailType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefEmployedAfterExit'
GO
EXEC sp_RENAME @objname = N'RefEmployedAfterExit.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefEmployedAfterExit.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefEmployedAfterExit] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefEmployedPriorToEnrollment'
GO
EXEC sp_RENAME @objname = N'RefEmployedPriorToEnrollment.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefEmployedPriorToEnrollment.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefEmployedPriorToEnrollment] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefEmployedWhileEnrolled'
GO
EXEC sp_RENAME @objname = N'RefEmployedWhileEnrolled.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefEmployedWhileEnrolled.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefEmployedWhileEnrolled] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefEmploymentContractType'
GO
EXEC sp_RENAME @objname = N'RefEmploymentContractType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefEmploymentContractType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefEmploymentContractType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefEmploymentLocation'
GO
EXEC sp_RENAME @objname = N'RefEmploymentLocation.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefEmploymentLocation.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefEmploymentLocation] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefEmploymentSeparationReason'
GO
EXEC sp_RENAME @objname = N'RefEmploymentSeparationReason.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefEmploymentSeparationReason.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefEmploymentSeparationReason] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefEmploymentSeparationType'
GO
EXEC sp_RENAME @objname = N'RefEmploymentSeparationType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefEmploymentSeparationType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefEmploymentSeparationType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefEmploymentStatus'
GO
EXEC sp_RENAME @objname = N'RefEmploymentStatus.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefEmploymentStatus.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefEmploymentStatus] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefEmploymentStatusWhileEnrolled'
GO
EXEC sp_RENAME @objname = N'RefEmploymentStatusWhileEnrolled.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefEmploymentStatusWhileEnrolled.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefEmploymentStatusWhileEnrolled] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefEndOfTermStatus'
GO
EXEC sp_RENAME @objname = N'RefEndOfTermStatus.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefEndOfTermStatus.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefEndOfTermStatus] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefEnrollmentStatus'
GO
EXEC sp_RENAME @objname = N'RefEnrollmentStatus.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefEnrollmentStatus.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefEnrollmentStatus] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefEntityType'
GO
EXEC sp_RENAME @objname = N'RefEntityType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefEntityType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefEntityType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefEntryType'
GO
EXEC sp_RENAME @objname = N'RefEntryType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefEntryType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefEntryType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefEnvironmentSetting'
GO
EXEC sp_RENAME @objname = N'RefEnvironmentSetting.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefEnvironmentSetting.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefEnvironmentSetting] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefERAdministrativeDataSource'
GO
EXEC sp_RENAME @objname = N'RefERAdministrativeDataSource.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefERAdministrativeDataSource.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefERAdministrativeDataSource] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefERSRuralUrbanContinuumCode'
GO
EXEC sp_RENAME @objname = N'RefERSRuralUrbanContinuumCode.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefERSRuralUrbanContinuumCode.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefERSRuralUrbanContinuumCode] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefExitOrWithdrawalStatus'
GO
EXEC sp_RENAME @objname = N'RefExitOrWithdrawalStatus.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefExitOrWithdrawalStatus.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefExitOrWithdrawalStatus] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefExitOrWithdrawalType'
GO
EXEC sp_RENAME @objname = N'RefExitOrWithdrawalType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefExitOrWithdrawalType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefExitOrWithdrawalType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefFamilyIncomeSource'
GO
EXEC sp_RENAME @objname = N'RefFamilyIncomeSource.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefFamilyIncomeSource.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefFamilyIncomeSource] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefFederalProgramFundingAllocationType'
GO
EXEC sp_RENAME @objname = N'RefFederalProgramFundingAllocationType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefFederalProgramFundingAllocationType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefFederalProgramFundingAllocationType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefFinancialAccountCategory'
GO
EXEC sp_RENAME @objname = N'RefFinancialAccountCategory.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefFinancialAccountCategory.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefFinancialAccountCategory] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefFinancialAccountFundClassification'
GO
EXEC sp_RENAME @objname = N'RefFinancialAccountFundClassification.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefFinancialAccountFundClassification.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefFinancialAccountFundClassification] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefFinancialAccountProgramCode'
GO
EXEC sp_RENAME @objname = N'RefFinancialAccountProgramCode.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefFinancialAccountProgramCode.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefFinancialAccountProgramCode] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefFinancialAidApplicationType'
GO
EXEC sp_RENAME @objname = N'RefFinancialAidApplicationType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefFinancialAidApplicationType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefFinancialAidApplicationType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefFinancialAidAwardStatus'
GO
EXEC sp_RENAME @objname = N'RefFinancialAidAwardStatus.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefFinancialAidAwardStatus.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefFinancialAidAwardStatus] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefFinancialAidAwardType'
GO
EXEC sp_RENAME @objname = N'RefFinancialAidAwardType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefFinancialAidAwardType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefFinancialAidAwardType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefFinancialBalanceSheetAccountCode'
GO
EXEC sp_RENAME @objname = N'RefFinancialBalanceSheetAccountCode.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefFinancialBalanceSheetAccountCode.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefFinancialBalanceSheetAccountCode] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefFinancialExpenditureFunctionCode'
GO
EXEC sp_RENAME @objname = N'RefFinancialExpenditureFunctionCode.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefFinancialExpenditureFunctionCode.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefFinancialExpenditureFunctionCode] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefFinancialExpenditureObjectCode'
GO
EXEC sp_RENAME @objname = N'RefFinancialExpenditureObjectCode.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefFinancialExpenditureObjectCode.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefFinancialExpenditureObjectCode] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefFinancialRevenueAccountCode'
GO
EXEC sp_RENAME @objname = N'RefFinancialRevenueAccountCode.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefFinancialRevenueAccountCode.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefFinancialRevenueAccountCode] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefFirearmType'
GO
EXEC sp_RENAME @objname = N'RefFirearmType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefFirearmType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefFirearmType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefFoodServiceEligibility'
GO
EXEC sp_RENAME @objname = N'RefFoodServiceEligibility.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefFoodServiceEligibility.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefFoodServiceEligibility] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefFoodServiceParticipation'
GO
EXEC sp_RENAME @objname = N'RefFoodServiceParticipation.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefFoodServiceParticipation.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefFoodServiceParticipation] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefFrequencyOfService'
GO
EXEC sp_RENAME @objname = N'RefFrequencyOfService.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefFrequencyOfService.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefFrequencyOfService] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefFullTimeStatus'
GO
EXEC sp_RENAME @objname = N'RefFullTimeStatus.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefFullTimeStatus.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefFullTimeStatus] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefGoalsForAttendingAdultEducation'
GO
EXEC sp_RENAME @objname = N'RefGoalsForAttendingAdultEducation.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefGoalsForAttendingAdultEducation.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefGoalsForAttendingAdultEducation] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefGpaWeightedIndicator'
GO
EXEC sp_RENAME @objname = N'RefGpaWeightedIndicator.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefGpaWeightedIndicator.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefGpaWeightedIndicator] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefGradeLevel'
GO
EXEC sp_RENAME @objname = N'RefGradeLevel.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefGradeLevel.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefGradeLevel] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefGradeLevelType'
GO
EXEC sp_RENAME @objname = N'RefGradeLevelType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefGradeLevelType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefGradeLevelType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefGradePointAverageDomain'
GO
EXEC sp_RENAME @objname = N'RefGradePointAverageDomain.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefGradePointAverageDomain.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefGradePointAverageDomain] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefGraduateAssistantIpedsCategory'
GO
EXEC sp_RENAME @objname = N'RefGraduateAssistantIpedsCategory.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefGraduateAssistantIpedsCategory.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefGraduateAssistantIpedsCategory] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefGraduateOrDoctoralExamResultsStatus'
GO
EXEC sp_RENAME @objname = N'RefGraduateOrDoctoralExamResultsStatus.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefGraduateOrDoctoralExamResultsStatus.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefGraduateOrDoctoralExamResultsStatus] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefGunFreeSchoolsActReportingStatus'
GO
EXEC sp_RENAME @objname = N'RefGunFreeSchoolsActReportingStatus.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefGunFreeSchoolsActReportingStatus.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefGunFreeSchoolsActReportingStatus] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefHealthInsuranceCoverage'
GO
EXEC sp_RENAME @objname = N'RefHealthInsuranceCoverage.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefHealthInsuranceCoverage.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefHealthInsuranceCoverage] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefHearingScreeningStatus'
GO
EXEC sp_RENAME @objname = N'RefHearingScreeningStatus.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefHearingScreeningStatus.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefHearingScreeningStatus] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefHigherEducationInstitutionAccreditationStatus'
GO
EXEC sp_RENAME @objname = N'RefHigherEducationInstitutionAccreditationStatus.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefHigherEducationInstitutionAccreditationStatus.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefHigherEducationInstitutionAccreditationStatus] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefHighestEducationLevelCompleted'
GO
EXEC sp_RENAME @objname = N'RefHighestEducationLevelCompleted.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefHighestEducationLevelCompleted.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefHighestEducationLevelCompleted] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefHighSchoolDiplomaDistinctionType'
GO
EXEC sp_RENAME @objname = N'RefHighSchoolDiplomaDistinctionType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefHighSchoolDiplomaDistinctionType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefHighSchoolDiplomaDistinctionType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefHighSchoolDiplomaType'
GO
EXEC sp_RENAME @objname = N'RefHighSchoolDiplomaType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefHighSchoolDiplomaType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefHighSchoolDiplomaType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefHighSchoolGraduationRateIndicator'
GO
EXEC sp_RENAME @objname = N'RefHighSchoolGraduationRateIndicator.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefHighSchoolGraduationRateIndicator.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefHighSchoolGraduationRateIndicator] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefHomelessNighttimeResidence'
GO
EXEC sp_RENAME @objname = N'RefHomelessNighttimeResidence.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefHomelessNighttimeResidence.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefHomelessNighttimeResidence] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefIDEADisciplineMethodFirearm'
GO
EXEC sp_RENAME @objname = N'RefIDEADisciplineMethodFirearm.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefIDEADisciplineMethodFirearm.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefIDEADisciplineMethodFirearm] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefIDEAEducationalEnvironmentEC'
GO
EXEC sp_RENAME @objname = N'RefIDEAEducationalEnvironmentEC.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefIDEAEducationalEnvironmentEC.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefIDEAEducationalEnvironmentEC] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefIDEAEducationalEnvironmentSchoolAge'
GO
EXEC sp_RENAME @objname = N'RefIDEAEducationalEnvironmentSchoolAge.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefIDEAEducationalEnvironmentSchoolAge.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefIDEAEducationalEnvironmentSchoolAge] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefIDEAEnvironmentEL'
GO
EXEC sp_RENAME @objname = N'RefIDEAEnvironmentEL.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefIDEAEnvironmentEL.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefIDEAEnvironmentEL] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefIDEAIEPStatus'
GO
EXEC sp_RENAME @objname = N'RefIDEAIEPStatus.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefIDEAIEPStatus.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefIDEAIEPStatus] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefIDEAInterimRemoval'
GO
EXEC sp_RENAME @objname = N'RefIDEAInterimRemoval.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefIDEAInterimRemoval.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefIDEAInterimRemoval] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefIDEAInterimRemovalReason'
GO
EXEC sp_RENAME @objname = N'RefIDEAInterimRemovalReason.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefIDEAInterimRemovalReason.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefIDEAInterimRemovalReason] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefImmunizationType'
GO
EXEC sp_RENAME @objname = N'RefImmunizationType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefImmunizationType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefImmunizationType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefIncidentBehavior'
GO
EXEC sp_RENAME @objname = N'RefIncidentBehavior.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefIncidentBehavior.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefIncidentBehavior] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefIncidentBehaviorSecondary'
GO
EXEC sp_RENAME @objname = N'RefIncidentBehaviorSecondary.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefIncidentBehaviorSecondary.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefIncidentBehaviorSecondary] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefIncidentInjuryType'
GO
EXEC sp_RENAME @objname = N'RefIncidentInjuryType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefIncidentInjuryType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefIncidentInjuryType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefIncidentLocation'
GO
EXEC sp_RENAME @objname = N'RefIncidentLocation.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefIncidentLocation.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefIncidentLocation] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefIncidentMultipleOffenseType'
GO
EXEC sp_RENAME @objname = N'RefIncidentMultipleOffenseType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefIncidentMultipleOffenseType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefIncidentMultipleOffenseType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefIncidentPerpetratorInjuryType'
GO
EXEC sp_RENAME @objname = N'RefIncidentPerpetratorInjuryType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefIncidentPerpetratorInjuryType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefIncidentPerpetratorInjuryType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefIncidentPersonRoleType'
GO
EXEC sp_RENAME @objname = N'RefIncidentPersonRoleType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefIncidentPersonRoleType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefIncidentPersonRoleType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefIncidentPersonType'
GO
EXEC sp_RENAME @objname = N'RefIncidentPersonType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefIncidentPersonType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefIncidentPersonType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefIncidentReporterType'
GO
EXEC sp_RENAME @objname = N'RefIncidentReporterType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefIncidentReporterType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefIncidentReporterType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefIncidentTimeDescriptionCode'
GO
EXEC sp_RENAME @objname = N'RefIncidentTimeDescriptionCode.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefIncidentTimeDescriptionCode.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefIncidentTimeDescriptionCode] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefIncomeCalculationMethod'
GO
EXEC sp_RENAME @objname = N'RefIncomeCalculationMethod.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefIncomeCalculationMethod.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefIncomeCalculationMethod] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefIncreasedLearningTimeType'
GO
EXEC sp_RENAME @objname = N'RefIncreasedLearningTimeType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefIncreasedLearningTimeType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefIncreasedLearningTimeType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefIndividualizedProgramDateType'
GO
EXEC sp_RENAME @objname = N'RefIndividualizedProgramDateType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefIndividualizedProgramDateType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefIndividualizedProgramDateType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefIndividualizedProgramLocation'
GO
EXEC sp_RENAME @objname = N'RefIndividualizedProgramLocation.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefIndividualizedProgramLocation.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefIndividualizedProgramLocation] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefIndividualizedProgramPlannedServiceType'
GO
EXEC sp_RENAME @objname = N'RefIndividualizedProgramPlannedServiceType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefIndividualizedProgramPlannedServiceType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefIndividualizedProgramPlannedServiceType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefIndividualizedProgramTransitionType'
GO
EXEC sp_RENAME @objname = N'RefIndividualizedProgramTransitionType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefIndividualizedProgramTransitionType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefIndividualizedProgramTransitionType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefIndividualizedProgramType'
GO
EXEC sp_RENAME @objname = N'RefIndividualizedProgramType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefIndividualizedProgramType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefIndividualizedProgramType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefInstitutionTelephoneType'
GO
EXEC sp_RENAME @objname = N'RefInstitutionTelephoneType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefInstitutionTelephoneType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefInstitutionTelephoneType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefInstructionalActivityHours'
GO
EXEC sp_RENAME @objname = N'RefInstructionalActivityHours.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefInstructionalActivityHours.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefInstructionalActivityHours] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefInstructionalStaffContractLength'
GO
EXEC sp_RENAME @objname = N'RefInstructionalStaffContractLength.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefInstructionalStaffContractLength.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefInstructionalStaffContractLength] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefInstructionalStaffFacultyTenure'
GO
EXEC sp_RENAME @objname = N'RefInstructionalStaffFacultyTenure.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefInstructionalStaffFacultyTenure.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefInstructionalStaffFacultyTenure] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefInstructionCreditType'
GO
EXEC sp_RENAME @objname = N'RefInstructionCreditType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefInstructionCreditType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefInstructionCreditType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefInstructionLocationType'
GO
EXEC sp_RENAME @objname = N'RefInstructionLocationType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefInstructionLocationType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefInstructionLocationType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefIntegratedTechnologyStatus'
GO
EXEC sp_RENAME @objname = N'RefIntegratedTechnologyStatus.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefIntegratedTechnologyStatus.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefIntegratedTechnologyStatus] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefInternetAccess'
GO
EXEC sp_RENAME @objname = N'RefInternetAccess.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefInternetAccess.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefInternetAccess] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefIpedsOccupationalCategory'
GO
EXEC sp_RENAME @objname = N'RefIpedsOccupationalCategory.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefIpedsOccupationalCategory.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefIpedsOccupationalCategory] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefItemResponseTheoryKappaAlgorithm'
GO
EXEC sp_RENAME @objname = N'RefItemResponseTheoryKappaAlgorithm.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefItemResponseTheoryKappaAlgorithm.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefItemResponseTheoryKappaAlgorithm] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefItemResponsseTheoryDifficultyCategory'
GO
EXEC sp_RENAME @objname = N'RefItemResponsseTheoryDifficultyCategory.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefItemResponsseTheoryDifficultyCategory.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefItemResponsseTheoryDifficultyCategory] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefK12EndOfCourseRequirement'
GO
EXEC sp_RENAME @objname = N'RefK12EndOfCourseRequirement.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefK12EndOfCourseRequirement.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefK12EndOfCourseRequirement] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefK12LeaTitleISupportService'
GO
EXEC sp_RENAME @objname = N'RefK12LeaTitleISupportService.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefK12LeaTitleISupportService.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefK12LeaTitleISupportService] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefK12ResponsibilityType'
GO
EXEC sp_RENAME @objname = N'RefK12ResponsibilityType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefK12ResponsibilityType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefK12ResponsibilityType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefLanguage'
GO
EXEC sp_RENAME @objname = N'RefLanguage.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefLanguage.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefLanguage] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefLanguageUseType'
GO
EXEC sp_RENAME @objname = N'RefLanguageUseType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefLanguageUseType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefLanguageUseType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefLeaFundsTransferType'
GO
EXEC sp_RENAME @objname = N'RefLeaFundsTransferType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefLeaFundsTransferType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefLeaFundsTransferType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefLeaImprovementStatus'
GO
EXEC sp_RENAME @objname = N'RefLeaImprovementStatus.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefLeaImprovementStatus.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefLeaImprovementStatus] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefLearnerActionType'
GO
EXEC sp_RENAME @objname = N'RefLearnerActionType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefLearnerActionType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefLearnerActionType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefLearnerActivityMaximumTimeAllowedUnits'
GO
EXEC sp_RENAME @objname = N'RefLearnerActivityMaximumTimeAllowedUnits.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefLearnerActivityMaximumTimeAllowedUnits.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefLearnerActivityMaximumTimeAllowedUnits] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefLearnerActivityType'
GO
EXEC sp_RENAME @objname = N'RefLearnerActivityType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefLearnerActivityType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefLearnerActivityType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefLearningResourceAccessAPIType'
GO
EXEC sp_RENAME @objname = N'RefLearningResourceAccessAPIType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefLearningResourceAccessAPIType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefLearningResourceAccessAPIType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefLearningResourceAccessHazardType'
GO
EXEC sp_RENAME @objname = N'RefLearningResourceAccessHazardType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefLearningResourceAccessHazardType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefLearningResourceAccessHazardType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefLearningResourceAccessModeType'
GO
EXEC sp_RENAME @objname = N'RefLearningResourceAccessModeType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefLearningResourceAccessModeType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefLearningResourceAccessModeType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefLearningResourceBookFormatType'
GO
EXEC sp_RENAME @objname = N'RefLearningResourceBookFormatType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefLearningResourceBookFormatType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefLearningResourceBookFormatType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefLearningResourceCompetencyAlignmentType'
GO
EXEC sp_RENAME @objname = N'RefLearningResourceCompetencyAlignmentType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefLearningResourceCompetencyAlignmentType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefLearningResourceCompetencyAlignmentType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefLearningResourceControlFlexibilityType'
GO
EXEC sp_RENAME @objname = N'RefLearningResourceControlFlexibilityType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefLearningResourceControlFlexibilityType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefLearningResourceControlFlexibilityType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefLearningResourceDigitalMediaSubType'
GO
EXEC sp_RENAME @objname = N'RefLearningResourceDigitalMediaSubType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefLearningResourceDigitalMediaSubType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefLearningResourceDigitalMediaSubType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefLearningResourceDigitalMediaType'
GO
EXEC sp_RENAME @objname = N'RefLearningResourceDigitalMediaType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefLearningResourceDigitalMediaType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefLearningResourceDigitalMediaType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefLearningResourceEducationalUse'
GO
EXEC sp_RENAME @objname = N'RefLearningResourceEducationalUse.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefLearningResourceEducationalUse.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefLearningResourceEducationalUse] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefLearningResourceIntendedEndUserRole'
GO
EXEC sp_RENAME @objname = N'RefLearningResourceIntendedEndUserRole.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefLearningResourceIntendedEndUserRole.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefLearningResourceIntendedEndUserRole] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefLearningResourceInteractivityType'
GO
EXEC sp_RENAME @objname = N'RefLearningResourceInteractivityType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefLearningResourceInteractivityType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefLearningResourceInteractivityType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefLearningResourceMediaFeatureType'
GO
EXEC sp_RENAME @objname = N'RefLearningResourceMediaFeatureType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefLearningResourceMediaFeatureType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefLearningResourceMediaFeatureType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefLearningResourcePhysicalMediaType'
GO
EXEC sp_RENAME @objname = N'RefLearningResourcePhysicalMediaType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefLearningResourcePhysicalMediaType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefLearningResourcePhysicalMediaType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefLearningResourceType'
GO
EXEC sp_RENAME @objname = N'RefLearningResourceType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefLearningResourceType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefLearningResourceType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefLearningStandardDocumentPublicationStatus'
GO
EXEC sp_RENAME @objname = N'RefLearningStandardDocumentPublicationStatus.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefLearningStandardDocumentPublicationStatus.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefLearningStandardDocumentPublicationStatus] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefLearningStandardItemAssociationType'
GO
EXEC sp_RENAME @objname = N'RefLearningStandardItemAssociationType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefLearningStandardItemAssociationType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefLearningStandardItemAssociationType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefLearningStandardItemNodeAccessibilityProfile'
GO
EXEC sp_RENAME @objname = N'RefLearningStandardItemNodeAccessibilityProfile.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefLearningStandardItemNodeAccessibilityProfile.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefLearningStandardItemNodeAccessibilityProfile] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefLearningStandardItemTestabilityType'
GO
EXEC sp_RENAME @objname = N'RefLearningStandardItemTestabilityType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefLearningStandardItemTestabilityType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefLearningStandardItemTestabilityType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefLeaType'
GO
EXEC sp_RENAME @objname = N'RefLeaType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefLeaType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefLeaType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefLeaveEventType'
GO
EXEC sp_RENAME @objname = N'RefLeaveEventType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefLeaveEventType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefLeaveEventType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefLevelOfInstitution'
GO
EXEC sp_RENAME @objname = N'RefLevelOfInstitution.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefLevelOfInstitution.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefLevelOfInstitution] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefLicenseExempt'
GO
EXEC sp_RENAME @objname = N'RefLicenseExempt.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefLicenseExempt.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefLicenseExempt] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefLiteracyAssessment'
GO
EXEC sp_RENAME @objname = N'RefLiteracyAssessment.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefLiteracyAssessment.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefLiteracyAssessment] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefMagnetSpecialProgram'
GO
EXEC sp_RENAME @objname = N'RefMagnetSpecialProgram.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefMagnetSpecialProgram.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefMagnetSpecialProgram] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefMedicalAlertIndicator'
GO
EXEC sp_RENAME @objname = N'RefMedicalAlertIndicator.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefMedicalAlertIndicator.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefMedicalAlertIndicator] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefMepEnrollmentType'
GO
EXEC sp_RENAME @objname = N'RefMepEnrollmentType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefMepEnrollmentType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefMepEnrollmentType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefMepProjectBased'
GO
EXEC sp_RENAME @objname = N'RefMepProjectBased.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefMepProjectBased.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefMepProjectBased] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefMepProjectType'
GO
EXEC sp_RENAME @objname = N'RefMepProjectType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefMepProjectType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefMepProjectType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefMepServiceType'
GO
EXEC sp_RENAME @objname = N'RefMepServiceType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefMepServiceType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefMepServiceType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefMepSessionType'
GO
EXEC sp_RENAME @objname = N'RefMepSessionType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefMepSessionType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefMepSessionType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefMepStaffCategory'
GO
EXEC sp_RENAME @objname = N'RefMepStaffCategory.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefMepStaffCategory.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefMepStaffCategory] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefMethodOfServiceDelivery'
GO
EXEC sp_RENAME @objname = N'RefMethodOfServiceDelivery.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefMethodOfServiceDelivery.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefMethodOfServiceDelivery] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefMultipleIntelligenceType'
GO
EXEC sp_RENAME @objname = N'RefMultipleIntelligenceType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefMultipleIntelligenceType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefMultipleIntelligenceType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefNaepAspectsOfReading'
GO
EXEC sp_RENAME @objname = N'RefNaepAspectsOfReading.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefNaepAspectsOfReading.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefNaepAspectsOfReading] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefNaepMathComplexityLevel'
GO
EXEC sp_RENAME @objname = N'RefNaepMathComplexityLevel.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefNaepMathComplexityLevel.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefNaepMathComplexityLevel] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefNCESCollegeCourseMapCode'
GO
EXEC sp_RENAME @objname = N'RefNCESCollegeCourseMapCode.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefNCESCollegeCourseMapCode.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefNCESCollegeCourseMapCode] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefNeedDeterminationMethod'
GO
EXEC sp_RENAME @objname = N'RefNeedDeterminationMethod.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefNeedDeterminationMethod.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefNeedDeterminationMethod] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefNeglectedProgramType'
GO
EXEC sp_RENAME @objname = N'RefNeglectedProgramType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefNeglectedProgramType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefNeglectedProgramType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefNonPromotionReason'
GO
EXEC sp_RENAME @objname = N'RefNonPromotionReason.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefNonPromotionReason.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefNonPromotionReason] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefNonTraditionalGenderStatus'
GO
EXEC sp_RENAME @objname = N'RefNonTraditionalGenderStatus.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefNonTraditionalGenderStatus.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefNonTraditionalGenderStatus] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefOperationalStatus'
GO
EXEC sp_RENAME @objname = N'RefOperationalStatus.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefOperationalStatus.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefOperationalStatus] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefOperationalStatusType'
GO
EXEC sp_RENAME @objname = N'RefOperationalStatusType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefOperationalStatusType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefOperationalStatusType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefOrganizationElementType'
GO
EXEC sp_RENAME @objname = N'RefOrganizationElementType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefOrganizationElementType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefOrganizationElementType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefOrganizationIdentificationSystem'
GO
EXEC sp_RENAME @objname = N'RefOrganizationIdentificationSystem.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefOrganizationIdentificationSystem.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefOrganizationIdentificationSystem] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefOrganizationIdentifierType'
GO
EXEC sp_RENAME @objname = N'RefOrganizationIdentifierType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefOrganizationIdentifierType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefOrganizationIdentifierType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefOrganizationIndicator'
GO
EXEC sp_RENAME @objname = N'RefOrganizationIndicator.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefOrganizationIndicator.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefOrganizationIndicator] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefOrganizationLocationType'
GO
EXEC sp_RENAME @objname = N'RefOrganizationLocationType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefOrganizationLocationType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefOrganizationLocationType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefOrganizationMonitoringNotifications'
GO
EXEC sp_RENAME @objname = N'RefOrganizationMonitoringNotifications.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefOrganizationMonitoringNotifications.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefOrganizationMonitoringNotifications] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefOrganizationRelationship'
GO
EXEC sp_RENAME @objname = N'RefOrganizationRelationship.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefOrganizationRelationship.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefOrganizationRelationship] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefOrganizationType'
GO
EXEC sp_RENAME @objname = N'RefOrganizationType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefOrganizationType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefOrganizationType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefOtherNameType'
GO
EXEC sp_RENAME @objname = N'RefOtherNameType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefOtherNameType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefOtherNameType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefOutcomeTimePoint'
GO
EXEC sp_RENAME @objname = N'RefOutcomeTimePoint.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefOutcomeTimePoint.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefOutcomeTimePoint] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefParaprofessionalQualification'
GO
EXEC sp_RENAME @objname = N'RefParaprofessionalQualification.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefParaprofessionalQualification.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefParaprofessionalQualification] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefParticipationStatusAyp'
GO
EXEC sp_RENAME @objname = N'RefParticipationStatusAyp.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefParticipationStatusAyp.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefParticipationStatusAyp] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefParticipationType'
GO
EXEC sp_RENAME @objname = N'RefParticipationType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefParticipationType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefParticipationType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefPDActivityApprovedFor'
GO
EXEC sp_RENAME @objname = N'RefPDActivityApprovedFor.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefPDActivityApprovedFor.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefPDActivityApprovedFor] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefPDActivityCreditType'
GO
EXEC sp_RENAME @objname = N'RefPDActivityCreditType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefPDActivityCreditType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefPDActivityCreditType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefPDActivityEducationLevelsAddressed'
GO
EXEC sp_RENAME @objname = N'RefPDActivityEducationLevelsAddressed.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefPDActivityEducationLevelsAddressed.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefPDActivityEducationLevelsAddressed] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefPDActivityLevel'
GO
EXEC sp_RENAME @objname = N'RefPDActivityLevel.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefPDActivityLevel.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefPDActivityLevel] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefPDActivityTargetAudience'
GO
EXEC sp_RENAME @objname = N'RefPDActivityTargetAudience.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefPDActivityTargetAudience.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefPDActivityTargetAudience] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefPDActivityType'
GO
EXEC sp_RENAME @objname = N'RefPDActivityType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefPDActivityType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefPDActivityType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefPDAudienceType'
GO
EXEC sp_RENAME @objname = N'RefPDAudienceType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefPDAudienceType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefPDAudienceType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefPDDeliveryMethod'
GO
EXEC sp_RENAME @objname = N'RefPDDeliveryMethod.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefPDDeliveryMethod.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefPDDeliveryMethod] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefPDInstructionalDeliveryMode'
GO
EXEC sp_RENAME @objname = N'RefPDInstructionalDeliveryMode.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefPDInstructionalDeliveryMode.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefPDInstructionalDeliveryMode] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefPDSessionStatus'
GO
EXEC sp_RENAME @objname = N'RefPDSessionStatus.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefPDSessionStatus.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefPDSessionStatus] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefPersonalInformationVerification'
GO
EXEC sp_RENAME @objname = N'RefPersonalInformationVerification.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefPersonalInformationVerification.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefPersonalInformationVerification] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefPersonIdentificationSystem'
GO
EXEC sp_RENAME @objname = N'RefPersonIdentificationSystem.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefPersonIdentificationSystem.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefPersonIdentificationSystem] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefPersonIdentifierType'
GO
EXEC sp_RENAME @objname = N'RefPersonIdentifierType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefPersonIdentifierType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefPersonIdentifierType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefPersonLocationType'
GO
EXEC sp_RENAME @objname = N'RefPersonLocationType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefPersonLocationType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefPersonLocationType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefPersonRelationship'
GO
EXEC sp_RENAME @objname = N'RefPersonRelationship.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefPersonRelationship.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefPersonRelationship] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefPersonStatusType'
GO
EXEC sp_RENAME @objname = N'RefPersonStatusType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefPersonStatusType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefPersonStatusType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefPersonTelephoneNumberType'
GO
EXEC sp_RENAME @objname = N'RefPersonTelephoneNumberType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefPersonTelephoneNumberType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefPersonTelephoneNumberType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefPopulationServed'
GO
EXEC sp_RENAME @objname = N'RefPopulationServed.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefPopulationServed.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefPopulationServed] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefPreAndPostTestIndicator'
GO
EXEC sp_RENAME @objname = N'RefPreAndPostTestIndicator.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefPreAndPostTestIndicator.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefPreAndPostTestIndicator] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefPredominantCalendarSystem'
GO
EXEC sp_RENAME @objname = N'RefPredominantCalendarSystem.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefPredominantCalendarSystem.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefPredominantCalendarSystem] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefPreKEligibleAgesNonIDEA'
GO
EXEC sp_RENAME @objname = N'RefPreKEligibleAgesNonIDEA.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefPreKEligibleAgesNonIDEA.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefPreKEligibleAgesNonIDEA] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefPrekindergartenEligibility'
GO
EXEC sp_RENAME @objname = N'RefPrekindergartenEligibility.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefPrekindergartenEligibility.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefPrekindergartenEligibility] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefPresentAttendanceCategory'
GO
EXEC sp_RENAME @objname = N'RefPresentAttendanceCategory.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefPresentAttendanceCategory.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefPresentAttendanceCategory] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefProfessionalDevelopmentFinancialSupport'
GO
EXEC sp_RENAME @objname = N'RefProfessionalDevelopmentFinancialSupport.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefProfessionalDevelopmentFinancialSupport.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefProfessionalDevelopmentFinancialSupport] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefProfessionalEducationJobClassification'
GO
EXEC sp_RENAME @objname = N'RefProfessionalEducationJobClassification.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefProfessionalEducationJobClassification.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefProfessionalEducationJobClassification] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefProfessionalTechnicalCredentialType'
GO
EXEC sp_RENAME @objname = N'RefProfessionalTechnicalCredentialType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefProfessionalTechnicalCredentialType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefProfessionalTechnicalCredentialType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefProficiencyStatus'
GO
EXEC sp_RENAME @objname = N'RefProficiencyStatus.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefProficiencyStatus.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefProficiencyStatus] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefProficiencyTargetAyp'
GO
EXEC sp_RENAME @objname = N'RefProficiencyTargetAyp.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefProficiencyTargetAyp.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefProficiencyTargetAyp] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefProgramDayLength'
GO
EXEC sp_RENAME @objname = N'RefProgramDayLength.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefProgramDayLength.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefProgramDayLength] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefProgramExitReason'
GO
EXEC sp_RENAME @objname = N'RefProgramExitReason.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefProgramExitReason.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefProgramExitReason] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefProgramGiftedEligibility'
GO
EXEC sp_RENAME @objname = N'RefProgramGiftedEligibility.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefProgramGiftedEligibility.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefProgramGiftedEligibility] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefProgramLengthHoursType'
GO
EXEC sp_RENAME @objname = N'RefProgramLengthHoursType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefProgramLengthHoursType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefProgramLengthHoursType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefProgramSponsorType'
GO
EXEC sp_RENAME @objname = N'RefProgramSponsorType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefProgramSponsorType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefProgramSponsorType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefProgramType'
GO
EXEC sp_RENAME @objname = N'RefProgramType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefProgramType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefProgramType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefProgressLevel'
GO
EXEC sp_RENAME @objname = N'RefProgressLevel.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefProgressLevel.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefProgressLevel] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefPromotionReason'
GO
EXEC sp_RENAME @objname = N'RefPromotionReason.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefPromotionReason.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefPromotionReason] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefProofOfResidencyType'
GO
EXEC sp_RENAME @objname = N'RefProofOfResidencyType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefProofOfResidencyType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefProofOfResidencyType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefPsEnrollmentAction'
GO
EXEC sp_RENAME @objname = N'RefPsEnrollmentAction.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefPsEnrollmentAction.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefPsEnrollmentAction] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefPsEnrollmentAwardType'
GO
EXEC sp_RENAME @objname = N'RefPsEnrollmentAwardType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefPsEnrollmentAwardType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefPsEnrollmentAwardType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefPsEnrollmentStatus'
GO
EXEC sp_RENAME @objname = N'RefPsEnrollmentStatus.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefPsEnrollmentStatus.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefPsEnrollmentStatus] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefPsEnrollmentType'
GO
EXEC sp_RENAME @objname = N'RefPsEnrollmentType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefPsEnrollmentType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefPsEnrollmentType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefPsLepType'
GO
EXEC sp_RENAME @objname = N'RefPsLepType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefPsLepType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefPsLepType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefPsStudentLevel'
GO
EXEC sp_RENAME @objname = N'RefPsStudentLevel.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefPsStudentLevel.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefPsStudentLevel] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefPublicSchoolChoiceStatus'
GO
EXEC sp_RENAME @objname = N'RefPublicSchoolChoiceStatus.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefPublicSchoolChoiceStatus.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefPublicSchoolChoiceStatus] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefPublicSchoolResidence'
GO
EXEC sp_RENAME @objname = N'RefPublicSchoolResidence.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefPublicSchoolResidence.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefPublicSchoolResidence] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefPurposeOfMonitoringVisit'
GO
EXEC sp_RENAME @objname = N'RefPurposeOfMonitoringVisit.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefPurposeOfMonitoringVisit.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefPurposeOfMonitoringVisit] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefQrisParticipation'
GO
EXEC sp_RENAME @objname = N'RefQrisParticipation.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefQrisParticipation.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefQrisParticipation] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefRace'
GO
EXEC sp_RENAME @objname = N'RefRace.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefRace.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefRace] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefReapAlternativeFundingStatus'
GO
EXEC sp_RENAME @objname = N'RefReapAlternativeFundingStatus.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefReapAlternativeFundingStatus.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefReapAlternativeFundingStatus] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefReasonDelayTransitionConf'
GO
EXEC sp_RENAME @objname = N'RefReasonDelayTransitionConf.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefReasonDelayTransitionConf.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefReasonDelayTransitionConf] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefReconstitutedStatus'
GO
EXEC sp_RENAME @objname = N'RefReconstitutedStatus.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefReconstitutedStatus.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefReconstitutedStatus] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefReferralOutcome'
GO
EXEC sp_RENAME @objname = N'RefReferralOutcome.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefReferralOutcome.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefReferralOutcome] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefRestructuringAction'
GO
EXEC sp_RENAME @objname = N'RefRestructuringAction.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefRestructuringAction.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefRestructuringAction] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefRlisProgramUse'
GO
EXEC sp_RENAME @objname = N'RefRlisProgramUse.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefRlisProgramUse.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefRlisProgramUse] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefRoleStatus'
GO
EXEC sp_RENAME @objname = N'RefRoleStatus.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefRoleStatus.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefRoleStatus] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefSCEDCourseLevel'
GO
EXEC sp_RENAME @objname = N'RefSCEDCourseLevel.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefSCEDCourseLevel.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefSCEDCourseLevel] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefSCEDCourseSubjectArea'
GO
EXEC sp_RENAME @objname = N'RefSCEDCourseSubjectArea.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefSCEDCourseSubjectArea.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefSCEDCourseSubjectArea] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefSchoolFoodServiceProgram'
GO
EXEC sp_RENAME @objname = N'RefSchoolFoodServiceProgram.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefSchoolFoodServiceProgram.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefSchoolFoodServiceProgram] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefSchoolImprovementFunds'
GO
EXEC sp_RENAME @objname = N'RefSchoolImprovementFunds.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefSchoolImprovementFunds.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefSchoolImprovementFunds] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefSchoolImprovementStatus'
GO
EXEC sp_RENAME @objname = N'RefSchoolImprovementStatus.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefSchoolImprovementStatus.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefSchoolImprovementStatus] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefSchoolLevel'
GO
EXEC sp_RENAME @objname = N'RefSchoolLevel.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefSchoolLevel.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefSchoolLevel] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefSchoolType'
GO
EXEC sp_RENAME @objname = N'RefSchoolType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefSchoolType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefSchoolType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefScoreMetricType'
GO
EXEC sp_RENAME @objname = N'RefScoreMetricType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefScoreMetricType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefScoreMetricType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefServiceFrequency'
GO
EXEC sp_RENAME @objname = N'RefServiceFrequency.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefServiceFrequency.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefServiceFrequency] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefServiceOption'
GO
EXEC sp_RENAME @objname = N'RefServiceOption.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefServiceOption.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefServiceOption] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefServices'
GO
EXEC sp_RENAME @objname = N'RefServices.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefServices.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefServices] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefServiceSetting'
GO
EXEC sp_RENAME @objname = N'RefServiceSetting.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefServiceSetting.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefServiceSetting] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefSessionType'
GO
EXEC sp_RENAME @objname = N'RefSessionType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefSessionType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefSessionType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefSex'
GO
EXEC sp_RENAME @objname = N'RefSex.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefSex.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefSex] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefSigInterventionType'
GO
EXEC sp_RENAME @objname = N'RefSigInterventionType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefSigInterventionType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefSigInterventionType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefSingleSexClassStatus'
GO
EXEC sp_RENAME @objname = N'RefSingleSexClassStatus.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefSingleSexClassStatus.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefSingleSexClassStatus] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefSpaceUseType'
GO
EXEC sp_RENAME @objname = N'RefSpaceUseType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefSpaceUseType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefSpaceUseType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefSpecialEducationAgeGroupTaught'
GO
EXEC sp_RENAME @objname = N'RefSpecialEducationAgeGroupTaught.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefSpecialEducationAgeGroupTaught.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefSpecialEducationAgeGroupTaught] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefSpecialEducationExitReason'
GO
EXEC sp_RENAME @objname = N'RefSpecialEducationExitReason.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefSpecialEducationExitReason.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefSpecialEducationExitReason] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefSpecialEducationStaffCategory'
GO
EXEC sp_RENAME @objname = N'RefSpecialEducationStaffCategory.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefSpecialEducationStaffCategory.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefSpecialEducationStaffCategory] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefStaffPerformanceLevel'
GO
EXEC sp_RENAME @objname = N'RefStaffPerformanceLevel.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefStaffPerformanceLevel.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefStaffPerformanceLevel] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefStandardizedAdmissionTest'
GO
EXEC sp_RENAME @objname = N'RefStandardizedAdmissionTest.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefStandardizedAdmissionTest.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefStandardizedAdmissionTest] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefState'
GO
EXEC sp_RENAME @objname = N'RefState.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefState.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefState] ADD SortOrder decimal(5,2) NULL
GO
--RefStateANSICode Does not contain Type, Code and Description columns

PRINT N'RefStatePovertyDesignation'
GO
EXEC sp_RENAME @objname = N'RefStatePovertyDesignation.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefStatePovertyDesignation.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefStatePovertyDesignation] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefStudentSupportServiceType'
GO
EXEC sp_RENAME @objname = N'RefStudentSupportServiceType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefStudentSupportServiceType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefStudentSupportServiceType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefSupervisedClinicalExperience'
GO
EXEC sp_RENAME @objname = N'RefSupervisedClinicalExperience.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefSupervisedClinicalExperience.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefSupervisedClinicalExperience] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefTeacherEducationCredentialExam'
GO
EXEC sp_RENAME @objname = N'RefTeacherEducationCredentialExam.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefTeacherEducationCredentialExam.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefTeacherEducationCredentialExam] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefTeacherEducationExamScoreType'
GO
EXEC sp_RENAME @objname = N'RefTeacherEducationExamScoreType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefTeacherEducationExamScoreType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefTeacherEducationExamScoreType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefTeacherEducationTestCompany'
GO
EXEC sp_RENAME @objname = N'RefTeacherEducationTestCompany.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefTeacherEducationTestCompany.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefTeacherEducationTestCompany] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefTeacherPrepCompleterStatus'
GO
EXEC sp_RENAME @objname = N'RefTeacherPrepCompleterStatus.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefTeacherPrepCompleterStatus.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefTeacherPrepCompleterStatus] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefTeacherPrepEnrollmentStatus'
GO
EXEC sp_RENAME @objname = N'RefTeacherPrepEnrollmentStatus.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefTeacherPrepEnrollmentStatus.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefTeacherPrepEnrollmentStatus] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefTeachingAssignmentRole'
GO
EXEC sp_RENAME @objname = N'RefTeachingAssignmentRole.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefTeachingAssignmentRole.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefTeachingAssignmentRole] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefTeachingCredentialBasis'
GO
EXEC sp_RENAME @objname = N'RefTeachingCredentialBasis.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefTeachingCredentialBasis.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefTeachingCredentialBasis] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefTeachingCredentialType'
GO
EXEC sp_RENAME @objname = N'RefTeachingCredentialType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefTeachingCredentialType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefTeachingCredentialType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefTechnicalAssistanceDeliveryType'
GO
EXEC sp_RENAME @objname = N'RefTechnicalAssistanceDeliveryType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefTechnicalAssistanceDeliveryType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefTechnicalAssistanceDeliveryType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefTechnicalAssistanceType'
GO
EXEC sp_RENAME @objname = N'RefTechnicalAssistanceType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefTechnicalAssistanceType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefTechnicalAssistanceType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefTechnologyLiteracyStatus'
GO
EXEC sp_RENAME @objname = N'RefTechnologyLiteracyStatus.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefTechnologyLiteracyStatus.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefTechnologyLiteracyStatus] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefTelephoneNumberType'
GO
EXEC sp_RENAME @objname = N'RefTelephoneNumberType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefTelephoneNumberType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefTelephoneNumberType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefTenureSystem'
GO
EXEC sp_RENAME @objname = N'RefTenureSystem.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefTenureSystem.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefTenureSystem] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefTextComplexitySystem'
GO
EXEC sp_RENAME @objname = N'RefTextComplexitySystem.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefTextComplexitySystem.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefTextComplexitySystem] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefTimeForCompletionUnits'
GO
EXEC sp_RENAME @objname = N'RefTimeForCompletionUnits.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefTimeForCompletionUnits.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefTimeForCompletionUnits] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefTitleIIIAccountability'
GO
EXEC sp_RENAME @objname = N'RefTitleIIIAccountability.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefTitleIIIAccountability.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefTitleIIIAccountability] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefTitleIIILanguageInstructionProgramType'
GO
EXEC sp_RENAME @objname = N'RefTitleIIILanguageInstructionProgramType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefTitleIIILanguageInstructionProgramType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefTitleIIILanguageInstructionProgramType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefTitleIIIProfessionalDevelopmentType'
GO
EXEC sp_RENAME @objname = N'RefTitleIIIProfessionalDevelopmentType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefTitleIIIProfessionalDevelopmentType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefTitleIIIProfessionalDevelopmentType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefTitleIIndicator'
GO
EXEC sp_RENAME @objname = N'RefTitleIIndicator.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefTitleIIndicator.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefTitleIIndicator] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefTitleIInstructionalServices'
GO
EXEC sp_RENAME @objname = N'RefTitleIInstructionalServices.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefTitleIInstructionalServices.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefTitleIInstructionalServices] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefTitleIProgramStaffCategory'
GO
EXEC sp_RENAME @objname = N'RefTitleIProgramStaffCategory.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefTitleIProgramStaffCategory.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefTitleIProgramStaffCategory] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefTitleIProgramType'
GO
EXEC sp_RENAME @objname = N'RefTitleIProgramType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefTitleIProgramType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefTitleIProgramType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefTitleISchoolStatus'
GO
EXEC sp_RENAME @objname = N'RefTitleISchoolStatus.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefTitleISchoolStatus.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefTitleISchoolStatus] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefTransferReady'
GO
EXEC sp_RENAME @objname = N'RefTransferReady.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefTransferReady.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefTransferReady] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefTuitionResidencyType'
GO
EXEC sp_RENAME @objname = N'RefTuitionResidencyType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefTuitionResidencyType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefTuitionResidencyType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefTuitionUnit'
GO
EXEC sp_RENAME @objname = N'RefTuitionUnit.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefTuitionUnit.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefTuitionUnit] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefUSCitizenshipStatus'
GO
EXEC sp_RENAME @objname = N'RefUSCitizenshipStatus.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefUSCitizenshipStatus.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefUSCitizenshipStatus] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefVisaType'
GO
EXEC sp_RENAME @objname = N'RefVisaType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefVisaType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefVisaType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefVisionScreeningStatus'
GO
EXEC sp_RENAME @objname = N'RefVisionScreeningStatus.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefVisionScreeningStatus.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefVisionScreeningStatus] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefWageCollectionMethod'
GO
EXEC sp_RENAME @objname = N'RefWageCollectionMethod.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefWageCollectionMethod.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefWageCollectionMethod] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefWageVerification'
GO
EXEC sp_RENAME @objname = N'RefWageVerification.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefWageVerification.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefWageVerification] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefWeaponType'
GO
EXEC sp_RENAME @objname = N'RefWeaponType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefWeaponType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefWeaponType] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefWfProgramParticipation'
GO
EXEC sp_RENAME @objname = N'RefWfProgramParticipation.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefWfProgramParticipation.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefWfProgramParticipation] ADD SortOrder decimal(5,2) NULL
GO
PRINT N'RefWorkbasedLearningOpportunityType'
GO
EXEC sp_RENAME @objname = N'RefWorkbasedLearningOpportunityType.Description', @newname = 'Definition', @objtype = 'COLUMN'
GO
EXEC sp_RENAME @objname = N'RefWorkbasedLearningOpportunityType.Type', @newname = 'Description', @objtype = 'COLUMN'
GO
ALTER TABLE dbo.[RefWorkbasedLearningOpportunityType] ADD SortOrder decimal(5,2) NULL
GO


-- Additional group of name and structure changes

PRINT N'remove FK to EL Class Section and point organization to Org table'
GO
ALTER TABLE ELClassSection DROP CONSTRAINT FK_ELClassSection_ClassSection
GO

ALTER TABLE ELClassSection WITH CHECK ADD  
	CONSTRAINT [FK_ELClassSection_Organization] FOREIGN KEY([OrganizationId])
	REFERENCES [dbo].[Organization] ([OrganizationId])

ALTER TABLE ELClassSection CHECK CONSTRAINT [FK_ELClassSection_Organization] 
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'Surrogate key from Organization',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'ELClassSection',
@level2type = N'Column', @level2name = 'OrganizationId';
GO

PRINT N'rename class section table'
GO
EXEC sp_RENAME 'ClassSection', 'CourseSection'
GO

EXEC sp_RENAME 'PK_ClassSection', 'PK_CourseSection'
GO

EXEC sp_RENAME 'FK_ClassSection_Organization', 'FK_CourseSection_Organization'
GO

EXEC sp_RENAME 'FK_ClassSection_OrganizationCalendarSession', 'FK_CourseSection_OrganizationCalendarSession'
GO

EXEC sp_RENAME 'FK_ClassSection_RefAdvancedPlacementCourseCodeId','FK_CourseSection_RefAdvancedPlacementCourseCodeId'
GO

EXEC sp_RENAME 'FK_ClassSection_RefClassSectionDeliveryModel', 'FK_CourseSection_RefCourseSectionDeliveryMode'
GO

EXEC sp_RENAME 'FK_ClassSection_RefClassSectionSingleSexClassStatus', 'FK_CourseSection_RefCourseSectionSingleSexClassStatus'
GO

EXEC sp_RENAME 'FK_ClassSection_RefCreditTypeEarned', 'FK_CourseSection_RefCreditTypeEarned'
GO

EXEC sp_RENAME 'FK_ClassSection_RefLanguage', 'FK_CourseSection_RefLanguage'
GO

EXEC sp_RENAME 'FK_ClassSection_Course', 'FK_CourseSection_Course'
GO

EXEC sp_RENAME 'CourseSection.[RefClassSectionDeliveryModeId]', 'RefCourseSectionDeliveryModeId', 'COLUMN'
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'A setting in which organized instruction of course content is provided to one or more students (including cross-age groupings) for a given period of time. (A course may be offered to more than one class/section.) Instruction, provided by one or more teachers or other staff members, may be delivered in person or via a different medium. Classes/Sections that share space should be considered as separate classes/sections if they function as separate units for more than 50 percent of the time. ',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'CourseSection'
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'The primary setting or medium of delivery for the course. [CEDS Element: Course Section Instructional Delivery Mode, ID:001161]  (Foreign key - RefCourseSectionDeliveryModel)',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'CourseSection',
@level2type = N'Column', @level2name = 'RefCourseSectionDeliveryModeId'
GO


PRINT N'Class Section Assessment Reporting'
GO
EXEC sp_RENAME 'ClassSectionAssessmentReporting', 'CourseSectionAssessmentReporting'
GO

EXEC sp_RENAME 'PK_ClassSectionAssessmentReporting', 'PK_CourseSectionAssessmentReporting'
GO

EXEC sp_RENAME 'FK_ClassSectionAssessmentReporting_ClassSection', 'FK_CourseSectionAssessmentReporting_CourseSection'
GO

EXEC sp_RENAME 'FK_ClassSectionAssessmentReporting_RefCSAssessmentReportMethod', 'FK_CourseSectionAssessmentReporting_RefCSAssessmentReportMethod'
GO

EXEC sp_RENAME '[CourseSectionAssessmentReporting].ClassSectionAssessmentReportingId', 'CourseSectionAssessmentReportingId', 'COLUMN'
GO

EXEC sp_RENAME '[CourseSectionAssessmentReporting].RefClassSectionAssessmentReportingMethod', 'RefCourseSectionAssessmentReportingMethodId', 'COLUMN'
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'The method(s) that the instructor of the course uses to report the performance and achievement of all students. It may be a qualitative method such as individualized teacher comments or a quantitative method such as a letter or a numerical grade. ',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'CourseSectionAssessmentReporting'
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'Surrogate key from CourseSection.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'CourseSectionAssessmentReporting',
@level2type = N'Column', @level2name = 'OrganizationId'
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'The method that the instructor of the course uses to report the performance and achievement of all students. It may be a qualitative method such as individualized teacher comments or a quantitative method such as a letter or a numerical grade. In some cases, more than one type of reporting method may be used. [CEDS Element: Course Section Assessment Reporting Method, ID:000027]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'CourseSectionAssessmentReporting',
@level2type = N'Column', @level2name = 'RefCourseSectionAssessmentReportingMethodId'
GO

PRINT N'Class Section Location'
GO
EXEC sp_RENAME 'ClassSectionLocation', 'CourseSectionLocation'
GO

EXEC sp_RENAME 'PK_ClassSectionLocation', 'PK_CourseSectionLocation'
GO

EXEC sp_RENAME 'FK_ClassSectionLocation_Classroom', 'FK_CourseSectionLocation_Classroom'
GO

EXEC sp_RENAME 'FK_ClassSectionLocation_ClassSection', 'FK_CourseSectionLocation_CourseSection'
GO

EXEC sp_RENAME 'FK_ClassSectionLocation_RefInstructionLocationType', 'FK_CourseSectionLocation_RefInstructionLocationType'
GO

EXEC sp_RENAME '[CourseSectionLocation].ClassSectionLocationId', 'CourseSectionLocationId', 'COLUMN'
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'The location where a Course Section meets.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'CourseSectionLocation'
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'Surrogate key from CourseSection.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'CourseSectionLocation',
@level2type = N'Column', @level2name = 'OrganizationId'
GO

PRINT N'Class Section Schedule'
GO
EXEC sp_RENAME 'ClassSectionSchedule', 'CourseSectionSchedule'
GO

EXEC sp_RENAME 'PK_ClassSectionSchedule', 'PK_CourseSectionSchedule'
GO

EXEC sp_RENAME 'FK_ClassSectionSchedule_ClassSection', 'FK_CourseSectionSchedule_CourseSection'
GO

EXEC sp_RENAME '[CourseSectionSchedule].ClassSectionScheduleId', 'CourseSectionScheduleId', 'COLUMN'
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'The days and times when a Course Section meets.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'CourseSectionSchedule'
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'Surrogate key from CourseSection.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'CourseSectionSchedule',
@level2type = N'Column', @level2name = 'OrganizationId'
GO

PRINT N'K12 Student Class Section'
GO
EXEC sp_RENAME 'K12StudentClassSection', 'K12StudentCourseSection'
GO

EXEC sp_RENAME 'XPKK12StudentCourse', 'PK_K12StudentCourseSection'
GO

EXEC sp_RENAME 'FK_K12StudentClassSection _RefCourseGpaApplicability', 'FK_K12StudentCourseSection _RefCourseGpaApplicability'
GO

EXEC sp_RENAME 'FK_K12StudentClassSection_RefAdditionalCreditType', 'FK_K12StudentCourseSection_RefAdditionalCreditType'
GO

EXEC sp_RENAME 'FK_K12StudentClassSection_RefClassSectionEnrollmentStatusType', 'FK_K12StudentCourseSection_RefCourseSectionEnrollmentStatusType'
GO

EXEC sp_RENAME 'FK_K12StudentClassSection_RefClassSectionEnrollmentType', 'FK_K12StudentCourseSection_RefCourseSectionEnrollmentType'
GO

EXEC sp_RENAME 'FK_K12StudentClassSection_RefClassSectionEntryType', 'FK_K12StudentCourseSection_RefCourseSectionEntryType'
GO

EXEC sp_RENAME 'FK_K12StudentClassSection_RefClassSectionExitType', 'FK_K12StudentCourseSection_RefCourseSectionExitType'
GO

EXEC sp_RENAME 'FK_K12StudentClassSection_RefCourseRepeatCode', 'FK_K12StudentCourseSection_RefCourseRepeatCode'
GO

EXEC sp_RENAME 'FK_K12StudentClassSection_RefCreditTypeEarned', 'FK_K12StudentCourseSection_RefCreditTypeEarned'
GO

EXEC sp_RENAME 'FK_K12StudentClassSection_RefExitOrWithdrawalStatus', 'FK_K12StudentCourseSection_RefExitOrWithdrawalStatus'
GO

EXEC sp_RENAME 'FK_K12StudentClassSection_RefGradeLevel', 'FK_K12StudentCourseSection_RefGradeLevel'
GO

EXEC sp_RENAME 'FK_K12StudentClassSection_RefPreAndPostTestIndicator', 'FK_K12StudentCourseSection_RefPreAndPostTestIndicator'
GO

EXEC sp_RENAME 'FK_K12StudentClassSection_RefProgressLevel', 'FK_K12StudentCourseSection_RefProgressLevel'
GO

EXEC sp_RENAME 'FK_K12StudentCourse_OrganizationPerson', 'FK_K12StudentCourseSection_OrganizationPerson'
GO

EXEC sp_RENAME '[K12StudentCourseSection].RefClassSectionEnrollmentStatusTypeId', 'RefCourseSectionEnrollmentStatusTypeId', 'COLUMN'
GO

EXEC sp_RENAME '[K12StudentCourseSection].RefClassSectionEntryTypeId', 'RefCourseSectionEntryTypeId', 'COLUMN'
GO

EXEC sp_RENAME '[K12StudentCourseSection].RefClassSectionExitTypeId', 'RefCourseSectionExitTypeId', 'COLUMN'
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'The attributes for a K12 student enrolled in a course section.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'K12StudentCourseSection'
GO

PRINT N'Learner Activity'
GO
EXEC sp_RENAME '[LearnerActivity].ClassSectionId', 'CourseSectionId', 'COLUMN'
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'Surrogate key from CourseSection.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'LearnerActivity',
@level2type = N'Column', @level2name = 'CourseSectionId'
GO

ALTER TABLE LearnerActivity WITH CHECK ADD  
	CONSTRAINT [FK_LearnerActivity_CourseSection] FOREIGN KEY([CourseSectionId])
	REFERENCES [dbo].[CourseSection] ([OrganizationId])
GO

ALTER TABLE LearnerActivity CHECK CONSTRAINT [FK_LearnerActivity_CourseSection] 
GO


PRINT N'RefClassSectionAssessmentReportingMethod'
GO
EXEC sp_RENAME 'RefClassSectionAssessmentReportingMethod', 'RefCourseSectionAssessmentReportingMethod'
GO

EXEC sp_RENAME 'PK_RefCSAssessmentReportMethod', 'PK_RefCourseSectionAssessmentReportingMethod'
GO

EXEC sp_RENAME 'FK_RefClassSectionAssessmentReportingMethod_Organization', 'FK_RefCourseSectionAssessmentReportingMethod_Organization'
GO

EXEC sp_RENAME 'RefCourseSectionAssessmentReportingMethod.RefClassSectionAssessmentReportingMethodId', 'RefCourseSectionAssessmentReportingMethodId', 'COLUMN'
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'The method that the instructor of the course uses to report the performance and achievement of all students. It may be a qualitative method such as individualized teacher comments or a quantitative method such as a letter or a numerical grade. In some cases, more than one type of reporting method may be used. [CEDS Element: Course Section Assessment Reporting Method, ID:000027]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'RefCourseSectionAssessmentReportingMethod'
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'The method that the instructor of the course uses to report the performance and achievement of all students. It may be a qualitative method such as individualized teacher comments or a quantitative method such as a letter or a numerical grade. In some cases, more than one type of reporting method may be used. [CEDS Element: Course Section Assessment Reporting Method, ID:000027]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'RefCourseSectionAssessmentReportingMethod',
@level2type = N'Column', @level2name = 'Description'
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'The method that the instructor of the course uses to report the performance and achievement of all students. It may be a qualitative method such as individualized teacher comments or a quantitative method such as a letter or a numerical grade. In some cases, more than one type of reporting method may be used. [CEDS Element: Course Section Assessment Reporting Method, ID:000027]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'CourseSectionAssessmentReporting',
@level2type = N'Column', @level2name = 'RefCourseSectionAssessmentReportingMethodId'
GO

PRINT N'RefClassSectionDeliverMode'
GO
EXEC sp_RENAME 'RefClassSectionDeliveryModel', 'RefCourseSectionDeliveryMode'
GO

EXEC sp_RENAME 'PK_RefClassSectionDeliveryModel', 'PK_RefCourseSectionDeliveryMode'
GO

EXEC sp_RENAME 'FK_RefClassSectionDeliveryModel_Organization', 'FK_RefCourseSectionDeliveryMode_Organization'
GO

EXEC sp_RENAME 'RefCourseSectionDeliveryMode.RefClassSectionDeliveryModelId', 'RefCourseSectionDeliveryModeId', 'COLUMN'
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'The primary setting or medium of delivery for the course. [CEDS Element: Course Section Instructional Delivery Mode, ID:001161]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'RefCourseSectionDeliveryMode'
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'The primary setting or medium of delivery for the course. [CEDS Element: Course Section Instructional Delivery Mode, ID:001161]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'RefCourseSectionDeliveryMode',
@level2type = N'Column', @level2name = 'Description'
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'The primary setting or medium of delivery for the course. [CEDS Element: Course Section Instructional Delivery Mode, ID:001161]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'CourseSection',
@level2type = N'Column', @level2name = 'RefCourseSectionDeliveryModeId'
GO

PRINT N'RefClassSectionEnrollmentStatusType'
GO
EXEC sp_RENAME 'RefClassSectionEnrollmentStatusType', 'RefCourseSectionEnrollmentStatusType'
GO

EXEC sp_RENAME 'PK_RefClassSectionEnrollmentStatus', 'PK_RefCourseSectionEnrollmentStatus'
GO

EXEC sp_RENAME 'FK_RefClassSectionEnrollmentStatusType_Organization', 'FK_RefCourseSectionEnrollmentStatusType_Organization'
GO

EXEC sp_RENAME 'RefCourseSectionEnrollmentStatusType.RefClassSectionEnrollmentStatusTypeId', 'RefCourseSectionEnrollmentStatusTypeId', 'COLUMN'
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'The status related to a student enrollment in an instance of a course. [CEDS Element: Course Section Enrollment Status Type, ID:000976]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'RefCourseSectionEnrollmentStatusType'
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'The status related to a student enrollment in an instance of a course. [CEDS Element: Course Section Enrollment Status Type, ID:000976]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'RefCourseSectionEnrollmentStatusType',
@level2type = N'Column', @level2name = 'Description'
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'The status related to a student enrollment in an instance of a course. [CEDS Element: Course Section Enrollment Status Type, ID:000976]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'K12StudentCourseSection',
@level2type = N'Column', @level2name = 'RefCourseSectionEnrollmentStatusTypeId'
GO


PRINT N'RefCourseSectionEnrollmentType'
GO
ALTER TABLE K12StudentCourseSection DROP CONSTRAINT FK_K12StudentCourseSection_RefCourseSectionEnrollmentType
GO

DROP TABLE RefClassSectionEnrollmentType
GO

PRINT N'RefClassSectionEntryType'
GO
EXEC sp_RENAME 'RefClassSectionEntryType', 'RefCourseSectionEntryType'
GO

EXEC sp_RENAME 'PK_RefClassSectionEntryType', 'PK_RefCourseSectionEntryType'
GO

EXEC sp_RENAME 'FK_RefClassSectionEntryType_Organization', 'FK_RefCourseSectionEntryType_Organization'
GO

EXEC sp_RENAME 'RefCourseSectionEntryType.RefClassSectionEntryTypeId', 'RefCourseSectionEntryTypeId', 'COLUMN'
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'The process by which a student enters a school (Course Section) during a given academic session. [CEDS Element: Course Section Entry Type, ID:000650]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'RefCourseSectionEntryType'
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'The process by which a student enters a school (Course Section) during a given academic session. [CEDS Element: Course Section Entry Type, ID:000650]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'RefCourseSectionEntryType',
@level2type = N'Column', @level2name = 'Description'
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'The process by which a student enters a school (Course Section) during a given academic session. [CEDS Element: Course Section Entry Type, ID:000650]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'K12StudentCourseSection',
@level2type = N'Column', @level2name = 'RefCourseSectionEntryTypeId'
GO

PRINT N'RefClassSectionExitType'
GO
EXEC sp_RENAME 'RefClassSectionExitType', 'RefCourseSectionExitType'
GO

EXEC sp_RENAME 'PK_RefClassSectionExitType', 'PK_RefCourseSectionExitType'
GO

EXEC sp_RENAME 'FK_RefClassSectionExitType_Organization', 'FK_RefCourseSectionExitType_Organization'
GO

EXEC sp_RENAME 'RefCourseSectionExitType.RefClassSectionExitTypeId', 'RefCourseSectionExitTypeId', 'COLUMN'
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'The circumstances under which the student exited from membership in a course section. [CEDS Element: Course Section Exit Type, ID:000652]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'RefCourseSectionExitType'
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'The circumstances under which the student exited from membership in a course section. [CEDS Element: Course Section Exit Type, ID:000652]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'RefCourseSectionExitType',
@level2type = N'Column', @level2name = 'Description'
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'The circumstances under which the student exited from membership in a course section. [CEDS Element: Course Section Exit Type, ID:000652]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'K12StudentCourseSection',
@level2type = N'Column', @level2name = 'RefCourseSectionExitTypeId'
GO

PRINT N'K12 Student Class Section Mark'
GO
EXEC sp_RENAME 'K12StudentClassSectionMark', 'K12StudentCourseSectionMark'
GO

EXEC sp_RENAME 'PK_K12StudentClassSectionMark', 'PK_K12StudentCourseSectionMark'
GO

EXEC sp_RENAME 'FK_K12StudentClassSectionMark_K12StudentClassSection', 'FK_K12StudentCourseSectionMark_K12StudentCourseSection'
GO

EXEC sp_RENAME 'K12StudentCourseSectionMark.K12StudentClassSectionMarkId', 'K12StudentCourseSectionMarkId', 'COLUMN'
GO

EXEC sp_RENAME 'K12StudentCourseSectionMark.StudentClassSectionMarkFinalIndicator', 'FinalIndicator', 'COLUMN'
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'Defines information about a mark associated with a student for a course section, including flags to indicate if the mark is a final grade or a midterm grade.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'K12StudentCourseSectionMark'
GO

EXEC sp_updateextendedproperty 
@name = N'MS_Description', @value = 'Foreign key - K12StudentCourseSection',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'K12StudentCourseSectionMark',
@level2type = N'Column', @level2name = 'OrganizationPersonRoleId'
GO

EXEC sp_updateextendedproperty 
@name = N'MS_Description', @value = 'Indicates that the mark is a final mark the learner has earned for the course section. [CEDS Element: Student Course Section Mark Final Indicator, ID:001142]',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'K12StudentCourseSectionMark',
@level2type = N'Column', @level2name = 'FinalIndicator'
GO

PRINT N'Assessment Registration'
GO
EXEC sp_RENAME 'FK_AssessmentRegistration_ClassSection', 'FK_AssessmentRegistration_CourseSection'
GO

EXEC sp_RENAME 'AssessmentRegistration.ClassSectionOrganizationId', 'CourseSectionOrganizationId', 'COLUMN'
GO

EXEC sp_updateextendedproperty
@name = N'MS_Description', @value = 'Foreign key - CourseSection',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'AssessmentRegistration',
@level2type = N'Column', @level2name = 'CourseSectionOrganizationId'
GO


PRINT N'Teacher Student Data Link Exclusion'
GO
EXEC sp_RENAME 'FK_TeacherStudentDataLinkExclusion_K12StudentClassSection', 'FK_TeacherStudentDataLinkExclusion_K12StudentCourseSection'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'Foreign key - K12StudentCourseSection.  Identifies the Student enrolled in a Course Section.' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'TeacherStudentDataLinkExclusion', 
@level2type=N'COLUMN',@level2name=N'StudentOrganizationPersonRoleId'
GO

PRINT N'Spelling corrections'
GO
		
EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'Foreign key - AssessmentItem' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'AssessmentItemCharacteristic', 
@level2type=N'COLUMN',@level2name=N'AssessmentItemId'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'Foreign key - Location' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Classroom', 
@level2type=N'COLUMN',@level2name=N'LocationId'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'Surrogate key' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'CompetencySet', 
@level2type=N'COLUMN',@level2name=N'CompetencySetId'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'Surrogate key' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'CoreKnowledgeArea', 
@level2type=N'COLUMN',@level2name=N'CoreKnowledgeAreaId'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'Foreign key - OrganizationPersonRole' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'ProfessionalDevelopmentRequirement', 
@level2type=N'COLUMN',@level2name=N'OrganizationPersonRoleId'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'Surrogate key' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'PsProgram', 
@level2type=N'COLUMN',@level2name=N'PsProgramId'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'Surrogate key' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'RefStandardizedAdmissionTest', 
@level2type=N'COLUMN',@level2name=N'RefStandardizedAdmissionTestId'
GO

EXEC sp_RENAME 'RefProgramSponsorType.RefProgramSponsorType', 'RefProgramSponsorTypeId', 'COLUMN'
GO

EXEC sp_RENAME 'FK_PD_RefProfDevFinancialSupport', 'FK_PDActivity_RefProfDevFinancialSupport'
GO

EXEC sp_updateextendedproperty N'MS_Description', N'The full legal last name borne in common by members of a family.  [CEDS Element: Last or Surname, ID: 000172]', 'SCHEMA', N'dbo', 'TABLE', N'Person', 'COLUMN', N'LastName'
GO
EXEC sp_updateextendedproperty N'MS_Description', N'A full legal middle name given to a person at birth, baptism, or through legal change. [CEDS Element: Middle Name, ID: 000184]', 'SCHEMA', N'dbo', 'TABLE', N'Person', 'COLUMN', N'MiddleName'
GO
EXEC sp_updateextendedproperty N'MS_Description', 'A type of organization providing funds for a particular educational or service program or activity or for an individual''s participation in the program or Session. [CEDS Element: Program Sponsor Type, ID:000716]', 'SCHEMA', N'dbo', 'TABLE', N'RefProgramSponsorType', NULL, NULL
GO
EXEC sp_updateextendedproperty N'MS_Description', 'A type of organization providing funds for a particular educational or service program or activity or for an individual''s participation in the program or Session. [CEDS Element: Program Sponsor Type, ID:000716]', 'SCHEMA', N'dbo', 'TABLE', N'RefProgramSponsorType', 'COLUMN', N'Description'
GO
EXEC sp_updateextendedproperty N'MS_Description', 'A type of organization providing funds for a particular educational or service program or activity or for an individual''s participation in the program or Session. [CEDS Element: Program Sponsor Type, ID:000716]', 'SCHEMA', N'dbo', 'TABLE', N'StaffCredential', 'COLUMN', N'RefProgramSponsorTypeId'
GO

EXEC sp_RENAME 'FK_K12Course', 'FK_K12Course_RefCourseInteractionMode'
GO

ALTER TABLE ApipInteraction ALTER COLUMN [Xml] nvarchar(max) NULL
GO

PRINT N'Script complete'
GO

