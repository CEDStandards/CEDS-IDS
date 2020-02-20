/*    Common Education Data Standards (CEDS)
      Version 5
      Normalized Data Schema (NDS)
      
	  Model database update script
	  
      This script updates a NDS version 4 model database to version 5.  
      
      WARNING!!!!
      This script is intended for use on a model database and should not 
      be used on a database that contains data.
      
      The script was generated from a model database 
      hosted on a Microsoft SQL Server 2008 R2 platform.  
      
      Questions on this script can be sent to ceds@ed.gov
      
      More information on the data model is available at the CEDS website:  
      http://ceds.ed.gov
      	  
*/ 

-- Uncomment next two lines to update a database named CEDS-NDS-V4 or specify appropriate DB name for your server.
 --USE [CEDS-NDS-V4] 
 --GO

 
PRINT N'Drop columns and Ref tables for removed elements'
GO
 
 
PRINT N'	Consent to Share Data (001295)'
GO
 
ALTER TABLE [dbo].[ELEnrollment] DROP COLUMN [ConsentToShareDataInd]
GO
 
PRINT N'	Course Classification of Instructional Programs Code (001502)'
GO
 
EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'A six-digit code in the form xx.xxxx that identifies instructional program specialties within educational institutions. [CEDS Element: Classification of Instructional Program Code, ID:000043]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PsSection', 
	@level2type=N'COLUMN',@level2name=N'RefCipCodeId'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'A six-digit code in the form xx.xxxx that identifies instructional program specialties within educational institutions. [CEDS Element: Classification of Instructional Program Code, ID:000043]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefCipCode', 
	@level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'A six-digit code in the form xx.xxxx that identifies instructional program specialties within educational institutions. [CEDS Element: Classification of Instructional Program Code, ID:000043]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefCipCode' 
GO

PRINT N'	Early Childhood Enrollment Service Type (000318)'
GO
 
ALTER TABLE [dbo].[ELClassSectionService] DROP CONSTRAINT [FK_ELClassSectionService_RefECEnrollmentServiceType]
GO
 
ALTER TABLE [dbo].[ELClassSectionService] DROP COLUMN [RefEarlyChildhoodEnrollmentServiceTypeId]
GO
 
PRINT N'	IDEA IEP Status (001501)'
GO

ALTER TABLE [dbo].[ELChildIDEA] DROP CONSTRAINT [FK_ELChildIDEA_RefIDEAIEPStatus]
GO
 
ALTER TABLE [dbo].[ELChildIDEA] DROP COLUMN [RefIDEAIEPStatusId]
GO
 
PRINT N'	Reason for Declined Services (001488)'
GO
 
ALTER TABLE [dbo].[ELChildIDEA] DROP COLUMN [ReasonForDeclinedServices]
GO
 
PRINT N'	Prior Early Childhood Experience (000319)'
GO
 
ALTER TABLE [dbo].[ELEnrollment] DROP CONSTRAINT [FK_ELEnrollment_RefELExperience]
GO
 
ALTER TABLE [dbo].[ELEnrollment] DROP COLUMN [RefELExperienceId]
GO
 
PRINT N'	Early Childhood Enrollment Service Type (000318)'
GO
 
ALTER TABLE [dbo].[ELEnrollment] DROP CONSTRAINT [FK_ELEnrollment_RefELServiceType]
GO
 
ALTER TABLE [dbo].[ELEnrollment] DROP COLUMN [RefELServiceType]
GO
 
PRINT N'	K12 Staff Classification (000087)'
GO
 
ALTER TABLE [dbo].[ELStaff] DROP CONSTRAINT [FK_ELStaff_RefEduStaffClassification]
GO
 
ALTER TABLE [dbo].[ELStaff] DROP COLUMN [RefEducationStaffClassificationId]
GO
 
ALTER TABLE [dbo].[ELStaffEmployment] DROP CONSTRAINT [FK_ELStaffEmployment_RefEduStaffClassification]
GO
 
ALTER TABLE [dbo].[ELStaffEmployment] DROP COLUMN [RefEducationStaffClassificationId]
GO
 
PRINT N'	Approved Early Childhood Credits Earned By a Non-ECE Degree Holder (000791)'
GO
 
ALTER TABLE [dbo].[ELStaffEducation] DROP COLUMN [ApprovedCreditsEarnedNonECE]
GO
 
PRINT N'	Number of Business-related Postsecondary Credit Hours (000817)'
GO
 
ALTER TABLE [dbo].[ELStaffEducation] DROP COLUMN [BusinessRelatedPSCredits]
GO
 
PRINT N'	Learner Action Time (000936)'
GO
 
ALTER TABLE [dbo].[LearnerAction] DROP COLUMN [Time]
GO
 
PRINT N'	Early Intervention or Special Education Services Setting (000322)'
GO
 
ALTER TABLE [dbo].[ServicesReceived] DROP CONSTRAINT [FK_ServicesReceived_RefServiceSetting]
GO
 
ALTER TABLE [dbo].[ServicesReceived] DROP COLUMN [RefServicesSettingId]
GO
 
PRINT N'	Early Childhood Enrollment Service Type (000318)'
GO
 
DROP TABLE [dbo].[RefEarlyChildhoodEnrollmentServiceType]
GO
 
PRINT N'	Prior Early Childhood Experience (000319)'
GO
 
DROP TABLE [dbo].[RefELExperience]
GO
 
PRINT N'	Early Intervention or Special Education Services Setting (000322)'
GO
 
DROP TABLE [dbo].[RefServiceSetting]
GO
 
PRINT N'	Early Childhood Enrollment Service Type (000318)'
GO
 
DROP TABLE [dbo].[RefELServiceType]
GO
 

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The highest level of education attained by a person''s father or paternal guardian [CEDS Element: Father''s or Paternal Guardian Education, ID:001230]  (Foreign key - RefEducationLevel)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PsStudentDemographic', @level2type=N'COLUMN',@level2name=N'RefPaternalEducationLevelId'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The highest level of education attained by a person''s mother or maternal guardian [CEDS Element: Mother''s or Maternal Guardian Education, ID:001229]  (Foreign key - RefEducationLevel)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PsStudentDemographic', @level2type=N'COLUMN',@level2name=N'RefMaternalEducationLevelId'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The extent of formal instruction a person has received (e.g., the highest grade in school completed or its equivalent or the highest degree received). [CEDS Element: Highest Level of Education Completed, ID:000141]  (Foreign key - RefEducationLevel)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Person', @level2type=N'COLUMN',@level2name=N'RefHighestEducationLevelCompletedId'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The extent of formal instruction a person has received (e.g., the highest grade in school completed or its equivalent or the highest degree received). [CEDS Element: Highest Level of Education Completed, ID:000141]  (Foreign key - RefEducationLevel)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PersonFamily', @level2type=N'COLUMN',@level2name=N'RefHighestEducationLevelCompletedId'
GO

PRINT N'Create Ref tables for elements with option sets'
GO


PRINT N'	Activity Time Measurement Type (001528)'
GO

CREATE TABLE [dbo].[RefActivityTimeMeasurementType](
   [RefActivityTimeMeasurementTypeId] [int] IDENTITY(1,1) NOT NULL,
   [Description] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Definition] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   [SortOrder] [decimal](5,2) NULL,
   CONSTRAINT [PK_RefActivityTimeMeasurementType] PRIMARY KEY CLUSTERED ([RefActivityTimeMeasurementTypeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefActivityTimeMeasurementType]  WITH CHECK ADD CONSTRAINT [FK_RefActivityTimeMeasurementType_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefActivityTimeMeasurementType] CHECK CONSTRAINT [FK_RefActivityTimeMeasurementType_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefActivityTimeMeasurementType', @level2type=N'COLUMN',@level2name=N'RefActivityTimeMeasurementTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of measurement for the amount of time the student participated in the events and procedures of an activity, such as a co-curricular or extra-curricular activity that is offered at an education institution. [CEDS Element: Activity Time Measurement Type, ID:001528]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefActivityTimeMeasurementType', @level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefActivityTimeMeasurementType', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefActivityTimeMeasurementType', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of measurement for the amount of time the student participated in the events and procedures of an activity, such as a co-curricular or extra-curricular activity that is offered at an education institution.[CEDS Element: Activity Time Measurement Type, ID:001528]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefActivityTimeMeasurementType'
GO

PRINT N'	Admission Consideration Level (001579)'
GO

CREATE TABLE [dbo].[RefAdmissionConsiderationLevel](
   [RefAdmissionConsiderationLevelId] [int] IDENTITY(1,1) NOT NULL,
   [Description] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Definition] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   [SortOrder] [decimal](5,2) NULL,
   CONSTRAINT [PK_RefAdmissionConsiderationLevel] PRIMARY KEY CLUSTERED ([RefAdmissionConsiderationLevelId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefAdmissionConsiderationLevel]  WITH CHECK ADD CONSTRAINT [FK_RefAdmissionConsiderationLevel_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefAdmissionConsiderationLevel] CHECK CONSTRAINT [FK_RefAdmissionConsiderationLevel_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAdmissionConsiderationLevel', @level2type=N'COLUMN',@level2name=N'RefAdmissionConsiderationLevelId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The level of consideration given a type of admission criteria used at an institution during the selection process. [CEDS Element: Admission Consideration Level, ID:001579]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAdmissionConsiderationLevel', @level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAdmissionConsiderationLevel', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAdmissionConsiderationLevel', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The level of consideration given a type of admission criteria used at an institution during the selection process.[CEDS Element: Admission Consideration Level, ID:001579]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAdmissionConsiderationLevel'
GO

PRINT N'	Admission Consideration Type (001580)'
GO

CREATE TABLE [dbo].[RefAdmissionConsiderationType](
   [RefAdmissionConsiderationTypeId] [int] IDENTITY(1,1) NOT NULL,
   [Description] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Definition] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   [SortOrder] [decimal](5,2) NULL,
   CONSTRAINT [PK_RefAdmissionConsiderationType] PRIMARY KEY CLUSTERED ([RefAdmissionConsiderationTypeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefAdmissionConsiderationType]  WITH CHECK ADD CONSTRAINT [FK_RefAdmissionConsiderationType_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefAdmissionConsiderationType] CHECK CONSTRAINT [FK_RefAdmissionConsiderationType_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAdmissionConsiderationType', @level2type=N'COLUMN',@level2name=N'RefAdmissionConsiderationTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of admission consideration used at an institution during the selection process. [CEDS Element: Admission Consideration Type, ID:001580]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAdmissionConsiderationType', @level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAdmissionConsiderationType', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAdmissionConsiderationType', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of admission consideration used at an institution during the selection process.[CEDS Element: Admission Consideration Type, ID:001580]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAdmissionConsiderationType'
GO

PRINT N'	Assessment Item Response Score Status (001538)'
GO

CREATE TABLE [dbo].[RefAssessmentItemResponseScoreStatus](
   [RefAssessmentItemResponseScoreStatusId] [int] IDENTITY(1,1) NOT NULL,
   [Description] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Definition] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   [SortOrder] [decimal](5,2) NULL,
   CONSTRAINT [PK_RefAssessmentItemResponseScoreStatus] PRIMARY KEY CLUSTERED ([RefAssessmentItemResponseScoreStatusId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefAssessmentItemResponseScoreStatus]  WITH CHECK ADD CONSTRAINT [FK_RefAssessmentItemResponseScoreStatus_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefAssessmentItemResponseScoreStatus] CHECK CONSTRAINT [FK_RefAssessmentItemResponseScoreStatus_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAssessmentItemResponseScoreStatus', @level2type=N'COLUMN',@level2name=N'RefAssessmentItemResponseScoreStatusId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The status of scoring a person''s response to an assessment item. [CEDS Element: Assessment Item Response Score Status, ID:001538]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAssessmentItemResponseScoreStatus', @level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAssessmentItemResponseScoreStatus', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAssessmentItemResponseScoreStatus', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The status of scoring a person''s response to an assessment item.[CEDS Element: Assessment Item Response Score Status, ID:001538]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAssessmentItemResponseScoreStatus'
GO

PRINT N'	Assessment Registration Completion Status (001541)'
GO

CREATE TABLE [dbo].[RefAssessmentRegistrationCompletionStatus](
   [RefAssessmentRegistrationCompletionStatusId] [int] IDENTITY(1,1) NOT NULL,
   [Description] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Definition] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   [SortOrder] [decimal](5,2) NULL,
   CONSTRAINT [PK_RefAssessmentRegistrationCompletionStatus] PRIMARY KEY CLUSTERED ([RefAssessmentRegistrationCompletionStatusId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefAssessmentRegistrationCompletionStatus]  WITH CHECK ADD CONSTRAINT [FK_RefAssessmentRegistrationCompletionStatus_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefAssessmentRegistrationCompletionStatus] CHECK CONSTRAINT [FK_RefAssessmentRegistrationCompletionStatus_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAssessmentRegistrationCompletionStatus', @level2type=N'COLUMN',@level2name=N'RefAssessmentRegistrationCompletionStatusId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The completion and scoring status for an instance of a person taking an assessment. [CEDS Element: Assessment Registration Completion Status, ID:001541]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAssessmentRegistrationCompletionStatus', @level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAssessmentRegistrationCompletionStatus', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAssessmentRegistrationCompletionStatus', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The completion and scoring status for an instance of a person taking an assessment.[CEDS Element: Assessment Registration Completion Status, ID:001541]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAssessmentRegistrationCompletionStatus'
GO

PRINT N'	Assessment Result Data Type (001543)'
GO

CREATE TABLE [dbo].[RefAssessmentResultDataType](
   [RefAssessmentResultDataTypeId] [int] IDENTITY(1,1) NOT NULL,
   [Description] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Definition] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   [SortOrder] [decimal](5,2) NULL,
   CONSTRAINT [PK_RefAssessmentResultDataType] PRIMARY KEY CLUSTERED ([RefAssessmentResultDataTypeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefAssessmentResultDataType]  WITH CHECK ADD CONSTRAINT [FK_RefAssessmentResultDataType_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefAssessmentResultDataType] CHECK CONSTRAINT [FK_RefAssessmentResultDataType_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAssessmentResultDataType', @level2type=N'COLUMN',@level2name=N'RefAssessmentResultDataTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N' The data type of the assessment result score value. [CEDS Element: Assessment Result Data Type, ID:001543]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAssessmentResultDataType', @level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAssessmentResultDataType', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAssessmentResultDataType', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N' The data type of the assessment result score value.[CEDS Element: Assessment Result Data Type, ID:001543]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAssessmentResultDataType'
GO

PRINT N'	Assessment Result Score Type (001547)'
GO

CREATE TABLE [dbo].[RefAssessmentResultScoreType](
   [RefAssessmentResultScoreTypeId] [int] IDENTITY(1,1) NOT NULL,
   [Description] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Definition] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   [SortOrder] [decimal](5,2) NULL,
   CONSTRAINT [PK_RefAssessmentResultScoreType] PRIMARY KEY CLUSTERED ([RefAssessmentResultScoreTypeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefAssessmentResultScoreType]  WITH CHECK ADD CONSTRAINT [FK_RefAssessmentResultScoreType_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefAssessmentResultScoreType] CHECK CONSTRAINT [FK_RefAssessmentResultScoreType_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAssessmentResultScoreType', @level2type=N'COLUMN',@level2name=N'RefAssessmentResultScoreTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the purpose for which this assessment score instance was recorded. [CEDS Element: Assessment Result Score Type, ID:001547]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAssessmentResultScoreType', @level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAssessmentResultScoreType', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAssessmentResultScoreType', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the purpose for which this assessment score instance was recorded.[CEDS Element: Assessment Result Score Type, ID:001547]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAssessmentResultScoreType'
GO

PRINT N'	Billable Basis Type (001582)'
GO

CREATE TABLE [dbo].[RefBillableBasisType](
   [RefBillableBasisTypeId] [int] IDENTITY(1,1) NOT NULL,
   [Description] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Definition] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   [SortOrder] [decimal](5,2) NULL,
   CONSTRAINT [PK_RefBillableBasisType] PRIMARY KEY CLUSTERED ([RefBillableBasisTypeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefBillableBasisType]  WITH CHECK ADD CONSTRAINT [FK_RefBillableBasisType_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefBillableBasisType] CHECK CONSTRAINT [FK_RefBillableBasisType_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefBillableBasisType', @level2type=N'COLUMN',@level2name=N'RefBillableBasisTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The event/action that results in a billable action. [CEDS Element: Billable Basis Type, ID:001582]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefBillableBasisType', @level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefBillableBasisType', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefBillableBasisType', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The event/action that results in a billable action.[CEDS Element: Billable Basis Type, ID:001582]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefBillableBasisType'
GO

PRINT N'	Child Developmental Screening Status (000314)'
GO

CREATE TABLE [dbo].[RefChildDevelopmentalScreeningStatus](
   [RefChildDevelopmentalScreeningStatusId] [int] IDENTITY(1,1) NOT NULL,
   [Description] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Definition] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   [SortOrder] [decimal](5,2) NULL,
   CONSTRAINT [PK_RefChildDevelopmentalScreeningStatus] PRIMARY KEY CLUSTERED ([RefChildDevelopmentalScreeningStatusId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefChildDevelopmentalScreeningStatus]  WITH CHECK ADD CONSTRAINT [FK_RefChildDevelopmentalScreeningStatus_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefChildDevelopmentalScreeningStatus] CHECK CONSTRAINT [FK_RefChildDevelopmentalScreeningStatus_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefChildDevelopmentalScreeningStatus', @level2type=N'COLUMN',@level2name=N'RefChildDevelopmentalScreeningStatusId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The result of a brief standardized screening tool aiding in the identification of children at risk of a developmental delay/disorder. [CEDS Element: Child Developmental Screening Status, ID:000314]' ,
	@level0type=N'SCHEMA',@level0name=N'dbo',
	@level1type=N'TABLE',@level1name=N'RefChildDevelopmentalScreeningStatus',
	@level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefChildDevelopmentalScreeningStatus', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefChildDevelopmentalScreeningStatus', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The result of a brief standardized screening tool aiding in the identification of children at risk of a developmental delay/disorder. [CEDS Element: Child Developmental Screening Status, ID:000314]' ,
	@level0type=N'SCHEMA',@level0name=N'dbo',
	@level1type=N'TABLE',@level1name=N'RefChildDevelopmentalScreeningStatus'
GO

PRINT N'	Community-based Type (001633)'
GO

CREATE TABLE [dbo].[RefCommunityBasedType](
   [RefCommunityBasedTypeId] [int] IDENTITY(1,1) NOT NULL,
   [Description] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Definition] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   [SortOrder] [decimal](5,2) NULL,
   CONSTRAINT [PK_RefCommunityBasedType] PRIMARY KEY CLUSTERED ([RefCommunityBasedTypeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefCommunityBasedType]  WITH CHECK ADD CONSTRAINT [FK_RefCommunityBasedType_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefCommunityBasedType] CHECK CONSTRAINT [FK_RefCommunityBasedType_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCommunityBasedType', @level2type=N'COLUMN',@level2name=N'RefCommunityBasedTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Non domestic residence in which the early learning setting is located. [CEDS Element: Community-based Type, ID:001633]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCommunityBasedType', @level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCommunityBasedType', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCommunityBasedType', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Non domestic residence in which the early learning setting is located.[CEDS Element: Community-based Type, ID:001633]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCommunityBasedType'
GO

PRINT N'	Developmental Education Referral Status (001588)'
GO

CREATE TABLE [dbo].[RefDevelopmentalEducationReferralStatus](
   [RefDevelopmentalEducationReferralStatusId] [int] IDENTITY(1,1) NOT NULL,
   [Description] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Definition] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   [SortOrder] [decimal](5,2) NULL,
   CONSTRAINT [PK_RefDevelopmentalEducationReferralStatus] PRIMARY KEY CLUSTERED ([RefDevelopmentalEducationReferralStatusId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefDevelopmentalEducationReferralStatus]  WITH CHECK ADD CONSTRAINT [FK_RefDevelopmentalEducationReferralStatus_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefDevelopmentalEducationReferralStatus] CHECK CONSTRAINT [FK_RefDevelopmentalEducationReferralStatus_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefDevelopmentalEducationReferralStatus', @level2type=N'COLUMN',@level2name=N'RefDevelopmentalEducationReferralStatusId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The status of a student''s referral to or placement into  developmental education. [CEDS Element: Developmental Education Referral Status, ID:001588]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefDevelopmentalEducationReferralStatus', @level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefDevelopmentalEducationReferralStatus', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefDevelopmentalEducationReferralStatus', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The status of a student''s referral to or placement into  developmental education.[CEDS Element: Developmental Education Referral Status, ID:001588]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefDevelopmentalEducationReferralStatus'
GO

PRINT N'	Developmental Education Type (001589)'
GO

CREATE TABLE [dbo].[RefDevelopmentalEducationType](
   [RefDevelopmentalEducationTypeId] [int] IDENTITY(1,1) NOT NULL,
   [Description] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Definition] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   [SortOrder] [decimal](5,2) NULL,
   CONSTRAINT [PK_RefDevelopmentalEducationType] PRIMARY KEY CLUSTERED ([RefDevelopmentalEducationTypeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefDevelopmentalEducationType]  WITH CHECK ADD CONSTRAINT [FK_RefDevelopmentalEducationType_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefDevelopmentalEducationType] CHECK CONSTRAINT [FK_RefDevelopmentalEducationType_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefDevelopmentalEducationType', @level2type=N'COLUMN',@level2name=N'RefDevelopmentalEducationTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indicator of the category of developmental education. [CEDS Element: Developmental Education Type, ID:001589]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefDevelopmentalEducationType', @level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefDevelopmentalEducationType', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefDevelopmentalEducationType', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indicator of the category of developmental education.[CEDS Element: Developmental Education Type, ID:001589]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefDevelopmentalEducationType'
GO

PRINT N'	Developmental Evaluation Finding (000315)'
GO

CREATE TABLE [dbo].[RefDevelopmentalEvaluationFinding](
   [RefDevelopmentalEvaluationFindingId] [int] IDENTITY(1,1) NOT NULL,
   [Description] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Definition] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   [SortOrder] [decimal](5,2) NULL,
   CONSTRAINT [PK_RefDevelopmentalEvaluationFinding] PRIMARY KEY CLUSTERED ([RefDevelopmentalEvaluationFindingId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefDevelopmentalEvaluationFinding]  WITH CHECK ADD CONSTRAINT [FK_RefDevelopmentalEvaluationFinding_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefDevelopmentalEvaluationFinding] CHECK CONSTRAINT [FK_RefDevelopmentalEvaluationFinding_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefDevelopmentalEvaluationFinding', @level2type=N'COLUMN',@level2name=N'RefDevelopmentalEvaluationFindingId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Child developmental delay/disability determined by procedure used by appropriate qualified personnel. [CEDS Element: Developmental Evaluation Finding, ID:000315]' ,
	@level0type=N'SCHEMA',@level0name=N'dbo',
	@level1type=N'TABLE',@level1name=N'RefDevelopmentalEvaluationFinding',
	@level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefDevelopmentalEvaluationFinding', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefDevelopmentalEvaluationFinding', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Child developmental delay/disability determined by procedure used by appropriate qualified personnel. [CEDS Element: Developmental Evaluation Finding, ID:000315]' ,
	@level0type=N'SCHEMA',@level0name=N'dbo',
	@level1type=N'TABLE',@level1name=N'RefDevelopmentalEvaluationFinding'
GO

PRINT N'	Directory Information Block Status (001590)'
GO

CREATE TABLE [dbo].[RefDirectoryInformationBlockStatus](
   [RefDirectoryInformationBlockStatusId] [int] IDENTITY(1,1) NOT NULL,
   [Description] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Definition] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   [SortOrder] [decimal](5,2) NULL,
   CONSTRAINT [PK_RefDirectoryInformationBlockStatus] PRIMARY KEY CLUSTERED ([RefDirectoryInformationBlockStatusId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefDirectoryInformationBlockStatus]  WITH CHECK ADD CONSTRAINT [FK_RefDirectoryInformationBlockStatus_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefDirectoryInformationBlockStatus] CHECK CONSTRAINT [FK_RefDirectoryInformationBlockStatus_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefDirectoryInformationBlockStatus', @level2type=N'COLUMN',@level2name=N'RefDirectoryInformationBlockStatusId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of whether a individual requested a Family Education Rights and Privacy Act (FERPA) block to withhold the release of the person''s directory information. [CEDS Element: Directory Information Block Status, ID:001590]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefDirectoryInformationBlockStatus', @level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefDirectoryInformationBlockStatus', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefDirectoryInformationBlockStatus', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of whether a individual requested a Family Education Rights and Privacy Act (FERPA) block to withhold the release of the person''s directory information.[CEDS Element: Directory Information Block Status, ID:001590]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefDirectoryInformationBlockStatus'
GO

PRINT N'	Early Childhood Services Offered (001553), Early Childhood Services Received (000321)'
GO

CREATE TABLE [dbo].[RefEarlyChildhoodServices](
   [RefEarlyChildhoodServicesId] [int] IDENTITY(1,1) NOT NULL,
   [Description] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Definition] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   [SortOrder] [decimal](5,2) NULL,
   CONSTRAINT [PK_RefEarlyChildhoodServices] PRIMARY KEY CLUSTERED ([RefEarlyChildhoodServicesId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefEarlyChildhoodServices]  WITH CHECK ADD CONSTRAINT [FK_RefEarlyChildhoodServices_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefEarlyChildhoodServices] CHECK CONSTRAINT [FK_RefEarlyChildhoodServices_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefEarlyChildhoodServices', @level2type=N'COLUMN',@level2name=N'RefEarlyChildhoodServicesId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The types of service that adapts the curriculum, materials, or instruction for students identified as needing additional resources. [CEDS Element: Early Childhood Services Offered (001553), Early Childhood Services Received (000321)]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefEarlyChildhoodServices', @level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefEarlyChildhoodServices', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefEarlyChildhoodServices', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The types of service that adapts the curriculum, materials, or instruction for students identified as needing additional resources. [CEDS Element: Early Childhood Services Offered (001553), Early Childhood Services Received (000321)]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefEarlyChildhoodServices'
GO

PRINT N'	Education Verification Method (001607)'
GO

CREATE TABLE [dbo].[RefEducationVerificationMethod](
   [RefEducationVerificationMethodId] [int] IDENTITY(1,1) NOT NULL,
   [Description] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Definition] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   [SortOrder] [decimal](5,2) NULL,
   CONSTRAINT [PK_RefEducationVerificationMethod] PRIMARY KEY CLUSTERED ([RefEducationVerificationMethodId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefEducationVerificationMethod]  WITH CHECK ADD CONSTRAINT [FK_RefEducationVerificationMethod_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefEducationVerificationMethod] CHECK CONSTRAINT [FK_RefEducationVerificationMethod_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefEducationVerificationMethod', @level2type=N'COLUMN',@level2name=N'RefEducationVerificationMethodId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The method by which the formal education is verified. [CEDS Element: Education Verification Method, ID:001607]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefEducationVerificationMethod', @level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefEducationVerificationMethod', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefEducationVerificationMethod', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The method by which the formal education is verified.[CEDS Element: Education Verification Method, ID:001607]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefEducationVerificationMethod'
GO

PRINT N'	Early Learning Education Staff Classification (001602)'
GO

CREATE TABLE [dbo].[RefELEducationStaffClassification](
   [RefELEducationStaffClassificationId] [int] IDENTITY(1,1) NOT NULL,
   [Description] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Definition] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   [SortOrder] [decimal](5,2) NULL,
   CONSTRAINT [PK_RefELEducationStaffClassification] PRIMARY KEY CLUSTERED ([RefELEducationStaffClassificationId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefELEducationStaffClassification]  WITH CHECK ADD CONSTRAINT [FK_RefELEducationStaffClassification_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefELEducationStaffClassification] CHECK CONSTRAINT [FK_RefELEducationStaffClassification_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefELEducationStaffClassification', @level2type=N'COLUMN',@level2name=N'RefELEducationStaffClassificationId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title/role of employment, official status, or rank of education staff [CEDS Element: Early Learning Education Staff Classification, ID:001602]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefELEducationStaffClassification', @level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefELEducationStaffClassification', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefELEducationStaffClassification', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title/role of employment, official status, or rank of education staff[CEDS Element: Early Learning Education Staff Classification, ID:001602]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefELEducationStaffClassification'
GO

PRINT N'	Early Learning Employment Separation Reason (001632)'
GO

CREATE TABLE [dbo].[RefELEmploymentSeparationReason](
   [RefELEmploymentSeparationReasonId] [int] IDENTITY(1,1) NOT NULL,
   [Description] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Definition] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   [SortOrder] [decimal](5,2) NULL,
   CONSTRAINT [PK_RefELEmploymentSeparationReason] PRIMARY KEY CLUSTERED ([RefELEmploymentSeparationReasonId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefELEmploymentSeparationReason]  WITH CHECK ADD CONSTRAINT [FK_RefELEmploymentSeparationReason_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefELEmploymentSeparationReason] CHECK CONSTRAINT [FK_RefELEmploymentSeparationReason_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefELEmploymentSeparationReason', @level2type=N'COLUMN',@level2name=N'RefELEmploymentSeparationReasonId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary reason for the termination of the employment relationship. [CEDS Element: Early Learning Employment Separation Reason, ID:001632]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefELEmploymentSeparationReason', @level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefELEmploymentSeparationReason', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefELEmploymentSeparationReason', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary reason for the termination of the employment relationship.[CEDS Element: Early Learning Employment Separation Reason, ID:001632]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefELEmploymentSeparationReason'
GO

PRINT N'	Early Learning Local Revenue Source (001603)'
GO

CREATE TABLE [dbo].[RefELLocalRevenueSource](
   [RefELLocalRevenueSourceId] [int] IDENTITY(1,1) NOT NULL,
   [Description] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Definition] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   [SortOrder] [decimal](5,2) NULL,
   CONSTRAINT [PK_RefELLocalRevenueSource] PRIMARY KEY CLUSTERED ([RefELLocalRevenueSourceId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefELLocalRevenueSource]  WITH CHECK ADD CONSTRAINT [FK_RefELLocalRevenueSource_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefELLocalRevenueSource] CHECK CONSTRAINT [FK_RefELLocalRevenueSource_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefELLocalRevenueSource', @level2type=N'COLUMN',@level2name=N'RefELLocalRevenueSourceId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Funds that originate at the local level, and not from the state or federal level, that contribute to EL program. [CEDS Element: Early Learning Local Revenue Source, ID:001603]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefELLocalRevenueSource', @level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefELLocalRevenueSource', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefELLocalRevenueSource', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Funds that originate at the local level, and not from the state or federal level, that contribute to EL program.[CEDS Element: Early Learning Local Revenue Source, ID:001603]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefELLocalRevenueSource'
GO

PRINT N'	Early Learning Service Professional Staff Classification (001636)'
GO

CREATE TABLE [dbo].[RefELServiceProfessionalStaffClassification](
   [RefELServiceProfessionalStaffClassificationId] [int] IDENTITY(1,1) NOT NULL,
   [Description] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Definition] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   [SortOrder] [decimal](5,2) NULL,
   CONSTRAINT [PK_RefELServiceProfessionalStaffClassification] PRIMARY KEY CLUSTERED ([RefELServiceProfessionalStaffClassificationId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefELServiceProfessionalStaffClassification]  WITH CHECK ADD CONSTRAINT [FK_RefELServiceProfessionalStaffClassification_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefELServiceProfessionalStaffClassification] CHECK CONSTRAINT [FK_RefELServiceProfessionalStaffClassification_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefELServiceProfessionalStaffClassification', @level2type=N'COLUMN',@level2name=N'RefELServiceProfessionalStaffClassificationId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title/role of employment, official status, or rank of early learning service professionals [CEDS Element: Early Learning Service Professional Staff Classification, ID:001636]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefELServiceProfessionalStaffClassification', @level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefELServiceProfessionalStaffClassification', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefELServiceProfessionalStaffClassification', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title/role of employment, official status, or rank of early learning service professionals[CEDS Element: Early Learning Service Professional Staff Classification, ID:001636]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefELServiceProfessionalStaffClassification'
GO

PRINT N'	Early Learning Service Type (001604)'
GO

CREATE TABLE [dbo].[RefELServiceType](
   [RefELServiceTypeId] [int] IDENTITY(1,1) NOT NULL,
   [Description] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Definition] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   [SortOrder] [decimal](5,2) NULL,
   CONSTRAINT [PK_RefELServiceType] PRIMARY KEY CLUSTERED ([RefELServiceTypeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefELServiceType]  WITH CHECK ADD CONSTRAINT [FK_RefELServiceType_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefELServiceType] CHECK CONSTRAINT [FK_RefELServiceType_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefELServiceType', @level2type=N'COLUMN',@level2name=N'RefELServiceTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A type of service provided to a child. [CEDS Element: Early Learning Service Type, ID:001604]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefELServiceType', @level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefELServiceType', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefELServiceType', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A type of service provided to a child.[CEDS Element: Early Learning Service Type, ID:001604]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefELServiceType'
GO

PRINT N'	Early Learning State Revenue Source (001605)'
GO

CREATE TABLE [dbo].[RefELStateRevenueSource](
   [RefELStateRevenueSourceId] [int] IDENTITY(1,1) NOT NULL,
   [Description] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Definition] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   [SortOrder] [decimal](5,2) NULL,
   CONSTRAINT [PK_RefELStateRevenueSource] PRIMARY KEY CLUSTERED ([RefELStateRevenueSourceId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefELStateRevenueSource]  WITH CHECK ADD CONSTRAINT [FK_RefELStateRevenueSource_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefELStateRevenueSource] CHECK CONSTRAINT [FK_RefELStateRevenueSource_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefELStateRevenueSource', @level2type=N'COLUMN',@level2name=N'RefELStateRevenueSourceId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N' Funds that originate at the State, and not from a federal or local source, that contribute to EL program. [CEDS Element: Early Learning State Revenue Source, ID:001605]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefELStateRevenueSource', @level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefELStateRevenueSource', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefELStateRevenueSource', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N' Funds that originate at the State, and not from a federal or local source, that contribute to EL program.[CEDS Element: Early Learning State Revenue Source, ID:001605]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefELStateRevenueSource'
GO

PRINT N'	Early Learning Trainer Core Knowledge Area (001606)'
GO

CREATE TABLE [dbo].[RefELTrainerCoreKnowledgeArea](
   [RefELTrainerCoreKnowledgeAreaId] [int] IDENTITY(1,1) NOT NULL,
   [Description] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Definition] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   [SortOrder] [decimal](5,2) NULL,
   CONSTRAINT [PK_RefELTrainerCoreKnowledgeArea] PRIMARY KEY CLUSTERED ([RefELTrainerCoreKnowledgeAreaId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefELTrainerCoreKnowledgeArea]  WITH CHECK ADD CONSTRAINT [FK_RefELTrainerCoreKnowledgeArea_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefELTrainerCoreKnowledgeArea] CHECK CONSTRAINT [FK_RefELTrainerCoreKnowledgeArea_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefELTrainerCoreKnowledgeArea', @level2type=N'COLUMN',@level2name=N'RefELTrainerCoreKnowledgeAreaId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A description of the core knowledge expertise of a trainer of a professional development experience. [CEDS Element: Early Learning Trainer Core Knowledge Area, ID:001606]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefELTrainerCoreKnowledgeArea', @level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefELTrainerCoreKnowledgeArea', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefELTrainerCoreKnowledgeArea', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A description of the core knowledge expertise of a trainer of a professional development experience.[CEDS Element: Early Learning Trainer Core Knowledge Area, ID:001606]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefELTrainerCoreKnowledgeArea'
GO

PRINT N'	Financial Aid Veteran’s Benefit Status (001609)'
GO

CREATE TABLE [dbo].[RefFinancialAidVeteransBenefitStatus](
   [RefFinancialAidVeteransBenefitStatusId] [int] IDENTITY(1,1) NOT NULL,
   [Description] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Definition] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   [SortOrder] [decimal](5,2) NULL,
   CONSTRAINT [PK_RefFinancialAidVeteransBenefitStatus] PRIMARY KEY CLUSTERED ([RefFinancialAidVeteransBenefitStatusId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefFinancialAidVeteransBenefitStatus]  WITH CHECK ADD CONSTRAINT [FK_RefFinancialAidVeteransBenefitStatus_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefFinancialAidVeteransBenefitStatus] CHECK CONSTRAINT [FK_RefFinancialAidVeteransBenefitStatus_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefFinancialAidVeteransBenefitStatus', @level2type=N'COLUMN',@level2name=N'RefFinancialAidVeteransBenefitStatusId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of whether a person is receiving Veteran''s benefits. [CEDS Element: Financial Aid Veteran’s Benefit Status, ID:001609]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefFinancialAidVeteransBenefitStatus', @level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefFinancialAidVeteransBenefitStatus', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefFinancialAidVeteransBenefitStatus', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of whether a person is receiving Veteran''s benefits.[CEDS Element: Financial Aid Veteran’s Benefit Status, ID:001609]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefFinancialAidVeteransBenefitStatus'
GO

PRINT N'	Financial Aid Veteran’s Benefit Type (001610)'
GO

CREATE TABLE [dbo].[RefFinancialAidVeteransBenefitType](
   [RefFinancialAidVeteransBenefitTypeId] [int] IDENTITY(1,1) NOT NULL,
   [Description] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Definition] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   [SortOrder] [decimal](5,2) NULL,
   CONSTRAINT [PK_RefFinancialAidVeteransBenefitType] PRIMARY KEY CLUSTERED ([RefFinancialAidVeteransBenefitTypeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefFinancialAidVeteransBenefitType]  WITH CHECK ADD CONSTRAINT [FK_RefFinancialAidVeteransBenefitType_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefFinancialAidVeteransBenefitType] CHECK CONSTRAINT [FK_RefFinancialAidVeteransBenefitType_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefFinancialAidVeteransBenefitType', @level2type=N'COLUMN',@level2name=N'RefFinancialAidVeteransBenefitTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of Veteran''s benefits a person is receiving. [CEDS Element: Financial Aid Veteran’s Benefit Type, ID:001610]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefFinancialAidVeteransBenefitType', @level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefFinancialAidVeteransBenefitType', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefFinancialAidVeteransBenefitType', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of Veteran''s benefits a person is receiving.[CEDS Element: Financial Aid Veteran’s Benefit Type, ID:001610]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefFinancialAidVeteransBenefitType'
GO

PRINT N'	Financial Expenditure Level of Instruction Code (001555)'
GO

CREATE TABLE [dbo].[RefFinancialExpenditureLevelOfInstructionCode](
   [RefFinancialExpenditureLevelOfInstructionCodeId] [int] IDENTITY(1,1) NOT NULL,
   [Description] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Definition] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   [SortOrder] [decimal](5,2) NULL,
   CONSTRAINT [PK_RefFinancialExpenditureLevelOfInstructionCode] PRIMARY KEY CLUSTERED ([RefFinancialExpenditureLevelOfInstructionCodeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefFinancialExpenditureLevelOfInstructionCode]  WITH CHECK ADD CONSTRAINT [FK_RefFinancialExpenditureLevelOfInstructionCode_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefFinancialExpenditureLevelOfInstructionCode] CHECK CONSTRAINT [FK_RefFinancialExpenditureLevelOfInstructionCode_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefFinancialExpenditureLevelOfInstructionCode', @level2type=N'COLUMN',@level2name=N'RefFinancialExpenditureLevelOfInstructionCodeId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A classification of the levels of instruction to which an expenditure is applied. [CEDS Element: Financial Expenditure Level of Instruction Code, ID:001555]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefFinancialExpenditureLevelOfInstructionCode', @level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefFinancialExpenditureLevelOfInstructionCode', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefFinancialExpenditureLevelOfInstructionCode', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A classification of the levels of instruction to which an expenditure is applied.[CEDS Element: Financial Expenditure Level of Instruction Code, ID:001555]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefFinancialExpenditureLevelOfInstructionCode'
GO

PRINT N'	Learning Resource Access Rights Url (001561)'
GO

CREATE TABLE [dbo].[RefLearningResourceAccessRightsUrl](
   [RefLearningResourceAccessRightsUrlId] [int] IDENTITY(1,1) NOT NULL,
   [Description] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Definition] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   [SortOrder] [decimal](5,2) NULL,
   CONSTRAINT [PK_RefLearningResourceAccessRightsUrl] PRIMARY KEY CLUSTERED ([RefLearningResourceAccessRightsUrlId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefLearningResourceAccessRightsUrl]  WITH CHECK ADD CONSTRAINT [FK_RefLearningResourceAccessRightsUrl_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefLearningResourceAccessRightsUrl] CHECK CONSTRAINT [FK_RefLearningResourceAccessRightsUrl_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningResourceAccessRightsUrl', @level2type=N'COLUMN',@level2name=N'RefLearningResourceAccessRightsUrlId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A Uniform Resource Locator (URL) that identifies the conditions that govern the user’s ability to access a learning resource. [CEDS Element: Learning Resource Access Rights Url, ID:001561]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningResourceAccessRightsUrl', @level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningResourceAccessRightsUrl', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningResourceAccessRightsUrl', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A Uniform Resource Locator (URL) that identifies the conditions that govern the user’s ability to access a learning resource.[CEDS Element: Learning Resource Access Rights Url, ID:001561]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningResourceAccessRightsUrl'
GO

PRINT N'	Learning Resource Author Type (001562)'
GO

CREATE TABLE [dbo].[RefLearningResourceAuthorType](
   [RefLearningResourceAuthorTypeId] [int] IDENTITY(1,1) NOT NULL,
   [Description] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Definition] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   [SortOrder] [decimal](5,2) NULL,
   CONSTRAINT [PK_RefLearningResourceAuthorType] PRIMARY KEY CLUSTERED ([RefLearningResourceAuthorTypeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefLearningResourceAuthorType]  WITH CHECK ADD CONSTRAINT [FK_RefLearningResourceAuthorType_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefLearningResourceAuthorType] CHECK CONSTRAINT [FK_RefLearningResourceAuthorType_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningResourceAuthorType', @level2type=N'COLUMN',@level2name=N'RefLearningResourceAuthorTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of entity, organization or person, that authored the learning resource. [CEDS Element: Learning Resource Author Type, ID:001562]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningResourceAuthorType', @level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningResourceAuthorType', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningResourceAuthorType', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of entity, organization or person, that authored the learning resource.[CEDS Element: Learning Resource Author Type, ID:001562]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningResourceAuthorType'
GO

PRINT N'	Learning Resource Interaction Mode (001565)'
GO

CREATE TABLE [dbo].[RefLearningResourceInteractionMode](
   [RefLearningResourceInteractionModeId] [int] IDENTITY(1,1) NOT NULL,
   [Description] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Definition] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   [SortOrder] [decimal](5,2) NULL,
   CONSTRAINT [PK_RefLearningResourceInteractionMode] PRIMARY KEY CLUSTERED ([RefLearningResourceInteractionModeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefLearningResourceInteractionMode]  WITH CHECK ADD CONSTRAINT [FK_RefLearningResourceInteractionMode_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefLearningResourceInteractionMode] CHECK CONSTRAINT [FK_RefLearningResourceInteractionMode_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningResourceInteractionMode', @level2type=N'COLUMN',@level2name=N'RefLearningResourceInteractionModeId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary type of interaction, synchronous or asynchronous, defined for the learning resource. [CEDS Element: Learning Resource Interaction Mode, ID:001565]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningResourceInteractionMode', @level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningResourceInteractionMode', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningResourceInteractionMode', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary type of interaction, synchronous or asynchronous, defined for the learning resource.[CEDS Element: Learning Resource Interaction Mode, ID:001565]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefLearningResourceInteractionMode'
GO

PRINT N'	Military Active Student Indicator (001577)'
GO

CREATE TABLE [dbo].[RefMilitaryActiveStudentIndicator](
   [RefMilitaryActiveStudentIndicatorId] [int] IDENTITY(1,1) NOT NULL,
   [Description] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Definition] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   [SortOrder] [decimal](5,2) NULL,
   CONSTRAINT [PK_RefMilitaryActiveStudentIndicator] PRIMARY KEY CLUSTERED ([RefMilitaryActiveStudentIndicatorId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefMilitaryActiveStudentIndicator]  WITH CHECK ADD CONSTRAINT [FK_RefMilitaryActiveStudentIndicator_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefMilitaryActiveStudentIndicator] CHECK CONSTRAINT [FK_RefMilitaryActiveStudentIndicator_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefMilitaryActiveStudentIndicator', @level2type=N'COLUMN',@level2name=N'RefMilitaryActiveStudentIndicatorId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the student is currently serving on Active Duty, in the National Guard, or in the Reserve components of the United States military services [CEDS Element: Military Active Student Indicator, ID:001577]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefMilitaryActiveStudentIndicator', @level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefMilitaryActiveStudentIndicator', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefMilitaryActiveStudentIndicator', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the student is currently serving on Active Duty, in the National Guard, or in the Reserve components of the United States military services[CEDS Element: Military Active Student Indicator, ID:001577]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefMilitaryActiveStudentIndicator'
GO

PRINT N'	Military Connected Student Indicator (001576)'
GO

CREATE TABLE [dbo].[RefMilitaryConnectedStudentIndicator](
   [RefMilitaryConnectedStudentIndicatorId] [int] IDENTITY(1,1) NOT NULL,
   [Description] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Definition] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   [SortOrder] [decimal](5,2) NULL,
   CONSTRAINT [PK_RefMilitaryConnectedStudentIndicator] PRIMARY KEY CLUSTERED ([RefMilitaryConnectedStudentIndicatorId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefMilitaryConnectedStudentIndicator]  WITH CHECK ADD CONSTRAINT [FK_RefMilitaryConnectedStudentIndicator_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefMilitaryConnectedStudentIndicator] CHECK CONSTRAINT [FK_RefMilitaryConnectedStudentIndicator_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefMilitaryConnectedStudentIndicator', @level2type=N'COLUMN',@level2name=N'RefMilitaryConnectedStudentIndicatorId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the student’s parent or guardian is on Active Duty, in the National Guard, or in the Reserve components of the United States military services [CEDS Element: Military Connected Student Indicator, ID:001576]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefMilitaryConnectedStudentIndicator', @level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefMilitaryConnectedStudentIndicator', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefMilitaryConnectedStudentIndicator', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the student’s parent or guardian is on Active Duty, in the National Guard, or in the Reserve components of the United States military services[CEDS Element: Military Connected Student Indicator, ID:001576]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefMilitaryConnectedStudentIndicator'
GO

PRINT N'	Military Veteran Student Indicator (001578)'
GO

CREATE TABLE [dbo].[RefMilitaryVeteranStudentIndicator](
   [RefMilitaryVeteranStudentIndicatorId] [int] IDENTITY(1,1) NOT NULL,
   [Description] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Definition] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   [SortOrder] [decimal](5,2) NULL,
   CONSTRAINT [PK_RefMilitaryVeteranStudentIndicator] PRIMARY KEY CLUSTERED ([RefMilitaryVeteranStudentIndicatorId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefMilitaryVeteranStudentIndicator]  WITH CHECK ADD CONSTRAINT [FK_RefMilitaryVeteranStudentIndicator_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefMilitaryVeteranStudentIndicator] CHECK CONSTRAINT [FK_RefMilitaryVeteranStudentIndicator_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefMilitaryVeteranStudentIndicator', @level2type=N'COLUMN',@level2name=N'RefMilitaryVeteranStudentIndicatorId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the student is a veteran who served on Active Duty, in the National Guard, or in the Reserve components of the United States military services [CEDS Element: Military Veteran Student Indicator, ID:001578]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefMilitaryVeteranStudentIndicator', @level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefMilitaryVeteranStudentIndicator', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefMilitaryVeteranStudentIndicator', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the student is a veteran who served on Active Duty, in the National Guard, or in the Reserve components of the United States military services[CEDS Element: Military Veteran Student Indicator, ID:001578]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefMilitaryVeteranStudentIndicator'
GO

PRINT N'	Postsecondary Exit or Withdrawal Type (001617)'
GO

CREATE TABLE [dbo].[RefPSExitOrWithdrawalType](
   [RefPSExitOrWithdrawalTypeId] [int] IDENTITY(1,1) NOT NULL,
   [Description] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Definition] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   [SortOrder] [decimal](5,2) NULL,
   CONSTRAINT [PK_RefPSExitOrWithdrawalType] PRIMARY KEY CLUSTERED ([RefPSExitOrWithdrawalTypeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefPSExitOrWithdrawalType]  WITH CHECK ADD CONSTRAINT [FK_RefPSExitOrWithdrawalType_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefPSExitOrWithdrawalType] CHECK CONSTRAINT [FK_RefPSExitOrWithdrawalType_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefPSExitOrWithdrawalType', @level2type=N'COLUMN',@level2name=N'RefPSExitOrWithdrawalTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N' The circumstances under which the student exited from enrollment in a postsecondary institution. [CEDS Element: Postsecondary Exit or Withdrawal Type, ID:001617]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefPSExitOrWithdrawalType', @level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefPSExitOrWithdrawalType', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefPSExitOrWithdrawalType', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N' The circumstances under which the student exited from enrollment in a postsecondary institution.[CEDS Element: Postsecondary Exit or Withdrawal Type, ID:001617]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefPSExitOrWithdrawalType'
GO

PRINT N'	Postsecondary Program  Level (001616)'
GO

CREATE TABLE [dbo].[RefPSProgramLevel](
   [RefPSProgramLevelId] [int] IDENTITY(1,1) NOT NULL,
   [Description] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Definition] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   [SortOrder] [decimal](5,2) NULL,
   CONSTRAINT [PK_RefPSProgramLevel] PRIMARY KEY CLUSTERED ([RefPSProgramLevelId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefPSProgramLevel]  WITH CHECK ADD CONSTRAINT [FK_RefPSProgramLevel_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefPSProgramLevel] CHECK CONSTRAINT [FK_RefPSProgramLevel_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefPSProgramLevel', @level2type=N'COLUMN',@level2name=N'RefPSProgramLevelId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The level describing the concentration of study for a postsecondary program. [CEDS Element: Postsecondary Program  Level, ID:001616]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefPSProgramLevel', @level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefPSProgramLevel', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefPSProgramLevel', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The level describing the concentration of study for a postsecondary program.[CEDS Element: Postsecondary Program  Level, ID:001616]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefPSProgramLevel'
GO

PRINT N'	Reimbursement Type (001622)'
GO

CREATE TABLE [dbo].[RefReimbursementType](
   [RefReimbursementTypeId] [int] IDENTITY(1,1) NOT NULL,
   [Description] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Definition] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   [SortOrder] [decimal](5,2) NULL,
   CONSTRAINT [PK_RefReimbursementType] PRIMARY KEY CLUSTERED ([RefReimbursementTypeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefReimbursementType]  WITH CHECK ADD CONSTRAINT [FK_RefReimbursementType_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefReimbursementType] CHECK CONSTRAINT [FK_RefReimbursementType_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefReimbursementType', @level2type=N'COLUMN',@level2name=N'RefReimbursementTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A billable basis which defines payment. This is how state agencies/programs move funding to the local provider/agency. [CEDS Element: Reimbursement Type, ID:001622]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefReimbursementType', @level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefReimbursementType', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefReimbursementType', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A billable basis which defines payment. This is how state agencies/programs move funding to the local provider/agency.[CEDS Element: Reimbursement Type, ID:001622]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefReimbursementType'
GO

PRINT N'	Scheduled Well Child Screening (001623)'
GO

CREATE TABLE [dbo].[RefScheduledWellChildScreening](
   [RefScheduledWellChildScreeningId] [int] IDENTITY(1,1) NOT NULL,
   [Description] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Definition] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   [SortOrder] [decimal](5,2) NULL,
   CONSTRAINT [PK_RefScheduledWellChildScreening] PRIMARY KEY CLUSTERED ([RefScheduledWellChildScreeningId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefScheduledWellChildScreening]  WITH CHECK ADD CONSTRAINT [FK_RefScheduledWellChildScreening_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefScheduledWellChildScreening] CHECK CONSTRAINT [FK_RefScheduledWellChildScreening_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefScheduledWellChildScreening', @level2type=N'COLUMN',@level2name=N'RefScheduledWellChildScreeningId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The individual well child visit scheduled according to the AAP recommended periodicity schedule. [CEDS Element: Scheduled Well Child Screening, ID:001623]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefScheduledWellChildScreening', @level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefScheduledWellChildScreening', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefScheduledWellChildScreening', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The individual well child visit scheduled according to the AAP recommended periodicity schedule.[CEDS Element: Scheduled Well Child Screening, ID:001623]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefScheduledWellChildScreening'
GO

PRINT N'	Transfer-out Indicator (001629)'
GO

CREATE TABLE [dbo].[RefTransferOutIndicator](
   [RefTransferOutIndicatorId] [int] IDENTITY(1,1) NOT NULL,
   [Description] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Definition] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   [SortOrder] [decimal](5,2) NULL,
   CONSTRAINT [PK_RefTransferOutIndicator] PRIMARY KEY CLUSTERED ([RefTransferOutIndicatorId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefTransferOutIndicator]  WITH CHECK ADD CONSTRAINT [FK_RefTransferOutIndicator_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefTransferOutIndicator] CHECK CONSTRAINT [FK_RefTransferOutIndicator_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefTransferOutIndicator', @level2type=N'COLUMN',@level2name=N'RefTransferOutIndicatorId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indicator of whether the student has transferred to another institution. [CEDS Element: Transfer-out Indicator, ID:001629]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefTransferOutIndicator', @level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefTransferOutIndicator', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefTransferOutIndicator', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indicator of whether the student has transferred to another institution.[CEDS Element: Transfer-out Indicator, ID:001629]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefTransferOutIndicator'
GO

PRINT N'	Trimester When Prenatal Care Began (001630)'
GO

CREATE TABLE [dbo].[RefTrimesterWhenPrenatalCareBegan](
   [RefTrimesterWhenPrenatalCareBeganId] [int] IDENTITY(1,1) NOT NULL,
   [Description] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Definition] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   [SortOrder] [decimal](5,2) NULL,
   CONSTRAINT [PK_RefTrimesterWhenPrenatalCareBegan] PRIMARY KEY CLUSTERED ([RefTrimesterWhenPrenatalCareBeganId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefTrimesterWhenPrenatalCareBegan]  WITH CHECK ADD CONSTRAINT [FK_RefTrimesterWhenPrenatalCareBegan_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefTrimesterWhenPrenatalCareBegan] CHECK CONSTRAINT [FK_RefTrimesterWhenPrenatalCareBegan_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefTrimesterWhenPrenatalCareBegan', @level2type=N'COLUMN',@level2name=N'RefTrimesterWhenPrenatalCareBeganId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The trimester of pregnancy in which a child''s mother began receiving prenatal health care. [CEDS Element: Trimester When Prenatal Care Began, ID:001630]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefTrimesterWhenPrenatalCareBegan', @level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefTrimesterWhenPrenatalCareBegan', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefTrimesterWhenPrenatalCareBegan', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The trimester of pregnancy in which a child''s mother began receiving prenatal health care.[CEDS Element: Trimester When Prenatal Care Began, ID:001630]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefTrimesterWhenPrenatalCareBegan'
GO


PRINT N'Add new columns without foreign keys to Ref table'
GO


PRINT N'	Accreditation Agency Name (001526)'
GO

ALTER TABLE [dbo].[K12School] ADD [AccreditationAgencyName] [nvarchar](300) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The full name of an agency that accredited a school. [CEDS Element: Accreditation Agency Name, ID:001526]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'K12School', 
	@level2type=N'COLUMN',@level2name=N'AccreditationAgencyName'
GO

PRINT N'	APIP Interaction Sequence Number (001529)'
GO

ALTER TABLE [dbo].[ApipInteraction] ADD [APIPInteractionSequenceNumber] [decimal](9,2) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The position of this APIP Interaction in a sequence of interactions. [CEDS Element: APIP Interaction Sequence Number, ID:001529]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ApipInteraction', 
	@level2type=N'COLUMN',@level2name=N'APIPInteractionSequenceNumber'
GO

PRINT N'	Assessment Administration Period Description (001531)'
GO

ALTER TABLE [dbo].[AssessmentAdministration] ADD [AssessmentAdministrationPeriodDescription] [nvarchar](300) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The period or window in which an assessment is supposed to be administered. [CEDS Element: Assessment Administration Period Description, ID:001531]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'AssessmentAdministration', 
	@level2type=N'COLUMN',@level2name=N'AssessmentAdministrationPeriodDescription'
GO

PRINT N'	Assessment Form Adaptive Indicator (001532)'
GO

ALTER TABLE [dbo].[AssessmentForm] ADD [AssessmentFormAdaptiveIndicator] [bit] NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates that the assessment form was generated using an algorithm rather than a fixed form. [CEDS Element: Assessment Form Adaptive Indicator, ID:001532]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'AssessmentForm', 
	@level2type=N'COLUMN',@level2name=N'AssessmentFormAdaptiveIndicator'
GO

PRINT N'	Assessment Form Algorithm Identifier (001533)'
GO

ALTER TABLE [dbo].[AssessmentForm] ADD [AssessmentFormAlgorithmIdentifier] [nvarchar](40) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An identifier for algorithm used to generate a custom form for an adaptive test. [CEDS Element: Assessment Form Algorithm Identifier, ID:001533]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'AssessmentForm', 
	@level2type=N'COLUMN',@level2name=N'AssessmentFormAlgorithmIdentifier'
GO

PRINT N'	Assessment Form Algorithm Version (001534)'
GO

ALTER TABLE [dbo].[AssessmentForm] ADD [AssessmentFormAlgorithmVersion] [nvarchar](40) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The version of the algorithm used to generate a custom form for an adaptive test. [CEDS Element: Assessment Form Algorithm Version, ID:001534]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'AssessmentForm', 
	@level2type=N'COLUMN',@level2name=N'AssessmentFormAlgorithmVersion'
GO

PRINT N'	Assessment Form GUID (001535)'
GO

ALTER TABLE [dbo].[AssessmentForm] ADD [AssessmentFormGUID] [nvarchar](40) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The globally unique identifier of an Assessment Form. [CEDS Element: Assessment Form GUID, ID:001535]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'AssessmentForm', 
	@level2type=N'COLUMN',@level2name=N'AssessmentFormGUID'
GO

PRINT N'	Assessment Form Section Item Field Test Indicator (001536)'
GO

ALTER TABLE [dbo].[AssessmentItem] ADD [AssessmentFormSectionItemFieldTestIndicator] [bit] NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates that the assessment item is being field tested on this form of the test, and is not to be included for scoring. [CEDS Element: Assessment Form Section Item Field Test Indicator, ID:001536]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'AssessmentItem', 
	@level2type=N'COLUMN',@level2name=N'AssessmentFormSectionItemFieldTestIndicator'
GO

PRINT N'	Assessment Item Response Descriptive Feedback Date (001537)'
GO

ALTER TABLE [dbo].[AssessmentItemResponse] ADD [AssessmentItemResponseDescriptiveFeedbackDate] [datetime] NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date and time the descriptive feedback was entered in response to the results from a scored/evaluated assessment item. [CEDS Element: Assessment Item Response Descriptive Feedback Date, ID:001537]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'AssessmentItemResponse', 
	@level2type=N'COLUMN',@level2name=N'AssessmentItemResponseDescriptiveFeedbackDate'
GO

PRINT N'	Assessment Participant Session Database Name (001539)'
GO

ALTER TABLE [dbo].[AssessmentParticipantSession] ADD [AssessmentParticipantSessionDatabaseName] [nvarchar](300) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the database that was used to administer the test. [CEDS Element: Assessment Participant Session Database Name, ID:001539]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'AssessmentParticipantSession', 
	@level2type=N'COLUMN',@level2name=N'AssessmentParticipantSessionDatabaseName'
GO

PRINT N'	Assessment Participant Session GUID (001540)'
GO

ALTER TABLE [dbo].[AssessmentParticipantSession] ADD [AssessmentParticipantSessionGUID] [nvarchar](40) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A globally unique identifier for an instance of a person taking an assessment. [CEDS Element: Assessment Participant Session GUID, ID:001540]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'AssessmentParticipantSession', 
	@level2type=N'COLUMN',@level2name=N'AssessmentParticipantSessionGUID'
GO

PRINT N'	Assessment Registration Completion Status Date Time (001542)'
GO

ALTER TABLE [dbo].[AssessmentRegistration] ADD [AssessmentRegistrationCompletionStatusDateTime] [datetime] NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date and time the completion and scoring status was changed for an instance of a person taking an assessment. [CEDS Element: Assessment Registration Completion Status Date Time, ID:001542]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'AssessmentRegistration', 
	@level2type=N'COLUMN',@level2name=N'AssessmentRegistrationCompletionStatusDateTime'
GO

PRINT N'	Assessment Result Descriptive Feedback Date Time (001545)'
GO

ALTER TABLE [dbo].[AssessmentResult] ADD [AssessmentResultDescriptiveFeedbackDateTime] [datetime] NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date and time the descriptive feedback was entered for a scored/evaluated portion of an assessment. [CEDS Element: Assessment Result Descriptive Feedback Date Time, ID:001545]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'AssessmentResult', 
	@level2type=N'COLUMN',@level2name=N'AssessmentResultDescriptiveFeedbackDateTime'
GO

PRINT N'	Assessment Result Score Standard Error (001546)'
GO

ALTER TABLE [dbo].[AssessmentResult] ADD [AssessmentResultScoreStandardError] [decimal](9,2) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The measure of sampling variability and measurement error for the score, the amount of error to be expected in the score. [CEDS Element: Assessment Result Score Standard Error, ID:001546]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'AssessmentResult', 
	@level2type=N'COLUMN',@level2name=N'AssessmentResultScoreStandardError'
GO

PRINT N'	Assessment Revision Date (001544)'
GO

ALTER TABLE [dbo].[Assessment] ADD [AssessmentRevisionDate] [date] NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year that the conceptual design for the assessment was most recently revised substantially. [CEDS Element: Assessment Revision Date, ID:001544]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'Assessment', 
	@level2type=N'COLUMN',@level2name=N'AssessmentRevisionDate'
GO

PRINT N'	Birthdate Verification (000428)'
GO

ALTER TABLE [dbo].[Person] ADD [BirthdateVerification] [nvarchar](60) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The evidence by which a child''s date of birth is confirmed. [CEDS Element: Birthdate Verification, ID:000428]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'Person', 
	@level2type=N'COLUMN',@level2name=N'BirthdateVerification'
GO

PRINT N'	Career Pathways Program Participation Exit Date (001583)'
GO

ALTER TABLE [dbo].[ProgramParticipationCte] ADD [CareerPathwaysProgramParticipationExitDate] [date] NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The year, month and day on which the person ceased to participate in a program. [CEDS Element: Career Pathways Program Participation Exit Date, ID:001583]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ProgramParticipationCte', 
	@level2type=N'COLUMN',@level2name=N'CareerPathwaysProgramParticipationExitDate'
GO

PRINT N'	Career Pathways Program Participation Start Date (001584)'
GO

ALTER TABLE [dbo].[ProgramParticipationCte] ADD [CareerPathwaysProgramParticipationStartDate] [date] NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The year, month and day on which the person began to participate in a career pathway program. [CEDS Element: Career Pathways Program Participation Start Date, ID:001584]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ProgramParticipationCte', 
	@level2type=N'COLUMN',@level2name=N'CareerPathwaysProgramParticipationStartDate'
GO

PRINT N'	Charter School Open Enrollment Indicator (001548)'
GO

ALTER TABLE [dbo].[K12School] ADD [CharterSchoolOpenEnrollmentIndicator] [bit] NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates that the charter school offers open enrollment. [CEDS Element: Charter School Open Enrollment Indicator, ID:001548]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'K12School', 
	@level2type=N'COLUMN',@level2name=N'CharterSchoolOpenEnrollmentIndicator'
GO

PRINT N'	Course Department Name (001549)'
GO

ALTER TABLE [dbo].[CteCourse] ADD [CourseDepartmentName] [nvarchar](60) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Department with jurisdiction over this course. [CEDS Element: Course Department Name, ID:001549]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'CteCourse', 
	@level2type=N'COLUMN',@level2name=N'CourseDepartmentName'
GO

PRINT N'	Course Department Name (001549)'
GO

ALTER TABLE [dbo].[K12Course] ADD [CourseDepartmentName] [nvarchar](60) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Department with jurisdiction over this course. [CEDS Element: Course Department Name, ID:001549]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'K12Course', 
	@level2type=N'COLUMN',@level2name=N'CourseDepartmentName'
GO

PRINT N'	Credential or License Award Entity (001587)'
GO

ALTER TABLE [dbo].[PersonCredential] ADD [CredentialOrLicenseAwardEntity] [nvarchar](60) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the organization awarding the individual''s credential or license. [CEDS Element: Credential or License Award Entity, ID:001587]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PersonCredential', 
	@level2type=N'COLUMN',@level2name=N'CredentialOrLicenseAwardEntity'
GO

PRINT N'	Crisis Description (001550)'
GO

ALTER TABLE [dbo].[OrganizationCalendarCrisis] ADD [CrisisDescription] [nvarchar](300) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A description of the crisis that caused the displacement of students. [CEDS Element: Crisis Description, ID:001550]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'OrganizationCalendarCrisis', 
	@level2type=N'COLUMN',@level2name=N'CrisisDescription'
GO

PRINT N'	Crisis End Date (001552)'
GO

ALTER TABLE [dbo].[OrganizationCalendarCrisis] ADD [CrisisEndDate] [date] NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date on which the crisis ceased to affect the agency. [CEDS Element: Crisis End Date, ID:001552]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'OrganizationCalendarCrisis', 
	@level2type=N'COLUMN',@level2name=N'CrisisEndDate'
GO

PRINT N'	Financial Account Number (001554)'
GO

ALTER TABLE [dbo].[FinancialAccount] ADD [FinancialAccountNumber] [nvarchar](30) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A number given to a financial account within a local source accounting system. The number may be a concatenation of a standard  prefix for the type of account with digits added that have specific meaning within the local system. [CEDS Element: Financial Account Number, ID:001554]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'FinancialAccount', 
	@level2type=N'COLUMN',@level2name=N'FinancialAccountNumber'
GO

PRINT N'	Financial Aid Year Designator (001611)'
GO

ALTER TABLE [dbo].[FinancialAidApplication] ADD [FinancialAidYearDesignator] [nchar](9) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year for which the student''s financial aid application and award data apply.  Generally, this is the 12-month period from July 1 to June 30. [CEDS Element: Financial Aid Year Designator, ID:001611]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'FinancialAidApplication', 
	@level2type=N'COLUMN',@level2name=N'FinancialAidYearDesignator'
GO

PRINT N'	Financial Aid Year Designator (001611)'
GO

ALTER TABLE [dbo].[FinancialAidAward] ADD [FinancialAidYearDesignator] [nchar](9) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year for which the student''s financial aid application and award data apply.  Generally, this is the 12-month period from July 1 to June 30. [CEDS Element: Financial Aid Year Designator, ID:001611]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'FinancialAidAward', 
	@level2type=N'COLUMN',@level2name=N'FinancialAidYearDesignator'
GO

PRINT N'	Financial Expenditure Project Reporting Code (001556)'
GO

ALTER TABLE [dbo].[FinancialAccount] ADD [FinancialExpenditureProjectReportingCode] [decimal](3,0) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A three-digit code with the format 00X to accumulate expenditures to meet a variety of specialized reporting requirements at local, state, and federal levels. The first two digits identify the particular funding source, authority, or expenditure purpose for which a special record or report is required. The third digit is available to identify particular projects and the fiscal year of the appropriation within that funding source. Each classification is presented by a code range followed by a description. [CEDS Element: Financial Expenditure Project Reporting Code, ID:001556]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'FinancialAccount', 
	@level2type=N'COLUMN',@level2name=N'FinancialExpenditureProjectReportingCode'
GO

PRINT N'	Included in Counted Family Size (001612)'
GO

ALTER TABLE [dbo].[PersonFamily] ADD [IncludedInCountedFamilySize] [bit] NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Denotes whether this family member is counted in the family size as it pertains to the federal poverty level [CEDS Element: Included in Counted Family Size, ID:001612]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PersonFamily', 
	@level2type=N'COLUMN',@level2name=N'IncludedInCountedFamilySize'
GO

PRINT N'	Inclusive Setting Indicator (001634)'
GO

ALTER TABLE [dbo].[EarlyChildhoodProgramTypeOffered] ADD [InclusiveSettingIndicator] [bit] NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A place where children of all abilities learn together. [CEDS Element: Inclusive Setting Indicator, ID:001634]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'EarlyChildhoodProgramTypeOffered', 
	@level2type=N'COLUMN',@level2name=N'InclusiveSettingIndicator'
GO

PRINT N'	IPEDS Collection Year Designator (001613)'
GO

ALTER TABLE [dbo].[PsPriceOfAttendance] ADD [IPEDSCollectionYearDesignator] [nchar](9) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The academic year, generally extending from September to June, in which IPEDS data is collected.  Most Institutional Characteristics, Salaries, Fall Staff, Fall Enrollment, and Employees by Assigned Position data are collected for the current year; Completions, 12-Month Enrollment, Student Financial Aid, and Finance data collections cover the prior year. [CEDS Element: IPEDS Collection Year Designator, ID:001613]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PsPriceOfAttendance', 
	@level2type=N'COLUMN',@level2name=N'IPEDSCollectionYearDesignator'
GO

PRINT N'	Learner Action Actor Identifier (001557)'
GO

ALTER TABLE [dbo].[LearnerAction] ADD [LearnerActionActorIdentifier] [nvarchar](40) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N' A unique identifier for the person performing the learner action.  The identifier should be encrypted when integrating learning experience data across systems to secure the privacy of the learner. [CEDS Element: Learner Action Actor Identifier, ID:001557]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'LearnerAction', 
	@level2type=N'COLUMN',@level2name=N'LearnerActionActorIdentifier'
GO

PRINT N'	Learner Action Object Description (001558)'
GO

ALTER TABLE [dbo].[LearnerAction] ADD [LearnerActionObjectDescription] [nvarchar](300) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A description of the object upon which the person has performed the Learner Action. [CEDS Element: Learner Action Object Description, ID:001558]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'LearnerAction', 
	@level2type=N'COLUMN',@level2name=N'LearnerActionObjectDescription'
GO

PRINT N'	Learner Action Object Identifier (001559)'
GO

ALTER TABLE [dbo].[LearnerAction] ADD [LearnerActionObjectIdentifier] [nvarchar](40) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A globally unique identifier for the object upon which the learning has performed the Learner Action which may be a URL with information about a learning resource or to launch the resource. [CEDS Element: Learner Action Object Identifier, ID:001559]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'LearnerAction', 
	@level2type=N'COLUMN',@level2name=N'LearnerActionObjectIdentifier'
GO

PRINT N'	Learner Action Object Type (001560)'
GO

ALTER TABLE [dbo].[LearnerAction] ADD [LearnerActionObjectType] [nvarchar](60) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of object upon which a person has performed the Learner Action. [CEDS Element: Learner Action Object Type, ID:001560]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'LearnerAction', 
	@level2type=N'COLUMN',@level2name=N'LearnerActionObjectType'
GO

PRINT N'	Learning Resource Author Email (001566)'
GO

ALTER TABLE [dbo].[LearningResource] ADD [LearningResourceAuthorEmail] [nvarchar](128) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An email address for the author of the learning resource. [CEDS Element: Learning Resource Author Email, ID:001566]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'LearningResource', 
	@level2type=N'COLUMN',@level2name=N'LearningResourceAuthorEmail'
GO

PRINT N'	Learning Resource Author URL (001563)'
GO

ALTER TABLE [dbo].[LearningResource] ADD [LearningResourceAuthorURL] [nvarchar](300) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A Uniform Resource Locator (URL) attributed to the author of a learning resource. [CEDS Element: Learning Resource Author URL, ID:001563]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'LearningResource', 
	@level2type=N'COLUMN',@level2name=N'LearningResourceAuthorURL'
GO

PRINT N'	Learning Resource Date Modified (001564)'
GO

ALTER TABLE [dbo].[LearningResource] ADD [LearningResourceDateModified] [date] NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The most recent date that the learning resource was updated. [CEDS Element: Learning Resource Date Modified, ID:001564]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'LearningResource', 
	@level2type=N'COLUMN',@level2name=N'LearningResourceDateModified'
GO

PRINT N'	Learning Resource Publisher Email (001567)'
GO

ALTER TABLE [dbo].[LearningResource] ADD [LearningResourcePublisherEmail] [nvarchar](128) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An email address for the publisher of the learning resource. [CEDS Element: Learning Resource Publisher Email, ID:001567]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'LearningResource', 
	@level2type=N'COLUMN',@level2name=N'LearningResourcePublisherEmail'
GO

PRINT N'	Learning Resource Publisher URL (001568)'
GO

ALTER TABLE [dbo].[LearningResource] ADD [LearningResourcePublisherURL] [nvarchar](300) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A Uniform Resource Locator (URL) attributed to the publisher of a learning resource. [CEDS Element: Learning Resource Publisher URL, ID:001568]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'LearningResource', 
	@level2type=N'COLUMN',@level2name=N'LearningResourcePublisherURL'
GO

PRINT N'	Learning Standard Document Publication Date (001569)'
GO

ALTER TABLE [dbo].[LearningStandardDocument] ADD [LearningStandardDocumentPublicationDate] [date] NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date on which this content was first published. [CEDS Element: Learning Standard Document Publication Date, ID:001569]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'LearningStandardDocument', 
	@level2type=N'COLUMN',@level2name=N'LearningStandardDocumentPublicationDate'
GO

PRINT N'	Learning Standard Item Sequence (001570)'
GO

ALTER TABLE [dbo].[LearningStandardItem] ADD [LearningStandardItemSequence] [nvarchar](60) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A set of one or more alphanumeric characters and/or symbols denoting the positioning of the statement being described in a sequential listing of statements. [CEDS Element: Learning Standard Item Sequence, ID:001570]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'LearningStandardItem', 
	@level2type=N'COLUMN',@level2name=N'LearningStandardItemSequence'
GO

PRINT N'	Professional Development Activity State Approved Status (001619)'
GO

ALTER TABLE [dbo].[ProfessionalDevelopmentActivity] ADD [ProfessionalDevelopmentActivityStateApprovedStatus] [bit] NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of whether a training activity has been approved through a state process. [CEDS Element: Professional Development Activity State Approved Status, ID:001619]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ProfessionalDevelopmentActivity', 
	@level2type=N'COLUMN',@level2name=N'ProfessionalDevelopmentActivityStateApprovedStatus'
GO

PRINT N'	Professional Development Plan Approved By Supervisor (001620)'
GO

ALTER TABLE [dbo].[PersonCareerEducationPlan] ADD [ProfessionalDevelopmentPlanApprovedBySupervisor] [bit] NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Professional development plan is approved by the employee''s supervisor. [CEDS Element: Professional Development Plan Approved By Supervisor, ID:001620]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PersonCareerEducationPlan', 
	@level2type=N'COLUMN',@level2name=N'ProfessionalDevelopmentPlanApprovedBySupervisor'
GO

PRINT N'	Professional Development Plan Completion (001621)'
GO

ALTER TABLE [dbo].[PersonCareerEducationPlan] ADD [ProfessionalDevelopmentPlanCompletion] [date] NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the professional development plan is completed. [CEDS Element: Professional Development Plan Completion, ID:001621]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PersonCareerEducationPlan', 
	@level2type=N'COLUMN',@level2name=N'ProfessionalDevelopmentPlanCompletion'
GO

PRINT N'	Staff Approval Indicator (001581)'
GO

ALTER TABLE [dbo].[ELStaffEmployment] ADD [StaffApprovalIndicator] [bit] NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Individual is approved to Work with Children [CEDS Element: Staff Approval Indicator, ID:001581]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ELStaffEmployment', 
	@level2type=N'COLUMN',@level2name=N'StaffApprovalIndicator'
GO

PRINT N'	Student Course Section Grade Narrative (001573)'
GO

ALTER TABLE [dbo].[K12StudentCourseSectionMark] ADD [StudentCourseSectionGradeNarrative] [nvarchar](300) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The narrative of the student performance in a course section as submitted by the instructor. [CEDS Element: Student Course Section Grade Narrative, ID:001573]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'K12StudentCourseSectionMark', 
	@level2type=N'COLUMN',@level2name=N'StudentCourseSectionGradeNarrative'
GO

PRINT N'	Student Course Section Grade Narrative (001573)'
GO

ALTER TABLE [dbo].[PSStudentCourseSectionMark] ADD [StudentCourseSectionGradeNarrative] [nvarchar](300) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The narrative of the student performance in a course section as submitted by the instructor. [CEDS Element: Student Course Section Grade Narrative, ID:001573]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PSStudentCourseSectionMark', 
	@level2type=N'COLUMN',@level2name=N'StudentCourseSectionGradeNarrative'
GO

PRINT N'	Training and Technical Assistance Level (001628)'
GO

ALTER TABLE [dbo].[ProfessionalDevelopmentSession] ADD [TrainingAndTechnicalAssistanceLevel] [nvarchar](100) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The level of expertise an individual training and technical assistance specialist has based on a set of established criteria. [CEDS Element: Training and Technical Assistance Level, ID:001628]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ProfessionalDevelopmentSession', 
	@level2type=N'COLUMN',@level2name=N'TrainingAndTechnicalAssistanceLevel'
GO

PRINT N'	Tuition Funded (001575)'
GO

ALTER TABLE [dbo].[K12StudentCourseSection] ADD [TuitionFunded] [bit] NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates that tuition for person''s participation in a program, service, or course is funded or partially funded by an external grant program. [CEDS Element: Tuition Funded, ID:001575]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'K12StudentCourseSection', 
	@level2type=N'COLUMN',@level2name=N'TuitionFunded'
GO

PRINT N'	Tuition Funded (001575)'
GO

ALTER TABLE [dbo].[PersonCareerEducationPlan] ADD [TuitionFunded] [bit] NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates that tuition for person''s participation in a program, service, or course is funded or partially funded by an external grant program. [CEDS Element: Tuition Funded, ID:001575]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PersonCareerEducationPlan', 
	@level2type=N'COLUMN',@level2name=N'TuitionFunded'
GO

PRINT N'Move AssessmentFamily columns to Assessment table and drop AssessmentFamily table'
GO

PRINT N'	Assessment Family Title (000932)'
GO

ALTER TABLE [dbo].[Assessment] ADD [AssessmentFamilyTitle] [nvarchar](60) NOT NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The full title of the Assessment Family. An Assessment Family is a set of assessments with a common name, jurisdiction, or focus, such as Graduate Record Exam or National Assessment of Educational Progress. [CEDS Element: Assessment Family Title, ID:000932]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'Assessment', 
	@level2type=N'COLUMN',@level2name=N'AssessmentFamilyTitle'
GO

PRINT N'	Assessment Family Short Name (000933)'
GO

ALTER TABLE [dbo].[Assessment] ADD [AssessmentFamilyShortName] [nvarchar](30) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The abbreviated title of the Assessment Family. An Assessment Family is a set of assessments with a common name, jurisdiction, or focus. [CEDS Element: Assessment Family Short Name, ID:000933]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'Assessment', 
	@level2type=N'COLUMN',@level2name=N'AssessmentFamilyShortName'
GO

ALTER TABLE [dbo].[Assessment] DROP CONSTRAINT [FK_Assessment_AssessmentFamily]
GO
 
ALTER TABLE [dbo].[Assessment] DROP COLUMN [AssessmentFamilyId]
GO
 
DROP TABLE [dbo].[AssessmentFamily] 
GO

PRINT N'Add new columns with foreign keys'
GO


PRINT N'	Admission Consideration Level (001579)'
GO

ALTER TABLE [dbo].[PsInstitution] ADD [RefAdmissionConsiderationLevelId] [int] NULL
GO

ALTER TABLE [dbo].[PsInstitution]  WITH CHECK 
  ADD CONSTRAINT [FK_PsInstitution_RefAdmissionConsiderationLevel]
  FOREIGN KEY([RefAdmissionConsiderationLevelId]) REFERENCES [dbo].[RefAdmissionConsiderationLevel] ([RefAdmissionConsiderationLevelId])
GO

ALTER TABLE [dbo].[PsInstitution] CHECK CONSTRAINT [FK_PsInstitution_RefAdmissionConsiderationLevel]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The level of consideration given a type of admission criteria used at an institution during the selection process. [CEDS Element: Admission Consideration Level, ID:001579]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PsInstitution', 
	@level2type=N'COLUMN',@level2name=N'RefAdmissionConsiderationLevelId'
GO

PRINT N'	Admission Consideration Type (001580)'
GO

ALTER TABLE [dbo].[PsInstitution] ADD [RefAdmissionConsiderationTypeId] [int] NULL
GO

ALTER TABLE [dbo].[PsInstitution]  WITH CHECK 
  ADD CONSTRAINT [FK_PsInstitution_RefAdmissionConsiderationType]
  FOREIGN KEY([RefAdmissionConsiderationTypeId]) REFERENCES [dbo].[RefAdmissionConsiderationType] ([RefAdmissionConsiderationTypeId])
GO

ALTER TABLE [dbo].[PsInstitution] CHECK CONSTRAINT [FK_PsInstitution_RefAdmissionConsiderationType]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of admission consideration used at an institution during the selection process. [CEDS Element: Admission Consideration Type, ID:001580]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PsInstitution', 
	@level2type=N'COLUMN',@level2name=N'RefAdmissionConsiderationTypeId'
GO

PRINT N'	Assessment Item Response Score Status (001538)'
GO

ALTER TABLE [dbo].[AssessmentItemResponse] ADD [RefAssessmentItemResponseScoreStatusId] [int] NULL
GO

ALTER TABLE [dbo].[AssessmentItemResponse]  WITH CHECK 
  ADD CONSTRAINT [FK_AssessmentItemResponse_RefAssessmentItemResponseScoreStatus]
  FOREIGN KEY([RefAssessmentItemResponseScoreStatusId]) REFERENCES [dbo].[RefAssessmentItemResponseScoreStatus] ([RefAssessmentItemResponseScoreStatusId])
GO

ALTER TABLE [dbo].[AssessmentItemResponse] CHECK CONSTRAINT [FK_AssessmentItemResponse_RefAssessmentItemResponseScoreStatus]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The status of scoring a person''s response to an assessment item. [CEDS Element: Assessment Item Response Score Status, ID:001538]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'AssessmentItemResponse', 
	@level2type=N'COLUMN',@level2name=N'RefAssessmentItemResponseScoreStatusId'
GO

PRINT N'	Assessment Registration Completion Status (001541)'
GO

ALTER TABLE [dbo].[AssessmentRegistration] ADD [RefAssessmentRegistrationCompletionStatusId] [int] NULL
GO

ALTER TABLE [dbo].[AssessmentRegistration]  WITH CHECK 
  ADD CONSTRAINT [FK_AssessmentRegistration_RefAssessmentRegistrationCompletionStatus]
  FOREIGN KEY([RefAssessmentRegistrationCompletionStatusId]) REFERENCES [dbo].[RefAssessmentRegistrationCompletionStatus] ([RefAssessmentRegistrationCompletionStatusId])
GO

ALTER TABLE [dbo].[AssessmentRegistration] CHECK CONSTRAINT [FK_AssessmentRegistration_RefAssessmentRegistrationCompletionStatus]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The completion and scoring status for an instance of a person taking an assessment. [CEDS Element: Assessment Registration Completion Status, ID:001541]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'AssessmentRegistration', 
	@level2type=N'COLUMN',@level2name=N'RefAssessmentRegistrationCompletionStatusId'
GO

PRINT N'	Assessment Result Data Type (001543)'
GO

ALTER TABLE [dbo].[AssessmentResult] ADD [RefAssessmentResultDataTypeId] [int] NULL
GO

ALTER TABLE [dbo].[AssessmentResult]  WITH CHECK 
  ADD CONSTRAINT [FK_AssessmentResult_RefAssessmentResultDataType]
  FOREIGN KEY([RefAssessmentResultDataTypeId]) REFERENCES [dbo].[RefAssessmentResultDataType] ([RefAssessmentResultDataTypeId])
GO

ALTER TABLE [dbo].[AssessmentResult] CHECK CONSTRAINT [FK_AssessmentResult_RefAssessmentResultDataType]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N' The data type of the assessment result score value. [CEDS Element: Assessment Result Data Type, ID:001543]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'AssessmentResult', 
	@level2type=N'COLUMN',@level2name=N'RefAssessmentResultDataTypeId'
GO

PRINT N'	Assessment Result Score Type (001547)'
GO

ALTER TABLE [dbo].[AssessmentResult] ADD [RefAssessmentResultScoreTypeId] [int] NULL
GO

ALTER TABLE [dbo].[AssessmentResult]  WITH CHECK 
  ADD CONSTRAINT [FK_AssessmentResult_RefAssessmentResultScoreType]
  FOREIGN KEY([RefAssessmentResultScoreTypeId]) REFERENCES [dbo].[RefAssessmentResultScoreType] ([RefAssessmentResultScoreTypeId])
GO

ALTER TABLE [dbo].[AssessmentResult] CHECK CONSTRAINT [FK_AssessmentResult_RefAssessmentResultScoreType]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the purpose for which this assessment score instance was recorded. [CEDS Element: Assessment Result Score Type, ID:001547]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'AssessmentResult', 
	@level2type=N'COLUMN',@level2name=N'RefAssessmentResultScoreTypeId'
GO
 
PRINT N'	Classification of Instructional Program Code (000043)'
GO
 
ALTER TABLE [dbo].[PsCourse] ADD [RefCipCodeId] [int] NULL
GO
 
ALTER TABLE [dbo].[PsCourse]  WITH CHECK 
  ADD CONSTRAINT [FK_PsCourse_RefCipCode]
  FOREIGN KEY([RefCipCodeId]) REFERENCES [dbo].[RefCipCode] ([RefCipCodeId])
GO
 
ALTER TABLE [dbo].[PsCourse] CHECK CONSTRAINT [FK_PsCourse_RefCipCode]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A six-digit code in the form xx.xxxx that identifies instructional program specialties within educational institutions. [CEDS Element: Classification of Instructional Program Code, ID:000043]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PsCourse', 
	@level2type=N'COLUMN',@level2name=N'RefCipCodeId'
GO

PRINT N'	Community-based Type (001633)'
GO

ALTER TABLE [dbo].[EarlyChildhoodProgramTypeOffered] ADD [RefCommunityBasedTypeId] [int] NULL
GO

ALTER TABLE [dbo].[EarlyChildhoodProgramTypeOffered]  WITH CHECK 
  ADD CONSTRAINT [FK_EarlyChildhoodProgramTypeOffered_RefCommunityBasedType]
  FOREIGN KEY([RefCommunityBasedTypeId]) REFERENCES [dbo].[RefCommunityBasedType] ([RefCommunityBasedTypeId])
GO

ALTER TABLE [dbo].[EarlyChildhoodProgramTypeOffered] CHECK CONSTRAINT [FK_EarlyChildhoodProgramTypeOffered_RefCommunityBasedType]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Non domestic residence in which the early learning setting is located. [CEDS Element: Community-based Type, ID:001633]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'EarlyChildhoodProgramTypeOffered', 
	@level2type=N'COLUMN',@level2name=N'RefCommunityBasedTypeId'
GO

PRINT N'	Developmental Education Referral Status (001588)'
GO

ALTER TABLE [dbo].[PsStudentEnrollment] ADD [RefDevelopmentalEducationReferralStatusId] [int] NULL
GO

ALTER TABLE [dbo].[PsStudentEnrollment]  WITH CHECK 
  ADD CONSTRAINT [FK_PsStudentEnrollment_RefDevelopmentalEducationReferralStatus]
  FOREIGN KEY([RefDevelopmentalEducationReferralStatusId]) REFERENCES [dbo].[RefDevelopmentalEducationReferralStatus] ([RefDevelopmentalEducationReferralStatusId])
GO

ALTER TABLE [dbo].[PsStudentEnrollment] CHECK CONSTRAINT [FK_PsStudentEnrollment_RefDevelopmentalEducationReferralStatus]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The status of a student''s referral to or placement into  developmental education. [CEDS Element: Developmental Education Referral Status, ID:001588]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PsStudentEnrollment', 
	@level2type=N'COLUMN',@level2name=N'RefDevelopmentalEducationReferralStatusId'
GO

PRINT N'	Developmental Education Type (001589)'
GO

ALTER TABLE [dbo].[PsSection] ADD [RefDevelopmentalEducationTypeId] [int] NULL
GO

ALTER TABLE [dbo].[PsSection]  WITH CHECK 
  ADD CONSTRAINT [FK_PsSection_RefDevelopmentalEducationType]
  FOREIGN KEY([RefDevelopmentalEducationTypeId]) REFERENCES [dbo].[RefDevelopmentalEducationType] ([RefDevelopmentalEducationTypeId])
GO

ALTER TABLE [dbo].[PsSection] CHECK CONSTRAINT [FK_PsSection_RefDevelopmentalEducationType]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indicator of the category of developmental education. [CEDS Element: Developmental Education Type, ID:001589]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PsSection', 
	@level2type=N'COLUMN',@level2name=N'RefDevelopmentalEducationTypeId'
GO

ALTER TABLE [dbo].[PsStudentEnrollment] ADD [RefDevelopmentalEducationTypeId] [int] NULL
GO

ALTER TABLE [dbo].[PsStudentEnrollment]  WITH CHECK 
  ADD CONSTRAINT [FK_PsStudentEnrollment_RefDevelopmentalEducationType]
  FOREIGN KEY([RefDevelopmentalEducationTypeId]) REFERENCES [dbo].[RefDevelopmentalEducationType] ([RefDevelopmentalEducationTypeId])
GO

ALTER TABLE [dbo].[PsStudentEnrollment] CHECK CONSTRAINT [FK_PsStudentEnrollment_RefDevelopmentalEducationType]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indicator of the category of developmental education. [CEDS Element: Developmental Education Type, ID:001589]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PsStudentEnrollment', 
	@level2type=N'COLUMN',@level2name=N'RefDevelopmentalEducationTypeId'
GO

PRINT N'	Directory Information Block Status (001590)'
GO

ALTER TABLE [dbo].[K12StudentEnrollment] ADD [RefDirectoryInformationBlockStatusId] [int] NULL
GO

ALTER TABLE [dbo].[K12StudentEnrollment]  WITH CHECK 
  ADD CONSTRAINT [FK_K12StudentEnrollment_RefDirectoryInformationBlockStatus]
  FOREIGN KEY([RefDirectoryInformationBlockStatusId]) REFERENCES [dbo].[RefDirectoryInformationBlockStatus] ([RefDirectoryInformationBlockStatusId])
GO

ALTER TABLE [dbo].[K12StudentEnrollment] CHECK CONSTRAINT [FK_K12StudentEnrollment_RefDirectoryInformationBlockStatus]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of whether a individual requested a Family Education Rights and Privacy Act (FERPA) block to withhold the release of the person''s directory information. [CEDS Element: Directory Information Block Status, ID:001590]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'K12StudentEnrollment', 
	@level2type=N'COLUMN',@level2name=N'RefDirectoryInformationBlockStatusId'
GO

PRINT N'	Education Verification Method (001607)'
GO

ALTER TABLE [dbo].[PersonDegreeOrCertificate] ADD [RefEducationVerificationMethodId] [int] NULL
GO

ALTER TABLE [dbo].[PersonDegreeOrCertificate]  WITH CHECK 
  ADD CONSTRAINT [FK_PersonDegreeOrCertificate_RefEducationVerificationMethod]
  FOREIGN KEY([RefEducationVerificationMethodId]) REFERENCES [dbo].[RefEducationVerificationMethod] ([RefEducationVerificationMethodId])
GO

ALTER TABLE [dbo].[PersonDegreeOrCertificate] CHECK CONSTRAINT [FK_PersonDegreeOrCertificate_RefEducationVerificationMethod]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The method by which the formal education is verified. [CEDS Element: Education Verification Method, ID:001607]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PersonDegreeOrCertificate', 
	@level2type=N'COLUMN',@level2name=N'RefEducationVerificationMethodId'
GO

PRINT N'	Early Learning Education Staff Classification (001602)'
GO

ALTER TABLE [dbo].[ELStaffEmployment] ADD [RefELEducationStaffClassificationId] [int] NULL
GO

ALTER TABLE [dbo].[ELStaffEmployment]  WITH CHECK 
  ADD CONSTRAINT [FK_ELStaffEmployment_RefELEducationStaffClassification]
  FOREIGN KEY([RefELEducationStaffClassificationId]) REFERENCES [dbo].[RefELEducationStaffClassification] ([RefELEducationStaffClassificationId])
GO

ALTER TABLE [dbo].[ELStaffEmployment] CHECK CONSTRAINT [FK_ELStaffEmployment_RefELEducationStaffClassification]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title/role of employment, official status, or rank of education staff [CEDS Element: Early Learning Education Staff Classification, ID:001602]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ELStaffEmployment', 
	@level2type=N'COLUMN',@level2name=N'RefELEducationStaffClassificationId'
GO

PRINT N'	Early Learning Employment Separation Reason (001632)'
GO

ALTER TABLE [dbo].[ELStaffEmployment] ADD [RefELEmploymentSeparationReasonId] [int] NULL
GO

ALTER TABLE [dbo].[ELStaffEmployment]  WITH CHECK 
  ADD CONSTRAINT [FK_ELStaffEmployment_RefELEmploymentSeparationReason]
  FOREIGN KEY([RefELEmploymentSeparationReasonId]) REFERENCES [dbo].[RefELEmploymentSeparationReason] ([RefELEmploymentSeparationReasonId])
GO

ALTER TABLE [dbo].[ELStaffEmployment] CHECK CONSTRAINT [FK_ELStaffEmployment_RefELEmploymentSeparationReason]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary reason for the termination of the employment relationship. [CEDS Element: Early Learning Employment Separation Reason, ID:001632]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ELStaffEmployment', 
	@level2type=N'COLUMN',@level2name=N'RefELEmploymentSeparationReasonId'
GO

PRINT N'	Early Learning Service Professional Staff Classification (001636)'
GO

ALTER TABLE [dbo].[ELStaffEmployment] ADD [RefELServiceProfessionalStaffClassificationId] [int] NULL
GO

ALTER TABLE [dbo].[ELStaffEmployment]  WITH CHECK 
  ADD CONSTRAINT [FK_ELStaffEmployment_RefELServiceProfessionalStaffClassification]
  FOREIGN KEY([RefELServiceProfessionalStaffClassificationId]) REFERENCES [dbo].[RefELServiceProfessionalStaffClassification] ([RefELServiceProfessionalStaffClassificationId])
GO

ALTER TABLE [dbo].[ELStaffEmployment] CHECK CONSTRAINT [FK_ELStaffEmployment_RefELServiceProfessionalStaffClassification]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title/role of employment, official status, or rank of early learning service professionals [CEDS Element: Early Learning Service Professional Staff Classification, ID:001636]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ELStaffEmployment', 
	@level2type=N'COLUMN',@level2name=N'RefELServiceProfessionalStaffClassificationId'
GO

PRINT N'	Early Learning Trainer Core Knowledge Area (001606)'
GO

ALTER TABLE [dbo].[ProfessionalDevelopmentSession] ADD [RefELTrainerCoreKnowledgeAreaId] [int] NULL
GO

ALTER TABLE [dbo].[ProfessionalDevelopmentSession]  WITH CHECK 
  ADD CONSTRAINT [FK_ProfessionalDevelopmentSession_RefELTrainerCoreKnowledgeArea]
  FOREIGN KEY([RefELTrainerCoreKnowledgeAreaId]) REFERENCES [dbo].[RefELTrainerCoreKnowledgeArea] ([RefELTrainerCoreKnowledgeAreaId])
GO

ALTER TABLE [dbo].[ProfessionalDevelopmentSession] CHECK CONSTRAINT [FK_ProfessionalDevelopmentSession_RefELTrainerCoreKnowledgeArea]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A description of the core knowledge expertise of a trainer of a professional development experience. [CEDS Element: Early Learning Trainer Core Knowledge Area, ID:001606]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ProfessionalDevelopmentSession', 
	@level2type=N'COLUMN',@level2name=N'RefELTrainerCoreKnowledgeAreaId'
GO

PRINT N'	Financial Aid Veteran’s Benefit Status (001609)'
GO

ALTER TABLE [dbo].[PsStudentFinancialAid] ADD [RefFinancialAidVeteransBenefitStatusId] [int] NULL
GO

ALTER TABLE [dbo].[PsStudentFinancialAid]  WITH CHECK 
  ADD CONSTRAINT [FK_PsStudentFinancialAid_RefFinancialAidVeteransBenefitStatus]
  FOREIGN KEY([RefFinancialAidVeteransBenefitStatusId]) REFERENCES [dbo].[RefFinancialAidVeteransBenefitStatus] ([RefFinancialAidVeteransBenefitStatusId])
GO

ALTER TABLE [dbo].[PsStudentFinancialAid] CHECK CONSTRAINT [FK_PsStudentFinancialAid_RefFinancialAidVeteransBenefitStatus]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of whether a person is receiving Veteran''s benefits. [CEDS Element: Financial Aid Veteran’s Benefit Status, ID:001609]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PsStudentFinancialAid', 
	@level2type=N'COLUMN',@level2name=N'RefFinancialAidVeteransBenefitStatusId'
GO

PRINT N'	Financial Aid Veteran’s Benefit Type (001610)'
GO

ALTER TABLE [dbo].[PsStudentFinancialAid] ADD [RefFinancialAidVeteransBenefitTypeId] [int] NULL
GO

ALTER TABLE [dbo].[PsStudentFinancialAid]  WITH CHECK 
  ADD CONSTRAINT [FK_PsStudentFinancialAid_RefFinancialAidVeteransBenefitType]
  FOREIGN KEY([RefFinancialAidVeteransBenefitTypeId]) REFERENCES [dbo].[RefFinancialAidVeteransBenefitType] ([RefFinancialAidVeteransBenefitTypeId])
GO

ALTER TABLE [dbo].[PsStudentFinancialAid] CHECK CONSTRAINT [FK_PsStudentFinancialAid_RefFinancialAidVeteransBenefitType]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of Veteran''s benefits a person is receiving. [CEDS Element: Financial Aid Veteran’s Benefit Type, ID:001610]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PsStudentFinancialAid', 
	@level2type=N'COLUMN',@level2name=N'RefFinancialAidVeteransBenefitTypeId'
GO

PRINT N'	Financial Expenditure Level of Instruction Code (001555)'
GO

ALTER TABLE [dbo].[FinancialAccount] ADD [RefFinancialExpenditureLevelOfInstructionCodeId] [int] NULL
GO

ALTER TABLE [dbo].[FinancialAccount]  WITH CHECK 
  ADD CONSTRAINT [FK_FinancialAccount_RefFinancialExpenditureLevelOfInstructionCode]
  FOREIGN KEY([RefFinancialExpenditureLevelOfInstructionCodeId]) REFERENCES [dbo].[RefFinancialExpenditureLevelOfInstructionCode] ([RefFinancialExpenditureLevelOfInstructionCodeId])
GO

ALTER TABLE [dbo].[FinancialAccount] CHECK CONSTRAINT [FK_FinancialAccount_RefFinancialExpenditureLevelOfInstructionCode]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A classification of the levels of instruction to which an expenditure is applied. [CEDS Element: Financial Expenditure Level of Instruction Code, ID:001555]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'FinancialAccount', 
	@level2type=N'COLUMN',@level2name=N'RefFinancialExpenditureLevelOfInstructionCodeId'
GO

PRINT N'	Learning Resource Access Rights Url (001561)'
GO

ALTER TABLE [dbo].[LearningResource] ADD [RefLearningResourceAccessRightsUrlId] [int] NULL
GO

ALTER TABLE [dbo].[LearningResource]  WITH CHECK 
  ADD CONSTRAINT [FK_LearningResource_RefLearningResourceAccessRightsUrl]
  FOREIGN KEY([RefLearningResourceAccessRightsUrlId]) REFERENCES [dbo].[RefLearningResourceAccessRightsUrl] ([RefLearningResourceAccessRightsUrlId])
GO

ALTER TABLE [dbo].[LearningResource] CHECK CONSTRAINT [FK_LearningResource_RefLearningResourceAccessRightsUrl]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A Uniform Resource Locator (URL) that identifies the conditions that govern the user’s ability to access a learning resource. [CEDS Element: Learning Resource Access Rights Url, ID:001561]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'LearningResource', 
	@level2type=N'COLUMN',@level2name=N'RefLearningResourceAccessRightsUrlId'
GO

PRINT N'	Learning Resource Author Type (001562)'
GO

ALTER TABLE [dbo].[LearningResource] ADD [RefLearningResourceAuthorTypeId] [int] NULL
GO

ALTER TABLE [dbo].[LearningResource]  WITH CHECK 
  ADD CONSTRAINT [FK_LearningResource_RefLearningResourceAuthorType]
  FOREIGN KEY([RefLearningResourceAuthorTypeId]) REFERENCES [dbo].[RefLearningResourceAuthorType] ([RefLearningResourceAuthorTypeId])
GO

ALTER TABLE [dbo].[LearningResource] CHECK CONSTRAINT [FK_LearningResource_RefLearningResourceAuthorType]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of entity, organization or person, that authored the learning resource. [CEDS Element: Learning Resource Author Type, ID:001562]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'LearningResource', 
	@level2type=N'COLUMN',@level2name=N'RefLearningResourceAuthorTypeId'
GO

PRINT N'	Learning Resource Interaction Mode (001565)'
GO

ALTER TABLE [dbo].[LearningResource] ADD [RefLearningResourceInteractionModeId] [int] NULL
GO

ALTER TABLE [dbo].[LearningResource]  WITH CHECK 
  ADD CONSTRAINT [FK_LearningResource_RefLearningResourceInteractionMode]
  FOREIGN KEY([RefLearningResourceInteractionModeId]) REFERENCES [dbo].[RefLearningResourceInteractionMode] ([RefLearningResourceInteractionModeId])
GO

ALTER TABLE [dbo].[LearningResource] CHECK CONSTRAINT [FK_LearningResource_RefLearningResourceInteractionMode]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary type of interaction, synchronous or asynchronous, defined for the learning resource. [CEDS Element: Learning Resource Interaction Mode, ID:001565]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'LearningResource', 
	@level2type=N'COLUMN',@level2name=N'RefLearningResourceInteractionModeId'
GO

PRINT N'	Postsecondary Exit or Withdrawal Type (001617)'
GO

ALTER TABLE [dbo].[PSProgram] ADD [RefPSExitOrWithdrawalTypeId] [int] NULL
GO

ALTER TABLE [dbo].[PSProgram]  WITH CHECK 
  ADD CONSTRAINT [FK_PSProgram_RefPSExitOrWithdrawalType]
  FOREIGN KEY([RefPSExitOrWithdrawalTypeId]) REFERENCES [dbo].[RefPSExitOrWithdrawalType] ([RefPSExitOrWithdrawalTypeId])
GO

ALTER TABLE [dbo].[PSProgram] CHECK CONSTRAINT [FK_PSProgram_RefPSExitOrWithdrawalType]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N' The circumstances under which the student exited from enrollment in a postsecondary institution. [CEDS Element: Postsecondary Exit or Withdrawal Type, ID:001617]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PSProgram', 
	@level2type=N'COLUMN',@level2name=N'RefPSExitOrWithdrawalTypeId'
GO

PRINT N'	Postsecondary Program  Level (001616)'
GO

ALTER TABLE [dbo].[PSProgram] ADD [RefPSProgramLevelId] [int] NULL
GO

ALTER TABLE [dbo].[PSProgram]  WITH CHECK 
  ADD CONSTRAINT [FK_PSProgram_RefPSProgramLevel]
  FOREIGN KEY([RefPSProgramLevelId]) REFERENCES [dbo].[RefPSProgramLevel] ([RefPSProgramLevelId])
GO

ALTER TABLE [dbo].[PSProgram] CHECK CONSTRAINT [FK_PSProgram_RefPSProgramLevel]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The level describing the concentration of study for a postsecondary program. [CEDS Element: Postsecondary Program  Level, ID:001616]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PSProgram', 
	@level2type=N'COLUMN',@level2name=N'RefPSProgramLevelId'
GO

PRINT N'	Transfer-out Indicator (001629)'
GO

ALTER TABLE [dbo].[PSStudentProgram] ADD [RefTransferOutIndicatorId] [int] NULL
GO

ALTER TABLE [dbo].[PSStudentProgram]  WITH CHECK 
  ADD CONSTRAINT [FK_PSStudentProgram_RefTransferOutIndicator]
  FOREIGN KEY([RefTransferOutIndicatorId]) REFERENCES [dbo].[RefTransferOutIndicator] ([RefTransferOutIndicatorId])
GO

ALTER TABLE [dbo].[PSStudentProgram] CHECK CONSTRAINT [FK_PSStudentProgram_RefTransferOutIndicator]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indicator of whether the student has transferred to another institution. [CEDS Element: Transfer-out Indicator, ID:001629]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PSStudentProgram', 
	@level2type=N'COLUMN',@level2name=N'RefTransferOutIndicatorId'
GO

PRINT N'	Trimester When Prenatal Care Began (001630)'
GO

ALTER TABLE [dbo].[PersonHealthBirth] ADD [RefTrimesterWhenPrenatalCareBeganId] [int] NULL
GO

ALTER TABLE [dbo].[PersonHealthBirth]  WITH CHECK 
  ADD CONSTRAINT [FK_PersonHealthBirth_RefTrimesterWhenPrenatalCareBegan]
  FOREIGN KEY([RefTrimesterWhenPrenatalCareBeganId]) REFERENCES [dbo].[RefTrimesterWhenPrenatalCareBegan] ([RefTrimesterWhenPrenatalCareBeganId])
GO

ALTER TABLE [dbo].[PersonHealthBirth] CHECK CONSTRAINT [FK_PersonHealthBirth_RefTrimesterWhenPrenatalCareBegan]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The trimester of pregnancy in which a child''s mother began receiving prenatal health care. [CEDS Element: Trimester When Prenatal Care Began, ID:001630]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PersonHealthBirth', 
	@level2type=N'COLUMN',@level2name=N'RefTrimesterWhenPrenatalCareBeganId'
GO
 
PRINT N'	Work-based Learning Opportunity Type (001499)'
GO

ALTER TABLE [dbo].[PsSection] ADD [RefWorkbasedLearningOpportunityTypeId] [int] NULL
GO

ALTER TABLE [dbo].[PsSection]  WITH CHECK 
  ADD CONSTRAINT [FK_PsSection_RefWorkbasedLearningOpportunityType]
  FOREIGN KEY([RefWorkbasedLearningOpportunityTypeId]) REFERENCES [dbo].[RefWorkbasedLearningOpportunityType] ([RefWorkbasedLearningOpportunityTypeId])
GO

ALTER TABLE [dbo].[PsSection] CHECK CONSTRAINT [FK_PsSection_RefWorkbasedLearningOpportunityType]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of work-based learning opportunity a student participated in. [CEDS Element: Work-based Learning Opportunity Type, ID:001499]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PsSection', 
	@level2type=N'COLUMN',@level2name=N'RefWorkbasedLearningOpportunityTypeId'
GO
 
PRINT N'	EL Child Individualized Program Individualized Transition Plan'
GO

ALTER TABLE [dbo].[ELChildIDEA] ADD [IndividualizedProgramId] [int] NULL
GO
 
ALTER TABLE [dbo].[ELChildIDEA]  WITH CHECK ADD  CONSTRAINT [FK_ELChildIDEA_IndividualizedProgram] FOREIGN KEY([IndividualizedProgramId])
REFERENCES [dbo].[IndividualizedProgram] ([IndividualizedProgramId])
GO

ALTER TABLE [dbo].[ELChildIDEA] CHECK CONSTRAINT [FK_ELChildIDEA_IndividualizedProgram]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign key - IndividualizedProgram' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ELChildIDEA', 
	@level2type=N'COLUMN',@level2name=N'IndividualizedProgramId'
GO


ALTER TABLE [dbo].[ProfessionalDevelopmentRequirement] ADD [CompetencySetId] [int] NULL
GO
 
ALTER TABLE [dbo].[ProfessionalDevelopmentRequirement]  WITH CHECK 
  ADD CONSTRAINT [FK_ProfessionalDevelopmentRequirement_CompetencySet]
  FOREIGN KEY([CompetencySetId]) REFERENCES [dbo].[CompetencySet] ([CompetencySetId])
GO
 
ALTER TABLE [dbo].[ProfessionalDevelopmentRequirement] CHECK CONSTRAINT [FK_ProfessionalDevelopmentRequirement_CompetencySet]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The set of one or more competencies and criteria for completion of a learning goal, unit, course, program, degree, certification, or other achievement.   (The criteria may be ''all'' competencies in the set or ''at-least'' # of competencies. Sets may be nested, e.g. all in subset A and 3 of 5 from subset B.)' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ProfessionalDevelopmentRequirement', 
	@level2type=N'COLUMN',@level2name=N'CompetencySetId'
GO

ALTER TABLE [dbo].[OrganizationIdentifier] ADD [RefOrganizationIdentifierTypeId] [int] NULL
GO

ALTER TABLE [dbo].[OrganizationIdentifier]  WITH CHECK 
  ADD CONSTRAINT [FK_OrganizationIdentifier_RefOrganizationIdentifierType]
  FOREIGN KEY([RefOrganizationIdentifierTypeId]) REFERENCES [dbo].[RefOrganizationIdentifierType] ([RefOrganizationIdentifierTypeId])
GO

ALTER TABLE [dbo].[OrganizationIdentifier] CHECK CONSTRAINT [FK_OrganizationIdentifier_RefOrganizationIdentifierType]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The CEDS organization identifier or identification system element that the Identifier column represents [List of CEDS Elements: Organization Identification System (000827), Adult Education Service Provider Identification System (000781), Agency Course Identifier (001280), Course Code System (000056), Federal School Code (000111), Institution IPEDS UnitID (000166), Local Education Agency Identification System (001072), Local Education Agency Supervisory Union Identification Number (000175), Office of Postsecondary Education Identifier (000203), School Identification System (001073), State Agency Identification System (001491), Course Section Number (001315), Activity Identifier (000006), Course Identifier (000055), Program Identifier (000625), Course Section Identifier (000978)]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'OrganizationIdentifier', 
	@level2type=N'COLUMN',@level2name=N'RefOrganizationIdentifierTypeId'
GO

PRINT N'Create new tables'
GO


PRINT N'	Activity'
GO
PRINT N'		Activity Description (001530)'
GO

CREATE TABLE [dbo].[Activity](
	[OrganizationId] [int] NOT NULL,
	[ActivityDescription] [nvarchar](300) NULL,
 CONSTRAINT [PK_Activity] PRIMARY KEY CLUSTERED
(
	[OrganizationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Activity]  WITH CHECK ADD  CONSTRAINT [FK_Activity_Organization] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[Activity] CHECK CONSTRAINT [FK_Activity_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Activity', @level2type=N'COLUMN',@level2name=N'OrganizationId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A description of the events and procedures that take place under the purview of an organized activity, such as a co-curricular or extra-curricular activity that is offered at an education institution. [CEDS Element: Activity Description, ID:001530]' ,
	@level0type=N'SCHEMA',@level0name=N'dbo',
	@level1type=N'TABLE',@level1name=N'Activity',
	@level2type=N'COLUMN',@level2name=N'ActivityDescription'
GO

PRINT N'	EL Child Developmental Assessment'
GO
PRINT N'		Child Developmental Screening Status (000314)'
GO
PRINT N'		Developmental Evaluation Finding (000315)'
GO

CREATE TABLE [dbo].[ELChildDevelopmentalAssessment](
	[PersonId] [int] NOT NULL,
	[RefChildDevelopmentalScreeningStatusId] [int] NULL,
	[RefDevelopmentalEvaluationFindingId] [int] NULL,
 CONSTRAINT [PK_ELChildDevelopmentalAssessment] PRIMARY KEY CLUSTERED
(
	[PersonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[ELChildDevelopmentalAssessment]  WITH CHECK ADD  CONSTRAINT [FK_ELChildDevelopmentalAssessment_Person] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([PersonId])
GO

ALTER TABLE [dbo].[ELChildDevelopmentalAssessment] CHECK CONSTRAINT [FK_ELChildDevelopmentalAssessment_Person]
GO

ALTER TABLE [dbo].[ELChildDevelopmentalAssessment]  WITH CHECK
  ADD CONSTRAINT [FK_ELChildDevelopmentalAssessment_RefChildDevelopmentalScreeningStatus]
  FOREIGN KEY([RefChildDevelopmentalScreeningStatusId]) REFERENCES [dbo].[RefChildDevelopmentalScreeningStatus] ([RefChildDevelopmentalScreeningStatusId])
GO

ALTER TABLE [dbo].[ELChildDevelopmentalAssessment] CHECK CONSTRAINT [FK_ELChildDevelopmentalAssessment_RefChildDevelopmentalScreeningStatus]
GO

ALTER TABLE [dbo].[ELChildDevelopmentalAssessment]  WITH CHECK
  ADD CONSTRAINT [FK_ELChildDevelopmentalAssessment_RefDevelopmentalEvaluationFinding]
  FOREIGN KEY([RefDevelopmentalEvaluationFindingId]) REFERENCES [dbo].[RefDevelopmentalEvaluationFinding] ([RefDevelopmentalEvaluationFindingId])
GO

ALTER TABLE [dbo].[ELChildDevelopmentalAssessment] CHECK CONSTRAINT [FK_ELChildDevelopmentalAssessment_RefDevelopmentalEvaluationFinding]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Person.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ELChildDevelopmentalAssessment', @level2type=N'COLUMN',@level2name=N'PersonId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The result of a brief standardized screening tool aiding in the identification of children at risk of a developmental delay/disorder. [CEDS Element: Child Developmental Screening Status, ID:000314]' ,
	@level0type=N'SCHEMA',@level0name=N'dbo',
	@level1type=N'TABLE',@level1name=N'ELChildDevelopmentalAssessment',
	@level2type=N'COLUMN',@level2name=N'RefChildDevelopmentalScreeningStatusId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Child developmental delay/disability determined by procedure used by appropriate qualified personnel. [CEDS Element: Developmental Evaluation Finding, ID:000315]' ,
	@level0type=N'SCHEMA',@level0name=N'dbo',
	@level1type=N'TABLE',@level1name=N'ELChildDevelopmentalAssessment',
	@level2type=N'COLUMN',@level2name=N'RefDevelopmentalEvaluationFindingId'
GO

PRINT N'	EL Child Health Information'
GO
PRINT N'		Well Child Screening Received Date (001631)'
GO
PRINT N'		Scheduled Well Child Screening (001623)'
GO

CREATE TABLE [dbo].[ELChildHealth](
	[PersonId] [int] NOT NULL,
	[WellChildScreeningReceivedDate] [date] NULL,
	[RefScheduledWellChildScreeningId] [int] NULL,
 CONSTRAINT [PK_ELChildHealth] PRIMARY KEY CLUSTERED
(
	[PersonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[ELChildHealth]  WITH CHECK ADD  CONSTRAINT [FK_ELChildHealth_Person] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([PersonId])
GO

ALTER TABLE [dbo].[ELChildHealth] CHECK CONSTRAINT [FK_ELChildHealth_Person]
GO

ALTER TABLE [dbo].[ELChildHealth]  WITH CHECK
  ADD CONSTRAINT [FK_ELChildHealth_RefScheduledWellChildScreening]
  FOREIGN KEY([RefScheduledWellChildScreeningId]) REFERENCES [dbo].[RefScheduledWellChildScreening] ([RefScheduledWellChildScreeningId])
GO

ALTER TABLE [dbo].[ELChildHealth] CHECK CONSTRAINT [FK_ELChildHealth_RefScheduledWellChildScreening]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Person.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ELChildHealth', @level2type=N'COLUMN',@level2name=N'PersonId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The year, month and day of a well child visit. [CEDS Element: Well Child Screening Received Date, ID:001631]' ,
	@level0type=N'SCHEMA',@level0name=N'dbo',
	@level1type=N'TABLE',@level1name=N'ELChildHealth',
	@level2type=N'COLUMN',@level2name=N'WellChildScreeningReceivedDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The individual well child visit scheduled according to the AAP recommended periodicity schedule. [CEDS Element: Scheduled Well Child Screening, ID:001623]' ,
	@level0type=N'SCHEMA',@level0name=N'dbo',
	@level1type=N'TABLE',@level1name=N'ELChildHealth',
	@level2type=N'COLUMN',@level2name=N'RefScheduledWellChildScreeningId'
GO

PRINT N'	EL Child Services'
GO
PRINT N'		Early Childhood Education and Assistance Program Eligibility (001591)'
GO
PRINT N'		Eligibility Priority Points (001618)'
GO
PRINT N'		Reason for Declined Services (001488)'
GO
PRINT N'		Service Date (001635)'
GO
PRINT N'		Early Childhood Services Offered (001553)'
GO
PRINT N'		Early Childhood Services Received (000321)'
GO
PRINT N'		Early Learning Service Type (001604)'
GO

CREATE TABLE [dbo].[ELChildService](
	[OrganizationPersonRoleId] [int] NOT NULL,
	[ECEAPEligibility] [bit] NULL,
	[EligibilityPriorityPoints] [nvarchar](100) NULL,
	[ReasonForDeclinedServices] [nvarchar](max) NULL,
	[ServiceDate] [date] NULL,
	[RefEarlyChildhoodServicesOfferedId] [int] NULL,
	[RefEarlyChildhoodServicesReceivedId] [int] NULL,
	[RefELServiceTypeId] [int] NULL,
 CONSTRAINT [PK_ELChildService] PRIMARY KEY CLUSTERED
(
	[OrganizationPersonRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[ELChildService]  WITH CHECK ADD  CONSTRAINT [FK_ELChildService_OrgPersonRole] FOREIGN KEY([OrganizationPersonRoleId])
REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId])
GO

ALTER TABLE [dbo].[ELChildService] CHECK CONSTRAINT [FK_ELChildService_OrgPersonRole]
GO

ALTER TABLE [dbo].[ELChildService]  WITH CHECK
  ADD CONSTRAINT [FK_ELChildService_RefEarlyChildhoodServicesOffered]
  FOREIGN KEY([RefEarlyChildhoodServicesOfferedId]) REFERENCES [dbo].[RefEarlyChildhoodServices] ([RefEarlyChildhoodServicesId])
GO

ALTER TABLE [dbo].[ELChildService] CHECK CONSTRAINT [FK_ELChildService_RefEarlyChildhoodServicesOffered]
GO

ALTER TABLE [dbo].[ELChildService]  WITH CHECK
  ADD CONSTRAINT [FK_ELChildService_RefEarlyChildhoodServicesReceived]
  FOREIGN KEY([RefEarlyChildhoodServicesReceivedId]) REFERENCES [dbo].[RefEarlyChildhoodServices] ([RefEarlyChildhoodServicesId])
GO

ALTER TABLE [dbo].[ELChildService] CHECK CONSTRAINT [FK_ELChildService_RefEarlyChildhoodServicesReceived]
GO

ALTER TABLE [dbo].[ELChildService]  WITH CHECK
  ADD CONSTRAINT [FK_ELChildService_RefELServiceType]
  FOREIGN KEY([RefELServiceTypeId]) REFERENCES [dbo].[RefELServiceType] ([RefELServiceTypeId])
GO

ALTER TABLE [dbo].[ELChildService] CHECK CONSTRAINT [FK_ELChildService_RefELServiceType]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from OrganizationPersonRole' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ELChildService', @level2type=N'COLUMN',@level2name=N'OrganizationPersonRoleId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Denotes whether the family member can receive Early Childhood Education and Assistance Program (ECEAP) information for the child in question. [CEDS Element: Early Childhood Education and Assistance Program Eligibility, ID:001591]' ,
	@level0type=N'SCHEMA',@level0name=N'dbo',
	@level1type=N'TABLE',@level1name=N'ELChildService',
	@level2type=N'COLUMN',@level2name=N'ECEAPEligibility'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Priority points used to determine eligibility and placement order [CEDS Element: Eligibility Priority Points, ID:001618]' ,
	@level0type=N'SCHEMA',@level0name=N'dbo',
	@level1type=N'TABLE',@level1name=N'ELChildService',
	@level2type=N'COLUMN',@level2name=N'EligibilityPriorityPoints'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The reason given for declining the recommended services. [CEDS Element: Reason for Declined Services, ID:001488]' ,
	@level0type=N'SCHEMA',@level0name=N'dbo',
	@level1type=N'TABLE',@level1name=N'ELChildService',
	@level2type=N'COLUMN',@level2name=N'ReasonForDeclinedServices'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The year, month, and day on which a service was provided. [CEDS Element: Service Date, ID:001635]' ,
	@level0type=N'SCHEMA',@level0name=N'dbo',
	@level1type=N'TABLE',@level1name=N'ELChildService',
	@level2type=N'COLUMN',@level2name=N'ServiceDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A type of service offered by an organization that adapts the curriculum, materials, or instruction for students identified as needing additional resources. [CEDS Element: Early Childhood Services Offered, ID:001553]' ,
	@level0type=N'SCHEMA',@level0name=N'dbo',
	@level1type=N'TABLE',@level1name=N'ELChildService',
	@level2type=N'COLUMN',@level2name=N'RefEarlyChildhoodServicesOfferedId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The types of service that adapts the curriculum, materials, or instruction for students identified as needing additional resources. [CEDS Element: Early Childhood Services Received, ID:000321]' ,
	@level0type=N'SCHEMA',@level0name=N'dbo',
	@level1type=N'TABLE',@level1name=N'ELChildService',
	@level2type=N'COLUMN',@level2name=N'RefEarlyChildhoodServicesReceivedId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A type of service provided to a child. [CEDS Element: Early Learning Service Type, ID:001604]' ,
	@level0type=N'SCHEMA',@level0name=N'dbo',
	@level1type=N'TABLE',@level1name=N'ELChildService',
	@level2type=N'COLUMN',@level2name=N'RefELServiceTypeId'
GO

PRINT N'	EL Child Services Application'
GO
PRINT N'		Early Learning Application Identifier (001597)'
GO
PRINT N'		Application Date (000323)'
GO
PRINT N'		Early Learning Enrollment Application Document Identifier (001593)'
GO
PRINT N'		Early Learning Enrollment Application Document Name (001594)'
GO
PRINT N'		Early Learning Enrollment Application Document Type (001595)'
GO
PRINT N'		Early Learning Application Required Document (001599)'
GO
PRINT N'		Early Learning Enrollment Application Verification Date (001592)'
GO
PRINT N'		Early Learning Enrollment Application Verification Reason Type (001600)'
GO
PRINT N'		Site Preference Rank (001627)'
GO

CREATE TABLE [dbo].[ELChildServicesApplication](
	[OrganizationPersonRoleId] [int] NOT NULL,
	[ELApplicationIdentifier] [nvarchar](40) NULL,
	[ApplicationDate] [date] NULL,
	[ELEnrollmentApplicationDocumentIdentifier] [nvarchar](40) NULL,
	[ELEnrollmentApplicationDocumentName] [nvarchar](60) NULL,
	[ELEnrollmentApplicationDocumentType] [nvarchar](100) NULL,
	[ELApplicationRequiredDocument] [bit] NULL,
	[ELEnrollmentApplicationVerificationDate] [date] NULL,
	[ELEnrollmentApplicationVerificationReasonType] [nvarchar](100) NULL,
	[SitePreferenceRank] [nvarchar](300) NULL,
 CONSTRAINT [PK_ELChildServicesApplication] PRIMARY KEY CLUSTERED
(
	[OrganizationPersonRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[ELChildServicesApplication]  WITH CHECK ADD  CONSTRAINT [FK_ELChildServicesApplication_OrgPersonRole] FOREIGN KEY([OrganizationPersonRoleId])
REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId])
GO

ALTER TABLE [dbo].[ELChildServicesApplication] CHECK CONSTRAINT [FK_ELChildServicesApplication_OrgPersonRole]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from OrganizationPersonRole' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ELChildServicesApplication', @level2type=N'COLUMN',@level2name=N'OrganizationPersonRoleId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The year, month and day on which an individual  application is received by the organization. [CEDS Element: Application Date, ID:000323]' ,
	@level0type=N'SCHEMA',@level0name=N'dbo',
	@level1type=N'TABLE',@level1name=N'ELChildServicesApplication',
	@level2type=N'COLUMN',@level2name=N'ApplicationDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier for the application for enrollment or direct services filled out on behalf of a child [CEDS Element: Early Learning Application Identifier, ID:001597]' ,
	@level0type=N'SCHEMA',@level0name=N'dbo',
	@level1type=N'TABLE',@level1name=N'ELChildServicesApplication',
	@level2type=N'COLUMN',@level2name=N'ELApplicationIdentifier'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifies a specific document required for enrollment. [CEDS Element: Early Learning Application Required Document, ID:001599]' ,
	@level0type=N'SCHEMA',@level0name=N'dbo',
	@level1type=N'TABLE',@level1name=N'ELChildServicesApplication',
	@level2type=N'COLUMN',@level2name=N'ELApplicationRequiredDocument'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier for an enrollment application document record. [CEDS Element: Early Learning Enrollment Application Document Identifier, ID:001593]' ,
	@level0type=N'SCHEMA',@level0name=N'dbo',
	@level1type=N'TABLE',@level1name=N'ELChildServicesApplication',
	@level2type=N'COLUMN',@level2name=N'ELEnrollmentApplicationDocumentIdentifier'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Document name for an enrollment application document record. [CEDS Element: Early Learning Enrollment Application Document Name, ID:001594]' ,
	@level0type=N'SCHEMA',@level0name=N'dbo',
	@level1type=N'TABLE',@level1name=N'ELChildServicesApplication',
	@level2type=N'COLUMN',@level2name=N'ELEnrollmentApplicationDocumentName'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Document type for an enrollment application document record. [CEDS Element: Early Learning Enrollment Application Document Type, ID:001595]' ,
	@level0type=N'SCHEMA',@level0name=N'dbo',
	@level1type=N'TABLE',@level1name=N'ELChildServicesApplication',
	@level2type=N'COLUMN',@level2name=N'ELEnrollmentApplicationDocumentType'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date the required document was verified for the enrollment application [CEDS Element: Early Learning Enrollment Application Verification Date, ID:001592]' ,
	@level0type=N'SCHEMA',@level0name=N'dbo',
	@level1type=N'TABLE',@level1name=N'ELChildServicesApplication',
	@level2type=N'COLUMN',@level2name=N'ELEnrollmentApplicationVerificationDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifies the reason for verification of enrollment application information [CEDS Element: Early Learning Enrollment Application Verification Reason Type, ID:001600]' ,
	@level0type=N'SCHEMA',@level0name=N'dbo',
	@level1type=N'TABLE',@level1name=N'ELChildServicesApplication',
	@level2type=N'COLUMN',@level2name=N'ELEnrollmentApplicationVerificationReasonType'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The applicant preference that the family has for the program sites. [CEDS Element: Site Preference Rank, ID:001627]' ,
	@level0type=N'SCHEMA',@level0name=N'dbo',
	@level1type=N'TABLE',@level1name=N'ELChildServicesApplication',
	@level2type=N'COLUMN',@level2name=N'SitePreferenceRank'
GO

PRINT N'	EL Organization Finance'
GO
PRINT N'		Early Learning Federal Funding Type (001328)'
GO
PRINT N'		Early Learning Local Revenue Source (001603)'
GO
PRINT N'		Early Learning Other Federal Funding Sources (001335)'
GO
PRINT N'		Early Learning State Revenue Source (001605)'
GO
PRINT N'		Billable Basis Type (001582)'
GO
PRINT N'		Reimbursement Type (001622)'
GO

CREATE TABLE [dbo].[ELOrganizationFunds](
	[OrganizationId] [int] NOT NULL,
	[RefELFederalFundingTypeId] [int] NULL,
	[RefELLocalRevenueSourceId] [int] NULL,
	[RefELOtherFederalFundingSourcesId] [int] NULL,
	[RefELStateRevenueSourceId] [int] NULL,
	[RefBillableBasisTypeId] [int] NULL,
	[RefReimbursementTypeId] [int] NULL,
 CONSTRAINT [PK_ELOrganizationFunds] PRIMARY KEY CLUSTERED
(
	[OrganizationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[ELOrganizationFunds]  WITH CHECK ADD  CONSTRAINT [FK_ELOrganizationFunds_Organization] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[ELOrganizationFunds] CHECK CONSTRAINT [FK_ELOrganizationFunds_Organization]
GO

ALTER TABLE [dbo].[ELOrganizationFunds]  WITH CHECK
  ADD CONSTRAINT [FK_ELOrganizationFunds_RefELFederalFundingType]
  FOREIGN KEY([RefELFederalFundingTypeId]) REFERENCES [dbo].[RefELFederalFundingType] ([RefELFederalFundingTypeId])
GO

ALTER TABLE [dbo].[ELOrganizationFunds] CHECK CONSTRAINT [FK_ELOrganizationFunds_RefELFederalFundingType]
GO

ALTER TABLE [dbo].[ELOrganizationFunds]  WITH CHECK
  ADD CONSTRAINT [FK_ELOrganizationFunds_RefELLocalRevenueSource]
  FOREIGN KEY([RefELLocalRevenueSourceId]) REFERENCES [dbo].[RefELLocalRevenueSource] ([RefELLocalRevenueSourceId])
GO

ALTER TABLE [dbo].[ELOrganizationFunds] CHECK CONSTRAINT [FK_ELOrganizationFunds_RefELLocalRevenueSource]
GO

ALTER TABLE [dbo].[ELOrganizationFunds]  WITH CHECK
  ADD CONSTRAINT [FK_ELOrganizationFunds_RefELOtherFederalFundingSources]
  FOREIGN KEY([RefELOtherFederalFundingSourcesId]) REFERENCES [dbo].[RefELOtherFederalFundingSources] ([RefELOtherFederalFundingSourcesId])
GO

ALTER TABLE [dbo].[ELOrganizationFunds] CHECK CONSTRAINT [FK_ELOrganizationFunds_RefELOtherFederalFundingSources]
GO

ALTER TABLE [dbo].[ELOrganizationFunds]  WITH CHECK
  ADD CONSTRAINT [FK_ELOrganizationFunds_RefELStateRevenueSource]
  FOREIGN KEY([RefELStateRevenueSourceId]) REFERENCES [dbo].[RefELStateRevenueSource] ([RefELStateRevenueSourceId])
GO

ALTER TABLE [dbo].[ELOrganizationFunds] CHECK CONSTRAINT [FK_ELOrganizationFunds_RefELStateRevenueSource]
GO

ALTER TABLE [dbo].[ELOrganizationFunds]  WITH CHECK
  ADD CONSTRAINT [FK_ELOrganizationFunds_RefBillableBasisType]
  FOREIGN KEY([RefBillableBasisTypeId]) REFERENCES [dbo].[RefBillableBasisType] ([RefBillableBasisTypeId])
GO

ALTER TABLE [dbo].[ELOrganizationFunds] CHECK CONSTRAINT [FK_ELOrganizationFunds_RefBillableBasisType]
GO

ALTER TABLE [dbo].[ELOrganizationFunds]  WITH CHECK
  ADD CONSTRAINT [FK_ELOrganizationFunds_RefReimbursementType]
  FOREIGN KEY([RefReimbursementTypeId]) REFERENCES [dbo].[RefReimbursementType] ([RefReimbursementTypeId])
GO

ALTER TABLE [dbo].[ELOrganizationFunds] CHECK CONSTRAINT [FK_ELOrganizationFunds_RefReimbursementType]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ELOrganizationFunds', @level2type=N'COLUMN',@level2name=N'OrganizationId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Federal source, even if administered by state or local, that contributes to the EL program. [CEDS Element: Early Learning Federal Funding Type, ID:001328]' ,
	@level0type=N'SCHEMA',@level0name=N'dbo',
	@level1type=N'TABLE',@level1name=N'ELOrganizationFunds',
	@level2type=N'COLUMN',@level2name=N'RefELFederalFundingTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Funds that originate at the local level, and not from the state or federal level, that contribute to EL program. [CEDS Element: Early Learning Local Revenue Source, ID:001603]' ,
	@level0type=N'SCHEMA',@level0name=N'dbo',
	@level1type=N'TABLE',@level1name=N'ELOrganizationFunds',
	@level2type=N'COLUMN',@level2name=N'RefELLocalRevenueSourceId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The other contributing funding sources. [CEDS Element: Early Learning Other Federal Funding Sources, ID:001335]' ,
	@level0type=N'SCHEMA',@level0name=N'dbo',
	@level1type=N'TABLE',@level1name=N'ELOrganizationFunds',
	@level2type=N'COLUMN',@level2name=N'RefELOtherFederalFundingSourcesId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N' Funds that originate at the State, and not from a federal or local source, that contribute to EL program. [CEDS Element: Early Learning State Revenue Source, ID:001605]' ,
	@level0type=N'SCHEMA',@level0name=N'dbo',
	@level1type=N'TABLE',@level1name=N'ELOrganizationFunds',
	@level2type=N'COLUMN',@level2name=N'RefELStateRevenueSourceId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The event/action that results in a billable action. [CEDS Element: Billable Basis Type, ID:001582]' ,
	@level0type=N'SCHEMA',@level0name=N'dbo',
	@level1type=N'TABLE',@level1name=N'ELOrganizationFunds',
	@level2type=N'COLUMN',@level2name=N'RefBillableBasisTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A billable basis which defines payment. This is how state agencies/programs move funding to the local provider/agency. [CEDS Element: Reimbursement Type, ID:001622]' ,
	@level0type=N'SCHEMA',@level0name=N'dbo',
	@level1type=N'TABLE',@level1name=N'ELOrganizationFunds',
	@level2type=N'COLUMN',@level2name=N'RefReimbursementTypeId'
GO

PRINT N'	EL Service Partners'
GO
PRINT N'		Service Partner Name (001625)'
GO
PRINT N'		Service Partner Description (001624)'
GO
PRINT N'		Memorandum of Understanding End Date (001614)'
GO
PRINT N'		Memorandum of Understanding Start Date (001615)'
GO

CREATE TABLE [dbo].[ELServicePartner](
	[OrganizationId] [int] NOT NULL,
	[ServicePartnerName] [nvarchar](100) NULL,
	[ServicePartnerDescription] [nvarchar](300) NULL,
	[MemorandumOfUnderstandingEndDate] [date] NULL,
	[MemorandumOfUnderstandingStartDate] [date] NULL,
 CONSTRAINT [PK_ELServicePartner] PRIMARY KEY CLUSTERED
(
	[OrganizationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[ELServicePartner]  WITH CHECK ADD  CONSTRAINT [FK_ELServicePartner_Organization] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[ELServicePartner] CHECK CONSTRAINT [FK_ELServicePartner_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ELServicePartner', @level2type=N'COLUMN',@level2name=N'OrganizationId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of a non-person entity such as an organization, institution, agency or business, that partners with the Early Learning Organization to provide services to enrolled children/families. [CEDS Element: Service Partner Name, ID:001625]' ,
	@level0type=N'SCHEMA',@level0name=N'dbo',
	@level1type=N'TABLE',@level1name=N'ELServicePartner',
	@level2type=N'COLUMN',@level2name=N'ServicePartnerName'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A description of the type of services that the partner organization provides. [CEDS Element: Service Partner Description, ID:001624]' ,
	@level0type=N'SCHEMA',@level0name=N'dbo',
	@level1type=N'TABLE',@level1name=N'ELServicePartner',
	@level2type=N'COLUMN',@level2name=N'ServicePartnerDescription'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date that a Memorandum of Understanding between the Early Learning Organization and the Service Partner is determined to expire. [CEDS Element: Memorandum of Understanding End Date, ID:001614]' ,
	@level0type=N'SCHEMA',@level0name=N'dbo',
	@level1type=N'TABLE',@level1name=N'ELServicePartner',
	@level2type=N'COLUMN',@level2name=N'MemorandumOfUnderstandingEndDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The effective date that a Memorandum of Understanding between the Early Learning Organization and the Service Partner Organization is effective. [CEDS Element: Memorandum of Understanding Start Date, ID:001615]' ,
	@level0type=N'SCHEMA',@level0name=N'dbo',
	@level1type=N'TABLE',@level1name=N'ELServicePartner',
	@level2type=N'COLUMN',@level2name=N'MemorandumOfUnderstandingStartDate'
GO

PRINT N'	K12 Student Activity'
GO
PRINT N'		Activity Time Involved (001527)'
GO
PRINT N'		Activity Time Measurement Type (001528)'
GO

CREATE TABLE [dbo].[K12StudentActivity](
	[OrganizationPersonRoleId] [int] NOT NULL,
	[ActivityTimeInvolved] [decimal](9,2) NULL,
	[RefActivityTimeMeasurementTypeId] [int] NULL,
 CONSTRAINT [PK_K12StudentActivity] PRIMARY KEY CLUSTERED
(
	[OrganizationPersonRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[K12StudentActivity]  WITH CHECK ADD  CONSTRAINT [FK_K12StudentActivity_OrgPersonRole] FOREIGN KEY([OrganizationPersonRoleId])
REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId])
GO

ALTER TABLE [dbo].[K12StudentActivity] CHECK CONSTRAINT [FK_K12StudentActivity_OrgPersonRole]
GO

ALTER TABLE [dbo].[K12StudentActivity]  WITH CHECK
  ADD CONSTRAINT [FK_K12StudentActivity_RefActivityTimeMeasurementType]
  FOREIGN KEY([RefActivityTimeMeasurementTypeId]) REFERENCES [dbo].[RefActivityTimeMeasurementType] ([RefActivityTimeMeasurementTypeId])
GO

ALTER TABLE [dbo].[K12StudentActivity] CHECK CONSTRAINT [FK_K12StudentActivity_RefActivityTimeMeasurementType]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from OrganizationPersonRole' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'K12StudentActivity', @level2type=N'COLUMN',@level2name=N'OrganizationPersonRoleId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The amount of time the student participated in the events and procedures of an activity, such as a co-curricular or extra-curricular activity that is offered at an education institution. [CEDS Element: Activity Time Involved, ID:001527]' ,
	@level0type=N'SCHEMA',@level0name=N'dbo',
	@level1type=N'TABLE',@level1name=N'K12StudentActivity',
	@level2type=N'COLUMN',@level2name=N'ActivityTimeInvolved'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of measurement for the amount of time the student participated in the events and procedures of an activity, such as a co-curricular or extra-curricular activity that is offered at an education institution. [CEDS Element: Activity Time Measurement Type, ID:001528]' ,
	@level0type=N'SCHEMA',@level0name=N'dbo',
	@level1type=N'TABLE',@level1name=N'K12StudentActivity',
	@level2type=N'COLUMN',@level2name=N'RefActivityTimeMeasurementTypeId'
GO

PRINT N'	Person Military'
GO
PRINT N'		Military Active Student Indicator (001577)'
GO
PRINT N'		Military Connected Student Indicator (001576)'
GO
PRINT N'		Military Veteran Student Indicator (001578)'
GO

CREATE TABLE [dbo].[PersonMilitary](
	[PersonId] [int] NOT NULL,
	[RefMilitaryActiveStudentIndicatorId] [int] NULL,
	[RefMilitaryConnectedStudentIndicatorId] [int] NULL,
	[RefMilitaryVeteranStudentIndicatorId] [int] NULL,
 CONSTRAINT [PK_PersonMilitary] PRIMARY KEY CLUSTERED
(
	[PersonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[PersonMilitary]  WITH CHECK ADD  CONSTRAINT [FK_PersonMilitary_Person] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([PersonId])
GO

ALTER TABLE [dbo].[PersonMilitary] CHECK CONSTRAINT [FK_PersonMilitary_Person]
GO

ALTER TABLE [dbo].[PersonMilitary]  WITH CHECK
  ADD CONSTRAINT [FK_PersonMilitary_RefMilitaryActiveStudentIndicator]
  FOREIGN KEY([RefMilitaryActiveStudentIndicatorId]) REFERENCES [dbo].[RefMilitaryActiveStudentIndicator] ([RefMilitaryActiveStudentIndicatorId])
GO

ALTER TABLE [dbo].[PersonMilitary] CHECK CONSTRAINT [FK_PersonMilitary_RefMilitaryActiveStudentIndicator]
GO

ALTER TABLE [dbo].[PersonMilitary]  WITH CHECK
  ADD CONSTRAINT [FK_PersonMilitary_RefMilitaryConnectedStudentIndicator]
  FOREIGN KEY([RefMilitaryConnectedStudentIndicatorId]) REFERENCES [dbo].[RefMilitaryConnectedStudentIndicator] ([RefMilitaryConnectedStudentIndicatorId])
GO

ALTER TABLE [dbo].[PersonMilitary] CHECK CONSTRAINT [FK_PersonMilitary_RefMilitaryConnectedStudentIndicator]
GO

ALTER TABLE [dbo].[PersonMilitary]  WITH CHECK
  ADD CONSTRAINT [FK_PersonMilitary_RefMilitaryVeteranStudentIndicator]
  FOREIGN KEY([RefMilitaryVeteranStudentIndicatorId]) REFERENCES [dbo].[RefMilitaryVeteranStudentIndicator] ([RefMilitaryVeteranStudentIndicatorId])
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Person.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PersonMilitary', @level2type=N'COLUMN',@level2name=N'PersonId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the student is currently serving on Active Duty, in the National Guard, or in the Reserve components of the United States military services [CEDS Element: Military Active Student Indicator, ID:001577]' ,
	@level0type=N'SCHEMA',@level0name=N'dbo',
	@level1type=N'TABLE',@level1name=N'PersonMilitary',
	@level2type=N'COLUMN',@level2name=N'RefMilitaryActiveStudentIndicatorId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the student’s parent or guardian is on Active Duty, in the National Guard, or in the Reserve components of the United States military services [CEDS Element: Military Connected Student Indicator, ID:001576]' ,
	@level0type=N'SCHEMA',@level0name=N'dbo',
	@level1type=N'TABLE',@level1name=N'PersonMilitary',
	@level2type=N'COLUMN',@level2name=N'RefMilitaryConnectedStudentIndicatorId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the student is a veteran who served on Active Duty, in the National Guard, or in the Reserve components of the United States military services [CEDS Element: Military Veteran Student Indicator, ID:001578]' ,
	@level0type=N'SCHEMA',@level0name=N'dbo',
	@level1type=N'TABLE',@level1name=N'PersonMilitary',
	@level2type=N'COLUMN',@level2name=N'RefMilitaryVeteranStudentIndicatorId'
GO

PRINT N'	Program'
GO
PRINT N'		Credits Required (001574)'
GO

CREATE TABLE [dbo].[Program](
	[OrganizationId] [int] NOT NULL,
	[CreditsRequired] [decimal](9,2) NULL,
 CONSTRAINT [PK_Program] PRIMARY KEY CLUSTERED
(
	[OrganizationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Program]  WITH CHECK ADD  CONSTRAINT [FK_Program_Organization] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[Program] CHECK CONSTRAINT [FK_Program_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Program', @level2type=N'COLUMN',@level2name=N'OrganizationId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total number of credits required for a student to graduate from the school of enrollment or complete a program. [CEDS Element: Credits Required, ID:001574]' ,
	@level0type=N'SCHEMA',@level0name=N'dbo',
	@level1type=N'TABLE',@level1name=N'Program',
	@level2type=N'COLUMN',@level2name=N'CreditsRequired'
GO



PRINT N'	Assessment Result Rubric Criterion Result'
GO

CREATE TABLE [dbo].[AssessmentResultRubricCriterionResult](
	[AssessmentResultRubricCriterionResultId] [int] IDENTITY(1,1) NOT NULL,
	[AssessmentResultId] [int] NOT NULL,
	[RubricCriterionLevelId] [int] NOT NULL,
 CONSTRAINT [PK_AssessmentResultRubricCriterionResult] PRIMARY KEY CLUSTERED 
(
	[AssessmentResultRubricCriterionResultId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_AssessmentResult_RubricCriterionLevel] UNIQUE NONCLUSTERED 
(
	[AssessmentResultId] ASC,
	[RubricCriterionLevelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[AssessmentResultRubricCriterionResult]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentResultRubricCriterionResult_AssessmentResult] FOREIGN KEY([AssessmentResultId])
REFERENCES [dbo].[AssessmentResult] ([AssessmentResultId])
GO

ALTER TABLE [dbo].[AssessmentResultRubricCriterionResult] CHECK CONSTRAINT [FK_AssessmentResultRubricCriterionResult_AssessmentResult]
GO

ALTER TABLE [dbo].[AssessmentResultRubricCriterionResult]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentResultRubricCriterionResult_RubricCriterionLevel] FOREIGN KEY([RubricCriterionLevelId])
REFERENCES [dbo].[RubricCriterionLevel] ([RubricCriterionLevelId])
GO

ALTER TABLE [dbo].[AssessmentResultRubricCriterionResult] CHECK CONSTRAINT [FK_AssessmentResultRubricCriterionResult_RubricCriterionLevel]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AssessmentResultRubricCriterionResult', @level2type=N'COLUMN',@level2name=N'AssessmentResultRubricCriterionResultId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign key - AssessmentResult.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AssessmentResultRubricCriterionResult', @level2type=N'COLUMN',@level2name=N'AssessmentResultId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign key - RubricCriterionLevel.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AssessmentResultRubricCriterionResult', @level2type=N'COLUMN',@level2name=N'RubricCriterionLevelId'
GO

PRINT N'	EL Child Individualized Program'
GO
PRINT N'		IDEA IEP Status (001501)'
GO

CREATE TABLE [dbo].[ELChildIndividualizedProgram](
	[PersonId] [int] NOT NULL,
	[RefIDEAIEPStatusId] [int] NULL,
	[IndividualizedProgramId] [int] NULL,
 CONSTRAINT [PK_ELChildIndividualizedProgram] PRIMARY KEY CLUSTERED 
(
	[PersonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[ELChildIndividualizedProgram]  WITH CHECK ADD  CONSTRAINT [FK_ELChildIndividualizedProgram_Person] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([PersonId])
GO

ALTER TABLE [dbo].[ELChildIndividualizedProgram] CHECK CONSTRAINT [FK_ELChildIndividualizedProgram_Person]
GO

ALTER TABLE [dbo].[ELChildIndividualizedProgram]  WITH CHECK ADD  CONSTRAINT [FK_ELChildIndividualizedProgram_RefIDEAIEPStatus] FOREIGN KEY([RefIDEAIEPStatusId])
REFERENCES [dbo].[RefIDEAIEPStatus] ([RefIDEAIEPStatusId])
GO

ALTER TABLE [dbo].[ELChildIndividualizedProgram] CHECK CONSTRAINT [FK_ELChildIndividualizedProgram_RefIDEAIEPStatus]
GO

ALTER TABLE [dbo].[ELChildIndividualizedProgram]  WITH CHECK ADD  CONSTRAINT [FK_ELChildIndividualizedProgram_IndividualizedProgram] FOREIGN KEY([IndividualizedProgramId])
REFERENCES [dbo].[IndividualizedProgram] ([IndividualizedProgramId])
GO

ALTER TABLE [dbo].[ELChildIndividualizedProgram] CHECK CONSTRAINT [FK_ELChildIndividualizedProgram_IndividualizedProgram]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Person.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ELChildIndividualizedProgram', @level2type=N'COLUMN',@level2name=N'PersonId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The status of an individualized services plan for a specified reporting period or on a specified date. [CEDS Element: IDEA IEP Status, ID:001501]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ELChildIndividualizedProgram', @level2type=N'COLUMN',@level2name=N'RefIDEAIEPStatusId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign key - IndividualizedProgram' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ELChildIndividualizedProgram', @level2type=N'COLUMN',@level2name=N'IndividualizedProgramId'
GO

PRINT N'	K12 Student Graduation Plan'
GO

CREATE TABLE [dbo].[K12StudentGraduationPlan](
	[OrganizationPersonRoleId] [int] NOT NULL,
	[K12CourseId] [int] NOT NULL,
	[CreditsRequired] [decimal](9,2) NULL,
	[RefSCEDCourseSubjectAreaId] [int] NULL,
	[RefGradeLevelWhenCourseTakenId] [int] NULL,
CONSTRAINT [PK_K12StudentGraduationPlan] PRIMARY KEY CLUSTERED 
(
	[OrganizationPersonRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[K12StudentGraduationPlan]  WITH CHECK ADD  CONSTRAINT [FK_K12StudentGraduationPlan_OrganizationPerson] FOREIGN KEY([OrganizationPersonRoleId])
REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId])
GO

ALTER TABLE [dbo].[K12StudentGraduationPlan] CHECK CONSTRAINT [FK_K12StudentGraduationPlan_OrganizationPerson]
GO

ALTER TABLE [dbo].[K12StudentGraduationPlan]  WITH CHECK ADD  CONSTRAINT [FK_K12StudentGraduationPlan_K12Course] FOREIGN KEY([K12CourseId])
REFERENCES [dbo].[K12Course] ([OrganizationId])
GO

ALTER TABLE [dbo].[K12StudentGraduationPlan] CHECK CONSTRAINT [FK_K12StudentGraduationPlan_K12Course]
GO

ALTER TABLE [dbo].[K12StudentGraduationPlan]  WITH CHECK ADD  CONSTRAINT [FK_K12StudentGraduationPlan_RefSCEDCourseSubjectArea] FOREIGN KEY([RefSCEDCourseSubjectAreaId])
REFERENCES [dbo].[RefSCEDCourseSubjectArea] ([RefSCEDCourseSubjectAreaId])
GO

ALTER TABLE [dbo].[K12StudentGraduationPlan] CHECK CONSTRAINT [FK_K12StudentGraduationPlan_RefSCEDCourseSubjectArea]
GO

ALTER TABLE [dbo].[K12StudentGraduationPlan]  WITH CHECK ADD  CONSTRAINT [FK_K12StudentGraduationPlan_RefGradeLevel] FOREIGN KEY([RefGradeLevelWhenCourseTakenId])
REFERENCES [dbo].[RefGradeLevel] ([RefGradeLevelId])
GO

ALTER TABLE [dbo].[K12StudentGraduationPlan] CHECK CONSTRAINT [FK_K12StudentGraduationPlan_RefGradeLevel]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Inherited surrogate key from OrganizationPersonRole' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'K12StudentGraduationPlan', @level2type=N'COLUMN',@level2name=N'OrganizationPersonRoleId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign key - K12Course.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'K12StudentGraduationPlan', @level2type=N'COLUMN',@level2name=N'K12CourseId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total number of credits required for a student to graduate from the school of enrollment or complete a program. [CEDS Element: Credits Required, ID:001574]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'K12StudentGraduationPlan', @level2type=N'COLUMN',@level2name=N'CreditsRequired'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The intended major subject area of the education course. [CEDS Element: School Courses for the Exchange of Data Course Subject Area, ID:001518]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'K12StudentGraduationPlan', @level2type=N'COLUMN',@level2name=N'RefSCEDCourseSubjectAreaId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Student''s grade level at time of course. [CEDS Element: Grade Level When Course Taken, ID:000125]  (Foreign key - RefGradeLevel)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'K12StudentGraduationPlan', @level2type=N'COLUMN',@level2name=N'RefGradeLevelWhenCourseTakenId'
GO

PRINT N'Element name changes'
GO


PRINT N'	Assessment Result Date Created (000971)'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The date on which the assessment result was generated. [CEDS Element: Assessment Result Date Created, ID:000971]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'AssessmentResult', 
	@level2type=N'COLUMN',@level2name=N'DateCreated'
GO

PRINT N'	Assessment Result Date Updated (000970)'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The most recent date that the result was calculated/updated.  The value should be the same as Assessment Result Date Created if the subtest has only been scored once, but may be different if the score was recalculated with a different result. [CEDS Element: Assessment Result Date Updated, ID:000970]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'AssessmentResult', 
	@level2type=N'COLUMN',@level2name=N'DateUpdated'
GO

PRINT N'	Assessment Result Descriptive Feedback (000890)'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The formative descriptive feedback that was given to a learner based on a scored/evaluated portion of an assessment as recorded in the result entity. [CEDS Element: Assessment Result Descriptive Feedback, ID:000890]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'AssessmentResult', 
	@level2type=N'COLUMN',@level2name=N'DescriptiveFeedback'
GO

PRINT N'	Assessment Result Descriptive Feedback Source (001092)'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'Identifies the source of the descriptive feedback that was given to a learner based on a scored/evaluated portion of an assessment. May indicate if this is teacher, scorer, or system generated feedback. Values for this attribute would be determined by the assessment program. [CEDS Element: Assessment Result Descriptive Feedback Source, ID:001092]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'AssessmentResult', 
	@level2type=N'COLUMN',@level2name=N'DescriptiveFeedbackSource'
GO

PRINT N'	Assessment Result Diagnostic Statement (001219)'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'A statement intended for use by education professionals, using professional terminology, to interpret learner needs based on the scored/evaluated portion of an assessment.  This statement may inform Descriptive Feedback given to the learner. [CEDS Element: Assessment Result Diagnostic Statement, ID:001219]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'AssessmentResult', 
	@level2type=N'COLUMN',@level2name=N'DiagnosticStatement'
GO

PRINT N'	Assessment Result Included in Adequate Yearly Progress Calculation (000576)'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'An indication of whether a proficiency score on the state assessment was included in the state’s calculation of adequate yearly progress (AYP). [CEDS Element: Assessment Result Included in Adequate Yearly Progress Calculation, ID:000576]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'AssessmentResult', 
	@level2type=N'COLUMN',@level2name=N'IncludedInAypCalculation'
GO

PRINT N'	Assessment Result Number of Responses (001009)'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The number of responses that are included with the Student Score Set. Responses are those items that were attempted (partially or fully answered) by the student and not necessarily the number of items in the assessment (which can be determined from the assessment object). [CEDS Element: Assessment Result Number of Responses, ID:001009]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'AssessmentResult', 
	@level2type=N'COLUMN',@level2name=N'NumberOfResponses'
GO

PRINT N'	Assessment Result Preliminary Indicator (001007)'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'If this score is preliminary, then this attribute value should be set.  Preliminary scores may be provided for early use by the assessment program or user while final scoring is occurring. [CEDS Element: Assessment Result Preliminary Indicator, ID:001007]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'AssessmentResult', 
	@level2type=N'COLUMN',@level2name=N'PreliminaryIndicator'
GO

PRINT N'	Assessment Result Pretest Outcome (000572)'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The results of a pre-test in academic subjects. [CEDS Element: Assessment Result Pretest Outcome, ID:000572]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'AssessmentResult', 
	@level2type=N'COLUMN',@level2name=N'RefAssessmentPretestOutcomeId'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The results of a pre-test in academic subjects. [CEDS Element: Assessment Result Pretest Outcome, ID:000572]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefAssessmentPretestOutcome' 
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The results of a pre-test in academic subjects. [CEDS Element: Assessment Result Pretest Outcome, ID:000572]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefAssessmentPretestOutcome', 
	@level2type=N'COLUMN',@level2name=N'Description'
GO

PRINT N'	Assessment Result Score Value (000245)'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'A meaningful raw score, derived score, or statistical expression of the performance of a person on an assessment. The type of result is indicated by the Assessment Score Metric Type element. The results can be expressed as a number, percentile, range, level, etc. The score relates to all scored items or a sub test scoring one aspect of performance on the test. This value may or may not correspond to one or more Performance Levels. [CEDS Element: Assessment Result Score Value, ID:000245]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'AssessmentResult', 
	@level2type=N'COLUMN',@level2name=N'ScoreValue'
GO

PRINT N'	Assessment Score Metric Type (000369)'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The specific method used to report the performance and achievement of the assessment. This is the metric that is being used to derive the scores. [CEDS Element: Assessment Score Metric Type, ID:000369]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'AssessmentResult', 
	@level2type=N'COLUMN',@level2name=N'RefScoreMetricTypeId'
GO

EXEC sys.sp_rename @objname = N'dbo.AssessmentSubtest.ScoreMetricType', @newname = 'RefScoreMetricTypeId', @objtype = 'COLUMN'
GO

ALTER TABLE [dbo].[AssessmentSubtest] ALTER COLUMN  [RefScoreMetricTypeId] [int] NULL
GO

ALTER TABLE [dbo].[AssessmentSubtest]  WITH CHECK 
  ADD CONSTRAINT [FK_AssessmentSubtest_RefScoreMetricType]
  FOREIGN KEY([RefScoreMetricTypeId]) REFERENCES [dbo].[RefScoreMetricType] ([RefScoreMetricTypeId])
GO

ALTER TABLE [dbo].[AssessmentSubtest] CHECK CONSTRAINT [FK_AssessmentSubtest_RefScoreMetricType]
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The specific method used to report the performance and achievement of the assessment. This is the metric that is being used to derive the scores. [CEDS Element: Assessment Score Metric Type, ID:000369]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'AssessmentSubtest', 
	@level2type=N'COLUMN',@level2name=N'RefScoreMetricTypeId'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The specific method used to report the performance and achievement of the assessment. This is the metric that is being used to derive the scores. [CEDS Element: Assessment Score Metric Type, ID:000369]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefScoreMetricType' 
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The specific method used to report the performance and achievement of the assessment. This is the metric that is being used to derive the scores. [CEDS Element: Assessment Score Metric Type, ID:000369]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefScoreMetricType', 
	@level2type=N'COLUMN',@level2name=N'Description'
GO

PRINT N'	Career-Technical-Adult Education Displaced Homemaker Indicator (000084)'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'A person who ; (A) (i) has worked primarily without remuneration to care for a home and family, and for that reason has diminished marketable skills;    (ii) has been dependent on the income of another family member but is no longer supported by that income; or    (iii) is a parent whose youngest dependent child will become ineligible to receive assistance under part A of title IV of the Social Security Act (42 U.S.C. 601 et seq.) not later than 2 years after the date on which the parent applies for assistance under such title; and (B)   is unemployed or underemployed and is experiencing difficulty in obtaining or upgrading employment. [CEDS Element: Career-Technical-Adult Education Displaced Homemaker Indicator, ID:000084]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ProgramParticipationAE', 
	@level2type=N'COLUMN',@level2name=N'DisplacedHomemakerIndicator'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'A person who ; (A) (i) has worked primarily without remuneration to care for a home and family, and for that reason has diminished marketable skills;    (ii) has been dependent on the income of another family member but is no longer supported by that income; or    (iii) is a parent whose youngest dependent child will become ineligible to receive assistance under part A of title IV of the Social Security Act (42 U.S.C. 601 et seq.) not later than 2 years after the date on which the parent applies for assistance under such title; and (B)   is unemployed or underemployed and is experiencing difficulty in obtaining or upgrading employment. [CEDS Element: Career-Technical-Adult Education Displaced Homemaker Indicator, ID:000084]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ProgramParticipationCte', 
	@level2type=N'COLUMN',@level2name=N'DisplacedHomemakerIndicator'
GO

PRINT N'	Date of Transition Plan (001367)'
GO

EXEC sys.sp_rename @objname = N'dbo.ELChildIDEA.PartCToBDateOfTransitionPlanStepsOrServices', @newname = 'DateOfTransitionPlan', @objtype = 'COLUMN'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The date transition steps and services were added to the individualized service plan. [CEDS Element: Date of Transition Plan, ID:001367]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ELChildIDEA', 
	@level2type=N'COLUMN',@level2name=N'DateOfTransitionPlan'
GO

PRINT N'	Early Childhood Program Enrollment Type (000829)'
GO

EXEC sys.sp_rename @objname = N'dbo.EarlyChildhoodProgramTypeOffered.RefEarlyChildhoodProgramTypeId', @newname = 'RefEarlyChildhoodProgramEnrollmentTypeId', @objtype = 'COLUMN'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The system outlining activities and procedures based on a set of required services and standards in which the child is enrolled. [CEDS Element: Early Childhood Program Enrollment Type, ID:000829]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'EarlyChildhoodProgramTypeOffered', 
	@level2type=N'COLUMN',@level2name=N'RefEarlyChildhoodProgramEnrollmentTypeId'
GO

EXEC sys.sp_rename @objname = N'dbo.RefEarlyChildhoodProgramType', @newname = 'RefEarlyChildhoodProgramEnrollmentType'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The system outlining activities and procedures based on a set of required services and standards in which the child is enrolled. [CEDS Element: Early Childhood Program Enrollment Type, ID:000829]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefEarlyChildhoodProgramEnrollmentType' 
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The system outlining activities and procedures based on a set of required services and standards in which the child is enrolled. [CEDS Element: Early Childhood Program Enrollment Type, ID:000829]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefEarlyChildhoodProgramEnrollmentType', 
	@level2type=N'COLUMN',@level2name=N'Description'
GO

PRINT N'	Financial Account Balance Sheet Code (001353)'
GO

EXEC sys.sp_rename @objname = N'dbo.FinancialAccount.RefFinancialBalanceSheetAccountCodeId', @newname = 'RefFinancialAccountBalanceSheetCodeId', @objtype = 'COLUMN'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'Balance sheet accounts and statement of net asset accounts are used to track financial transactions for each fund. Such financial statements report assets, liabilities, and equity accounts only and are considered "snapshots" of how these accounts stand as of a certain point in time.  Based on codes specified in the NCES Handbook "Financial Accounting for Local and State School Systems: 2009 Edition." [CEDS Element: Financial Account Balance Sheet Code, ID:001353]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'FinancialAccount', 
	@level2type=N'COLUMN',@level2name=N'RefFinancialAccountBalanceSheetCodeId'
GO

EXEC sys.sp_rename @objname = N'dbo.RefFinancialBalanceSheetAccountCode', @newname = 'RefFinancialAccountBalanceSheetCode'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'Balance sheet accounts and statement of net asset accounts are used to track financial transactions for each fund. Such financial statements report assets, liabilities, and equity accounts only and are considered "snapshots" of how these accounts stand as of a certain point in time.  Based on codes specified in the NCES Handbook "Financial Accounting for Local and State School Systems: 2009 Edition." [CEDS Element: Financial Account Balance Sheet Code, ID:001353]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefFinancialAccountBalanceSheetCode' 
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'Balance sheet accounts and statement of net asset accounts are used to track financial transactions for each fund. Such financial statements report assets, liabilities, and equity accounts only and are considered "snapshots" of how these accounts stand as of a certain point in time.  Based on codes specified in the NCES Handbook "Financial Accounting for Local and State School Systems: 2009 Edition." [CEDS Element: Financial Account Balance Sheet Code, ID:001353]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefFinancialAccountBalanceSheetCode', 
	@level2type=N'COLUMN',@level2name=N'Description'
GO

PRINT N'	Financial Account Revenue Code (001468)'
GO

EXEC sys.sp_rename @objname = N'dbo.RefFinancialRevenueAccountCode', @newname = 'RefFinancialAccountRevenueCode'
GO

EXEC sys.sp_rename @objname = N'dbo.RefFinancialAccountRevenueCode.RefFinancialRevenueAccountCodeId', @newname = 'RefFinancialAccountRevenueCodeId', @objtype = 'COLUMN'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'Codes are for recording revenue and other receivables by source. Based on codes specified in the NCES Handbook "Financial Accounting for Local and State School Systems: 2009 Edition" [CEDS Element: Financial Account Revenue Code, ID:001468]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefFinancialAccountRevenueCode', 
	@level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'Codes are for recording revenue and other receivables by source. Based on codes specified in the NCES Handbook "Financial Accounting for Local and State School Systems: 2009 Edition" [CEDS Element: Financial Account Revenue Code, ID:001468]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefFinancialAccountRevenueCode' 
GO

ALTER TABLE [dbo].[FinancialAccount] ADD [RefFinancialAccountRevenueCodeId] [int] NULL
GO

ALTER TABLE [dbo].[FinancialAccount]  WITH CHECK 
  ADD CONSTRAINT [FK_FinancialAccount_RefFinancialAccountRevenueCode]
  FOREIGN KEY([RefFinancialAccountRevenueCodeId]) REFERENCES [dbo].[RefFinancialAccountRevenueCode] ([RefFinancialAccountRevenueCodeId])
GO

ALTER TABLE [dbo].[FinancialAccount] CHECK CONSTRAINT [FK_FinancialAccount_RefFinancialAccountRevenueCode]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Codes are for recording revenue and other receivables by source. Based on codes specified in the NCES Handbook "Financial Accounting for Local and State School Systems: 2009 Edition" [CEDS Element: Financial Account Revenue Code, ID:001468]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'FinancialAccount', 
	@level2type=N'COLUMN',@level2name=N'RefFinancialAccountRevenueCodeId'
GO

PRINT N'	IDEA Part C to Part B Notification Date (001500)'
GO

EXEC sys.sp_rename @objname = N'dbo.ELChildIDEA.PartCToBSharingNotificationDate', @newname = 'IDEAPartCToPartBNotificationDate', @objtype = 'COLUMN'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The date that notification is provided to the State Education Agency (SEA) and local education agency (LEA) of residence for a child potentially eligible for Part B (619) preschool services. [CEDS Element: IDEA Part C to Part B Notification Date, ID:001500]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ELChildIDEA', 
	@level2type=N'COLUMN',@level2name=N'IDEAPartCToPartBNotificationDate'
GO

PRINT N'	IDEA Part C to Part B Notification Opt Out Date (001364)'
GO

EXEC sys.sp_rename @objname = N'dbo.ELChildIDEA.PartCToBParentNotificationOptOutDate', @newname = 'IDEAPartCToPartBNotificationOptOutDate', @objtype = 'COLUMN'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The date that parents of a child potentially eligible for Part B preschool services opt out of the impending notification to the local education agency. [CEDS Element: IDEA Part C to Part B Notification Opt Out Date, ID:001364]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ELChildIDEA', 
	@level2type=N'COLUMN',@level2name=N'IDEAPartCToPartBNotificationOptOutDate'
GO

PRINT N'	IDEA Part C to Part B Notification Opt Out Indicator (001363)'
GO

EXEC sys.sp_rename @objname = N'dbo.ELChildIDEA.PartCToBParentNotificationOptOutInd', @newname = 'IDEAPartCToPartBNotificationOptOutIndicator', @objtype = 'COLUMN'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'Indicates whether parents of a child potentially eligibel for Part B preschool services have opted out of the impending notification to the local education agency. [CEDS Element: IDEA Part C to Part B Notification Opt Out Indicator, ID:001363]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ELChildIDEA', 
	@level2type=N'COLUMN',@level2name=N'IDEAPartCToPartBNotificationOptOutIndicator'
GO

PRINT N'	K12 Staff Classification (000087)'
GO

EXEC sys.sp_rename @objname = N'dbo.K12StaffAssignment.RefEducationStaffClassificationId', @newname = 'RefK12StaffClassificationId', @objtype = 'COLUMN'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The titles of employment, official status, or rank of education staff. [CEDS Element: K12 Staff Classification, ID:000087]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'K12StaffAssignment', 
	@level2type=N'COLUMN',@level2name=N'RefK12StaffClassificationId'
GO

EXEC sys.sp_rename @objname = N'dbo.K12StaffEmployment.RefEducationStaffClassificationId', @newname = 'RefK12StaffClassificationId', @objtype = 'COLUMN'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The titles of employment, official status, or rank of education staff. [CEDS Element: K12 Staff Classification, ID:000087]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'K12StaffEmployment', 
	@level2type=N'COLUMN',@level2name=N'RefK12StaffClassificationId'
GO

EXEC sys.sp_rename @objname = N'dbo.RefEducationStaffClassification', @newname = 'RefK12StaffClassification'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The titles of employment, official status, or rank of education staff. [CEDS Element: K12 Staff Classification, ID:000087]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefK12StaffClassification' 
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The titles of employment, official status, or rank of education staff. [CEDS Element: K12 Staff Classification, ID:000087]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefK12StaffClassification', 
	@level2type=N'COLUMN',@level2name=N'Description'
GO

PRINT N'	Learner Action Date Time (000937)'
GO

EXEC sys.sp_rename @objname = N'dbo.LearnerAction.Date', @newname = 'LearnerActionDateTime', @objtype = 'COLUMN'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The date and time at which the action was taken. [CEDS Element: Learner Action Date Time, ID:000937]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'LearnerAction', 
	@level2type=N'COLUMN',@level2name=N'LearnerActionDateTime'
GO

PRINT N'	Learning Resource License URL (000921)'
GO

EXEC sys.sp_rename @objname = N'dbo.LearningResource.UseRightsUrl', @newname = 'LearningResourceLicenseURL', @objtype = 'COLUMN'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The URL where the owner specifies permissions for using the resource. [CEDS Element: Learning Resource License URL, ID:000921]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'LearningResource', 
	@level2type=N'COLUMN',@level2name=N'LearningResourceLicenseURL'
GO

PRINT N'	Learning Standard Item Association Identifier URI (000871)'
GO

EXEC sys.sp_rename @objname = N'dbo.LearningStandardItemAssociation.Identifier', @newname = 'LearningStandardItemAssociationIdentifierURI', @objtype = 'COLUMN'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'A URI that establishes uniqueness of an association between a learning standard and another learning standard or other objects such as learning resources. [CEDS Element: Learning Standard Item Association Identifier URI, ID:000871]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'LearningStandardItemAssociation', 
	@level2type=N'COLUMN',@level2name=N'LearningStandardItemAssociationIdentifierURI'
GO

PRINT N'	Number of School-age Education Postsecondary Credit Hours (000816)'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The number of college course credit hours an individual has successfully completed that are related to K-12 education, parks and recreation, and juvenile justice. [CEDS Element: Number of School-age Education Postsecondary Credit Hours, ID:000816]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ELStaffEducation', 
	@level2type=N'COLUMN',@level2name=N'SchoolAgeEducationPSCredits'
GO

PRINT N'	Professional Development Activity Approved Purpose (001433)'
GO

EXEC sys.sp_rename @objname = N'dbo.ProfessionalDevelopmentActivity.RefPDActivityApprovedForId', @newname = 'RefPDActivityApprovedPurposeId', @objtype = 'COLUMN'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The purposes for which an activity is approved. [CEDS Element: Professional Development Activity Approved Purpose, ID:001433]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ProfessionalDevelopmentActivity', 
	@level2type=N'COLUMN',@level2name=N'RefPDActivityApprovedPurposeId'
GO

EXEC sys.sp_rename @objname = N'dbo.RefPDActivityApprovedFor', @newname = 'RefPDActivityApprovedPurpose'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The purposes for which an activity is approved. [CEDS Element: Professional Development Activity Approved Purpose, ID:001433]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefPDActivityApprovedPurpose' 
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The purposes for which an activity is approved. [CEDS Element: Professional Development Activity Approved Purpose, ID:001433]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefPDActivityApprovedPurpose', 
	@level2type=N'COLUMN',@level2name=N'Description'
GO

PRINT N'	Professional Development Session Language (001388)'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The language in which the professional development session is delivered. [CEDS Element: Professional Development Session Language, ID:001388]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ProfessionalDevelopmentSession', 
	@level2type=N'COLUMN',@level2name=N'RefLanguageId'
GO

PRINT N'	Referral Type Received (001485)'
GO

EXEC sys.sp_rename @objname = N'dbo.PersonReferral.ReferralType', @newname = 'ReferralTypeReceived', @objtype = 'COLUMN'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'A type of service that a child or family has received a referral for. [CEDS Element: Referral Type Received, ID:001485]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PersonReferral', 
	@level2type=N'COLUMN',@level2name=N'ReferralTypeReceived'
GO

PRINT N'	School Courses for the Exchange of Data Course Code (001517)'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The five-digit SCED code. The first two-digits of the code represent the Course Subject Area and the next three digits identify the course number. These identifiers are fairly general but provide enough specificity to identify the course''s topic and to distinguish it from other courses in that subject area. [CEDS Element: School Courses for the Exchange of Data Course Code, ID:001517]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'CteCourse', 
	@level2type=N'COLUMN',@level2name=N'SCEDCourseCode'
GO

PRINT N'	School Courses for the Exchange of Data Course Code (001517)'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The five-digit SCED code. The first two-digits of the code represent the Course Subject Area and the next three digits identify the course number. These identifiers are fairly general but provide enough specificity to identify the course''s topic and to distinguish it from other courses in that subject area. [CEDS Element: School Courses for the Exchange of Data Course Code, ID:001517]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'K12Course', 
	@level2type=N'COLUMN',@level2name=N'SCEDCourseCode'
GO

PRINT N'	School Courses for the Exchange of Data Course Level (001516)'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The course''s level of rigor. [CEDS Element: School Courses for the Exchange of Data Course Level, ID:001516]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'CteCourse', 
	@level2type=N'COLUMN',@level2name=N'RefSCEDCourseLevelId'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The course''s level of rigor. [CEDS Element: School Courses for the Exchange of Data Course Level, ID:001516]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'K12Course', 
	@level2type=N'COLUMN',@level2name=N'RefSCEDCourseLevelId'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The course''s level of rigor. [CEDS Element: School Courses for the Exchange of Data Course Level, ID:001516]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefSCEDCourseLevel' 
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The course''s level of rigor. [CEDS Element: School Courses for the Exchange of Data Course Level, ID:001516]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefSCEDCourseLevel', 
	@level2type=N'COLUMN',@level2name=N'Description'
GO

PRINT N'	School Courses for the Exchange of Data Course Subject Area (001518)'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The intended major subject area of the education course. [CEDS Element: School Courses for the Exchange of Data Course Subject Area, ID:001518]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'CteCourse', 
	@level2type=N'COLUMN',@level2name=N'RefSCEDCourseSubjectAreaId'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The intended major subject area of the education course. [CEDS Element: School Courses for the Exchange of Data Course Subject Area, ID:001518]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'K12Course', 
	@level2type=N'COLUMN',@level2name=N'RefSCEDCourseSubjectAreaId'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The intended major subject area of the education course. [CEDS Element: School Courses for the Exchange of Data Course Subject Area, ID:001518]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefSCEDCourseSubjectArea' 
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The intended major subject area of the education course. [CEDS Element: School Courses for the Exchange of Data Course Subject Area, ID:001518]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefSCEDCourseSubjectArea', 
	@level2type=N'COLUMN',@level2name=N'Description'
GO

PRINT N'	School Courses for the Exchange of Data Grade Span (001480)'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The grade span for which the course is appropriate. [CEDS Element: School Courses for the Exchange of Data Grade Span, ID:001480]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'K12Course', 
	@level2type=N'COLUMN',@level2name=N'SCEDGradeSpan'
GO

PRINT N'	School Courses for the Exchange of Data Sequence of Course (000250)'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'Where a specific course lies when it is part of a consecutive sequence of courses. This element should be interpreted as "part ''n'' of ''m'' parts. [CEDS Element: School Courses for the Exchange of Data Sequence of Course, ID:000250]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'Course', 
	@level2type=N'COLUMN',@level2name=N'SCEDSequenceOfCourse'
GO

PRINT N'	Student Course Section Grade Earned (000124)'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'A final indicator of student performance in a course section as submitted by the instructor. [CEDS Element: Student Course Section Grade Earned, ID:000124]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'K12StudentCourseSection', 
	@level2type=N'COLUMN',@level2name=N'GradeEarned'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'A final indicator of student performance in a course section as submitted by the instructor. [CEDS Element: Student Course Section Grade Earned, ID:000124]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'K12StudentCourseSectionMark', 
	@level2type=N'COLUMN',@level2name=N'GradeEarned'
GO

PRINT N'	Transition Conference Date (001365)'
GO

EXEC sys.sp_rename @objname = N'dbo.ELChildIDEA.PartCToBDateOfTransitionConference', @newname = 'TransitionConferenceDate', @objtype = 'COLUMN'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The date of the transition conference from IDEA Part C to Part B 619 or another early learning program or service. [CEDS Element: Transition Conference Date, ID:001365]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ELChildIDEA', 
	@level2type=N'COLUMN',@level2name=N'TransitionConferenceDate'
GO

PRINT N'	Transition Conference Decline Date (001366)'
GO

EXEC sys.sp_rename @objname = N'dbo.ELChildIDEA.PartCToBDateOfTransitionConferenceDecline', @newname = 'TransitionConferenceDeclineDate', @objtype = 'COLUMN'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The date the parents declined approval for the transition conference from IDEA Part C to Part B 619 or another early learning program or service. [CEDS Element: Transition Conference Decline Date, ID:001366]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ELChildIDEA', 
	@level2type=N'COLUMN',@level2name=N'TransitionConferenceDeclineDate'
GO

PRINT N'	Work-based Learning Opportunity Type (001499)'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The type of work-based learning opportunity a student participated in. [CEDS Element: Work-based Learning Opportunity Type, ID:001499]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'K12Course', 
	@level2type=N'COLUMN',@level2name=N'RefWorkbasedLearningOpportunityTypeId'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The type of work-based learning opportunity a student participated in. [CEDS Element: Work-based Learning Opportunity Type, ID:001499]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ProgramParticipationAE', 
	@level2type=N'COLUMN',@level2name=N'RefWorkbasedLearningOpportunityTypeId'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The type of work-based learning opportunity a student participated in. [CEDS Element: Work-based Learning Opportunity Type, ID:001499]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ProgramParticipationCte', 
	@level2type=N'COLUMN',@level2name=N'RefWorkbasedLearningOpportunityTypeId'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The type of work-based learning opportunity a student participated in. [CEDS Element: Work-based Learning Opportunity Type, ID:001499]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PSStudentProgram', 
	@level2type=N'COLUMN',@level2name=N'RefWorkbasedLearningOpportunityTypeId'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The type of work-based learning opportunity a student participated in. [CEDS Element: Work-based Learning Opportunity Type, ID:001499]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefWorkbasedLearningOpportunityType' 
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The type of work-based learning opportunity a student participated in. [CEDS Element: Work-based Learning Opportunity Type, ID:001499]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefWorkbasedLearningOpportunityType', 
	@level2type=N'COLUMN',@level2name=N'Description'
GO

PRINT N'	EL Child Transition Plan'
GO

EXEC sys.sp_rename @objname = N'dbo.ELChildIDEA', @newname = 'ELChildTransitionPlan'
GO

PRINT N'Format changes for Identifer column types, alter to nvarchar(40)'
GO


PRINT N'	Assessment Identifier (001067)'
GO

ALTER TABLE [dbo].[Assessment] ALTER COLUMN  [Identifier] nvarchar(40) NULL
GO

PRINT N'	Assessment Asset Identifier (001198)'
GO

ALTER TABLE [dbo].[AssessmentAsset] ALTER COLUMN  [Identifier] nvarchar(40) NULL
GO

PRINT N'	Assessment Item Bank Identifier (001181)'
GO

ALTER TABLE [dbo].[AssessmentForm] ALTER COLUMN  [AssessmentItemBankIdentifier] nvarchar(40) NULL
GO

PRINT N'	Assessment Item Bank Identifier (001181)'
GO

ALTER TABLE [dbo].[AssessmentFormSection] ALTER COLUMN  [AssessmentItemBankIdentifier] nvarchar(40) NULL
GO

PRINT N'	Assessment Form Section Identifier (001191)'
GO

ALTER TABLE [dbo].[AssessmentFormSection] ALTER COLUMN  [Identifier] nvarchar(40) NULL
GO

PRINT N'	Assessment Item Bank Identifier (001181)'
GO

ALTER TABLE [dbo].[AssessmentItem] ALTER COLUMN  [AssessmentItemBankIdentifier] nvarchar(40) NULL
GO

PRINT N'	Assessment Item Identifier (000630)'
GO

ALTER TABLE [dbo].[AssessmentItem] ALTER COLUMN  [Identifier] nvarchar(40) NULL
GO

PRINT N'	Assessment Performance Level Identifier (000717)'
GO

ALTER TABLE [dbo].[AssessmentPerformanceLevel] ALTER COLUMN  [Identifier] nvarchar(40) NULL
GO

PRINT N'	Assessment Registration Test Attempt Identifier (001162)'
GO

ALTER TABLE [dbo].[AssessmentRegistration] ALTER COLUMN  [TestAttemptIdentifier] nvarchar(40) NULL
GO

PRINT N'	Assessment Subtest Identifier (000367)'
GO

ALTER TABLE [dbo].[AssessmentSubtest] ALTER COLUMN  [Identifier] nvarchar(40) NULL
GO

PRINT N'	Authentication Identity Provider Login Identifier (001170)'
GO

ALTER TABLE [dbo].[Authentication] ALTER COLUMN  [LoginIdentifier] nvarchar(40) NULL
GO

PRINT N'	Classroom Identifier (000364)'
GO

ALTER TABLE [dbo].[Classroom] ALTER COLUMN  [ClassroomIdentifier] nvarchar(40) NULL
GO

PRINT N'	Timetable Day Identifier (000523)'
GO

ALTER TABLE [dbo].[CourseSectionSchedule] ALTER COLUMN  [TimeDayIdentifier] nvarchar(40) NULL
GO
 
PRINT N'	Incident Perpetrator Identifier (001370), Incident Victim Identifier (001377), Incident Witness Identifier (001379)'
GO

ALTER TABLE [dbo].[IncidentPerson] ALTER COLUMN  [Identifier] nvarchar(40) NULL
GO

PRINT N'	Learning Standard Item Identifier (000689)'
GO

ALTER TABLE [dbo].[LearningStandardItem] ALTER COLUMN  [Identifier] nvarchar(40) NULL
GO

PRINT N'	Learning Standard Item Parent Identifier (000872)'
GO

ALTER TABLE [dbo].[LearningStandardItem] ALTER COLUMN  [LearningStandardItemParentId] nvarchar(40) NULL
GO

PRINT N'	Learning Standard Item Previous Version Identifier (001524)'
GO

ALTER TABLE [dbo].[LearningStandardItem] ALTER COLUMN  [PreviousVersionIdentifier] nvarchar(40) NULL
GO

PRINT N'	Organization Identifier (000826), Class Section Identifier (000978), Course Identifier (000055), Adult Education Service Provider Identifier (001076), Program Identifier (000625), Local Education Agen (See CE)'
GO

ALTER TABLE [dbo].[OrganizationIdentifier] ALTER COLUMN  [Identifier] nvarchar(40) NULL
GO

PRINT N'	Family Identifier (000787)'
GO

ALTER TABLE [dbo].[PersonFamily] ALTER COLUMN  [FamilyIdentifier] nvarchar(40) NULL
GO
 
PRINT N'	Child Identifier (001080), Staff Member Identifier (001070), Student Identifier (001071), Professional Development Instructor Identifier (001444)'
GO

ALTER TABLE [dbo].[PersonIdentifier] ALTER COLUMN  [Identifier] nvarchar(40) NULL
GO

PRINT N'	Professional Development Activity Identifier (000809)'
GO

ALTER TABLE [dbo].[ProfessionalDevelopmentActivity] ALTER COLUMN  [ActivityIdentifier] nvarchar(40) NULL
GO

PRINT N'	Professional Development Session Identifier (001452)'
GO

ALTER TABLE [dbo].[ProfessionalDevelopmentSession] ALTER COLUMN  [SessionIdentifier] nvarchar(40) NULL
GO

PRINT N'	Original Course Identifier (001420)'
GO

ALTER TABLE [dbo].[PsCourse] ALTER COLUMN  [OriginalCourseIdentifier] nvarchar(40) NULL
GO

PRINT N'	Assessment Rubric Identifier (000422)'
GO

ALTER TABLE [dbo].[Rubric] ALTER COLUMN  [Identifier] nvarchar(40) NULL
GO

PRINT N'	Professional Development Activity Identifier (000809)'
GO

ALTER TABLE [dbo].[StaffProfessionalDevelopmentActivity] ALTER COLUMN  [ActivityIdentifier] nvarchar(40) NULL
GO


PRINT N'Format changes'
GO


PRINT N'	Academic Year Designator (000726)'
GO

ALTER TABLE [dbo].[PsStudentAcademicRecord] ALTER COLUMN  [AcademicYearDesignator] [nchar](9) NULL
GO

PRINT N'	Assessment Form Section GUID (000980)'
GO

ALTER TABLE [dbo].[AssessmentFormSection] ALTER COLUMN  [GUID] [nvarchar](40) NULL
GO

PRINT N'	Assessment GUID (000981)'
GO

ALTER TABLE [dbo].[Assessment] ALTER COLUMN  [GUID] [nvarchar](40) NULL
GO

PRINT N'	Assessment Item APIP Response Processing Template URL (001131)'
GO

ALTER TABLE [dbo].[AssessmentItemApip] ALTER COLUMN  [ResponseProcessingTemplateUrl] [nvarchar](300) NULL
GO

PRINT N'	Assessment Rubric URL Reference (000423)'
GO

ALTER TABLE [dbo].[Rubric] ALTER COLUMN  [UrlReference] [nvarchar](300) NULL
GO

PRINT N'	Competency Set Completion Criteria (000877)'
GO

CREATE TABLE [dbo].[RefCompetencySetCompletionCriteria](
   [RefCompetencySetCompletionCriteriaId] [int] IDENTITY(1,1) NOT NULL,
   [Description] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](50) NULL,
   [Definition] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   [SortOrder] [decimal](5,2) NULL,
   CONSTRAINT [PK_RefCompetencySetCompletionCriteria] PRIMARY KEY CLUSTERED ([RefCompetencySetCompletionCriteriaId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefCompetencySetCompletionCriteria]  WITH CHECK ADD CONSTRAINT [FK_RefCompetencySetCompletionCriteria_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefCompetencySetCompletionCriteria] CHECK CONSTRAINT [FK_RefCompetencySetCompletionCriteria_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCompetencySetCompletionCriteria', @level2type=N'COLUMN',@level2name=N'RefCompetencySetCompletionCriteriaId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The criteria for the set of competencies that represent completion or partial completion of a unit, course, program, degree, certification, or other achievement/award. Specifies whether completion requires achievement of all items in the set or some number of items. [CEDS Element: Competency Set Completion Criteria, ID:000877]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCompetencySetCompletionCriteria', @level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCompetencySetCompletionCriteria', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCompetencySetCompletionCriteria', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The criteria for the set of competencies that represent completion or partial completion of a unit, course, program, degree, certification, or other achievement/award. Specifies whether completion requires achievement of all items in the set or some number of items.[CEDS Element: Competency Set Completion Criteria, ID:000877]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCompetencySetCompletionCriteria'
GO

EXEC sys.sp_rename @objname = N'dbo.CompetencySet.CompletionCriteria', @newname = 'RefCompletionCriteriaId', @objtype = 'COLUMN'
GO

ALTER TABLE [dbo].[CompetencySet] ALTER COLUMN [RefCompletionCriteriaId] [int] NULL
GO

ALTER TABLE [dbo].[CompetencySet]  WITH CHECK ADD  CONSTRAINT [FK_CompetencySet_RefCompetencySetCompletionCriteria] FOREIGN KEY([RefCompletionCriteriaId])
REFERENCES [dbo].[RefCompetencySetCompletionCriteria] ([RefCompetencySetCompletionCriteriaId])
GO

ALTER TABLE [dbo].[CompetencySet] CHECK CONSTRAINT [FK_CompetencySet_RefCompetencySetCompletionCriteria]
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The criteria for the set of competencies that represent completion or partial completion of a unit, course, program, degree, certification, or other achievement/award. Specifies whether completion requires achievement of all items in the set or some number of items. [CEDS Element: Competency Set Completion Criteria, ID:000877]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'CompetencySet', 
	@level2type=N'COLUMN',@level2name=N'RefCompletionCriteriaId'
GO

PRINT N'	Early Learning Class Group Curriculum Type (000823)'
GO

ALTER TABLE [dbo].[ELClassSectionService] DROP CONSTRAINT [FK_ELClassSectionService_ELClassGroupCurriculumType]
GO
 
DROP TABLE [dbo].[RefELClassGroupCurriculumType]
GO
 
EXEC sys.sp_rename @objname = N'dbo.ELClassSectionService.RefELClassGroupCurriculumTypeId', @newname = 'ELClassGroupCurriculumType', @objtype = 'COLUMN'
GO

ALTER TABLE [dbo].[ELClassSectionService] ALTER COLUMN  [ELClassGroupCurriculumType] [nvarchar](60) NULL
GO

PRINT N'	Learner Action Date Time (000937)'
GO

ALTER TABLE [dbo].[LearnerAction] ALTER COLUMN  [LearnerActionDateTime] [datetime] NULL
GO

PRINT N'Table rename, spelling'
GO
 
EXEC sys.sp_rename @objname = N'dbo.ELEnrolmentOtherFunding', @newname = 'ELEnrollmentOtherFunding'
GO

ALTER TABLE [dbo].[ELEnrollmentOtherFunding] DROP CONSTRAINT [FK_ELEnrolmentOtherFunding_Person]
GO

ALTER TABLE [dbo].[ELEnrollmentOtherFunding]  WITH CHECK ADD  CONSTRAINT [FK_ELEnrollmentOtherFunding_Person] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([PersonId])
GO

ALTER TABLE [dbo].[ELEnrollmentOtherFunding] CHECK CONSTRAINT [FK_ELEnrollmentOtherFunding_Person]
GO

PRINT N'Increase Ref table Description to 150 for elements with longer descriptions'
GO
 
ALTER TABLE [dbo].[RefAdmissionConsiderationType] ALTER COLUMN [Description] [nvarchar](150) NOT NULL
GO

ALTER TABLE [dbo].[RefAssessmentResultScoreType] ALTER COLUMN [Description] [nvarchar](150) NOT NULL
GO

ALTER TABLE [dbo].[RefLearnerActionType] ALTER COLUMN [Description] [nvarchar](150) NOT NULL
GO

ALTER TABLE [dbo].[RefLearningResourceInteractionMode] ALTER COLUMN [Description] [nvarchar](150) NOT NULL
GO


PRINT N'Index changes'
GO


ALTER TABLE [dbo].[K12LeaTitleIIIProfessionalDevelopment] ADD  CONSTRAINT [IX_K12LeaTitleIIIProfessionalDevelopment] UNIQUE NONCLUSTERED 
(
	[OrganizationId] ASC,
	[RefTitleIIIProfessionalDevelopmentTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

ALTER TABLE [dbo].[K12OrganizationStudentResponsibility] ADD  CONSTRAINT [IX_K12OrganizationStudentResponsibility] UNIQUE NONCLUSTERED 
(
	[OrganizationPersonRoleId] ASC,
	[RefK12ResponsibilityTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

ALTER TABLE [dbo].[AssessmentForm_AssessmentAsset] DROP CONSTRAINT [IX_AssessmentForm_AssessmentAsset]
GO

ALTER TABLE [dbo].[AssessmentForm_AssessmentAsset] ADD  CONSTRAINT [IX_AssessmentForm_AssessmentAsset] UNIQUE NONCLUSTERED 
(
	[AssessmentFormId] ASC,
	[AssessmentAssetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

ALTER TABLE [dbo].[AssessmentSubtest_LearningStandardItem] DROP CONSTRAINT [IX_AssessmentSubtest_LearningStandardItem] 
GO

ALTER TABLE [dbo].[AssessmentSubtest_LearningStandardItem] ALTER COLUMN  [LearningStandardItemId] [int] NOT NULL
GO

ALTER TABLE [dbo].[AssessmentSubtest_LearningStandardItem] ADD  CONSTRAINT [IX_AssessmentSubtest_LearningStandardItem] UNIQUE NONCLUSTERED 
(
	[AssessmentSubtestId] ASC,
	[LearningStandardItemId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO

PRINT N'Foreign Key changes'
GO

ALTER TABLE [dbo].[AssessmentRegistration]  DROP CONSTRAINT [FK_AssessmentRegistration_RefAssessmentGradeLevel] 
GO
 
ALTER TABLE [dbo].[AssessmentRegistration]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentRegistration_RefGradeLevel] FOREIGN KEY([RefGradeLevelWhenAssessedId])
REFERENCES [dbo].[RefGradeLevel] ([RefGradeLevelId])
GO

ALTER TABLE [dbo].[AssessmentRegistration] CHECK CONSTRAINT [FK_AssessmentRegistration_RefGradeLevel]
GO

ALTER TABLE [dbo].[AssessmentRegistration]  DROP CONSTRAINT [FK_AssessmentRegistration_RefAssessmentGradeLevel1] 
GO

ALTER TABLE [dbo].[AssessmentRegistration]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentRegistration_RefGradeLevel1] FOREIGN KEY([RefGradeLevelToBeAssessedId])
REFERENCES [dbo].[RefGradeLevel] ([RefGradeLevelId])
GO

ALTER TABLE [dbo].[AssessmentRegistration] CHECK CONSTRAINT [FK_AssessmentRegistration_RefGradeLevel1]
GO

DROP TABLE [dbo].[RefAssessmentGradeLevel] 
GO

ALTER TABLE [dbo].[Person]  DROP  CONSTRAINT [FK_Person_RefHighestEducationLevelCompleted] 
GO

ALTER TABLE [dbo].[Person]  WITH CHECK ADD  CONSTRAINT [FK_Person_RefEducationLevel] FOREIGN KEY([RefHighestEducationLevelCompletedId])
REFERENCES [dbo].[RefEducationLevel] ([RefEducationLevelId])
GO

ALTER TABLE [dbo].[Person] CHECK CONSTRAINT [FK_Person_RefEducationLevel]
GO

ALTER TABLE [dbo].[PersonFamily]  DROP CONSTRAINT [FK_PersonFamily_RefHighestEducationLevelCompleted] 
GO 

ALTER TABLE [dbo].[PersonFamily]  WITH CHECK ADD  CONSTRAINT [FK_PersonFamily_RefEducationLevel] FOREIGN KEY([RefHighestEducationLevelCompletedId])
REFERENCES [dbo].[RefEducationLevel] ([RefEducationLevelId])
GO

ALTER TABLE [dbo].[PersonFamily] CHECK CONSTRAINT [FK_PersonFamily_RefEducationLevel]
GO

ALTER TABLE [dbo].[PsStudentDemographic]  DROP  CONSTRAINT [FK_PsStudentDemographic_RefHighestEducationLevel]
GO

ALTER TABLE [dbo].[PsStudentDemographic]  WITH CHECK ADD  CONSTRAINT [FK_PsStudentDemographic_RefEducationLevel] FOREIGN KEY([RefPaternalEducationLevelId])
REFERENCES [dbo].[RefEducationLevel] ([RefEducationLevelId])
GO

ALTER TABLE [dbo].[PsStudentDemographic] CHECK CONSTRAINT [FK_PsStudentDemographic_RefEducationLevel]
GO

ALTER TABLE [dbo].[PsStudentDemographic]  DROP  CONSTRAINT [FK_PsStudentDemographic_RefHighestEducationLevel1] 
GO

ALTER TABLE [dbo].[PsStudentDemographic]  WITH CHECK ADD  CONSTRAINT [FK_PsStudentDemographic_RefEducationLevel1] FOREIGN KEY([RefMaternalEducationLevelId])
REFERENCES [dbo].[RefEducationLevel] ([RefEducationLevelId])
GO

ALTER TABLE [dbo].[PsStudentDemographic] CHECK CONSTRAINT [FK_PsStudentDemographic_RefEducationLevel1]
GO

DROP TABLE [dbo].[RefHighestEducationLevelCompleted] 
GO
