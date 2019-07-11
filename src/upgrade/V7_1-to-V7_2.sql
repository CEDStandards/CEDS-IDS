/*    

	Copyright 2019 Common Education Data Standards
	
	Licensed under the Apache License, Version 2.0 (the "License");
	you may not use this file except in compliance with the License.
	You may obtain a copy of the License at
	
	    http://www.apache.org/licenses/LICENSE-2.0
	
	Unless required by applicable law or agreed to in writing, software
	distributed under the License is distributed on an "AS IS" BASIS,
	WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
	See the License for the specific language governing permissions and
	limitations under the License.

	Common Education Data Standards (CEDS)
    Version 7.2
    Integration Data Schema (IDS)
    
	Model database update script
	
    This script updates a IDS version 7.1 model database to version 7.2.  
    

    WARNING!!!!
    This script is intended for use on a model database and should not 
    be used on a database that contains data.
    
    This script contains potentially breaking changes.  Queries are included to preserve data.  However, programming logic should be adjusted were necessary for these changes.

    Search for "WARNING!!!!" through this update script to see said changes and make necessary adjustments before executing.


    The script was generated from a model database 
    hosted on a Microsoft SQL Server 2012 platform.  
    
    Questions on this script can be sent to ceds@ed.gov
    
    More information on the data model is available at the CEDS website:  
    http://ceds.ed.gov
      	  
*/ 

GO
/*
The column [dbo].[K12LeaFederalFunds].[FederalProgramsFundingAllocation] is being dropped, data loss could occur.

The column [dbo].[K12LeaFederalFunds].[FundsTransferAmount] is being dropped, data loss could occur.

The column [dbo].[K12LeaFederalFunds].[LeaTransferabilityOfFunds] is being dropped, data loss could occur.

The column [dbo].[K12LeaFederalFunds].[NumberOfImmigrantProgramSubgrants] is being dropped, data loss could occur.

The column [dbo].[K12LeaFederalFunds].[OrganizationId] is being dropped, data loss could occur.

The column [dbo].[K12LeaFederalFunds].[RefFederalProgramFundingAllocationTypeId] is being dropped, data loss could occur.

The column [dbo].[K12LeaFederalFunds].[RefLeaFundsTransferTypeId] is being dropped, data loss could occur.

The column [dbo].[K12LeaFederalFunds].[RefReapAlternativeFundingStatusId] is being dropped, data loss could occur.

The column [dbo].[K12LeaFederalFunds].[SchoolImprovementAllocation] is being dropped, data loss could occur.

The column [dbo].[K12LeaFederalFunds].[SchoolImprovementReservedPercent] is being dropped, data loss could occur.

The column [dbo].[K12LeaFederalFunds].[SesPerPupilExpenditure] is being dropped, data loss could occur.

The column [dbo].[K12LeaFederalFunds].[OrganizationCalendarSessionId] on table [dbo].[K12LeaFederalFunds] must be added, but the column has no default value and does not allow NULL values. If the table contains data, the ALTER script will not work. To avoid this issue you must either: add a default value to the column, mark it as allowing NULL values, or enable the generation of smart-defaults as a deployment option.
*/

IF EXISTS (select top 1 1 from [dbo].[K12LeaFederalFunds])
    RAISERROR (N'Rows were detected. The schema update is terminating because data loss might occur.', 16, 127) WITH NOWAIT

GO
/*
The column [dbo].[K12School].[RefCharterSchoolApprovalAgencyTypeId] is being dropped, data loss could occur.

The column [dbo].[K12School].[RefCharterSchoolManagementOrganizationTypeId] is being dropped, data loss could occur.
*/

IF EXISTS (select top 1 1 from [dbo].[K12School])
    RAISERROR (N'Rows were detected. The schema update is terminating because data loss might occur.', 16, 127) WITH NOWAIT

GO
/*
The column [dbo].[K12SchoolCorrectiveAction].[OrganizationId] is being dropped, data loss could occur.

The column [dbo].[K12SchoolCorrectiveAction].[K12SchoolId] on table [dbo].[K12SchoolCorrectiveAction] must be added, but the column has no default value and does not allow NULL values. If the table contains data, the ALTER script will not work. To avoid this issue you must either: add a default value to the column, mark it as allowing NULL values, or enable the generation of smart-defaults as a deployment option.
*/

IF EXISTS (select top 1 1 from [dbo].[K12SchoolCorrectiveAction])
    RAISERROR (N'Rows were detected. The schema update is terminating because data loss might occur.', 16, 127) WITH NOWAIT

GO
/*
The column [dbo].[K12SchoolGradeOffered].[OrganizationId] is being dropped, data loss could occur.

The column [dbo].[K12SchoolGradeOffered].[K12SchoolId] on table [dbo].[K12SchoolGradeOffered] must be added, but the column has no default value and does not allow NULL values. If the table contains data, the ALTER script will not work. To avoid this issue you must either: add a default value to the column, mark it as allowing NULL values, or enable the generation of smart-defaults as a deployment option.
*/

IF EXISTS (select top 1 1 from [dbo].[K12SchoolGradeOffered])
    RAISERROR (N'Rows were detected. The schema update is terminating because data loss might occur.', 16, 127) WITH NOWAIT

GO
/*
The column [dbo].[K12SchoolImprovement].[OrganizationId] is being dropped, data loss could occur.

The column [dbo].[K12SchoolImprovement].[K12SchoolId] on table [dbo].[K12SchoolImprovement] must be added, but the column has no default value and does not allow NULL values. If the table contains data, the ALTER script will not work. To avoid this issue you must either: add a default value to the column, mark it as allowing NULL values, or enable the generation of smart-defaults as a deployment option.
*/

IF EXISTS (select top 1 1 from [dbo].[K12SchoolImprovement])
    RAISERROR (N'Rows were detected. The schema update is terminating because data loss might occur.', 16, 127) WITH NOWAIT

GO
/*
The column [dbo].[K12SchoolStatus].[OrganizationId] is being dropped, data loss could occur.

The column [dbo].[K12SchoolStatus].[K12SchoolId] on table [dbo].[K12SchoolStatus] must be added, but the column has no default value and does not allow NULL values. If the table contains data, the ALTER script will not work. To avoid this issue you must either: add a default value to the column, mark it as allowing NULL values, or enable the generation of smart-defaults as a deployment option.
*/

IF EXISTS (select top 1 1 from [dbo].[K12SchoolStatus])
    RAISERROR (N'Rows were detected. The schema update is terminating because data loss might occur.', 16, 127) WITH NOWAIT

GO
/*
The type for column ClassRankingDate in table [dbo].[K12StudentAcademicRecord] is currently  NVARCHAR (10) NULL but is being changed to  DATETIME NULL. Data loss could occur.

The type for column DiplomaOrCredentialAwardDate in table [dbo].[K12StudentAcademicRecord] is currently  NCHAR (7) NULL but is being changed to  DATETIME NULL. Data loss could occur.

The type for column ProjectedGraduationDate in table [dbo].[K12StudentAcademicRecord] is currently  NCHAR (7) NULL but is being changed to  DATETIME NULL. Data loss could occur.
*/

IF EXISTS (select top 1 1 from [dbo].[K12StudentAcademicRecord])
    RAISERROR (N'Rows were detected. The schema update is terminating because data loss might occur.', 16, 127) WITH NOWAIT

GO
/*
The column [dbo].[Organization].[Name] is being dropped, data loss could occur.

The column [dbo].[Organization].[RefOrganizationTypeId] is being dropped, data loss could occur.

The column [dbo].[Organization].[ShortName] is being dropped, data loss could occur.
*/

IF EXISTS (select top 1 1 from [dbo].[Organization])
    RAISERROR (N'Rows were detected. The schema update is terminating because data loss might occur.', 16, 127) WITH NOWAIT

GO
/*
The column OrganizationId on table [dbo].[OrganizationRelationship] must be changed from NULL to NOT NULL. If the table contains data, the ALTER script may not work. To avoid this issue, you must add values to this column for all rows or mark it as allowing NULL values, or enable the generation of smart-defaults as a deployment option.
*/

IF EXISTS (select top 1 1 from [dbo].[OrganizationRelationship])
    RAISERROR (N'Rows were detected. The schema update is terminating because data loss might occur.', 16, 127) WITH NOWAIT

GO
/*
The column [dbo].[Person].[Birthdate] is being dropped, data loss could occur.

The column [dbo].[Person].[BirthdateVerification] is being dropped, data loss could occur.

The column [dbo].[Person].[FirstName] is being dropped, data loss could occur.

The column [dbo].[Person].[GenerationCode] is being dropped, data loss could occur.

The column [dbo].[Person].[HispanicLatinoEthnicity] is being dropped, data loss could occur.

The column [dbo].[Person].[LastName] is being dropped, data loss could occur.

The column [dbo].[Person].[MiddleName] is being dropped, data loss could occur.

The column [dbo].[Person].[Prefix] is being dropped, data loss could occur.

The column [dbo].[Person].[RefHighestEducationLevelCompletedId] is being dropped, data loss could occur.

The column [dbo].[Person].[RefPersonalInformationVerificationId] is being dropped, data loss could occur.

The column [dbo].[Person].[RefProofOfResidencyTypeId] is being dropped, data loss could occur.

The column [dbo].[Person].[RefSexId] is being dropped, data loss could occur.

The column [dbo].[Person].[RefStateOfResidenceId] is being dropped, data loss could occur.

The column [dbo].[Person].[RefTribalAffiliationId] is being dropped, data loss could occur.

The column [dbo].[Person].[RefUSCitizenshipStatusId] is being dropped, data loss could occur.

The column [dbo].[Person].[RefVisaTypeId] is being dropped, data loss could occur.
*/

IF EXISTS (select top 1 1 from [dbo].[Person])
    RAISERROR (N'Rows were detected. The schema update is terminating because data loss might occur.', 16, 127) WITH NOWAIT

GO
/*
The column [dbo].[ProgramParticipationAE].[OrganizationPersonRoleId] is being dropped, data loss could occur.

The column [dbo].[ProgramParticipationAE].[PersonProgramParticipationId] on table [dbo].[ProgramParticipationAE] must be added, but the column has no default value and does not allow NULL values. If the table contains data, the ALTER script will not work. To avoid this issue you must either: add a default value to the column, mark it as allowing NULL values, or enable the generation of smart-defaults as a deployment option.
*/

IF EXISTS (select top 1 1 from [dbo].[ProgramParticipationAE])
    RAISERROR (N'Rows were detected. The schema update is terminating because data loss might occur.', 16, 127) WITH NOWAIT

GO
/*
The column [dbo].[ProgramParticipationCte].[OrganizationPersonRoleId] is being dropped, data loss could occur.

The column [dbo].[ProgramParticipationCte].[PersonProgramParticipationId] on table [dbo].[ProgramParticipationCte] must be added, but the column has no default value and does not allow NULL values. If the table contains data, the ALTER script will not work. To avoid this issue you must either: add a default value to the column, mark it as allowing NULL values, or enable the generation of smart-defaults as a deployment option.
*/

IF EXISTS (select top 1 1 from [dbo].[ProgramParticipationCte])
    RAISERROR (N'Rows were detected. The schema update is terminating because data loss might occur.', 16, 127) WITH NOWAIT

GO
/*
The column [dbo].[ProgramParticipationFoodService].[OrganizationPersonRoleId] is being dropped, data loss could occur.

The column [dbo].[ProgramParticipationFoodService].[PersonProgramParticipationId] on table [dbo].[ProgramParticipationFoodService] must be added, but the column has no default value and does not allow NULL values. If the table contains data, the ALTER script will not work. To avoid this issue you must either: add a default value to the column, mark it as allowing NULL values, or enable the generation of smart-defaults as a deployment option.
*/

IF EXISTS (select top 1 1 from [dbo].[ProgramParticipationFoodService])
    RAISERROR (N'Rows were detected. The schema update is terminating because data loss might occur.', 16, 127) WITH NOWAIT

GO
/*
The column [dbo].[ProgramParticipationMigrant].[OrganizationPersonRoleId] is being dropped, data loss could occur.

The column [dbo].[ProgramParticipationMigrant].[PersonProgramParticipationId] on table [dbo].[ProgramParticipationMigrant] must be added, but the column has no default value and does not allow NULL values. If the table contains data, the ALTER script will not work. To avoid this issue you must either: add a default value to the column, mark it as allowing NULL values, or enable the generation of smart-defaults as a deployment option.
*/

IF EXISTS (select top 1 1 from [dbo].[ProgramParticipationMigrant])
    RAISERROR (N'Rows were detected. The schema update is terminating because data loss might occur.', 16, 127) WITH NOWAIT

GO
/*
The column [dbo].[ProgramParticipationNeglected].[OrganizationPersonRoleId] is being dropped, data loss could occur.

The column [dbo].[ProgramParticipationNeglected].[PersonProgramParticipationId] on table [dbo].[ProgramParticipationNeglected] must be added, but the column has no default value and does not allow NULL values. If the table contains data, the ALTER script will not work. To avoid this issue you must either: add a default value to the column, mark it as allowing NULL values, or enable the generation of smart-defaults as a deployment option.
*/

IF EXISTS (select top 1 1 from [dbo].[ProgramParticipationNeglected])
    RAISERROR (N'Rows were detected. The schema update is terminating because data loss might occur.', 16, 127) WITH NOWAIT

GO
/*
The column [dbo].[ProgramParticipationSpecialEducation].[OrganizationPersonRoleId] is being dropped, data loss could occur.

The column [dbo].[ProgramParticipationSpecialEducation].[PersonProgramParticipationId] on table [dbo].[ProgramParticipationSpecialEducation] must be added, but the column has no default value and does not allow NULL values. If the table contains data, the ALTER script will not work. To avoid this issue you must either: add a default value to the column, mark it as allowing NULL values, or enable the generation of smart-defaults as a deployment option.
*/

IF EXISTS (select top 1 1 from [dbo].[ProgramParticipationSpecialEducation])
    RAISERROR (N'Rows were detected. The schema update is terminating because data loss might occur.', 16, 127) WITH NOWAIT

GO
/*
The column [dbo].[ProgramParticipationTeacherPrep].[OrganizationPersonRoleId] is being dropped, data loss could occur.

The column [dbo].[ProgramParticipationTeacherPrep].[PersonProgramParticipationId] on table [dbo].[ProgramParticipationTeacherPrep] must be added, but the column has no default value and does not allow NULL values. If the table contains data, the ALTER script will not work. To avoid this issue you must either: add a default value to the column, mark it as allowing NULL values, or enable the generation of smart-defaults as a deployment option.
*/

IF EXISTS (select top 1 1 from [dbo].[ProgramParticipationTeacherPrep])
    RAISERROR (N'Rows were detected. The schema update is terminating because data loss might occur.', 16, 127) WITH NOWAIT

GO
/*
The column [dbo].[ProgramParticipationTitleI].[OrganizationPersonRoleId] is being dropped, data loss could occur.

The column [dbo].[ProgramParticipationTitleI].[PersonProgramParticipationId] on table [dbo].[ProgramParticipationTitleI] must be added, but the column has no default value and does not allow NULL values. If the table contains data, the ALTER script will not work. To avoid this issue you must either: add a default value to the column, mark it as allowing NULL values, or enable the generation of smart-defaults as a deployment option.
*/

IF EXISTS (select top 1 1 from [dbo].[ProgramParticipationTitleI])
    RAISERROR (N'Rows were detected. The schema update is terminating because data loss might occur.', 16, 127) WITH NOWAIT

GO
/*
The column [dbo].[ProgramParticipationTitleIIILep].[OrganizationPersonRoleId] is being dropped, data loss could occur.

The column [dbo].[ProgramParticipationTitleIIILep].[PersonProgramParticipationId] on table [dbo].[ProgramParticipationTitleIIILep] must be added, but the column has no default value and does not allow NULL values. If the table contains data, the ALTER script will not work. To avoid this issue you must either: add a default value to the column, mark it as allowing NULL values, or enable the generation of smart-defaults as a deployment option.
*/

IF EXISTS (select top 1 1 from [dbo].[ProgramParticipationTitleIIILep])
    RAISERROR (N'Rows were detected. The schema update is terminating because data loss might occur.', 16, 127) WITH NOWAIT

GO
/*
The column [dbo].[TeacherEducationCredentialExam].[OrganizationPersonRoleId] is being dropped, data loss could occur.

The column [dbo].[TeacherEducationCredentialExam].[ProgramParticipationTeacherPrepId] on table [dbo].[TeacherEducationCredentialExam] must be added, but the column has no default value and does not allow NULL values. If the table contains data, the ALTER script will not work. To avoid this issue you must either: add a default value to the column, mark it as allowing NULL values, or enable the generation of smart-defaults as a deployment option.
*/

IF EXISTS (select top 1 1 from [dbo].[TeacherEducationCredentialExam])
    RAISERROR (N'Rows were detected. The schema update is terminating because data loss might occur.', 16, 127) WITH NOWAIT

GO
/*
The column [dbo].[TeacherStudentDataLinkExclusion].[TeacherOrganizationPersonRoleId] is being dropped, data loss could occur.

The column [dbo].[TeacherStudentDataLinkExclusion].[K12StaffAssignmentId] on table [dbo].[TeacherStudentDataLinkExclusion] must be added, but the column has no default value and does not allow NULL values. If the table contains data, the ALTER script will not work. To avoid this issue you must either: add a default value to the column, mark it as allowing NULL values, or enable the generation of smart-defaults as a deployment option.
*/

IF EXISTS (select top 1 1 from [dbo].[TeacherStudentDataLinkExclusion])
    RAISERROR (N'Rows were detected. The schema update is terminating because data loss might occur.', 16, 127) WITH NOWAIT

GO
/*
The column [dbo].[WorkforceProgramParticipation].[OrganizationPersonRoleId] is being dropped, data loss could occur.

The column [dbo].[WorkforceProgramParticipation].[PersonProgramParticipationId] on table [dbo].[WorkforceProgramParticipation] must be added, but the column has no default value and does not allow NULL values. If the table contains data, the ALTER script will not work. To avoid this issue you must either: add a default value to the column, mark it as allowing NULL values, or enable the generation of smart-defaults as a deployment option.
*/

IF EXISTS (select top 1 1 from [dbo].[WorkforceProgramParticipation])
    RAISERROR (N'Rows were detected. The schema update is terminating because data loss might occur.', 16, 127) WITH NOWAIT

GO
/*
Table [dbo].[K12SeaFederalFundAllocation] is being dropped.  Deployment will halt if the table contains data.
*/

IF EXISTS (select top 1 1 from [dbo].[K12SeaFederalFundAllocation])
    RAISERROR (N'Rows were detected. The schema update is terminating because data loss might occur.', 16, 127) WITH NOWAIT

GO
PRINT N'Dropping [dbo].[FK_AssessmentRegirstration_RefAssessmentForm]...';


GO
ALTER TABLE [dbo].[AssessmentRegistration] DROP CONSTRAINT [FK_AssessmentRegirstration_RefAssessmentForm];


GO
PRINT N'Dropping [dbo].[FK_AssessmentRegistration_AssessmentAdministration]...';


GO
ALTER TABLE [dbo].[AssessmentRegistration] DROP CONSTRAINT [FK_AssessmentRegistration_AssessmentAdministration];


GO
PRINT N'Dropping [dbo].[FK_AssessmentRegistration_CourseSection]...';


GO
ALTER TABLE [dbo].[AssessmentRegistration] DROP CONSTRAINT [FK_AssessmentRegistration_CourseSection];


GO
PRINT N'Dropping [dbo].[FK_AssessmentRegistration_Organization]...';


GO
ALTER TABLE [dbo].[AssessmentRegistration] DROP CONSTRAINT [FK_AssessmentRegistration_Organization];


GO
PRINT N'Dropping [dbo].[FK_AssessmentRegistration_Person]...';


GO
ALTER TABLE [dbo].[AssessmentRegistration] DROP CONSTRAINT [FK_AssessmentRegistration_Person];


GO
PRINT N'Dropping [dbo].[FK_AssessmentRegistration_Person2]...';


GO
ALTER TABLE [dbo].[AssessmentRegistration] DROP CONSTRAINT [FK_AssessmentRegistration_Person2];


GO
PRINT N'Dropping [dbo].[FK_AssessmentRegistration_RefAssessmentParticipationIndicator]...';


GO
ALTER TABLE [dbo].[AssessmentRegistration] DROP CONSTRAINT [FK_AssessmentRegistration_RefAssessmentParticipationIndicator];


GO
PRINT N'Dropping [dbo].[FK_AssessmentRegistration_RefAssessmentPurpose]...';


GO
ALTER TABLE [dbo].[AssessmentRegistration] DROP CONSTRAINT [FK_AssessmentRegistration_RefAssessmentPurpose];


GO
PRINT N'Dropping [dbo].[FK_AssessmentRegistration_RefAssessmentReasonNotCompleting]...';


GO
ALTER TABLE [dbo].[AssessmentRegistration] DROP CONSTRAINT [FK_AssessmentRegistration_RefAssessmentReasonNotCompleting];


GO
PRINT N'Dropping [dbo].[FK_AssessmentRegistration_RefAssessmentReasonNotTested]...';


GO
ALTER TABLE [dbo].[AssessmentRegistration] DROP CONSTRAINT [FK_AssessmentRegistration_RefAssessmentReasonNotTested];


GO
PRINT N'Dropping [dbo].[FK_AssessmentRegistration_RefAssessmentRegistrationCompletionStatus]...';


GO
ALTER TABLE [dbo].[AssessmentRegistration] DROP CONSTRAINT [FK_AssessmentRegistration_RefAssessmentRegistrationCompletionStatus];


GO
PRINT N'Dropping [dbo].[FK_AssessmentRegistration_RefGradeLevel]...';


GO
ALTER TABLE [dbo].[AssessmentRegistration] DROP CONSTRAINT [FK_AssessmentRegistration_RefGradeLevel];


GO
PRINT N'Dropping [dbo].[FK_AssessmentRegistration_RefGradeLevel1]...';


GO
ALTER TABLE [dbo].[AssessmentRegistration] DROP CONSTRAINT [FK_AssessmentRegistration_RefGradeLevel1];


GO
PRINT N'Dropping [dbo].[FK_AssessmentRegistration_RefOrganization1]...';


GO
ALTER TABLE [dbo].[AssessmentRegistration] DROP CONSTRAINT [FK_AssessmentRegistration_RefOrganization1];


GO
PRINT N'Dropping [dbo].[FK_AssessmentRegistration_RefOrganization2]...';


GO
ALTER TABLE [dbo].[AssessmentRegistration] DROP CONSTRAINT [FK_AssessmentRegistration_RefOrganization2];


GO
PRINT N'Dropping [dbo].[FK_AssessmentRegistration_Registration]...';


GO
ALTER TABLE [dbo].[AssessmentRegistration_Accommodation] DROP CONSTRAINT [FK_AssessmentRegistration_Registration];


GO
PRINT N'Dropping [dbo].[FK_AssessmentResult_AssessmentRegistration]...';


GO
ALTER TABLE [dbo].[AssessmentResult] DROP CONSTRAINT [FK_AssessmentResult_AssessmentRegistration];


GO
PRINT N'Dropping [dbo].[FK_LearnerActivity_AssessmentRegistration]...';


GO
ALTER TABLE [dbo].[LearnerActivity] DROP CONSTRAINT [FK_LearnerActivity_AssessmentRegistration];


GO
PRINT N'Dropping [dbo].[FK_AssessmentParticipantSession_AssessmentRegistration]...';


GO
ALTER TABLE [dbo].[AssessmentParticipantSession] DROP CONSTRAINT [FK_AssessmentParticipantSession_AssessmentRegistration];


GO
PRINT N'Dropping [dbo].[FK_K12LEAFederalFunds_K12Lea1]...';


GO
ALTER TABLE [dbo].[K12LeaFederalFunds] DROP CONSTRAINT [FK_K12LEAFederalFunds_K12Lea1];


GO
PRINT N'Dropping [dbo].[FK_K12LEAFederalFunds_REAPAlternativeFundingStatus]...';


GO
ALTER TABLE [dbo].[K12LeaFederalFunds] DROP CONSTRAINT [FK_K12LEAFederalFunds_REAPAlternativeFundingStatus];


GO
PRINT N'Dropping [dbo].[FK_K12LEAFederalFunds_RefLEAFundsTransferType]...';


GO
ALTER TABLE [dbo].[K12LeaFederalFunds] DROP CONSTRAINT [FK_K12LEAFederalFunds_RefLEAFundsTransferType];


GO
PRINT N'Dropping [dbo].[FK_K12LEAFederalFunds_RefRLISProgramUse]...';


GO
ALTER TABLE [dbo].[K12LeaFederalFunds] DROP CONSTRAINT [FK_K12LEAFederalFunds_RefRLISProgramUse];


GO
PRINT N'Dropping [dbo].[FK_OrganizationFederalFunds_RefFederalFundingAllocation]...';


GO
ALTER TABLE [dbo].[K12LeaFederalFunds] DROP CONSTRAINT [FK_OrganizationFederalFunds_RefFederalFundingAllocation];


GO
PRINT N'Dropping [dbo].[FK_K12SchoolCorrectiveAction_K12School]...';


GO
ALTER TABLE [dbo].[K12SchoolCorrectiveAction] DROP CONSTRAINT [FK_K12SchoolCorrectiveAction_K12School];


GO
PRINT N'Dropping [dbo].[FK_K12SchoolCorrectiveAction_RefCorrectiveActionType]...';


GO
ALTER TABLE [dbo].[K12SchoolCorrectiveAction] DROP CONSTRAINT [FK_K12SchoolCorrectiveAction_RefCorrectiveActionType];


GO
PRINT N'Dropping [dbo].[FK_K12SchoolGradeOffered_K12School]...';


GO
ALTER TABLE [dbo].[K12SchoolGradeOffered] DROP CONSTRAINT [FK_K12SchoolGradeOffered_K12School];


GO
PRINT N'Dropping [dbo].[FK_K12SchoolGradeOffered_RefGradeLevel]...';


GO
ALTER TABLE [dbo].[K12SchoolGradeOffered] DROP CONSTRAINT [FK_K12SchoolGradeOffered_RefGradeLevel];


GO
PRINT N'Dropping [dbo].[FK_K12SchoolImprovement_K12School]...';


GO
ALTER TABLE [dbo].[K12SchoolImprovement] DROP CONSTRAINT [FK_K12SchoolImprovement_K12School];


GO
PRINT N'Dropping [dbo].[FK_K12SchoolImprovement_RefSchoolImprovementFunds]...';


GO
ALTER TABLE [dbo].[K12SchoolImprovement] DROP CONSTRAINT [FK_K12SchoolImprovement_RefSchoolImprovementFunds];


GO
PRINT N'Dropping [dbo].[FK_K12SchoolImprovement_RefSchoolImprovementStatus]...';


GO
ALTER TABLE [dbo].[K12SchoolImprovement] DROP CONSTRAINT [FK_K12SchoolImprovement_RefSchoolImprovementStatus];


GO
PRINT N'Dropping [dbo].[FK_K12SchoolImprovement_RefSIGInterventionType]...';


GO
ALTER TABLE [dbo].[K12SchoolImprovement] DROP CONSTRAINT [FK_K12SchoolImprovement_RefSIGInterventionType];


GO
PRINT N'Dropping [dbo].[FK_K12SchoolStatus_K12School]...';


GO
ALTER TABLE [dbo].[K12SchoolStatus] DROP CONSTRAINT [FK_K12SchoolStatus_K12School];


GO
PRINT N'Dropping [dbo].[FK_K12SchoolStatus_RefAlternativeSchoolFocus]...';


GO
ALTER TABLE [dbo].[K12SchoolStatus] DROP CONSTRAINT [FK_K12SchoolStatus_RefAlternativeSchoolFocus];


GO
PRINT N'Dropping [dbo].[FK_K12SchoolStatus_RefInternetAccess]...';


GO
ALTER TABLE [dbo].[K12SchoolStatus] DROP CONSTRAINT [FK_K12SchoolStatus_RefInternetAccess];


GO
PRINT N'Dropping [dbo].[FK_K12SchoolStatus_RefMagnetSpecialProgram]...';


GO
ALTER TABLE [dbo].[K12SchoolStatus] DROP CONSTRAINT [FK_K12SchoolStatus_RefMagnetSpecialProgram];


GO
PRINT N'Dropping [dbo].[FK_K12SchoolStatus_RefNationalSchoolLunchProgramStatus]...';


GO
ALTER TABLE [dbo].[K12SchoolStatus] DROP CONSTRAINT [FK_K12SchoolStatus_RefNationalSchoolLunchProgramStatus];


GO
PRINT N'Dropping [dbo].[FK_K12SchoolStatus_RefRestructuringAction]...';


GO
ALTER TABLE [dbo].[K12SchoolStatus] DROP CONSTRAINT [FK_K12SchoolStatus_RefRestructuringAction];


GO
PRINT N'Dropping [dbo].[FK_K12SchoolStatus_RefTitle1SchoolStatus]...';


GO
ALTER TABLE [dbo].[K12SchoolStatus] DROP CONSTRAINT [FK_K12SchoolStatus_RefTitle1SchoolStatus];


GO
PRINT N'Dropping [dbo].[FK_K12SchoolStatus_RefVirtualSchoolStatus]...';


GO
ALTER TABLE [dbo].[K12SchoolStatus] DROP CONSTRAINT [FK_K12SchoolStatus_RefVirtualSchoolStatus];


GO
PRINT N'Dropping [dbo].[FK_K12EnrollmentMember_OrganizationPerson]...';


GO
ALTER TABLE [dbo].[K12StudentEnrollment] DROP CONSTRAINT [FK_K12EnrollmentMember_OrganizationPerson];


GO
PRINT N'Dropping [dbo].[FK_K12EnrollmentMember_RefGrade]...';


GO
ALTER TABLE [dbo].[K12StudentEnrollment] DROP CONSTRAINT [FK_K12EnrollmentMember_RefGrade];


GO
PRINT N'Dropping [dbo].[FK_K12StudentEnrollment_RefDirectoryInformationBlockStatus]...';


GO
ALTER TABLE [dbo].[K12StudentEnrollment] DROP CONSTRAINT [FK_K12StudentEnrollment_RefDirectoryInformationBlockStatus];


GO
PRINT N'Dropping [dbo].[FK_K12StudentEnrollment_RefEndOfTermStatus]...';


GO
ALTER TABLE [dbo].[K12StudentEnrollment] DROP CONSTRAINT [FK_K12StudentEnrollment_RefEndOfTermStatus];


GO
PRINT N'Dropping [dbo].[FK_K12StudentEnrollment_RefEnrollmentStatus]...';


GO
ALTER TABLE [dbo].[K12StudentEnrollment] DROP CONSTRAINT [FK_K12StudentEnrollment_RefEnrollmentStatus];


GO
PRINT N'Dropping [dbo].[FK_K12StudentEnrollment_RefEntryType]...';


GO
ALTER TABLE [dbo].[K12StudentEnrollment] DROP CONSTRAINT [FK_K12StudentEnrollment_RefEntryType];


GO
PRINT N'Dropping [dbo].[FK_K12StudentEnrollment_RefExitOrWithdrawalStatus]...';


GO
ALTER TABLE [dbo].[K12StudentEnrollment] DROP CONSTRAINT [FK_K12StudentEnrollment_RefExitOrWithdrawalStatus];


GO
PRINT N'Dropping [dbo].[FK_K12StudentEnrollment_RefExitOrWithdrawalType]...';


GO
ALTER TABLE [dbo].[K12StudentEnrollment] DROP CONSTRAINT [FK_K12StudentEnrollment_RefExitOrWithdrawalType];


GO
PRINT N'Dropping [dbo].[FK_K12StudentEnrollment_RefFoodServiceEligibility]...';


GO
ALTER TABLE [dbo].[K12StudentEnrollment] DROP CONSTRAINT [FK_K12StudentEnrollment_RefFoodServiceEligibility];


GO
PRINT N'Dropping [dbo].[FK_K12StudentEnrollment_RefGradeLevel]...';


GO
ALTER TABLE [dbo].[K12StudentEnrollment] DROP CONSTRAINT [FK_K12StudentEnrollment_RefGradeLevel];


GO
PRINT N'Dropping [dbo].[FK_K12StudentEnrollment_RefNonPromotionReason]...';


GO
ALTER TABLE [dbo].[K12StudentEnrollment] DROP CONSTRAINT [FK_K12StudentEnrollment_RefNonPromotionReason];


GO
PRINT N'Dropping [dbo].[FK_K12StudentEnrollment_RefPromotionReason]...';


GO
ALTER TABLE [dbo].[K12StudentEnrollment] DROP CONSTRAINT [FK_K12StudentEnrollment_RefPromotionReason];


GO
PRINT N'Dropping [dbo].[FK_K12StudentEnrollment_RefPublicSchoolResidence]...';


GO
ALTER TABLE [dbo].[K12StudentEnrollment] DROP CONSTRAINT [FK_K12StudentEnrollment_RefPublicSchoolResidence];


GO
PRINT N'Dropping [dbo].[FK_K12StudentEnrollment_RefStudentEnrollmentAccessType]...';


GO
ALTER TABLE [dbo].[K12StudentEnrollment] DROP CONSTRAINT [FK_K12StudentEnrollment_RefStudentEnrollmentAccessType];


GO
PRINT N'Dropping [dbo].[FK_OrganizationRelationship_Organization_Child]...';


GO
ALTER TABLE [dbo].[OrganizationRelationship] DROP CONSTRAINT [FK_OrganizationRelationship_Organization_Child];


GO
PRINT N'Dropping [dbo].[FK_OrganizationRelationship_RefOrganizationRelationshipType]...';


GO
ALTER TABLE [dbo].[OrganizationRelationship] DROP CONSTRAINT [FK_OrganizationRelationship_RefOrganizationRelationshipType];


GO
PRINT N'Dropping [dbo].[FK_PersonDisability_Person]...';


GO
ALTER TABLE [dbo].[PersonDisability] DROP CONSTRAINT [FK_PersonDisability_Person];


GO
PRINT N'Dropping [dbo].[FK_PersonDisability_RefAccommodationsNeededType]...';


GO
ALTER TABLE [dbo].[PersonDisability] DROP CONSTRAINT [FK_PersonDisability_RefAccommodationsNeededType];


GO
PRINT N'Dropping [dbo].[FK_PersonDisability_RefDisabilityConditionStatusCode]...';


GO
ALTER TABLE [dbo].[PersonDisability] DROP CONSTRAINT [FK_PersonDisability_RefDisabilityConditionStatusCode];


GO
PRINT N'Dropping [dbo].[FK_PersonDisability_RefDisabilityConditionType]...';


GO
ALTER TABLE [dbo].[PersonDisability] DROP CONSTRAINT [FK_PersonDisability_RefDisabilityConditionType];


GO
PRINT N'Dropping [dbo].[FK_PersonDisability_RefDisabilityDeterminationSourceType]...';


GO
ALTER TABLE [dbo].[PersonDisability] DROP CONSTRAINT [FK_PersonDisability_RefDisabilityDeterminationSourceType];


GO
PRINT N'Dropping [dbo].[FK_PersonDisability_RefDisabilityType]...';


GO
ALTER TABLE [dbo].[PersonDisability] DROP CONSTRAINT [FK_PersonDisability_RefDisabilityType];


GO
PRINT N'Dropping [dbo].[FK_PersonDisability_RefIDEADisabilityType]...';


GO
ALTER TABLE [dbo].[PersonDisability] DROP CONSTRAINT [FK_PersonDisability_RefIDEADisabilityType];


GO
PRINT N'Dropping [dbo].[FK_WorkforceProgramParticipation_PersonProgramParticipation]...';


GO
ALTER TABLE [dbo].[WorkforceProgramParticipation] DROP CONSTRAINT [FK_WorkforceProgramParticipation_PersonProgramParticipation];


GO
PRINT N'Dropping [dbo].[FK_PersonProgramParticipation_OrganizationPersonRole]...';


GO
ALTER TABLE [dbo].[PersonProgramParticipation] DROP CONSTRAINT [FK_PersonProgramParticipation_OrganizationPersonRole];


GO
PRINT N'Dropping [dbo].[FK_PersonProgramParticipation_RefParticipationType]...';


GO
ALTER TABLE [dbo].[PersonProgramParticipation] DROP CONSTRAINT [FK_PersonProgramParticipation_RefParticipationType];


GO
PRINT N'Dropping [dbo].[FK_PersonProgramParticipation_RefProgramExitReason]...';


GO
ALTER TABLE [dbo].[PersonProgramParticipation] DROP CONSTRAINT [FK_PersonProgramParticipation_RefProgramExitReason];


GO
PRINT N'Dropping [dbo].[FK_ProgramParticipationAE_PersonProgramParticipation]...';


GO
ALTER TABLE [dbo].[ProgramParticipationAE] DROP CONSTRAINT [FK_ProgramParticipationAE_PersonProgramParticipation];


GO
PRINT N'Dropping [dbo].[FK_ProgramParticipationCte_PersonProgramParticipation]...';


GO
ALTER TABLE [dbo].[ProgramParticipationCte] DROP CONSTRAINT [FK_ProgramParticipationCte_PersonProgramParticipation];


GO
PRINT N'Dropping [dbo].[FK_ProgramParticipationFoodSrvc_PersonProgramParticipation]...';


GO
ALTER TABLE [dbo].[ProgramParticipationFoodService] DROP CONSTRAINT [FK_ProgramParticipationFoodSrvc_PersonProgramParticipation];


GO
PRINT N'Dropping [dbo].[FK_ProgramParticipationMigrant_PersonProgramParticipation]...';


GO
ALTER TABLE [dbo].[ProgramParticipationMigrant] DROP CONSTRAINT [FK_ProgramParticipationMigrant_PersonProgramParticipation];


GO
PRINT N'Dropping [dbo].[FK_ProgramParticipationNeglected_PersonProgramParticipation]...';


GO
ALTER TABLE [dbo].[ProgramParticipationNeglected] DROP CONSTRAINT [FK_ProgramParticipationNeglected_PersonProgramParticipation];


GO
PRINT N'Dropping [dbo].[FK_ProgramParticipationSpecialEducation_PersonProgramParticipat]...';


GO
ALTER TABLE [dbo].[ProgramParticipationSpecialEducation] DROP CONSTRAINT [FK_ProgramParticipationSpecialEducation_PersonProgramParticipat];


GO
PRINT N'Dropping [dbo].[FK_PrgmParticipationTeacherPrep_PersonProgramParticipation]...';


GO
ALTER TABLE [dbo].[ProgramParticipationTeacherPrep] DROP CONSTRAINT [FK_PrgmParticipationTeacherPrep_PersonProgramParticipation];


GO
PRINT N'Dropping [dbo].[FK_ProgramParticipationTitleI_PersonProgramParticipation]...';


GO
ALTER TABLE [dbo].[ProgramParticipationTitleI] DROP CONSTRAINT [FK_ProgramParticipationTitleI_PersonProgramParticipation];


GO
PRINT N'Dropping [dbo].[FK_ProgramParticipationTitleIII_PersonProgramParticipation]...';


GO
ALTER TABLE [dbo].[ProgramParticipationTitleIIILep] DROP CONSTRAINT [FK_ProgramParticipationTitleIII_PersonProgramParticipation];


GO
PRINT N'Dropping [dbo].[FK_ProgramParticipationAE_RefAeFunctioningLevelAtPosttest]...';


GO
ALTER TABLE [dbo].[ProgramParticipationAE] DROP CONSTRAINT [FK_ProgramParticipationAE_RefAeFunctioningLevelAtPosttest];


GO
PRINT N'Dropping [dbo].[FK_ProgramParticipationAE_RefAeInstructionalProgramType]...';


GO
ALTER TABLE [dbo].[ProgramParticipationAE] DROP CONSTRAINT [FK_ProgramParticipationAE_RefAeInstructionalProgramType];


GO
PRINT N'Dropping [dbo].[FK_ProgramParticipationAE_RefAePostsecondaryTransitionAction]...';


GO
ALTER TABLE [dbo].[ProgramParticipationAE] DROP CONSTRAINT [FK_ProgramParticipationAE_RefAePostsecondaryTransitionAction];


GO
PRINT N'Dropping [dbo].[FK_ProgramParticipationAE_RefCorrectionalEducationFacilityType]...';


GO
ALTER TABLE [dbo].[ProgramParticipationAE] DROP CONSTRAINT [FK_ProgramParticipationAE_RefCorrectionalEducationFacilityType];


GO
PRINT N'Dropping [dbo].[FK_ProgramParticipationAE_RefGoalsForAttendingAdultEducation]...';


GO
ALTER TABLE [dbo].[ProgramParticipationAE] DROP CONSTRAINT [FK_ProgramParticipationAE_RefGoalsForAttendingAdultEducation];


GO
PRINT N'Dropping [dbo].[FK_ProgramParticipationAE_RefWorkbasedLearningOpportunityType]...';


GO
ALTER TABLE [dbo].[ProgramParticipationAE] DROP CONSTRAINT [FK_ProgramParticipationAE_RefWorkbasedLearningOpportunityType];


GO
PRINT N'Dropping [dbo].[FK_ProgramParticipation_RefAeSpecialProgramType]...';


GO
ALTER TABLE [dbo].[ProgramParticipationAE] DROP CONSTRAINT [FK_ProgramParticipation_RefAeSpecialProgramType];


GO
PRINT N'Dropping [dbo].[FK_ProgramParticipationAE_RefAeFunctioningLevelAtIntake]...';


GO
ALTER TABLE [dbo].[ProgramParticipationAE] DROP CONSTRAINT [FK_ProgramParticipationAE_RefAeFunctioningLevelAtIntake];


GO
PRINT N'Dropping [dbo].[FK_ProgramParticipationCte_RefNonTraditionalGenderStatus]...';


GO
ALTER TABLE [dbo].[ProgramParticipationCte] DROP CONSTRAINT [FK_ProgramParticipationCte_RefNonTraditionalGenderStatus];


GO
PRINT N'Dropping [dbo].[FK_ProgramParticipationCte_RefWorkbasedLearningOpportunityType]...';


GO
ALTER TABLE [dbo].[ProgramParticipationCte] DROP CONSTRAINT [FK_ProgramParticipationCte_RefWorkbasedLearningOpportunityType];


GO
PRINT N'Dropping [dbo].[FK_ProgramParticipationFoodSrvc_RefSchoolFoodServiceProgram]...';


GO
ALTER TABLE [dbo].[ProgramParticipationFoodService] DROP CONSTRAINT [FK_ProgramParticipationFoodSrvc_RefSchoolFoodServiceProgram];


GO
PRINT N'Dropping [dbo].[FK_ProgramParticipationMigrant_Organization]...';


GO
ALTER TABLE [dbo].[ProgramParticipationMigrant] DROP CONSTRAINT [FK_ProgramParticipationMigrant_Organization];


GO
PRINT N'Dropping [dbo].[FK_ProgramParticipationMigrant_RefContinuationOfServices]...';


GO
ALTER TABLE [dbo].[ProgramParticipationMigrant] DROP CONSTRAINT [FK_ProgramParticipationMigrant_RefContinuationOfServices];


GO
PRINT N'Dropping [dbo].[FK_ProgramParticipationMigrant_RefCountry]...';


GO
ALTER TABLE [dbo].[ProgramParticipationMigrant] DROP CONSTRAINT [FK_ProgramParticipationMigrant_RefCountry];


GO
PRINT N'Dropping [dbo].[FK_ProgramParticipationMigrant_RefMEPEnrollmentType]...';


GO
ALTER TABLE [dbo].[ProgramParticipationMigrant] DROP CONSTRAINT [FK_ProgramParticipationMigrant_RefMEPEnrollmentType];


GO
PRINT N'Dropping [dbo].[FK_ProgramParticipationMigrant_RefMEPProjectBased]...';


GO
ALTER TABLE [dbo].[ProgramParticipationMigrant] DROP CONSTRAINT [FK_ProgramParticipationMigrant_RefMEPProjectBased];


GO
PRINT N'Dropping [dbo].[FK_ProgramParticipationMigrant_RefMEPServiceType]...';


GO
ALTER TABLE [dbo].[ProgramParticipationMigrant] DROP CONSTRAINT [FK_ProgramParticipationMigrant_RefMEPServiceType];


GO
PRINT N'Dropping [dbo].[FK_ProgramParticipationMigrant_RefState]...';


GO
ALTER TABLE [dbo].[ProgramParticipationMigrant] DROP CONSTRAINT [FK_ProgramParticipationMigrant_RefState];


GO
PRINT N'Dropping [dbo].[FK_ProgramParticipationNeglected_RefNeglectedProgramType]...';


GO
ALTER TABLE [dbo].[ProgramParticipationNeglected] DROP CONSTRAINT [FK_ProgramParticipationNeglected_RefNeglectedProgramType];


GO
PRINT N'Dropping [dbo].[FK_ProgramParticipationSpecialEd_RefIDEAEdEnvironmentForEC]...';


GO
ALTER TABLE [dbo].[ProgramParticipationSpecialEducation] DROP CONSTRAINT [FK_ProgramParticipationSpecialEd_RefIDEAEdEnvironmentForEC];


GO
PRINT N'Dropping [dbo].[FK_ProgramParticipationSpecialEd_RefIDEAEdEnvironmentSchoolAge]...';


GO
ALTER TABLE [dbo].[ProgramParticipationSpecialEducation] DROP CONSTRAINT [FK_ProgramParticipationSpecialEd_RefIDEAEdEnvironmentSchoolAge];


GO
PRINT N'Dropping [dbo].[FK_ProgramParticipationSpecialEd_RefSpecialEducationExitReason]...';


GO
ALTER TABLE [dbo].[ProgramParticipationSpecialEducation] DROP CONSTRAINT [FK_ProgramParticipationSpecialEd_RefSpecialEducationExitReason];


GO
PRINT N'Dropping [dbo].[FK_ProgramParticipationTitleI_RefTitleIIndicator]...';


GO
ALTER TABLE [dbo].[ProgramParticipationTitleI] DROP CONSTRAINT [FK_ProgramParticipationTitleI_RefTitleIIndicator];


GO
PRINT N'Dropping [dbo].[FK_StaffCredential_PersonCredential]...';


GO
ALTER TABLE [dbo].[StaffCredential] DROP CONSTRAINT [FK_StaffCredential_PersonCredential];


GO
PRINT N'Dropping [dbo].[FK_StaffCredential_RefChildDevelopmentAssociateType]...';


GO
ALTER TABLE [dbo].[StaffCredential] DROP CONSTRAINT [FK_StaffCredential_RefChildDevelopmentAssociateType];


GO
PRINT N'Dropping [dbo].[FK_StaffCredential_RefParaprofessionalQualification]...';


GO
ALTER TABLE [dbo].[StaffCredential] DROP CONSTRAINT [FK_StaffCredential_RefParaprofessionalQualification];


GO
PRINT N'Dropping [dbo].[FK_StaffCredential_RefProgramSponsorType]...';


GO
ALTER TABLE [dbo].[StaffCredential] DROP CONSTRAINT [FK_StaffCredential_RefProgramSponsorType];


GO
PRINT N'Dropping [dbo].[FK_StaffCredential_RefTeachingCredentialBasis]...';


GO
ALTER TABLE [dbo].[StaffCredential] DROP CONSTRAINT [FK_StaffCredential_RefTeachingCredentialBasis];


GO
PRINT N'Dropping [dbo].[FK_StaffCredential_RefTeachingCredentialType]...';


GO
ALTER TABLE [dbo].[StaffCredential] DROP CONSTRAINT [FK_StaffCredential_RefTeachingCredentialType];


GO
PRINT N'Dropping [dbo].[FK_TeacherEducationCredentialExam_RefTeacherEducationTestCompny]...';


GO
ALTER TABLE [dbo].[TeacherEducationCredentialExam] DROP CONSTRAINT [FK_TeacherEducationCredentialExam_RefTeacherEducationTestCompny];


GO
PRINT N'Dropping [dbo].[FK_TeacherEduCredentialExam_PrgmParticipationTeacherPrep]...';


GO
ALTER TABLE [dbo].[TeacherEducationCredentialExam] DROP CONSTRAINT [FK_TeacherEduCredentialExam_PrgmParticipationTeacherPrep];


GO
PRINT N'Dropping [dbo].[FK_TeacherEduCredentialExam_RefTeacherEduCredentialExam]...';


GO
ALTER TABLE [dbo].[TeacherEducationCredentialExam] DROP CONSTRAINT [FK_TeacherEduCredentialExam_RefTeacherEduCredentialExam];


GO
PRINT N'Dropping [dbo].[FK_TeacherEduCredentialExam_RefTeacherEduExamScoreType]...';


GO
ALTER TABLE [dbo].[TeacherEducationCredentialExam] DROP CONSTRAINT [FK_TeacherEduCredentialExam_RefTeacherEduExamScoreType];


GO
PRINT N'Dropping [dbo].[FK_WorkforceProgramPartic_RefProfessionalTechnicalCredential]...';


GO
ALTER TABLE [dbo].[WorkforceProgramParticipation] DROP CONSTRAINT [FK_WorkforceProgramPartic_RefProfessionalTechnicalCredential];


GO
PRINT N'Dropping [dbo].[FK_WorkforceProgramPartic_RefWfProgramParticipation]...';


GO
ALTER TABLE [dbo].[WorkforceProgramParticipation] DROP CONSTRAINT [FK_WorkforceProgramPartic_RefWfProgramParticipation];


GO
PRINT N'Dropping [dbo].[FK_ProgramParticipationTitleIIILep_RefTitleIIIAccountability]...';


GO
ALTER TABLE [dbo].[ProgramParticipationTitleIIILep] DROP CONSTRAINT [FK_ProgramParticipationTitleIIILep_RefTitleIIIAccountability];


GO
PRINT N'Dropping [dbo].[FK_ProgramParticipationTitleIIILEP_RefTitleIIILangInstrPrgm]...';


GO
ALTER TABLE [dbo].[ProgramParticipationTitleIIILep] DROP CONSTRAINT [FK_ProgramParticipationTitleIIILEP_RefTitleIIILangInstrPrgm];


GO
PRINT N'Dropping [dbo].[FK_K12School_Organization]...';


GO
ALTER TABLE [dbo].[K12School] DROP CONSTRAINT [FK_K12School_Organization];


GO
PRINT N'Dropping [dbo].[FK_TeacherStudentDataLinkExclusion_K12StaffAssignment]...';


GO
ALTER TABLE [dbo].[TeacherStudentDataLinkExclusion] DROP CONSTRAINT [FK_TeacherStudentDataLinkExclusion_K12StaffAssignment];


GO
PRINT N'Dropping [dbo].[FK_K12StaffAssignment_OrganizationPerson]...';


GO
ALTER TABLE [dbo].[K12StaffAssignment] DROP CONSTRAINT [FK_K12StaffAssignment_OrganizationPerson];


GO
PRINT N'Dropping [dbo].[FK_K12StaffAssignment_RefClassroomPositionType]...';


GO
ALTER TABLE [dbo].[K12StaffAssignment] DROP CONSTRAINT [FK_K12StaffAssignment_RefClassroomPositionType];


GO
PRINT N'Dropping [dbo].[FK_K12StaffAssignment_RefEducationStaffClassification]...';


GO
ALTER TABLE [dbo].[K12StaffAssignment] DROP CONSTRAINT [FK_K12StaffAssignment_RefEducationStaffClassification];


GO
PRINT N'Dropping [dbo].[FK_K12StaffAssignment_RefMepStaffCategory]...';


GO
ALTER TABLE [dbo].[K12StaffAssignment] DROP CONSTRAINT [FK_K12StaffAssignment_RefMepStaffCategory];


GO
PRINT N'Dropping [dbo].[FK_K12StaffAssignment_RefProfessionalEducationJobClassification]...';


GO
ALTER TABLE [dbo].[K12StaffAssignment] DROP CONSTRAINT [FK_K12StaffAssignment_RefProfessionalEducationJobClassification];


GO
PRINT N'Dropping [dbo].[FK_K12StaffAssignment_RefSpecialEducationAgeGroupTaught]...';


GO
ALTER TABLE [dbo].[K12StaffAssignment] DROP CONSTRAINT [FK_K12StaffAssignment_RefSpecialEducationAgeGroupTaught];


GO
PRINT N'Dropping [dbo].[FK_K12StaffAssignment_RefSpecialEducationStaffCategory]...';


GO
ALTER TABLE [dbo].[K12StaffAssignment] DROP CONSTRAINT [FK_K12StaffAssignment_RefSpecialEducationStaffCategory];


GO
PRINT N'Dropping [dbo].[FK_K12StaffAssignment_RefTeachingAssignmentRole]...';


GO
ALTER TABLE [dbo].[K12StaffAssignment] DROP CONSTRAINT [FK_K12StaffAssignment_RefTeachingAssignmentRole];


GO
PRINT N'Dropping [dbo].[FK_K12StaffAssignment_RefTitleIProgramStaffCategory]...';


GO
ALTER TABLE [dbo].[K12StaffAssignment] DROP CONSTRAINT [FK_K12StaffAssignment_RefTitleIProgramStaffCategory];


GO
PRINT N'Dropping [dbo].[FK_PrgmParticipationTeacherPrep_RefCritTeachShortageCandidate]...';


GO
ALTER TABLE [dbo].[ProgramParticipationTeacherPrep] DROP CONSTRAINT [FK_PrgmParticipationTeacherPrep_RefCritTeachShortageCandidate];


GO
PRINT N'Dropping [dbo].[FK_PrgmParticipationTeacherPrep_RefTeacherPrepCompleterStatus]...';


GO
ALTER TABLE [dbo].[ProgramParticipationTeacherPrep] DROP CONSTRAINT [FK_PrgmParticipationTeacherPrep_RefTeacherPrepCompleterStatus];


GO
PRINT N'Dropping [dbo].[FK_PrgmParticipationTeacherPrep_RefTeacherPrepEnrollStatus]...';


GO
ALTER TABLE [dbo].[ProgramParticipationTeacherPrep] DROP CONSTRAINT [FK_PrgmParticipationTeacherPrep_RefTeacherPrepEnrollStatus];


GO
PRINT N'Dropping [dbo].[FK_PrgmParticipationTeacherPrep_RefTeachingCredentialBasis]...';


GO
ALTER TABLE [dbo].[ProgramParticipationTeacherPrep] DROP CONSTRAINT [FK_PrgmParticipationTeacherPrep_RefTeachingCredentialBasis];


GO
PRINT N'Dropping [dbo].[FK_PrgmParticipationTeacherPrep_RefTeachingCredentialType]...';


GO
ALTER TABLE [dbo].[ProgramParticipationTeacherPrep] DROP CONSTRAINT [FK_PrgmParticipationTeacherPrep_RefTeachingCredentialType];


GO
PRINT N'Dropping [dbo].[FK_ProgramParticipationTeacherPrep_RefAltRouteToCertificationOrLicensure]...';


GO
ALTER TABLE [dbo].[ProgramParticipationTeacherPrep] DROP CONSTRAINT [FK_ProgramParticipationTeacherPrep_RefAltRouteToCertificationOrLicensure];


GO
PRINT N'Dropping [dbo].[FK_ProgramParticipationTeacherPrep_RefSupervisedClinicalExper]...';


GO
ALTER TABLE [dbo].[ProgramParticipationTeacherPrep] DROP CONSTRAINT [FK_ProgramParticipationTeacherPrep_RefSupervisedClinicalExper];


GO
PRINT N'Dropping [dbo].[FK_K12SEAFederalFundAllocation_K12SEA]...';


GO
ALTER TABLE [dbo].[K12SeaFederalFundAllocation] DROP CONSTRAINT [FK_K12SEAFederalFundAllocation_K12SEA];


GO
PRINT N'Dropping [dbo].[FK_K12SEAFederalFundAllocation_RefFederalFundingAllocation]...';


GO
ALTER TABLE [dbo].[K12SeaFederalFundAllocation] DROP CONSTRAINT [FK_K12SEAFederalFundAllocation_RefFederalFundingAllocation];


GO
PRINT N'Dropping [dbo].[FK_K12School_RefCharterSchoolApprovalAgencyTypeId]...';


GO
ALTER TABLE [dbo].[K12School] DROP CONSTRAINT [FK_K12School_RefCharterSchoolApprovalAgencyTypeId];


GO
PRINT N'Dropping [dbo].[FK_K12School_RefCharterSchoolManagementOrganizationType]...';


GO
ALTER TABLE [dbo].[K12School] DROP CONSTRAINT [FK_K12School_RefCharterSchoolManagementOrganizationType];


GO
PRINT N'Dropping [dbo].[FK_Organization_RefOrganizationType]...';


GO
ALTER TABLE [dbo].[Organization] DROP CONSTRAINT [FK_Organization_RefOrganizationType];


GO
PRINT N'Dropping [dbo].[FK_Person_RefEducationLevel]...';


GO
ALTER TABLE [dbo].[Person] DROP CONSTRAINT [FK_Person_RefEducationLevel];


GO
PRINT N'Dropping [dbo].[FK_Person_RefPersonalInformationVerification]...';


GO
ALTER TABLE [dbo].[Person] DROP CONSTRAINT [FK_Person_RefPersonalInformationVerification];


GO
PRINT N'Dropping [dbo].[FK_Person_RefProofOfResidencyType]...';


GO
ALTER TABLE [dbo].[Person] DROP CONSTRAINT [FK_Person_RefProofOfResidencyType];


GO
PRINT N'Dropping [dbo].[FK_Person_RefSex]...';


GO
ALTER TABLE [dbo].[Person] DROP CONSTRAINT [FK_Person_RefSex];


GO
PRINT N'Dropping [dbo].[FK_Person_RefState]...';


GO
ALTER TABLE [dbo].[Person] DROP CONSTRAINT [FK_Person_RefState];


GO
PRINT N'Dropping [dbo].[FK_Person_RefTribalAffiliation]...';


GO
ALTER TABLE [dbo].[Person] DROP CONSTRAINT [FK_Person_RefTribalAffiliation];


GO
PRINT N'Dropping [dbo].[FK_Person_RefUSCitizenshipStatus]...';


GO
ALTER TABLE [dbo].[Person] DROP CONSTRAINT [FK_Person_RefUSCitizenshipStatus];


GO
PRINT N'Dropping [dbo].[FK_Person_RefVisaType]...';


GO
ALTER TABLE [dbo].[Person] DROP CONSTRAINT [FK_Person_RefVisaType];


GO
PRINT N'Dropping [dbo].[XPKK12School]...';


GO
ALTER TABLE [dbo].[K12School] DROP CONSTRAINT [XPKK12School];


GO
PRINT N'Dropping [dbo].[K12SeaFederalFundAllocation]...';


GO
DROP TABLE [dbo].[K12SeaFederalFundAllocation];


GO
PRINT N'Starting rebuilding table [dbo].[AssessmentRegistration]...';


GO
BEGIN TRANSACTION;

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

SET XACT_ABORT ON;

CREATE TABLE [dbo].[tmp_ms_xx_AssessmentRegistration] (
    [AssessmentRegistrationId]                       INT            IDENTITY (1, 1) NOT NULL,
    [CreationDate]                                   DATETIME       NULL,
    [DaysOfInstructionPriorToAssessment]             INT            NULL,
    [ScorePublishDate]                               DATE           NULL,
    [TestAttemptIdentifier]                          NVARCHAR (40)  NULL,
    [RetestIndicator]                                BIT            NULL,
    [CourseSectionOrganizationId]                    INT            NULL,
    [RefAssessmentParticipationIndicatorId]          INT            NULL,
    [TestingIndicator]                               NVARCHAR (300) NULL,
    [RefAssessmentPurposeId]                         INT            NULL,
    [RefAssessmentReasonNotTestedId]                 INT            NULL,
    [RefAssessmentReasonNotCompletingId]             INT            NULL,
    [RefGradeLevelToBeAssessedId]                    INT            NULL,
    [RefGradeLevelWhenAssessedId]                    INT            NULL,
    [PersonId]                                       INT            NOT NULL,
    [AssessmentFormId]                               INT            NOT NULL,
    [OrganizationId]                                 INT            NULL,
    [SchoolOrganizationId]                           INT            NULL,
    [LeaOrganizationId]                              INT            NULL,
    [AssessmentAdministrationId]                     INT            NULL,
    [AssignedByPersonId]                             INT            NULL,
    [AssessmentRegistrationCompletionStatusDateTime] DATETIME       NULL,
    [RefAssessmentRegistrationCompletionStatusId]    INT            NULL,
    [StateFullAcademicYear]                          BIT            NULL,
    [LEAFullAcademicYear]                            BIT            NULL,
    [SchoolFullAcademicYear]                         BIT            NULL,
    CONSTRAINT [tmp_ms_xx_constraint_PK_AssessmentRegistration1] PRIMARY KEY CLUSTERED ([AssessmentRegistrationId] ASC)
);

IF EXISTS (SELECT TOP 1 1 
           FROM   [dbo].[AssessmentRegistration])
    BEGIN
        SET IDENTITY_INSERT [dbo].[tmp_ms_xx_AssessmentRegistration] ON;
        INSERT INTO [dbo].[tmp_ms_xx_AssessmentRegistration] ([AssessmentRegistrationId], [CreationDate], [DaysOfInstructionPriorToAssessment], [ScorePublishDate], [TestAttemptIdentifier], [RetestIndicator], [CourseSectionOrganizationId], [RefAssessmentParticipationIndicatorId], [TestingIndicator], [RefAssessmentPurposeId], [RefAssessmentReasonNotTestedId], [RefAssessmentReasonNotCompletingId], [RefGradeLevelToBeAssessedId], [RefGradeLevelWhenAssessedId], [PersonId], [AssessmentFormId], [OrganizationId], [SchoolOrganizationId], [LeaOrganizationId], [AssessmentAdministrationId], [AssignedByPersonId], [AssessmentRegistrationCompletionStatusDateTime], [RefAssessmentRegistrationCompletionStatusId], [LEAFullAcademicYear], [SchoolFullAcademicYear], [StateFullAcademicYear])
        SELECT   [AssessmentRegistrationId],
                 [CreationDate],
                 [DaysOfInstructionPriorToAssessment],
                 [ScorePublishDate],
                 [TestAttemptIdentifier],
                 [RetestIndicator],
                 [CourseSectionOrganizationId],
                 [RefAssessmentParticipationIndicatorId],
                 [TestingIndicator],
                 [RefAssessmentPurposeId],
                 [RefAssessmentReasonNotTestedId],
                 [RefAssessmentReasonNotCompletingId],
                 [RefGradeLevelToBeAssessedId],
                 [RefGradeLevelWhenAssessedId],
                 [PersonId],
                 [AssessmentFormId],
                 [OrganizationId],
                 [SchoolOrganizationId],
                 [LeaOrganizationId],
                 [AssessmentAdministrationId],
                 [AssignedByPersonId],
                 [AssessmentRegistrationCompletionStatusDateTime],
                 [RefAssessmentRegistrationCompletionStatusId],
                 [LEAFullAcademicYear],
                 [SchoolFullAcademicYear],
                 [StateFullAcademicYear]
        FROM     [dbo].[AssessmentRegistration]
        ORDER BY [AssessmentRegistrationId] ASC;
        SET IDENTITY_INSERT [dbo].[tmp_ms_xx_AssessmentRegistration] OFF;
    END

DROP TABLE [dbo].[AssessmentRegistration];

EXECUTE sp_rename N'[dbo].[tmp_ms_xx_AssessmentRegistration]', N'AssessmentRegistration';

EXECUTE sp_rename N'[dbo].[tmp_ms_xx_constraint_PK_AssessmentRegistration1]', N'PK_AssessmentRegistration', N'OBJECT';

COMMIT TRANSACTION;

SET TRANSACTION ISOLATION LEVEL READ COMMITTED;


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[IX_AssReg_PersonId]...';


GO
CREATE NONCLUSTERED INDEX [IX_AssReg_PersonId]
    ON [dbo].[AssessmentRegistration]([PersonId] ASC);


GO
PRINT N'Altering [dbo].[FinancialAccount]...';


GO
ALTER TABLE [dbo].[FinancialAccount]
    ADD [FederalProgramCode] NVARCHAR (10) NULL;


GO
PRINT N'Altering [dbo].[K12Lea]...';


GO
ALTER TABLE [dbo].[K12Lea]
    ADD [RefCharterLeaStatusId] INT NULL;


GO
PRINT N'Starting rebuilding table [dbo].[K12LeaFederalFunds]...';


GO
BEGIN TRANSACTION;

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

SET XACT_ABORT ON;

CREATE TABLE [dbo].[tmp_ms_xx_K12LeaFederalFunds] (
    [K12leaFederalFundId]                         INT             IDENTITY (1, 1) NOT NULL,
    [OrganizationCalendarSessionId]               INT             NOT NULL,
    [InnovativeProgramsFundsReceived]             NUMERIC (12, 2) NULL,
    [InnovativeDollarsSpent]                      NUMERIC (12, 2) NULL,
    [InnovativeDollarsSpentOnStrategicPriorities] NUMERIC (12, 2) NULL,
    [PublicSchoolChoiceFundsSpent]                NUMERIC (12, 2) NULL,
    [SesFundsSpent]                               NUMERIC (12, 2) NULL,
    [SesSchoolChoice20PercentObligation]          NUMERIC (12, 2) NULL,
    [RefRlisProgramUseId]                         INT             NULL,
    [ParentalInvolvementReservationFunds]         NUMERIC (12, 2) NULL,
    [RecordStartDateTime]                         DATETIME        NULL,
    [RecordEndDateTime]                           DATETIME        NULL,
    CONSTRAINT [tmp_ms_xx_constraint_PK_K12LEAFederalFunds1] PRIMARY KEY CLUSTERED ([K12leaFederalFundId] ASC)
);

IF EXISTS (SELECT TOP 1 1 
           FROM   [dbo].[K12LeaFederalFunds])
    BEGIN
        INSERT INTO [dbo].[tmp_ms_xx_K12LeaFederalFunds] ([InnovativeProgramsFundsReceived], [InnovativeDollarsSpent], [InnovativeDollarsSpentOnStrategicPriorities], [PublicSchoolChoiceFundsSpent], [SesFundsSpent], [SesSchoolChoice20PercentObligation], [RefRlisProgramUseId])
        SELECT [InnovativeProgramsFundsReceived],
               [InnovativeDollarsSpent],
               [InnovativeDollarsSpentOnStrategicPriorities],
               [PublicSchoolChoiceFundsSpent],
               [SesFundsSpent],
               [SesSchoolChoice20PercentObligation],
               [RefRlisProgramUseId]
        FROM   [dbo].[K12LeaFederalFunds];
    END

DROP TABLE [dbo].[K12LeaFederalFunds];

EXECUTE sp_rename N'[dbo].[tmp_ms_xx_K12LeaFederalFunds]', N'K12LeaFederalFunds';

EXECUTE sp_rename N'[dbo].[tmp_ms_xx_constraint_PK_K12LEAFederalFunds1]', N'PK_K12LEAFederalFunds', N'OBJECT';

COMMIT TRANSACTION;

SET TRANSACTION ISOLATION LEVEL READ COMMITTED;


GO
PRINT N'Altering [dbo].[K12School]...';


GO
ALTER TABLE [dbo].[K12School] DROP COLUMN [RefCharterSchoolApprovalAgencyTypeId], COLUMN [RefCharterSchoolManagementOrganizationTypeId];


GO
ALTER TABLE [dbo].[K12School]
    ADD [K12SchoolId]                              INT      IDENTITY (1, 1) NOT NULL,
        [RecordStartDateTime]                      DATETIME NULL,
        [RecordEndDateTime]                        DATETIME NULL,
        [K12CharterSchoolManagementOrganizationId] INT      NULL,
        [K12CharterSchoolApprovalAgencyId]         INT      NULL;


GO
PRINT N'Creating [dbo].[PK_K12School]...';


GO
ALTER TABLE [dbo].[K12School]
    ADD CONSTRAINT [PK_K12School] PRIMARY KEY NONCLUSTERED ([K12SchoolId] ASC);


GO
PRINT N'Starting rebuilding table [dbo].[K12SchoolCorrectiveAction]...';


GO
BEGIN TRANSACTION;

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

SET XACT_ABORT ON;

CREATE TABLE [dbo].[tmp_ms_xx_K12SchoolCorrectiveAction] (
    [K12SchoolCorrectiveActionId] INT IDENTITY (1, 1) NOT NULL,
    [K12SchoolId]                 INT NOT NULL,
    [RefCorrectiveActionTypeId]   INT NOT NULL,
    CONSTRAINT [tmp_ms_xx_constraint_PK_K12SchoolCorrectiveAction1] PRIMARY KEY CLUSTERED ([K12SchoolCorrectiveActionId] ASC)
);

IF EXISTS (SELECT TOP 1 1 
           FROM   [dbo].[K12SchoolCorrectiveAction])
    BEGIN
        SET IDENTITY_INSERT [dbo].[tmp_ms_xx_K12SchoolCorrectiveAction] ON;
        INSERT INTO [dbo].[tmp_ms_xx_K12SchoolCorrectiveAction] ([K12SchoolCorrectiveActionId], [RefCorrectiveActionTypeId])
        SELECT   [K12SchoolCorrectiveActionId],
                 [RefCorrectiveActionTypeId]
        FROM     [dbo].[K12SchoolCorrectiveAction]
        ORDER BY [K12SchoolCorrectiveActionId] ASC;
        SET IDENTITY_INSERT [dbo].[tmp_ms_xx_K12SchoolCorrectiveAction] OFF;
    END

DROP TABLE [dbo].[K12SchoolCorrectiveAction];

EXECUTE sp_rename N'[dbo].[tmp_ms_xx_K12SchoolCorrectiveAction]', N'K12SchoolCorrectiveAction';

EXECUTE sp_rename N'[dbo].[tmp_ms_xx_constraint_PK_K12SchoolCorrectiveAction1]', N'PK_K12SchoolCorrectiveAction', N'OBJECT';

COMMIT TRANSACTION;

SET TRANSACTION ISOLATION LEVEL READ COMMITTED;


GO
PRINT N'Starting rebuilding table [dbo].[K12SchoolGradeOffered]...';


GO
BEGIN TRANSACTION;

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

SET XACT_ABORT ON;

CREATE TABLE [dbo].[tmp_ms_xx_K12SchoolGradeOffered] (
    [K12SchoolGradeOfferedId] INT IDENTITY (1, 1) NOT NULL,
    [K12SchoolId]             INT NOT NULL,
    [RefGradeLevelId]         INT NOT NULL,
    CONSTRAINT [tmp_ms_xx_constraint_PK_K12SchoolGradeOffered1] PRIMARY KEY CLUSTERED ([K12SchoolGradeOfferedId] ASC)
);

IF EXISTS (SELECT TOP 1 1 
           FROM   [dbo].[K12SchoolGradeOffered])
    BEGIN
        SET IDENTITY_INSERT [dbo].[tmp_ms_xx_K12SchoolGradeOffered] ON;
        INSERT INTO [dbo].[tmp_ms_xx_K12SchoolGradeOffered] ([K12SchoolGradeOfferedId], [RefGradeLevelId])
        SELECT   [K12SchoolGradeOfferedId],
                 [RefGradeLevelId]
        FROM     [dbo].[K12SchoolGradeOffered]
        ORDER BY [K12SchoolGradeOfferedId] ASC;
        SET IDENTITY_INSERT [dbo].[tmp_ms_xx_K12SchoolGradeOffered] OFF;
    END

DROP TABLE [dbo].[K12SchoolGradeOffered];

EXECUTE sp_rename N'[dbo].[tmp_ms_xx_K12SchoolGradeOffered]', N'K12SchoolGradeOffered';

EXECUTE sp_rename N'[dbo].[tmp_ms_xx_constraint_PK_K12SchoolGradeOffered1]', N'PK_K12SchoolGradeOffered', N'OBJECT';

COMMIT TRANSACTION;

SET TRANSACTION ISOLATION LEVEL READ COMMITTED;


GO
PRINT N'Starting rebuilding table [dbo].[K12SchoolImprovement]...';


GO
BEGIN TRANSACTION;

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

SET XACT_ABORT ON;

CREATE TABLE [dbo].[tmp_ms_xx_K12SchoolImprovement] (
    [K12SchoolImprovementId]       INT  IDENTITY (1, 1) NOT NULL,
    [K12SchoolId]                  INT  NOT NULL,
    [RefSchoolImprovementStatusId] INT  NULL,
    [RefSchoolImprovementFundsId]  INT  NULL,
    [RefSigInterventionTypeId]     INT  NULL,
    [SchoolImprovementExitDate]    DATE NULL,
    CONSTRAINT [tmp_ms_xx_constraint_XPKK12SchoolImprovement1] PRIMARY KEY CLUSTERED ([K12SchoolImprovementId] ASC)
);

IF EXISTS (SELECT TOP 1 1 
           FROM   [dbo].[K12SchoolImprovement])
    BEGIN
        SET IDENTITY_INSERT [dbo].[tmp_ms_xx_K12SchoolImprovement] ON;
        INSERT INTO [dbo].[tmp_ms_xx_K12SchoolImprovement] ([K12SchoolImprovementId], [RefSchoolImprovementStatusId], [RefSchoolImprovementFundsId], [RefSigInterventionTypeId], [SchoolImprovementExitDate])
        SELECT   [K12SchoolImprovementId],
                 [RefSchoolImprovementStatusId],
                 [RefSchoolImprovementFundsId],
                 [RefSigInterventionTypeId],
                 [SchoolImprovementExitDate]
        FROM     [dbo].[K12SchoolImprovement]
        ORDER BY [K12SchoolImprovementId] ASC;
        SET IDENTITY_INSERT [dbo].[tmp_ms_xx_K12SchoolImprovement] OFF;
    END

DROP TABLE [dbo].[K12SchoolImprovement];

EXECUTE sp_rename N'[dbo].[tmp_ms_xx_K12SchoolImprovement]', N'K12SchoolImprovement';

EXECUTE sp_rename N'[dbo].[tmp_ms_xx_constraint_XPKK12SchoolImprovement1]', N'XPKK12SchoolImprovement', N'OBJECT';

COMMIT TRANSACTION;

SET TRANSACTION ISOLATION LEVEL READ COMMITTED;


GO
PRINT N'Starting rebuilding table [dbo].[K12SchoolStatus]...';


GO
BEGIN TRANSACTION;

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

SET XACT_ABORT ON;

CREATE TABLE [dbo].[tmp_ms_xx_K12SchoolStatus] (
    [K12SchoolId]                                                     INT           NOT NULL,
    [RefMagnetSpecialProgramId]                                       INT           NULL,
    [RefAlternativeSchoolFocusId]                                     INT           NULL,
    [RefInternetAccessId]                                             INT           NULL,
    [RefRestructuringActionId]                                        INT           NULL,
    [RefTitleISchoolStatusId]                                         INT           NULL,
    [ConsolidatedMepFundsStatus]                                      BIT           NULL,
    [K12SchoolStatusId]                                               INT           IDENTITY (1, 1) NOT NULL,
    [RecordStartDateTime]                                             DATETIME      NULL,
    [RecordEndDateTime]                                               DATETIME      NULL,
    [RefNSLPStatusId]                                                 INT           NULL,
    [RefSchoolDangerousStatusId]                                      INT           NULL,
    [RefSchoolImprovementStatusId]                                    INT           NULL,
    [RefProgressAchievingEnglishLanguageProficiencyIndicatorStatusId] INT           NULL,
    [ProgressAcheivingEnglishLearnerProficiencyStateDefinedStatus]    NVARCHAR (50) NULL,
    [RefComprehensiveAndTargetedSupportId]                            INT           NULL,
    [RefComprehensiveSupportId]                                       INT           NULL,
    [RefTargetedSupportId]                                            INT           NULL,
    [RefNationalSchoolLunchProgramStatusId]                           INT           NULL,
    [RefVirtualSchoolStatusId]                                        INT           NULL,
    CONSTRAINT [tmp_ms_xx_constraint_PK_K12SchoolStatus1] PRIMARY KEY CLUSTERED ([K12SchoolStatusId] ASC)
);

IF EXISTS (SELECT TOP 1 1 
           FROM   [dbo].[K12SchoolStatus])
    BEGIN
        INSERT INTO [dbo].[tmp_ms_xx_K12SchoolStatus] ([RefMagnetSpecialProgramId], [RefAlternativeSchoolFocusId], [RefInternetAccessId], [RefRestructuringActionId], [RefTitleISchoolStatusId], [ConsolidatedMepFundsStatus], [RefNationalSchoolLunchProgramStatusId], [RefVirtualSchoolStatusId])
        SELECT [RefMagnetSpecialProgramId],
               [RefAlternativeSchoolFocusId],
               [RefInternetAccessId],
               [RefRestructuringActionId],
               [RefTitleISchoolStatusId],
               [ConsolidatedMepFundsStatus],
               [RefNationalSchoolLunchProgramStatusId],
               [RefVirtualSchoolStatusId]
        FROM   [dbo].[K12SchoolStatus];
    END

DROP TABLE [dbo].[K12SchoolStatus];

EXECUTE sp_rename N'[dbo].[tmp_ms_xx_K12SchoolStatus]', N'K12SchoolStatus';

EXECUTE sp_rename N'[dbo].[tmp_ms_xx_constraint_PK_K12SchoolStatus1]', N'PK_K12SchoolStatus', N'OBJECT';

COMMIT TRANSACTION;

SET TRANSACTION ISOLATION LEVEL READ COMMITTED;


GO
PRINT N'Starting rebuilding table [dbo].[K12StaffAssignment]...';


GO
BEGIN TRANSACTION;

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

SET XACT_ABORT ON;

CREATE TABLE [dbo].[tmp_ms_xx_K12StaffAssignment] (
    [OrganizationPersonRoleId]                    INT            NOT NULL,
    [RefK12StaffClassificationId]                 INT            NULL,
    [RefProfessionalEducationJobClassificationId] INT            NULL,
    [RefTeachingAssignmentRoleId]                 INT            NULL,
    [PrimaryAssignment]                           BIT            NULL,
    [TeacherOfRecord]                             BIT            NULL,
    [RefClassroomPositionTypeId]                  INT            NULL,
    [FullTimeEquivalency]                         DECIMAL (5, 4) NULL,
    [ContributionPercentage]                      DECIMAL (5, 2) NULL,
    [ItinerantTeacher]                            BIT            NULL,
    [HighlyQualifiedTeacherIndicator]             BIT            NULL,
    [SpecialEducationTeacher]                     BIT            NULL,
    [RefSpecialEducationStaffCategoryId]          INT            NULL,
    [SpecialEducationRelatedServicesPersonnel]    BIT            NULL,
    [SpecialEducationParaprofessional]            BIT            NULL,
    [RefSpecialEducationAgeGroupTaughtId]         INT            NULL,
    [RefMepStaffCategoryId]                       INT            NULL,
    [RefTitleIProgramStaffCategoryId]             INT            NULL,
    [RecordStartDateTime]                         DATETIME       NULL,
    [RecordEndDateTime]                           DATETIME       NULL,
    [K12StaffAssignmentId]                        INT            IDENTITY (1, 1) NOT NULL,
    [RefUnexperiencedStatusId]                    INT            NULL,
    [RefEmergencyOrProvisionalCredentialStatusId] INT            NULL,
    [RefOutOfFieldStatusId]                       INT            NULL,
    CONSTRAINT [tmp_ms_xx_constraint_PK_K12StaffAssignmentId1] PRIMARY KEY CLUSTERED ([K12StaffAssignmentId] ASC)
);

IF EXISTS (SELECT TOP 1 1 
           FROM   [dbo].[K12StaffAssignment])
    BEGIN
        INSERT INTO [dbo].[tmp_ms_xx_K12StaffAssignment] ([OrganizationPersonRoleId], [RefK12StaffClassificationId], [RefProfessionalEducationJobClassificationId], [RefTeachingAssignmentRoleId], [PrimaryAssignment], [TeacherOfRecord], [RefClassroomPositionTypeId], [FullTimeEquivalency], [ContributionPercentage], [ItinerantTeacher], [HighlyQualifiedTeacherIndicator], [SpecialEducationTeacher], [RefSpecialEducationStaffCategoryId], [SpecialEducationRelatedServicesPersonnel], [SpecialEducationParaprofessional], [RefSpecialEducationAgeGroupTaughtId], [RefMepStaffCategoryId], [RefTitleIProgramStaffCategoryId])
        SELECT [OrganizationPersonRoleId],
               [RefK12StaffClassificationId],
               [RefProfessionalEducationJobClassificationId],
               [RefTeachingAssignmentRoleId],
               [PrimaryAssignment],
               [TeacherOfRecord],
               [RefClassroomPositionTypeId],
               [FullTimeEquivalency],
               [ContributionPercentage],
               [ItinerantTeacher],
               [HighlyQualifiedTeacherIndicator],
               [SpecialEducationTeacher],
               [RefSpecialEducationStaffCategoryId],
               [SpecialEducationRelatedServicesPersonnel],
               [SpecialEducationParaprofessional],
               [RefSpecialEducationAgeGroupTaughtId],
               [RefMepStaffCategoryId],
               [RefTitleIProgramStaffCategoryId]
        FROM   [dbo].[K12StaffAssignment];
    END

DROP TABLE [dbo].[K12StaffAssignment];

EXECUTE sp_rename N'[dbo].[tmp_ms_xx_K12StaffAssignment]', N'K12StaffAssignment';

EXECUTE sp_rename N'[dbo].[tmp_ms_xx_constraint_PK_K12StaffAssignmentId1]', N'PK_K12StaffAssignmentId', N'OBJECT';

COMMIT TRANSACTION;

SET TRANSACTION ISOLATION LEVEL READ COMMITTED;


GO
PRINT N'Altering [dbo].[K12StudentAcademicRecord]...';


GO
ALTER TABLE [dbo].[K12StudentAcademicRecord] ALTER COLUMN [ClassRankingDate] DATETIME NULL;

ALTER TABLE [dbo].[K12StudentAcademicRecord] ALTER COLUMN [DiplomaOrCredentialAwardDate] DATETIME NULL;

ALTER TABLE [dbo].[K12StudentAcademicRecord] ALTER COLUMN [ProjectedGraduationDate] DATETIME NULL;


GO
PRINT N'Starting rebuilding table [dbo].[K12StudentEnrollment]...';


GO
BEGIN TRANSACTION;

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

SET XACT_ABORT ON;

CREATE TABLE [dbo].[tmp_ms_xx_K12StudentEnrollment] (
    [OrganizationPersonRoleId]             INT      NOT NULL,
    [RefEntryGradeLevelId]                 INT      NULL,
    [RefPublicSchoolResidence]             INT      NULL,
    [RefEnrollmentStatusId]                INT      NULL,
    [RefEntryType]                         INT      NULL,
    [RefExitGradeLevel]                    INT      NULL,
    [RefExitOrWithdrawalStatusId]          INT      NULL,
    [RefExitOrWithdrawalTypeId]            INT      NULL,
    [DisplacedStudentStatus]               BIT      NULL,
    [RefEndOfTermStatusId]                 INT      NULL,
    [RefPromotionReasonId]                 INT      NULL,
    [RefNonPromotionReasonId]              INT      NULL,
    [RefFoodServiceEligibilityId]          INT      NULL,
    [FirstEntryDateIntoUSSchool]           DATE     NULL,
    [RefDirectoryInformationBlockStatusId] INT      NULL,
    [NSLPDirectCertificationIndicator]     BIT      NULL,
    [K12StudentEnrollmentId]               INT      IDENTITY (1, 1) NOT NULL,
    [RecordStartDateTime]                  DATETIME NULL,
    [RecordEndDateTime]                    DATETIME NULL,
    [RefStudentEnrollmentAccessTypeId]     INT      NULL,
    CONSTRAINT [tmp_ms_xx_constraint_PK_K12StudentEnrollment1] PRIMARY KEY CLUSTERED ([K12StudentEnrollmentId] ASC)
);

IF EXISTS (SELECT TOP 1 1 
           FROM   [dbo].[K12StudentEnrollment])
    BEGIN
        INSERT INTO [dbo].[tmp_ms_xx_K12StudentEnrollment] ([OrganizationPersonRoleId], [RefEntryGradeLevelId], [RefPublicSchoolResidence], [RefEnrollmentStatusId], [RefEntryType], [RefExitGradeLevel], [RefExitOrWithdrawalStatusId], [RefExitOrWithdrawalTypeId], [DisplacedStudentStatus], [RefEndOfTermStatusId], [RefPromotionReasonId], [RefNonPromotionReasonId], [RefFoodServiceEligibilityId], [FirstEntryDateIntoUSSchool], [RefDirectoryInformationBlockStatusId], [NSLPDirectCertificationIndicator], [RefStudentEnrollmentAccessTypeId])
        SELECT [OrganizationPersonRoleId],
               [RefEntryGradeLevelId],
               [RefPublicSchoolResidence],
               [RefEnrollmentStatusId],
               [RefEntryType],
               [RefExitGradeLevel],
               [RefExitOrWithdrawalStatusId],
               [RefExitOrWithdrawalTypeId],
               [DisplacedStudentStatus],
               [RefEndOfTermStatusId],
               [RefPromotionReasonId],
               [RefNonPromotionReasonId],
               [RefFoodServiceEligibilityId],
               [FirstEntryDateIntoUSSchool],
               [RefDirectoryInformationBlockStatusId],
               [NSLPDirectCertificationIndicator],
               [RefStudentEnrollmentAccessTypeId]
        FROM   [dbo].[K12StudentEnrollment];
    END

DROP TABLE [dbo].[K12StudentEnrollment];

EXECUTE sp_rename N'[dbo].[tmp_ms_xx_K12StudentEnrollment]', N'K12StudentEnrollment';

EXECUTE sp_rename N'[dbo].[tmp_ms_xx_constraint_PK_K12StudentEnrollment1]', N'PK_K12StudentEnrollment', N'OBJECT';

COMMIT TRANSACTION;

SET TRANSACTION ISOLATION LEVEL READ COMMITTED;


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[IX_OrganizationPersonRoleId]...';


GO
CREATE NONCLUSTERED INDEX [IX_OrganizationPersonRoleId]
    ON [dbo].[K12StudentEnrollment]([OrganizationPersonRoleId] ASC);


GO
PRINT N'Altering [dbo].[Organization]...';


GO
ALTER TABLE [dbo].[Organization] DROP COLUMN [Name], COLUMN [RefOrganizationTypeId], COLUMN [ShortName];


GO
PRINT N'Altering [dbo].[OrganizationIdentifier]...';


GO
ALTER TABLE [dbo].[OrganizationIdentifier]
    ADD [RecordStartDateTime] DATETIME NULL,
        [RecordEndDateTime]   DATETIME NULL;


GO
PRINT N'Altering [dbo].[OrganizationProgramType]...';


GO
ALTER TABLE [dbo].[OrganizationProgramType]
    ADD [RecordStartDateTime] DATETIME NULL,
        [RecordEndDateTime]   DATETIME NULL;


GO
PRINT N'Altering [dbo].[OrganizationRelationship]...';


GO
ALTER TABLE [dbo].[OrganizationRelationship] ALTER COLUMN [OrganizationId] INT NOT NULL;

ALTER TABLE [dbo].[OrganizationRelationship] ALTER COLUMN [RefOrganizationRelationshipId] INT NULL;


GO
PRINT N'Altering [dbo].[Person]...';


GO
ALTER TABLE [dbo].[Person] DROP COLUMN [Birthdate], COLUMN [BirthdateVerification], COLUMN [FirstName], COLUMN [GenerationCode], COLUMN [HispanicLatinoEthnicity], COLUMN [LastName], COLUMN [MiddleName], COLUMN [Prefix], COLUMN [RefHighestEducationLevelCompletedId], COLUMN [RefPersonalInformationVerificationId], COLUMN [RefProofOfResidencyTypeId], COLUMN [RefSexId], COLUMN [RefStateOfResidenceId], COLUMN [RefTribalAffiliationId], COLUMN [RefUSCitizenshipStatusId], COLUMN [RefVisaTypeId];


GO
ALTER TABLE [dbo].[Person]
    ADD [PersonMasterId] INT NULL;


GO
PRINT N'Altering [dbo].[PersonDemographicRace]...';


GO
ALTER TABLE [dbo].[PersonDemographicRace]
    ADD [RecordStartDateTime] DATETIME NULL,
        [RecordEndDateTime]   DATETIME NULL;


GO
PRINT N'Starting rebuilding table [dbo].[PersonDisability]...';


GO
BEGIN TRANSACTION;

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

SET XACT_ABORT ON;

CREATE TABLE [dbo].[tmp_ms_xx_PersonDisability] (
    [PersonId]                                INT      NOT NULL,
    [PrimaryDisabilityTypeId]                 INT      NULL,
    [DisabilityStatus]                        BIT      NULL,
    [RefAccommodationsNeededTypeId]           INT      NULL,
    [RefDisabilityConditionTypeId]            INT      NULL,
    [RefDisabilityDeterminationSourceTypeId]  INT      NULL,
    [RefDisabilityConditionStatusCodeId]      INT      NULL,
    [RecordStartDateTime]                     DATETIME NULL,
    [RecordEndDateTime]                       DATETIME NULL,
    [PersonDisabilityId]                      INT      IDENTITY (1, 1) NOT NULL,
    [SignificantCognitiveDisabilityIndicator] BIT      NULL,
    [RefIDEADisabilityTypeId]                 INT      NULL,
    CONSTRAINT [tmp_ms_xx_constraint_PK_PersonDisabilityId1] PRIMARY KEY CLUSTERED ([PersonDisabilityId] ASC)
);

IF EXISTS (SELECT TOP 1 1 
           FROM   [dbo].[PersonDisability])
    BEGIN
        INSERT INTO [dbo].[tmp_ms_xx_PersonDisability] ([PersonId], [PrimaryDisabilityTypeId], [DisabilityStatus], [RefAccommodationsNeededTypeId], [RefDisabilityConditionTypeId], [RefDisabilityDeterminationSourceTypeId], [RefDisabilityConditionStatusCodeId], [RefIDEADisabilityTypeId], [SignificantCognitiveDisabilityIndicator])
        SELECT [PersonId],
               [PrimaryDisabilityTypeId],
               [DisabilityStatus],
               [RefAccommodationsNeededTypeId],
               [RefDisabilityConditionTypeId],
               [RefDisabilityDeterminationSourceTypeId],
               [RefDisabilityConditionStatusCodeId],
               [RefIDEADisabilityTypeId],
               [SignificantCognitiveDisabilityIndicator]
        FROM   [dbo].[PersonDisability];
    END

DROP TABLE [dbo].[PersonDisability];

EXECUTE sp_rename N'[dbo].[tmp_ms_xx_PersonDisability]', N'PersonDisability';

EXECUTE sp_rename N'[dbo].[tmp_ms_xx_constraint_PK_PersonDisabilityId1]', N'PK_PersonDisabilityId', N'OBJECT';

COMMIT TRANSACTION;

SET TRANSACTION ISOLATION LEVEL READ COMMITTED;


GO
PRINT N'Altering [dbo].[PersonHomelessness]...';


GO
ALTER TABLE [dbo].[PersonHomelessness]
    ADD [RecordStartDateTime] DATETIME NULL,
        [RecordEndDateTime]   DATETIME NULL;


GO
PRINT N'Starting rebuilding table [dbo].[PersonProgramParticipation]...';


GO
BEGIN TRANSACTION;

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

SET XACT_ABORT ON;

CREATE TABLE [dbo].[tmp_ms_xx_PersonProgramParticipation] (
    [OrganizationPersonRoleId]     INT            NOT NULL,
    [RefParticipationTypeId]       INT            NULL,
    [RefProgramExitReasonId]       INT            NULL,
    [RecordStartDateTime]          DATETIME       NULL,
    [RecordEndDateTime]            DATETIME       NULL,
    [PersonProgramParticipationId] INT            IDENTITY (1, 1) NOT NULL,
    [ParticipationStatus]          NVARCHAR (100) NULL,
    CONSTRAINT [tmp_ms_xx_constraint_PK_PersonProgramParticipation1] PRIMARY KEY CLUSTERED ([PersonProgramParticipationId] ASC)
);

IF EXISTS (SELECT TOP 1 1 
           FROM   [dbo].[PersonProgramParticipation])
    BEGIN
        INSERT INTO [dbo].[tmp_ms_xx_PersonProgramParticipation] ([OrganizationPersonRoleId], [RefParticipationTypeId], [RefProgramExitReasonId], [ParticipationStatus])
        SELECT [OrganizationPersonRoleId],
               [RefParticipationTypeId],
               [RefProgramExitReasonId],
               [ParticipationStatus]
        FROM   [dbo].[PersonProgramParticipation];
    END

DROP TABLE [dbo].[PersonProgramParticipation];

EXECUTE sp_rename N'[dbo].[tmp_ms_xx_PersonProgramParticipation]', N'PersonProgramParticipation';

EXECUTE sp_rename N'[dbo].[tmp_ms_xx_constraint_PK_PersonProgramParticipation1]', N'PK_PersonProgramParticipation', N'OBJECT';

COMMIT TRANSACTION;

SET TRANSACTION ISOLATION LEVEL READ COMMITTED;


GO
PRINT N'Creating [dbo].[PersonProgramParticipation].[IX_OrganizationPersonRoleId]...';


GO
CREATE NONCLUSTERED INDEX [IX_OrganizationPersonRoleId]
    ON [dbo].[PersonProgramParticipation]([OrganizationPersonRoleId] ASC);


GO
PRINT N'Starting rebuilding table [dbo].[ProgramParticipationAE]...';


GO
BEGIN TRANSACTION;

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

SET XACT_ABORT ON;

CREATE TABLE [dbo].[tmp_ms_xx_ProgramParticipationAE] (
    [PersonProgramParticipationId]           INT            NOT NULL,
    [RefAeInstructionalProgramTypeId]        INT            NULL,
    [RefAePostsecondaryTransitionActionId]   INT            NULL,
    [PostsecondaryTransitionDate]            DATE           NULL,
    [RefAeSpecialProgramTypeId]              INT            NULL,
    [RefAeFunctioningLevelAtIntakeId]        INT            NULL,
    [RefAeFunctioningLevelAtPosttestId]      INT            NULL,
    [RefGoalsForAttendingAdultEducationId]   INT            NULL,
    [DisplacedHomemakerIndicator]            BIT            NULL,
    [ProxyContactHours]                      DECIMAL (5, 1) NULL,
    [InstructionalActivityHoursCompleted]    DECIMAL (9, 2) NULL,
    [RefCorrectionalEducationFacilityTypeId] INT            NULL,
    [RefWorkbasedLearningOpportunityTypeId]  INT            NULL,
    [ProgramParticipationAEId]               INT            IDENTITY (1, 1) NOT NULL,
    [RecordStartDateTime]                    DATETIME       NULL,
    [RecordEndDateTime]                      DATETIME       NULL,
    CONSTRAINT [tmp_ms_xx_constraint_PK_ProgramParticipationAE1] PRIMARY KEY CLUSTERED ([ProgramParticipationAEId] ASC)
);

IF EXISTS (SELECT TOP 1 1 
           FROM   [dbo].[ProgramParticipationAE])
    BEGIN
        INSERT INTO [dbo].[tmp_ms_xx_ProgramParticipationAE] ([RefAeInstructionalProgramTypeId], [RefAePostsecondaryTransitionActionId], [PostsecondaryTransitionDate], [RefAeSpecialProgramTypeId], [RefAeFunctioningLevelAtIntakeId], [RefAeFunctioningLevelAtPosttestId], [RefGoalsForAttendingAdultEducationId], [DisplacedHomemakerIndicator], [ProxyContactHours], [InstructionalActivityHoursCompleted], [RefCorrectionalEducationFacilityTypeId], [RefWorkbasedLearningOpportunityTypeId])
        SELECT [RefAeInstructionalProgramTypeId],
               [RefAePostsecondaryTransitionActionId],
               [PostsecondaryTransitionDate],
               [RefAeSpecialProgramTypeId],
               [RefAeFunctioningLevelAtIntakeId],
               [RefAeFunctioningLevelAtPosttestId],
               [RefGoalsForAttendingAdultEducationId],
               [DisplacedHomemakerIndicator],
               [ProxyContactHours],
               [InstructionalActivityHoursCompleted],
               [RefCorrectionalEducationFacilityTypeId],
               [RefWorkbasedLearningOpportunityTypeId]
        FROM   [dbo].[ProgramParticipationAE];
    END

DROP TABLE [dbo].[ProgramParticipationAE];

EXECUTE sp_rename N'[dbo].[tmp_ms_xx_ProgramParticipationAE]', N'ProgramParticipationAE';

EXECUTE sp_rename N'[dbo].[tmp_ms_xx_constraint_PK_ProgramParticipationAE1]', N'PK_ProgramParticipationAE', N'OBJECT';

COMMIT TRANSACTION;

SET TRANSACTION ISOLATION LEVEL READ COMMITTED;


GO
PRINT N'Starting rebuilding table [dbo].[ProgramParticipationCte]...';


GO
BEGIN TRANSACTION;

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

SET XACT_ABORT ON;

CREATE TABLE [dbo].[tmp_ms_xx_ProgramParticipationCte] (
    [PersonProgramParticipationId]                INT      NOT NULL,
    [CteParticipant]                              BIT      NULL,
    [CteConcentrator]                             BIT      NULL,
    [CteCompleter]                                BIT      NULL,
    [SingleParentOrSinglePregnantWoman]           BIT      NULL,
    [DisplacedHomemakerIndicator]                 BIT      NULL,
    [CteNonTraditionalCompletion]                 BIT      NULL,
    [RefNonTraditionalGenderStatusId]             INT      NULL,
    [RefWorkbasedLearningOpportunityTypeId]       INT      NULL,
    [CareerPathwaysProgramParticipationExitDate]  DATE     NULL,
    [CareerPathwaysProgramParticipationStartDate] DATE     NULL,
    [RecordStartDateTime]                         DATETIME NULL,
    [RecordEndDateTime]                           DATETIME NULL,
    [ProgramParticipationCteId]                   INT      IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [tmp_ms_xx_constraint_PK_ProgramParticipationCte1] PRIMARY KEY CLUSTERED ([ProgramParticipationCteId] ASC)
);

IF EXISTS (SELECT TOP 1 1 
           FROM   [dbo].[ProgramParticipationCte])
    BEGIN
        INSERT INTO [dbo].[tmp_ms_xx_ProgramParticipationCte] ([CteParticipant], [CteConcentrator], [CteCompleter], [SingleParentOrSinglePregnantWoman], [DisplacedHomemakerIndicator], [CteNonTraditionalCompletion], [RefNonTraditionalGenderStatusId], [RefWorkbasedLearningOpportunityTypeId], [CareerPathwaysProgramParticipationExitDate], [CareerPathwaysProgramParticipationStartDate])
        SELECT [CteParticipant],
               [CteConcentrator],
               [CteCompleter],
               [SingleParentOrSinglePregnantWoman],
               [DisplacedHomemakerIndicator],
               [CteNonTraditionalCompletion],
               [RefNonTraditionalGenderStatusId],
               [RefWorkbasedLearningOpportunityTypeId],
               [CareerPathwaysProgramParticipationExitDate],
               [CareerPathwaysProgramParticipationStartDate]
        FROM   [dbo].[ProgramParticipationCte];
    END

DROP TABLE [dbo].[ProgramParticipationCte];

EXECUTE sp_rename N'[dbo].[tmp_ms_xx_ProgramParticipationCte]', N'ProgramParticipationCte';

EXECUTE sp_rename N'[dbo].[tmp_ms_xx_constraint_PK_ProgramParticipationCte1]', N'PK_ProgramParticipationCte', N'OBJECT';

COMMIT TRANSACTION;

SET TRANSACTION ISOLATION LEVEL READ COMMITTED;


GO
PRINT N'Creating [dbo].[ProgramParticipationCte].[IX_PersonProgramParticipationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_PersonProgramParticipationId]
    ON [dbo].[ProgramParticipationCte]([PersonProgramParticipationId] ASC);


GO
PRINT N'Starting rebuilding table [dbo].[ProgramParticipationFoodService]...';


GO
BEGIN TRANSACTION;

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

SET XACT_ABORT ON;

CREATE TABLE [dbo].[tmp_ms_xx_ProgramParticipationFoodService] (
    [ProgramParticipationFoodServiceId] INT      IDENTITY (1, 1) NOT NULL,
    [PersonProgramParticipationId]      INT      NOT NULL,
    [RefSchoolFoodServiceProgramId]     INT      NOT NULL,
    [RecordStartDateTime]               DATETIME NULL,
    [RecordEndDateTime]                 DATETIME NULL,
    CONSTRAINT [tmp_ms_xx_constraint_PK_ProgramParticipationFoodService1] PRIMARY KEY CLUSTERED ([ProgramParticipationFoodServiceId] ASC)
);

IF EXISTS (SELECT TOP 1 1 
           FROM   [dbo].[ProgramParticipationFoodService])
    BEGIN
        SET IDENTITY_INSERT [dbo].[tmp_ms_xx_ProgramParticipationFoodService] ON;
        INSERT INTO [dbo].[tmp_ms_xx_ProgramParticipationFoodService] ([ProgramParticipationFoodServiceId], [RefSchoolFoodServiceProgramId])
        SELECT   [ProgramParticipationFoodServiceId],
                 [RefSchoolFoodServiceProgramId]
        FROM     [dbo].[ProgramParticipationFoodService]
        ORDER BY [ProgramParticipationFoodServiceId] ASC;
        SET IDENTITY_INSERT [dbo].[tmp_ms_xx_ProgramParticipationFoodService] OFF;
    END

DROP TABLE [dbo].[ProgramParticipationFoodService];

EXECUTE sp_rename N'[dbo].[tmp_ms_xx_ProgramParticipationFoodService]', N'ProgramParticipationFoodService';

EXECUTE sp_rename N'[dbo].[tmp_ms_xx_constraint_PK_ProgramParticipationFoodService1]', N'PK_ProgramParticipationFoodService', N'OBJECT';

COMMIT TRANSACTION;

SET TRANSACTION ISOLATION LEVEL READ COMMITTED;


GO
PRINT N'Starting rebuilding table [dbo].[ProgramParticipationMigrant]...';


GO
BEGIN TRANSACTION;

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

SET XACT_ABORT ON;

CREATE TABLE [dbo].[tmp_ms_xx_ProgramParticipationMigrant] (
    [PersonProgramParticipationId]        INT           NOT NULL,
    [RefMepEnrollmentTypeId]              INT           NULL,
    [RefMepProjectBasedId]                INT           NULL,
    [RefMepServiceTypeId]                 INT           NULL,
    [MepEligibilityExpirationDate]        DATE          NULL,
    [ContinuationOfServicesStatus]        BIT           NULL,
    [RefContinuationOfServicesReasonId]   INT           NULL,
    [BirthdateVerification]               NVARCHAR (60) NULL,
    [ImmunizationRecordFlag]              BIT           NULL,
    [MigrantStudentQualifyingArrivalDate] DATE          NULL,
    [LastQualifyingMoveDate]              DATE          NULL,
    [QualifyingMoveFromCity]              NVARCHAR (30) NULL,
    [RefQualifyingMoveFromStateId]        INT           NULL,
    [RefQualifyingMoveFromCountryId]      INT           NULL,
    [DesignatedGraduationSchoolId]        INT           NULL,
    [RecordStartDateTime]                 DATETIME      NULL,
    [RecordEndDateTime]                   DATETIME      NULL,
    [ProgramParticipationMigrantId]       INT           IDENTITY (1, 1) NOT NULL,
    [PrioritizedForServices]              BIT           NULL,
    CONSTRAINT [tmp_ms_xx_constraint_PK_ProgramParticipationMigrant1] PRIMARY KEY CLUSTERED ([ProgramParticipationMigrantId] ASC)
);

IF EXISTS (SELECT TOP 1 1 
           FROM   [dbo].[ProgramParticipationMigrant])
    BEGIN
        INSERT INTO [dbo].[tmp_ms_xx_ProgramParticipationMigrant] ([RefMepEnrollmentTypeId], [RefMepProjectBasedId], [RefMepServiceTypeId], [MepEligibilityExpirationDate], [ContinuationOfServicesStatus], [RefContinuationOfServicesReasonId], [BirthdateVerification], [ImmunizationRecordFlag], [MigrantStudentQualifyingArrivalDate], [LastQualifyingMoveDate], [QualifyingMoveFromCity], [RefQualifyingMoveFromStateId], [RefQualifyingMoveFromCountryId], [DesignatedGraduationSchoolId], [PrioritizedForServices])
        SELECT [RefMepEnrollmentTypeId],
               [RefMepProjectBasedId],
               [RefMepServiceTypeId],
               [MepEligibilityExpirationDate],
               [ContinuationOfServicesStatus],
               [RefContinuationOfServicesReasonId],
               [BirthdateVerification],
               [ImmunizationRecordFlag],
               [MigrantStudentQualifyingArrivalDate],
               [LastQualifyingMoveDate],
               [QualifyingMoveFromCity],
               [RefQualifyingMoveFromStateId],
               [RefQualifyingMoveFromCountryId],
               [DesignatedGraduationSchoolId],
               [PrioritizedForServices]
        FROM   [dbo].[ProgramParticipationMigrant];
    END

DROP TABLE [dbo].[ProgramParticipationMigrant];

EXECUTE sp_rename N'[dbo].[tmp_ms_xx_ProgramParticipationMigrant]', N'ProgramParticipationMigrant';

EXECUTE sp_rename N'[dbo].[tmp_ms_xx_constraint_PK_ProgramParticipationMigrant1]', N'PK_ProgramParticipationMigrant', N'OBJECT';

COMMIT TRANSACTION;

SET TRANSACTION ISOLATION LEVEL READ COMMITTED;


GO
PRINT N'Starting rebuilding table [dbo].[ProgramParticipationNeglected]...';


GO
BEGIN TRANSACTION;

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

SET XACT_ABORT ON;

CREATE TABLE [dbo].[tmp_ms_xx_ProgramParticipationNeglected] (
    [PersonProgramParticipationId]    INT      NOT NULL,
    [RefNeglectedProgramTypeId]       INT      NULL,
    [AchievementIndicator]            BIT      NULL,
    [OutcomeIndicator]                BIT      NULL,
    [ObtainedEmployment]              BIT      NULL,
    [RecordStartDateTime]             DATETIME NULL,
    [RecordEndDateTime]               DATETIME NULL,
    [ProgramParticipationNeglectedId] INT      IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [tmp_ms_xx_constraint_PK_ProgramParticipationNeglected1] PRIMARY KEY CLUSTERED ([ProgramParticipationNeglectedId] ASC)
);

IF EXISTS (SELECT TOP 1 1 
           FROM   [dbo].[ProgramParticipationNeglected])
    BEGIN
        INSERT INTO [dbo].[tmp_ms_xx_ProgramParticipationNeglected] ([RefNeglectedProgramTypeId], [AchievementIndicator], [OutcomeIndicator], [ObtainedEmployment])
        SELECT [RefNeglectedProgramTypeId],
               [AchievementIndicator],
               [OutcomeIndicator],
               [ObtainedEmployment]
        FROM   [dbo].[ProgramParticipationNeglected];
    END

DROP TABLE [dbo].[ProgramParticipationNeglected];

EXECUTE sp_rename N'[dbo].[tmp_ms_xx_ProgramParticipationNeglected]', N'ProgramParticipationNeglected';

EXECUTE sp_rename N'[dbo].[tmp_ms_xx_constraint_PK_ProgramParticipationNeglected1]', N'PK_ProgramParticipationNeglected', N'OBJECT';

COMMIT TRANSACTION;

SET TRANSACTION ISOLATION LEVEL READ COMMITTED;


GO
PRINT N'Starting rebuilding table [dbo].[ProgramParticipationSpecialEducation]...';


GO
BEGIN TRANSACTION;

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

SET XACT_ABORT ON;

CREATE TABLE [dbo].[tmp_ms_xx_ProgramParticipationSpecialEducation] (
    [PersonProgramParticipationId]           INT            NOT NULL,
    [AwaitingInitialIDEAEvaluationStatus]    BIT            NULL,
    [RefIDEAEducationalEnvironmentECId]      INT            NULL,
    [RefIDEAEdEnvironmentSchoolAgeId]        INT            NULL,
    [SpecialEducationFTE]                    DECIMAL (5, 4) NULL,
    [RefSpecialEducationExitReasonId]        INT            NULL,
    [SpecialEducationServicesExitDate]       DATE           NULL,
    [RecordStartDateTime]                    DATETIME       NULL,
    [RecordEndDateTime]                      DATETIME       NULL,
    [ProgramParticipationSpecialEducationId] INT            IDENTITY (1, 1) NOT NULL,
    [IDEAPlacementRationale]                 NVARCHAR (MAX) NULL,
    CONSTRAINT [tmp_ms_xx_constraint_PK_ProgramParticipationSpecialEducation1] PRIMARY KEY CLUSTERED ([ProgramParticipationSpecialEducationId] ASC)
);

IF EXISTS (SELECT TOP 1 1 
           FROM   [dbo].[ProgramParticipationSpecialEducation])
    BEGIN
        INSERT INTO [dbo].[tmp_ms_xx_ProgramParticipationSpecialEducation] ([AwaitingInitialIDEAEvaluationStatus], [RefIDEAEducationalEnvironmentECId], [RefIDEAEdEnvironmentSchoolAgeId], [SpecialEducationFTE], [RefSpecialEducationExitReasonId], [SpecialEducationServicesExitDate], [IDEAPlacementRationale])
        SELECT [AwaitingInitialIDEAEvaluationStatus],
               [RefIDEAEducationalEnvironmentECId],
               [RefIDEAEdEnvironmentSchoolAgeId],
               [SpecialEducationFTE],
               [RefSpecialEducationExitReasonId],
               [SpecialEducationServicesExitDate],
               [IDEAPlacementRationale]
        FROM   [dbo].[ProgramParticipationSpecialEducation];
    END

DROP TABLE [dbo].[ProgramParticipationSpecialEducation];

EXECUTE sp_rename N'[dbo].[tmp_ms_xx_ProgramParticipationSpecialEducation]', N'ProgramParticipationSpecialEducation';

EXECUTE sp_rename N'[dbo].[tmp_ms_xx_constraint_PK_ProgramParticipationSpecialEducation1]', N'PK_ProgramParticipationSpecialEducation', N'OBJECT';

COMMIT TRANSACTION;

SET TRANSACTION ISOLATION LEVEL READ COMMITTED;


GO
PRINT N'Starting rebuilding table [dbo].[ProgramParticipationTeacherPrep]...';


GO
BEGIN TRANSACTION;

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

SET XACT_ABORT ON;

CREATE TABLE [dbo].[tmp_ms_xx_ProgramParticipationTeacherPrep] (
    [RefTeacherPrepEnrollmentStatusId]        INT      NULL,
    [RefTeacherPrepCompleterStatusId]         INT      NULL,
    [RefSupervisedClinicalExperienceId]       INT      NULL,
    [ClinicalExperienceClockHours]            INT      NULL,
    [RefTeachingCredentialBasisId]            INT      NULL,
    [RefTeachingCredentialTypeId]             INT      NULL,
    [RefCriticalTeacherShortageCandidateId]   INT      NULL,
    [RefAltRouteToCertificationOrLicensureId] INT      NULL,
    [RecordStartDateTime]                     DATETIME NULL,
    [RecordEndDateTime]                       DATETIME NULL,
    [PersonProgramParticipationId]            INT      NOT NULL,
    [ProgramParticipationTeacherPrepId]       INT      IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [tmp_ms_xx_constraint_FK_ProgramParticipationTeacherPrepId1] PRIMARY KEY CLUSTERED ([ProgramParticipationTeacherPrepId] ASC)
);

IF EXISTS (SELECT TOP 1 1 
           FROM   [dbo].[ProgramParticipationTeacherPrep])
    BEGIN
        INSERT INTO [dbo].[tmp_ms_xx_ProgramParticipationTeacherPrep] ([RefTeacherPrepEnrollmentStatusId], [RefTeacherPrepCompleterStatusId], [RefSupervisedClinicalExperienceId], [ClinicalExperienceClockHours], [RefTeachingCredentialBasisId], [RefTeachingCredentialTypeId], [RefCriticalTeacherShortageCandidateId], [RefAltRouteToCertificationOrLicensureId])
        SELECT [RefTeacherPrepEnrollmentStatusId],
               [RefTeacherPrepCompleterStatusId],
               [RefSupervisedClinicalExperienceId],
               [ClinicalExperienceClockHours],
               [RefTeachingCredentialBasisId],
               [RefTeachingCredentialTypeId],
               [RefCriticalTeacherShortageCandidateId],
               [RefAltRouteToCertificationOrLicensureId]
        FROM   [dbo].[ProgramParticipationTeacherPrep];
    END

DROP TABLE [dbo].[ProgramParticipationTeacherPrep];

EXECUTE sp_rename N'[dbo].[tmp_ms_xx_ProgramParticipationTeacherPrep]', N'ProgramParticipationTeacherPrep';

EXECUTE sp_rename N'[dbo].[tmp_ms_xx_constraint_FK_ProgramParticipationTeacherPrepId1]', N'FK_ProgramParticipationTeacherPrepId', N'OBJECT';

COMMIT TRANSACTION;

SET TRANSACTION ISOLATION LEVEL READ COMMITTED;


GO
PRINT N'Starting rebuilding table [dbo].[ProgramParticipationTitleI]...';


GO
BEGIN TRANSACTION;

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

SET XACT_ABORT ON;

CREATE TABLE [dbo].[tmp_ms_xx_ProgramParticipationTitleI] (
    [PersonProgramParticipationId] INT NOT NULL,
    [RefTitleIIndicatorId]         INT NULL,
    CONSTRAINT [tmp_ms_xx_constraint_PK_ProgramParticipationTitleI1] PRIMARY KEY CLUSTERED ([PersonProgramParticipationId] ASC)
);

IF EXISTS (SELECT TOP 1 1 
           FROM   [dbo].[ProgramParticipationTitleI])
    BEGIN
        INSERT INTO [dbo].[tmp_ms_xx_ProgramParticipationTitleI] ([RefTitleIIndicatorId])
        SELECT [RefTitleIIndicatorId]
        FROM   [dbo].[ProgramParticipationTitleI];
    END

DROP TABLE [dbo].[ProgramParticipationTitleI];

EXECUTE sp_rename N'[dbo].[tmp_ms_xx_ProgramParticipationTitleI]', N'ProgramParticipationTitleI';

EXECUTE sp_rename N'[dbo].[tmp_ms_xx_constraint_PK_ProgramParticipationTitleI1]', N'PK_ProgramParticipationTitleI', N'OBJECT';

COMMIT TRANSACTION;

SET TRANSACTION ISOLATION LEVEL READ COMMITTED;


GO
PRINT N'Starting rebuilding table [dbo].[ProgramParticipationTitleIIILep]...';


GO
BEGIN TRANSACTION;

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

SET XACT_ABORT ON;

CREATE TABLE [dbo].[tmp_ms_xx_ProgramParticipationTitleIIILep] (
    [RefTitleIIIAccountabilityId]                 INT      NULL,
    [RefTitleIIILanguageInstructionProgramTypeId] INT      NULL,
    [PersonProgramParticipationId]                INT      NOT NULL,
    [RecordStartDateTime]                         DATETIME NULL,
    [RecordEndDateTime]                           DATETIME NULL,
    [ProgramParticipationTitleIiiLepId]           INT      IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [tmp_ms_xx_constraint_PK_ProgramParticipationTitleIii1] PRIMARY KEY CLUSTERED ([ProgramParticipationTitleIiiLepId] ASC)
);

IF EXISTS (SELECT TOP 1 1 
           FROM   [dbo].[ProgramParticipationTitleIIILep])
    BEGIN
        INSERT INTO [dbo].[tmp_ms_xx_ProgramParticipationTitleIIILep] ([RefTitleIIIAccountabilityId], [RefTitleIIILanguageInstructionProgramTypeId])
        SELECT [RefTitleIIIAccountabilityId],
               [RefTitleIIILanguageInstructionProgramTypeId]
        FROM   [dbo].[ProgramParticipationTitleIIILep];
    END

DROP TABLE [dbo].[ProgramParticipationTitleIIILep];

EXECUTE sp_rename N'[dbo].[tmp_ms_xx_ProgramParticipationTitleIIILep]', N'ProgramParticipationTitleIIILep';

EXECUTE sp_rename N'[dbo].[tmp_ms_xx_constraint_PK_ProgramParticipationTitleIii1]', N'PK_ProgramParticipationTitleIii', N'OBJECT';

COMMIT TRANSACTION;

SET TRANSACTION ISOLATION LEVEL READ COMMITTED;


GO
PRINT N'Starting rebuilding table [dbo].[StaffCredential]...';


GO
BEGIN TRANSACTION;

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

SET XACT_ABORT ON;

CREATE TABLE [dbo].[tmp_ms_xx_StaffCredential] (
    [RefTeachingCredentialTypeId]               INT          NULL,
    [RefTeachingCredentialBasisId]              INT          NULL,
    [RefChildDevAssociateTypeId]                INT          NULL,
    [RefParaprofessionalQualificationId]        INT          NULL,
    [TechnologySkillsStandardsMet]              BIT          NULL,
    [DiplomaOrCredentialAwardDate]              NVARCHAR (7) NULL,
    [RefProgramSponsorTypeId]                   INT          NULL,
    [CTEInstructorIndustryCertification]        BIT          NULL,
    [PersonCredentialId]                        INT          NOT NULL,
    [RecordStartDateTime]                       DATETIME     NULL,
    [RecordEndDateTime]                         DATETIME     NULL,
    [StaffCredentialId]                         INT          IDENTITY (1, 1) NOT NULL,
    [CardiopulmonaryResuscitationCertification] DATE         NULL,
    [FirstAidCertification]                     DATE         NULL,
    CONSTRAINT [tmp_ms_xx_constraint_PK_StaffCredential1] PRIMARY KEY CLUSTERED ([StaffCredentialId] ASC)
);

IF EXISTS (SELECT TOP 1 1 
           FROM   [dbo].[StaffCredential])
    BEGIN
        INSERT INTO [dbo].[tmp_ms_xx_StaffCredential] ([PersonCredentialId], [RefTeachingCredentialTypeId], [RefTeachingCredentialBasisId], [RefChildDevAssociateTypeId], [RefParaprofessionalQualificationId], [TechnologySkillsStandardsMet], [DiplomaOrCredentialAwardDate], [RefProgramSponsorTypeId], [CTEInstructorIndustryCertification], [CardiopulmonaryResuscitationCertification], [FirstAidCertification])
        SELECT [PersonCredentialId],
               [RefTeachingCredentialTypeId],
               [RefTeachingCredentialBasisId],
               [RefChildDevAssociateTypeId],
               [RefParaprofessionalQualificationId],
               [TechnologySkillsStandardsMet],
               [DiplomaOrCredentialAwardDate],
               [RefProgramSponsorTypeId],
               [CTEInstructorIndustryCertification],
               [CardiopulmonaryResuscitationCertification],
               [FirstAidCertification]
        FROM   [dbo].[StaffCredential];
    END

DROP TABLE [dbo].[StaffCredential];

EXECUTE sp_rename N'[dbo].[tmp_ms_xx_StaffCredential]', N'StaffCredential';

EXECUTE sp_rename N'[dbo].[tmp_ms_xx_constraint_PK_StaffCredential1]', N'PK_StaffCredential', N'OBJECT';

COMMIT TRANSACTION;

SET TRANSACTION ISOLATION LEVEL READ COMMITTED;


GO
PRINT N'Starting rebuilding table [dbo].[TeacherEducationCredentialExam]...';


GO
BEGIN TRANSACTION;

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

SET XACT_ABORT ON;

CREATE TABLE [dbo].[tmp_ms_xx_TeacherEducationCredentialExam] (
    [RefTeacherEducationCredentialExamId] INT NULL,
    [RefTeacherEducationExamScoreTypeId]  INT NULL,
    [RefTeacherEducationTestCompanyId]    INT NULL,
    [ProgramParticipationTeacherPrepId]   INT NOT NULL,
    [TeacherEducationCredentialExamId]    INT IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [tmp_ms_xx_constraint_PK_TeacherEduCredentialExam1] PRIMARY KEY CLUSTERED ([TeacherEducationCredentialExamId] ASC)
);

IF EXISTS (SELECT TOP 1 1 
           FROM   [dbo].[TeacherEducationCredentialExam])
    BEGIN
        SET IDENTITY_INSERT [dbo].[tmp_ms_xx_TeacherEducationCredentialExam] ON;
        INSERT INTO [dbo].[tmp_ms_xx_TeacherEducationCredentialExam] ([TeacherEducationCredentialExamId], [RefTeacherEducationCredentialExamId], [RefTeacherEducationExamScoreTypeId], [RefTeacherEducationTestCompanyId])
        SELECT   [TeacherEducationCredentialExamId],
                 [RefTeacherEducationCredentialExamId],
                 [RefTeacherEducationExamScoreTypeId],
                 [RefTeacherEducationTestCompanyId]
        FROM     [dbo].[TeacherEducationCredentialExam]
        ORDER BY [TeacherEducationCredentialExamId] ASC;
        SET IDENTITY_INSERT [dbo].[tmp_ms_xx_TeacherEducationCredentialExam] OFF;
    END

DROP TABLE [dbo].[TeacherEducationCredentialExam];

EXECUTE sp_rename N'[dbo].[tmp_ms_xx_TeacherEducationCredentialExam]', N'TeacherEducationCredentialExam';

EXECUTE sp_rename N'[dbo].[tmp_ms_xx_constraint_PK_TeacherEduCredentialExam1]', N'PK_TeacherEduCredentialExam', N'OBJECT';

COMMIT TRANSACTION;

SET TRANSACTION ISOLATION LEVEL READ COMMITTED;


GO
PRINT N'Altering [dbo].[TeacherStudentDataLinkExclusion]...';


GO
ALTER TABLE [dbo].[TeacherStudentDataLinkExclusion] DROP COLUMN [TeacherOrganizationPersonRoleId];


GO
ALTER TABLE [dbo].[TeacherStudentDataLinkExclusion]
    ADD [K12StaffAssignmentId] INT NOT NULL;


GO
PRINT N'Starting rebuilding table [dbo].[WorkforceProgramParticipation]...';


GO
BEGIN TRANSACTION;

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

SET XACT_ABORT ON;

CREATE TABLE [dbo].[tmp_ms_xx_WorkforceProgramParticipation] (
    [PersonProgramParticipationId]             INT       NOT NULL,
    [RefWfProgramParticipationId]              INT       NULL,
    [RefProfessionalTechnicalCredentialTypeId] INT       NULL,
    [DiplomaOrCredentialAwardDate]             NCHAR (7) NULL,
    CONSTRAINT [tmp_ms_xx_constraint_PK_WorkforceProgramParticipation1] PRIMARY KEY CLUSTERED ([PersonProgramParticipationId] ASC)
);

IF EXISTS (SELECT TOP 1 1 
           FROM   [dbo].[WorkforceProgramParticipation])
    BEGIN
        INSERT INTO [dbo].[tmp_ms_xx_WorkforceProgramParticipation] ([RefWfProgramParticipationId], [RefProfessionalTechnicalCredentialTypeId], [DiplomaOrCredentialAwardDate])
        SELECT [RefWfProgramParticipationId],
               [RefProfessionalTechnicalCredentialTypeId],
               [DiplomaOrCredentialAwardDate]
        FROM   [dbo].[WorkforceProgramParticipation];
    END

DROP TABLE [dbo].[WorkforceProgramParticipation];

EXECUTE sp_rename N'[dbo].[tmp_ms_xx_WorkforceProgramParticipation]', N'WorkforceProgramParticipation';

EXECUTE sp_rename N'[dbo].[tmp_ms_xx_constraint_PK_WorkforceProgramParticipation1]', N'PK_WorkforceProgramParticipation', N'OBJECT';

COMMIT TRANSACTION;

SET TRANSACTION ISOLATION LEVEL READ COMMITTED;


GO
PRINT N'Creating [dbo].[K12CharterSchoolApprovalAgency]...';


GO
CREATE TABLE [dbo].[K12CharterSchoolApprovalAgency] (
    [K12CharterSchoolApprovalAgencyId]     INT IDENTITY (1, 1) NOT NULL,
    [OrganizationId]                       INT NULL,
    [RefCharterSchoolApprovalAgencyTypeId] INT NULL,
    CONSTRAINT [PK__K12CharterSchoolApprovalAgency] PRIMARY KEY CLUSTERED ([K12CharterSchoolApprovalAgencyId] ASC)
);


GO
PRINT N'Creating [dbo].[K12CharterSchoolManagementOrganization]...';


GO
CREATE TABLE [dbo].[K12CharterSchoolManagementOrganization] (
    [K12CharterSchoolManagementOrganizationId]     INT IDENTITY (1, 1) NOT NULL,
    [OrganizationId]                               INT NULL,
    [RefCharterSchoolManagementOrganizationTypeId] INT NULL,
    CONSTRAINT [PK__K12CharterSchoolManagementOrganization] PRIMARY KEY CLUSTERED ([K12CharterSchoolManagementOrganizationId] ASC)
);


GO
PRINT N'Creating [dbo].[K12FederalFundAllocation]...';


GO
CREATE TABLE [dbo].[K12FederalFundAllocation] (
    [K12FederalFundAllocationId]               INT             IDENTITY (1, 1) NOT NULL,
    [OrganizationCalendarSessionId]            INT             NOT NULL,
    [FederalProgramCode]                       NVARCHAR (10)   NOT NULL,
    [RefFederalProgramFundingAllocationTypeId] INT             NULL,
    [FederalProgramsFundingAllocation]         NUMERIC (18, 2) NULL,
    [FundsTransferAmount]                      NUMERIC (18, 2) NULL,
    [SchoolImprovementAllocation]              NUMERIC (18, 2) NULL,
    [LeaTransferabilityOfFunds]                BIT             NULL,
    [RefLeaFundsTransferTypeId]                INT             NULL,
    [SchoolImprovementReservedPercent]         NUMERIC (18, 2) NULL,
    [SesPerPupilExpenditure]                   NUMERIC (18, 2) NULL,
    [NumberOfImmigrantProgramSubgrants]        INT             NULL,
    [RefReapAlternativeFundingStatusId]        INT             NULL,
    [RecordStartDateTime]                      DATETIME        NULL,
    [RecordEndDateTime]                        DATETIME        NULL,
    CONSTRAINT [PK_K12FederalFundAllocation] PRIMARY KEY CLUSTERED ([K12FederalFundAllocationId] ASC)
);


GO
PRINT N'Creating [dbo].[K12SchoolIndicatorStatus]...';


GO
CREATE TABLE [dbo].[K12SchoolIndicatorStatus] (
    [K12SchoolIndicatorStatusId]       INT            IDENTITY (1, 1) NOT NULL,
    [K12SchoolId]                      INT            NOT NULL,
    [RefIndicatorStatusTypeId]         INT            NOT NULL,
    [RefIndicatorStateDefinedStatusId] INT            NULL,
    [RefIndicatorStatusSubgroupTypeId] INT            NULL,
    [IndicatorStatusSubgroup]          NVARCHAR (100) NULL,
    [IndicatorStatus]                  NVARCHAR (100) NULL,
    [RecordStartDateTime]              DATETIME       NULL,
    [RecordEndDateTime]                DATETIME       NULL,
    [RefIndicatorStatusCustomTypeId]   INT            NULL,
    CONSTRAINT [PK_K12SchoolIndicatorStatus] PRIMARY KEY CLUSTERED ([K12SchoolIndicatorStatusId] ASC)
);


GO
PRINT N'Creating [dbo].[OrganizationDetail]...';


GO
CREATE TABLE [dbo].[OrganizationDetail] (
    [OrganizationDetailId]  INT            IDENTITY (1, 1) NOT NULL,
    [OrganizationId]        INT            NOT NULL,
    [Name]                  NVARCHAR (128) NULL,
    [RefOrganizationTypeId] INT            NULL,
    [ShortName]             NVARCHAR (30)  NULL,
    [RecordStartDateTime]   DATETIME       NULL,
    [RecordEndDateTime]     DATETIME       NULL,
    CONSTRAINT [PK_OrganizationDetail] PRIMARY KEY CLUSTERED ([OrganizationDetailId] ASC)
);


GO
PRINT N'Creating [dbo].[PersonDetail]...';


GO
CREATE TABLE [dbo].[PersonDetail] (
    [PersonDetailId]                       INT           IDENTITY (1, 1) NOT NULL,
    [PersonId]                             INT           NOT NULL,
    [FirstName]                            NVARCHAR (35) NULL,
    [MiddleName]                           NVARCHAR (35) NULL,
    [LastName]                             NVARCHAR (35) NOT NULL,
    [GenerationCode]                       NVARCHAR (10) NULL,
    [Prefix]                               NVARCHAR (30) NULL,
    [Birthdate]                            DATE          NULL,
    [RefSexId]                             INT           NULL,
    [HispanicLatinoEthnicity]              BIT           NULL,
    [RefUSCitizenshipStatusId]             INT           NULL,
    [RefVisaTypeId]                        INT           NULL,
    [RefStateOfResidenceId]                INT           NULL,
    [RefProofOfResidencyTypeId]            INT           NULL,
    [RefHighestEducationLevelCompletedId]  INT           NULL,
    [RefPersonalInformationVerificationId] INT           NULL,
    [BirthdateVerification]                NVARCHAR (60) NULL,
    [RefTribalAffiliationId]               INT           NULL,
    [RecordStartDateTime]                  DATETIME      NULL,
    [RecordEndDateTime]                    DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([PersonDetailId] ASC)
);


GO
PRINT N'Creating [dbo].[PersonDetail].[IX_PersonId]...';


GO
CREATE NONCLUSTERED INDEX [IX_PersonId]
    ON [dbo].[PersonDetail]([PersonId] ASC);


GO
PRINT N'Creating [dbo].[PersonMaster]...';


GO
CREATE TABLE [dbo].[PersonMaster] (
    [PersonMasterId] INT NOT NULL,
    CONSTRAINT [PK_PersonMasterId] PRIMARY KEY CLUSTERED ([PersonMasterId] ASC)
);


GO
PRINT N'Creating [dbo].[RefCharterLeaStatus]...';


GO
CREATE TABLE [dbo].[RefCharterLeaStatus] (
    [RefCharterLeaStatusId] INT             IDENTITY (1, 1) NOT NULL,
    [Description]           NVARCHAR (100)  NOT NULL,
    [Code]                  NVARCHAR (50)   NULL,
    [Definition]            NVARCHAR (4000) NULL,
    [RefJurisdictionId]     INT             NULL,
    [SortOrder]             DECIMAL (5, 2)  NULL,
    CONSTRAINT [PK_RefCharterLeaStatus] PRIMARY KEY CLUSTERED ([RefCharterLeaStatusId] ASC)
);


GO
PRINT N'Creating [dbo].[RefComprehensiveAndTargetedSupport]...';


GO
CREATE TABLE [dbo].[RefComprehensiveAndTargetedSupport] (
    [RefComprehensiveAndTargetedSupportId] INT            IDENTITY (1, 1) NOT NULL,
    [Description]                          NVARCHAR (100) NULL,
    [Code]                                 NVARCHAR (50)  NULL,
    [Definition]                           NVARCHAR (MAX) NULL,
    [RefJurisdictionId]                    INT            NULL,
    [SortOrder]                            DECIMAL (5, 2) NULL,
    CONSTRAINT [PK_RefComprehensiveAndTargetedSupport] PRIMARY KEY CLUSTERED ([RefComprehensiveAndTargetedSupportId] ASC)
);


GO
PRINT N'Creating [dbo].[RefComprehensiveSupport]...';


GO
CREATE TABLE [dbo].[RefComprehensiveSupport] (
    [RefComprehensiveSupportId] INT            IDENTITY (1, 1) NOT NULL,
    [Description]               NVARCHAR (100) NULL,
    [Code]                      NVARCHAR (50)  NULL,
    [Definition]                NVARCHAR (MAX) NULL,
    [RefJurisdictionId]         INT            NULL,
    [SortOrder]                 DECIMAL (5, 2) NULL,
    CONSTRAINT [PK_RefComprehensiveSupport] PRIMARY KEY CLUSTERED ([RefComprehensiveSupportId] ASC)
);


GO
PRINT N'Creating [dbo].[RefEmergencyOrProvisionalCredentialStatus]...';


GO
CREATE TABLE [dbo].[RefEmergencyOrProvisionalCredentialStatus] (
    [RefEmergencyOrProvisionalCredentialStatusId] INT            IDENTITY (1, 1) NOT NULL,
    [Description]                                 NVARCHAR (100) NULL,
    [Code]                                        NVARCHAR (50)  NULL,
    [Definition]                                  NVARCHAR (MAX) NULL,
    [RefJurisdictionId]                           INT            NULL,
    [SortOrder]                                   DECIMAL (5, 2) NULL,
    CONSTRAINT [PK_RefEmergencyOrProvisionalCredentialStatus] PRIMARY KEY CLUSTERED ([RefEmergencyOrProvisionalCredentialStatusId] ASC)
);


GO
PRINT N'Creating [dbo].[RefIndicatorStateDefinedStatus]...';


GO
CREATE TABLE [dbo].[RefIndicatorStateDefinedStatus] (
    [RefIndicatorStateDefinedStatusId] INT            IDENTITY (1, 1) NOT NULL,
    [Description]                      NVARCHAR (100) NULL,
    [Code]                             NVARCHAR (50)  NULL,
    [Definition]                       NVARCHAR (MAX) NULL,
    [RefJurisdictionId]                INT            NULL,
    [SortOrder]                        DECIMAL (5, 2) NULL,
    CONSTRAINT [PK_RefIndicatorStateDefinedStatus] PRIMARY KEY CLUSTERED ([RefIndicatorStateDefinedStatusId] ASC)
);


GO
PRINT N'Creating [dbo].[RefIndicatorStatusCustomType]...';


GO
CREATE TABLE [dbo].[RefIndicatorStatusCustomType] (
    [RefIndicatorStatusCustomTypeId] INT            IDENTITY (1, 1) NOT NULL,
    [Description]                    NVARCHAR (100) NULL,
    [Code]                           NVARCHAR (50)  NULL,
    [Definition]                     NVARCHAR (MAX) NULL,
    [RefJurisdictionId]              INT            NULL,
    [SortOrder]                      DECIMAL (5, 2) NULL,
    CONSTRAINT [PK_RefIndicatorStatusCustomType] PRIMARY KEY CLUSTERED ([RefIndicatorStatusCustomTypeId] ASC)
);


GO
PRINT N'Creating [dbo].[RefIndicatorStatusSubgroupType]...';


GO
CREATE TABLE [dbo].[RefIndicatorStatusSubgroupType] (
    [RefIndicatorStatusSubgroupTypeId] INT            IDENTITY (1, 1) NOT NULL,
    [Description]                      NVARCHAR (100) NULL,
    [Code]                             NVARCHAR (50)  NULL,
    [Definition]                       NVARCHAR (MAX) NULL,
    [RefJurisdictionId]                INT            NULL,
    [SortOrder]                        DECIMAL (5, 2) NULL,
    CONSTRAINT [PK_RefIndicatorStatusSubgroupType] PRIMARY KEY CLUSTERED ([RefIndicatorStatusSubgroupTypeId] ASC)
);


GO
PRINT N'Creating [dbo].[RefIndicatorStatusType]...';


GO
CREATE TABLE [dbo].[RefIndicatorStatusType] (
    [RefIndicatorStatusTypeId] INT            IDENTITY (1, 1) NOT NULL,
    [Description]              NVARCHAR (100) NULL,
    [Code]                     NVARCHAR (50)  NULL,
    [Definition]               NVARCHAR (MAX) NULL,
    [RefJurisdictionId]        INT            NULL,
    [SortOrder]                DECIMAL (5, 2) NULL,
    CONSTRAINT [PK_RefIndicatorStatusType] PRIMARY KEY CLUSTERED ([RefIndicatorStatusTypeId] ASC)
);


GO
PRINT N'Creating [dbo].[RefNSLPStatus]...';


GO
CREATE TABLE [dbo].[RefNSLPStatus] (
    [RefNSLPStatusId]   INT             IDENTITY (1, 1) NOT NULL,
    [Description]       NVARCHAR (100)  NOT NULL,
    [Code]              NVARCHAR (50)   NULL,
    [Definition]        NVARCHAR (4000) NULL,
    [RefJurisdictionId] INT             NULL,
    [SortOrder]         DECIMAL (5, 2)  NULL,
    CONSTRAINT [PK__RefNSLPStatus] PRIMARY KEY CLUSTERED ([RefNSLPStatusId] ASC)
);


GO
PRINT N'Creating [dbo].[RefOutOfFieldStatus]...';


GO
CREATE TABLE [dbo].[RefOutOfFieldStatus] (
    [RefOutOfFieldStatusId] INT            IDENTITY (1, 1) NOT NULL,
    [Description]           NVARCHAR (100) NULL,
    [Code]                  NVARCHAR (50)  NULL,
    [Definition]            NVARCHAR (MAX) NULL,
    [RefJurisdictionId]     INT            NULL,
    [SortOrder]             DECIMAL (5, 2) NULL,
    CONSTRAINT [PK_RefOutOfFieldStatus] PRIMARY KEY CLUSTERED ([RefOutOfFieldStatusId] ASC)
);


GO
PRINT N'Creating [dbo].[RefProgressAchievingEnglishLanguageProficiencyIndicatorStatus]...';


GO
CREATE TABLE [dbo].[RefProgressAchievingEnglishLanguageProficiencyIndicatorStatus] (
    [RefProgressAchievingEnglishLanguageProficiencyIndicatorStatusId] INT            IDENTITY (1, 1) NOT NULL,
    [Description]                                                     NVARCHAR (100) NULL,
    [Code]                                                            NVARCHAR (50)  NULL,
    [Definition]                                                      NVARCHAR (MAX) NULL,
    [RefJurisdictionId]                                               INT            NULL,
    [SortOrder]                                                       DECIMAL (5, 2) NULL,
    CONSTRAINT [PK_RefProgressAchievingEnglishLanguageProficiencyIndicatorStatus] PRIMARY KEY CLUSTERED ([RefProgressAchievingEnglishLanguageProficiencyIndicatorStatusId] ASC)
);


GO
PRINT N'Creating [dbo].[RefSchoolDangerousStatus]...';


GO
CREATE TABLE [dbo].[RefSchoolDangerousStatus] (
    [RefSchoolDangerousStatusId] INT             IDENTITY (1, 1) NOT NULL,
    [Description]                NVARCHAR (100)  NOT NULL,
    [Code]                       NVARCHAR (50)   NULL,
    [Definition]                 NVARCHAR (4000) NULL,
    [RefJurisdictionId]          INT             NULL,
    [SortOrder]                  DECIMAL (5, 2)  NULL,
    CONSTRAINT [PK__RefSchoolDangerousStatus] PRIMARY KEY CLUSTERED ([RefSchoolDangerousStatusId] ASC)
);


GO
PRINT N'Creating [dbo].[RefTargetedSupport]...';


GO
CREATE TABLE [dbo].[RefTargetedSupport] (
    [RefTargetedSupportId] INT            IDENTITY (1, 1) NOT NULL,
    [Description]          NVARCHAR (100) NULL,
    [Code]                 NVARCHAR (50)  NULL,
    [Definition]           NVARCHAR (MAX) NULL,
    [RefJurisdictionId]    INT            NULL,
    [SortOrder]            DECIMAL (5, 2) NULL,
    CONSTRAINT [PK_RefTargetedSupport] PRIMARY KEY CLUSTERED ([RefTargetedSupportId] ASC)
);


GO
PRINT N'Creating [dbo].[RefUnexperiencedStatus]...';


GO
CREATE TABLE [dbo].[RefUnexperiencedStatus] (
    [RefUnexperiencedStatusId] INT            IDENTITY (1, 1) NOT NULL,
    [Description]              NVARCHAR (100) NULL,
    [Code]                     NVARCHAR (50)  NULL,
    [Definition]               NVARCHAR (MAX) NULL,
    [RefJurisdictionId]        INT            NULL,
    [SortOrder]                DECIMAL (5, 2) NULL,
    CONSTRAINT [PK_RefUnexperiencedStatus] PRIMARY KEY CLUSTERED ([RefUnexperiencedStatusId] ASC)
);


GO
PRINT N'Creating [dbo].[AssessmentResult].[IX_AssessmentResultId]...';


GO
CREATE NONCLUSTERED INDEX [IX_AssessmentResultId]
    ON [dbo].[AssessmentResult]([AssessmentResultId] ASC);


GO
PRINT N'Creating [dbo].[OrganizationPersonRole].[IX_EntryDate_ExitDate]...';


GO
CREATE NONCLUSTERED INDEX [IX_EntryDate_ExitDate]
    ON [dbo].[OrganizationPersonRole]([EntryDate] ASC, [ExitDate] ASC);


GO
PRINT N'Creating [dbo].[OrganizationPersonRole].[IX_PersonID]...';


GO
CREATE NONCLUSTERED INDEX [IX_PersonID]
    ON [dbo].[OrganizationPersonRole]([PersonId] ASC);


GO
PRINT N'Creating [dbo].[PersonStatus].[IX_PersonId_RefPersonStatusTypeId]...';


GO
CREATE NONCLUSTERED INDEX [IX_PersonId_RefPersonStatusTypeId]
    ON [dbo].[PersonStatus]([PersonId] ASC, [RefPersonStatusTypeId] ASC);


GO
PRINT N'Creating [dbo].[FK_AssessmentRegirstration_RefAssessmentForm]...';


GO
ALTER TABLE [dbo].[AssessmentRegistration] WITH NOCHECK
    ADD CONSTRAINT [FK_AssessmentRegirstration_RefAssessmentForm] FOREIGN KEY ([AssessmentFormId]) REFERENCES [dbo].[AssessmentForm] ([AssessmentFormId]);


GO
PRINT N'Creating [dbo].[FK_AssessmentRegistration_AssessmentAdministration]...';


GO
ALTER TABLE [dbo].[AssessmentRegistration] WITH NOCHECK
    ADD CONSTRAINT [FK_AssessmentRegistration_AssessmentAdministration] FOREIGN KEY ([AssessmentAdministrationId]) REFERENCES [dbo].[AssessmentAdministration] ([AssessmentAdministrationId]);


GO
PRINT N'Creating [dbo].[FK_AssessmentRegistration_CourseSection]...';


GO
ALTER TABLE [dbo].[AssessmentRegistration] WITH NOCHECK
    ADD CONSTRAINT [FK_AssessmentRegistration_CourseSection] FOREIGN KEY ([CourseSectionOrganizationId]) REFERENCES [dbo].[CourseSection] ([OrganizationId]);


GO
PRINT N'Creating [dbo].[FK_AssessmentRegistration_Organization]...';


GO
ALTER TABLE [dbo].[AssessmentRegistration] WITH NOCHECK
    ADD CONSTRAINT [FK_AssessmentRegistration_Organization] FOREIGN KEY ([OrganizationId]) REFERENCES [dbo].[Organization] ([OrganizationId]);


GO
PRINT N'Creating [dbo].[FK_AssessmentRegistration_Person]...';


GO
ALTER TABLE [dbo].[AssessmentRegistration] WITH NOCHECK
    ADD CONSTRAINT [FK_AssessmentRegistration_Person] FOREIGN KEY ([AssignedByPersonId]) REFERENCES [dbo].[Person] ([PersonId]);


GO
PRINT N'Creating [dbo].[FK_AssessmentRegistration_Person2]...';


GO
ALTER TABLE [dbo].[AssessmentRegistration] WITH NOCHECK
    ADD CONSTRAINT [FK_AssessmentRegistration_Person2] FOREIGN KEY ([PersonId]) REFERENCES [dbo].[Person] ([PersonId]);


GO
PRINT N'Creating [dbo].[FK_AssessmentRegistration_RefAssessmentParticipationIndicator]...';


GO
ALTER TABLE [dbo].[AssessmentRegistration] WITH NOCHECK
    ADD CONSTRAINT [FK_AssessmentRegistration_RefAssessmentParticipationIndicator] FOREIGN KEY ([RefAssessmentParticipationIndicatorId]) REFERENCES [dbo].[RefAssessmentParticipationIndicator] ([RefAssessmentParticipationIndicatorId]);


GO
PRINT N'Creating [dbo].[FK_AssessmentRegistration_RefAssessmentPurpose]...';


GO
ALTER TABLE [dbo].[AssessmentRegistration] WITH NOCHECK
    ADD CONSTRAINT [FK_AssessmentRegistration_RefAssessmentPurpose] FOREIGN KEY ([RefAssessmentPurposeId]) REFERENCES [dbo].[RefAssessmentPurpose] ([RefAssessmentPurposeId]);


GO
PRINT N'Creating [dbo].[FK_AssessmentRegistration_RefAssessmentReasonNotCompleting]...';


GO
ALTER TABLE [dbo].[AssessmentRegistration] WITH NOCHECK
    ADD CONSTRAINT [FK_AssessmentRegistration_RefAssessmentReasonNotCompleting] FOREIGN KEY ([RefAssessmentReasonNotCompletingId]) REFERENCES [dbo].[RefAssessmentReasonNotCompleting] ([RefAssessmentReasonNotCompletingId]);


GO
PRINT N'Creating [dbo].[FK_AssessmentRegistration_RefAssessmentReasonNotTested]...';


GO
ALTER TABLE [dbo].[AssessmentRegistration] WITH NOCHECK
    ADD CONSTRAINT [FK_AssessmentRegistration_RefAssessmentReasonNotTested] FOREIGN KEY ([RefAssessmentReasonNotTestedId]) REFERENCES [dbo].[RefAssessmentReasonNotTested] ([RefAssessmentReasonNotTestedId]);


GO
PRINT N'Creating [dbo].[FK_AssessmentRegistration_RefAssessmentRegistrationCompletionStatus]...';


GO
ALTER TABLE [dbo].[AssessmentRegistration] WITH NOCHECK
    ADD CONSTRAINT [FK_AssessmentRegistration_RefAssessmentRegistrationCompletionStatus] FOREIGN KEY ([RefAssessmentRegistrationCompletionStatusId]) REFERENCES [dbo].[RefAssessmentRegistrationCompletionStatus] ([RefAssessmentRegistrationCompletionStatusId]);


GO
PRINT N'Creating [dbo].[FK_AssessmentRegistration_RefGradeLevel]...';


GO
ALTER TABLE [dbo].[AssessmentRegistration] WITH NOCHECK
    ADD CONSTRAINT [FK_AssessmentRegistration_RefGradeLevel] FOREIGN KEY ([RefGradeLevelWhenAssessedId]) REFERENCES [dbo].[RefGradeLevel] ([RefGradeLevelId]);


GO
PRINT N'Creating [dbo].[FK_AssessmentRegistration_RefGradeLevel1]...';


GO
ALTER TABLE [dbo].[AssessmentRegistration] WITH NOCHECK
    ADD CONSTRAINT [FK_AssessmentRegistration_RefGradeLevel1] FOREIGN KEY ([RefGradeLevelToBeAssessedId]) REFERENCES [dbo].[RefGradeLevel] ([RefGradeLevelId]);


GO
PRINT N'Creating [dbo].[FK_AssessmentRegistration_RefOrganization1]...';


GO
ALTER TABLE [dbo].[AssessmentRegistration] WITH NOCHECK
    ADD CONSTRAINT [FK_AssessmentRegistration_RefOrganization1] FOREIGN KEY ([SchoolOrganizationId]) REFERENCES [dbo].[Organization] ([OrganizationId]);


GO
PRINT N'Creating [dbo].[FK_AssessmentRegistration_RefOrganization2]...';


GO
ALTER TABLE [dbo].[AssessmentRegistration] WITH NOCHECK
    ADD CONSTRAINT [FK_AssessmentRegistration_RefOrganization2] FOREIGN KEY ([LeaOrganizationId]) REFERENCES [dbo].[Organization] ([OrganizationId]);


GO
PRINT N'Creating [dbo].[FK_AssessmentRegistration_Registration]...';


GO
ALTER TABLE [dbo].[AssessmentRegistration_Accommodation] WITH NOCHECK
    ADD CONSTRAINT [FK_AssessmentRegistration_Registration] FOREIGN KEY ([AssessmentRegistrationId]) REFERENCES [dbo].[AssessmentRegistration] ([AssessmentRegistrationId]);


GO
PRINT N'Creating [dbo].[FK_AssessmentResult_AssessmentRegistration]...';


GO
ALTER TABLE [dbo].[AssessmentResult] WITH NOCHECK
    ADD CONSTRAINT [FK_AssessmentResult_AssessmentRegistration] FOREIGN KEY ([AssessmentRegistrationId]) REFERENCES [dbo].[AssessmentRegistration] ([AssessmentRegistrationId]);


GO
PRINT N'Creating [dbo].[FK_LearnerActivity_AssessmentRegistration]...';


GO
ALTER TABLE [dbo].[LearnerActivity] WITH NOCHECK
    ADD CONSTRAINT [FK_LearnerActivity_AssessmentRegistration] FOREIGN KEY ([AssessmentRegistrationId]) REFERENCES [dbo].[AssessmentRegistration] ([AssessmentRegistrationId]);


GO
PRINT N'Creating [dbo].[FK_AssessmentParticipantSession_AssessmentRegistration]...';


GO
ALTER TABLE [dbo].[AssessmentParticipantSession] WITH NOCHECK
    ADD CONSTRAINT [FK_AssessmentParticipantSession_AssessmentRegistration] FOREIGN KEY ([AssessmentRegistrationId]) REFERENCES [dbo].[AssessmentRegistration] ([AssessmentRegistrationId]);


GO
PRINT N'Creating [dbo].[FK_K12LEAFederalFunds_RefRLISProgramUse]...';


GO
ALTER TABLE [dbo].[K12LeaFederalFunds] WITH NOCHECK
    ADD CONSTRAINT [FK_K12LEAFederalFunds_RefRLISProgramUse] FOREIGN KEY ([RefRlisProgramUseId]) REFERENCES [dbo].[RefRlisProgramUse] ([RefRlisProgramUseId]);


GO
PRINT N'Creating [dbo].[FK_K12LEAFederalFunds_OrganizationCalendarSession]...';


GO
ALTER TABLE [dbo].[K12LeaFederalFunds] WITH NOCHECK
    ADD CONSTRAINT [FK_K12LEAFederalFunds_OrganizationCalendarSession] FOREIGN KEY ([OrganizationCalendarSessionId]) REFERENCES [dbo].[OrganizationCalendarSession] ([OrganizationCalendarSessionId]);


GO
PRINT N'Creating [dbo].[FK_K12SchoolCorrectiveAction_K12School]...';


GO
ALTER TABLE [dbo].[K12SchoolCorrectiveAction] WITH NOCHECK
    ADD CONSTRAINT [FK_K12SchoolCorrectiveAction_K12School] FOREIGN KEY ([K12SchoolId]) REFERENCES [dbo].[K12School] ([K12SchoolId]);


GO
PRINT N'Creating [dbo].[FK_K12SchoolCorrectiveAction_RefCorrectiveActionType]...';


GO
ALTER TABLE [dbo].[K12SchoolCorrectiveAction] WITH NOCHECK
    ADD CONSTRAINT [FK_K12SchoolCorrectiveAction_RefCorrectiveActionType] FOREIGN KEY ([RefCorrectiveActionTypeId]) REFERENCES [dbo].[RefCorrectiveActionType] ([RefCorrectiveActionId]);


GO
PRINT N'Creating [dbo].[FK_K12SchoolGradeOffered_K12School]...';


GO
ALTER TABLE [dbo].[K12SchoolGradeOffered] WITH NOCHECK
    ADD CONSTRAINT [FK_K12SchoolGradeOffered_K12School] FOREIGN KEY ([K12SchoolId]) REFERENCES [dbo].[K12School] ([K12SchoolId]);


GO
PRINT N'Creating [dbo].[FK_K12SchoolGradeOffered_RefGradeLevel]...';


GO
ALTER TABLE [dbo].[K12SchoolGradeOffered] WITH NOCHECK
    ADD CONSTRAINT [FK_K12SchoolGradeOffered_RefGradeLevel] FOREIGN KEY ([RefGradeLevelId]) REFERENCES [dbo].[RefGradeLevel] ([RefGradeLevelId]);


GO
PRINT N'Creating [dbo].[FK_K12SchoolImprovement_K12School]...';


GO
ALTER TABLE [dbo].[K12SchoolImprovement] WITH NOCHECK
    ADD CONSTRAINT [FK_K12SchoolImprovement_K12School] FOREIGN KEY ([K12SchoolId]) REFERENCES [dbo].[K12School] ([K12SchoolId]);


GO
PRINT N'Creating [dbo].[FK_K12SchoolImprovement_RefSchoolImprovementFunds]...';


GO
ALTER TABLE [dbo].[K12SchoolImprovement] WITH NOCHECK
    ADD CONSTRAINT [FK_K12SchoolImprovement_RefSchoolImprovementFunds] FOREIGN KEY ([RefSchoolImprovementFundsId]) REFERENCES [dbo].[RefSchoolImprovementFunds] ([RefSchoolImprovementFundsId]);


GO
PRINT N'Creating [dbo].[FK_K12SchoolImprovement_RefSchoolImprovementStatus]...';


GO
ALTER TABLE [dbo].[K12SchoolImprovement] WITH NOCHECK
    ADD CONSTRAINT [FK_K12SchoolImprovement_RefSchoolImprovementStatus] FOREIGN KEY ([RefSchoolImprovementStatusId]) REFERENCES [dbo].[RefSchoolImprovementStatus] ([RefSchoolImprovementStatusId]);


GO
PRINT N'Creating [dbo].[FK_K12SchoolImprovement_RefSIGInterventionType]...';


GO
ALTER TABLE [dbo].[K12SchoolImprovement] WITH NOCHECK
    ADD CONSTRAINT [FK_K12SchoolImprovement_RefSIGInterventionType] FOREIGN KEY ([RefSigInterventionTypeId]) REFERENCES [dbo].[RefSigInterventionType] ([RefSigInterventionTypeId]);


GO
PRINT N'Creating [dbo].[FK_K12SchoolStatus_K12School]...';


GO
ALTER TABLE [dbo].[K12SchoolStatus] WITH NOCHECK
    ADD CONSTRAINT [FK_K12SchoolStatus_K12School] FOREIGN KEY ([K12SchoolId]) REFERENCES [dbo].[K12School] ([K12SchoolId]);


GO
PRINT N'Creating [dbo].[FK_K12SchoolStatus_RefAlternativeSchoolFocus]...';


GO
ALTER TABLE [dbo].[K12SchoolStatus] WITH NOCHECK
    ADD CONSTRAINT [FK_K12SchoolStatus_RefAlternativeSchoolFocus] FOREIGN KEY ([RefAlternativeSchoolFocusId]) REFERENCES [dbo].[RefAlternativeSchoolFocus] ([RefAlternativeSchoolFocusId]);


GO
PRINT N'Creating [dbo].[FK_K12SchoolStatus_RefInternetAccess]...';


GO
ALTER TABLE [dbo].[K12SchoolStatus] WITH NOCHECK
    ADD CONSTRAINT [FK_K12SchoolStatus_RefInternetAccess] FOREIGN KEY ([RefInternetAccessId]) REFERENCES [dbo].[RefInternetAccess] ([RefInternetAccessId]);


GO
PRINT N'Creating [dbo].[FK_K12SchoolStatus_RefMagnetSpecialProgram]...';


GO
ALTER TABLE [dbo].[K12SchoolStatus] WITH NOCHECK
    ADD CONSTRAINT [FK_K12SchoolStatus_RefMagnetSpecialProgram] FOREIGN KEY ([RefMagnetSpecialProgramId]) REFERENCES [dbo].[RefMagnetSpecialProgram] ([RefMagnetSpecialProgramId]);


GO
PRINT N'Creating [dbo].[FK_K12SchoolStatus_RefNationalSchoolLunchProgramStatus]...';


GO
ALTER TABLE [dbo].[K12SchoolStatus] WITH NOCHECK
    ADD CONSTRAINT [FK_K12SchoolStatus_RefNationalSchoolLunchProgramStatus] FOREIGN KEY ([RefNationalSchoolLunchProgramStatusId]) REFERENCES [dbo].[RefNationalSchoolLunchProgramStatus] ([RefNationalSchoolLunchProgramStatusId]);


GO
PRINT N'Creating [dbo].[FK_K12SchoolStatus_RefRestructuringAction]...';


GO
ALTER TABLE [dbo].[K12SchoolStatus] WITH NOCHECK
    ADD CONSTRAINT [FK_K12SchoolStatus_RefRestructuringAction] FOREIGN KEY ([RefRestructuringActionId]) REFERENCES [dbo].[RefRestructuringAction] ([RefRestructuringActionId]);


GO
PRINT N'Creating [dbo].[FK_K12SchoolStatus_RefTitle1SchoolStatus]...';


GO
ALTER TABLE [dbo].[K12SchoolStatus] WITH NOCHECK
    ADD CONSTRAINT [FK_K12SchoolStatus_RefTitle1SchoolStatus] FOREIGN KEY ([RefTitleISchoolStatusId]) REFERENCES [dbo].[RefTitleISchoolStatus] ([RefTitle1SchoolStatusId]);


GO
PRINT N'Creating [dbo].[FK_K12SchoolStatus_RefVirtualSchoolStatus]...';


GO
ALTER TABLE [dbo].[K12SchoolStatus] WITH NOCHECK
    ADD CONSTRAINT [FK_K12SchoolStatus_RefVirtualSchoolStatus] FOREIGN KEY ([RefVirtualSchoolStatusId]) REFERENCES [dbo].[RefVirtualSchoolStatus] ([RefVirtualSchoolStatusId]);


GO
PRINT N'Creating [dbo].[FK_K12SchoolStatus_RefComprehensiveAndTargetedSupport]...';


GO
ALTER TABLE [dbo].[K12SchoolStatus] WITH NOCHECK
    ADD CONSTRAINT [FK_K12SchoolStatus_RefComprehensiveAndTargetedSupport] FOREIGN KEY ([RefComprehensiveAndTargetedSupportId]) REFERENCES [dbo].[RefComprehensiveAndTargetedSupport] ([RefComprehensiveAndTargetedSupportId]);


GO
PRINT N'Creating [dbo].[FK_K12SchoolStatus_RefComprehensiveSupport]...';


GO
ALTER TABLE [dbo].[K12SchoolStatus] WITH NOCHECK
    ADD CONSTRAINT [FK_K12SchoolStatus_RefComprehensiveSupport] FOREIGN KEY ([RefComprehensiveSupportId]) REFERENCES [dbo].[RefComprehensiveSupport] ([RefComprehensiveSupportId]);


GO
PRINT N'Creating [dbo].[FK_K12SchoolStatus_RefTargetedSupport]...';


GO
ALTER TABLE [dbo].[K12SchoolStatus] WITH NOCHECK
    ADD CONSTRAINT [FK_K12SchoolStatus_RefTargetedSupport] FOREIGN KEY ([RefTargetedSupportId]) REFERENCES [dbo].[RefTargetedSupport] ([RefTargetedSupportId]);


GO
PRINT N'Creating [dbo].[FK_K12SchoolStatus_RefNSLPStatus]...';


GO
ALTER TABLE [dbo].[K12SchoolStatus] WITH NOCHECK
    ADD CONSTRAINT [FK_K12SchoolStatus_RefNSLPStatus] FOREIGN KEY ([RefNSLPStatusId]) REFERENCES [dbo].[RefNSLPStatus] ([RefNSLPStatusId]);


GO
PRINT N'Creating [dbo].[FK_K12SchoolStatus_RefSchoolDangerousStatus]...';


GO
ALTER TABLE [dbo].[K12SchoolStatus] WITH NOCHECK
    ADD CONSTRAINT [FK_K12SchoolStatus_RefSchoolDangerousStatus] FOREIGN KEY ([RefSchoolDangerousStatusId]) REFERENCES [dbo].[RefSchoolDangerousStatus] ([RefSchoolDangerousStatusId]);


GO
PRINT N'Creating [dbo].[FK_K12SchoolStatus_RefSchoolImprovementStatus]...';


GO
ALTER TABLE [dbo].[K12SchoolStatus] WITH NOCHECK
    ADD CONSTRAINT [FK_K12SchoolStatus_RefSchoolImprovementStatus] FOREIGN KEY ([RefSchoolImprovementStatusId]) REFERENCES [dbo].[RefSchoolImprovementStatus] ([RefSchoolImprovementStatusId]);


GO
PRINT N'Creating [dbo].[FK_K12SchoolStatus_RefProgressAchievingEnglishLanguageProficiencyIndicatorStatus]...';


GO
ALTER TABLE [dbo].[K12SchoolStatus] WITH NOCHECK
    ADD CONSTRAINT [FK_K12SchoolStatus_RefProgressAchievingEnglishLanguageProficiencyIndicatorStatus] FOREIGN KEY ([RefProgressAchievingEnglishLanguageProficiencyIndicatorStatusId]) REFERENCES [dbo].[RefProgressAchievingEnglishLanguageProficiencyIndicatorStatus] ([RefProgressAchievingEnglishLanguageProficiencyIndicatorStatusId]);


GO
PRINT N'Creating [dbo].[FK_K12EnrollmentMember_OrganizationPerson]...';


GO
ALTER TABLE [dbo].[K12StudentEnrollment] WITH NOCHECK
    ADD CONSTRAINT [FK_K12EnrollmentMember_OrganizationPerson] FOREIGN KEY ([OrganizationPersonRoleId]) REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]) ON DELETE CASCADE ON UPDATE CASCADE;


GO
PRINT N'Creating [dbo].[FK_K12EnrollmentMember_RefGrade]...';


GO
ALTER TABLE [dbo].[K12StudentEnrollment] WITH NOCHECK
    ADD CONSTRAINT [FK_K12EnrollmentMember_RefGrade] FOREIGN KEY ([RefEntryGradeLevelId]) REFERENCES [dbo].[RefGradeLevel] ([RefGradeLevelId]);


GO
PRINT N'Creating [dbo].[FK_K12StudentEnrollment_RefDirectoryInformationBlockStatus]...';


GO
ALTER TABLE [dbo].[K12StudentEnrollment] WITH NOCHECK
    ADD CONSTRAINT [FK_K12StudentEnrollment_RefDirectoryInformationBlockStatus] FOREIGN KEY ([RefDirectoryInformationBlockStatusId]) REFERENCES [dbo].[RefDirectoryInformationBlockStatus] ([RefDirectoryInformationBlockStatusId]);


GO
PRINT N'Creating [dbo].[FK_K12StudentEnrollment_RefEndOfTermStatus]...';


GO
ALTER TABLE [dbo].[K12StudentEnrollment] WITH NOCHECK
    ADD CONSTRAINT [FK_K12StudentEnrollment_RefEndOfTermStatus] FOREIGN KEY ([RefEndOfTermStatusId]) REFERENCES [dbo].[RefEndOfTermStatus] ([RefEndOfTermStatusId]);


GO
PRINT N'Creating [dbo].[FK_K12StudentEnrollment_RefEnrollmentStatus]...';


GO
ALTER TABLE [dbo].[K12StudentEnrollment] WITH NOCHECK
    ADD CONSTRAINT [FK_K12StudentEnrollment_RefEnrollmentStatus] FOREIGN KEY ([RefEnrollmentStatusId]) REFERENCES [dbo].[RefEnrollmentStatus] ([RefEnrollmentStatusId]);


GO
PRINT N'Creating [dbo].[FK_K12StudentEnrollment_RefEntryType]...';


GO
ALTER TABLE [dbo].[K12StudentEnrollment] WITH NOCHECK
    ADD CONSTRAINT [FK_K12StudentEnrollment_RefEntryType] FOREIGN KEY ([RefEntryType]) REFERENCES [dbo].[RefEntryType] ([RefEntryTypeId]);


GO
PRINT N'Creating [dbo].[FK_K12StudentEnrollment_RefExitOrWithdrawalStatus]...';


GO
ALTER TABLE [dbo].[K12StudentEnrollment] WITH NOCHECK
    ADD CONSTRAINT [FK_K12StudentEnrollment_RefExitOrWithdrawalStatus] FOREIGN KEY ([RefExitOrWithdrawalStatusId]) REFERENCES [dbo].[RefExitOrWithdrawalStatus] ([RefExitOrWithdrawalStatusId]);


GO
PRINT N'Creating [dbo].[FK_K12StudentEnrollment_RefExitOrWithdrawalType]...';


GO
ALTER TABLE [dbo].[K12StudentEnrollment] WITH NOCHECK
    ADD CONSTRAINT [FK_K12StudentEnrollment_RefExitOrWithdrawalType] FOREIGN KEY ([RefExitOrWithdrawalTypeId]) REFERENCES [dbo].[RefExitOrWithdrawalType] ([RefExitOrWithdrawalTypeId]);


GO
PRINT N'Creating [dbo].[FK_K12StudentEnrollment_RefFoodServiceEligibility]...';


GO
ALTER TABLE [dbo].[K12StudentEnrollment] WITH NOCHECK
    ADD CONSTRAINT [FK_K12StudentEnrollment_RefFoodServiceEligibility] FOREIGN KEY ([RefFoodServiceEligibilityId]) REFERENCES [dbo].[RefFoodServiceEligibility] ([RefFoodServiceEligibilityId]);


GO
PRINT N'Creating [dbo].[FK_K12StudentEnrollment_RefGradeLevel]...';


GO
ALTER TABLE [dbo].[K12StudentEnrollment] WITH NOCHECK
    ADD CONSTRAINT [FK_K12StudentEnrollment_RefGradeLevel] FOREIGN KEY ([RefExitGradeLevel]) REFERENCES [dbo].[RefGradeLevel] ([RefGradeLevelId]);


GO
PRINT N'Creating [dbo].[FK_K12StudentEnrollment_RefNonPromotionReason]...';


GO
ALTER TABLE [dbo].[K12StudentEnrollment] WITH NOCHECK
    ADD CONSTRAINT [FK_K12StudentEnrollment_RefNonPromotionReason] FOREIGN KEY ([RefNonPromotionReasonId]) REFERENCES [dbo].[RefNonPromotionReason] ([RefNonPromotionReasonId]);


GO
PRINT N'Creating [dbo].[FK_K12StudentEnrollment_RefPromotionReason]...';


GO
ALTER TABLE [dbo].[K12StudentEnrollment] WITH NOCHECK
    ADD CONSTRAINT [FK_K12StudentEnrollment_RefPromotionReason] FOREIGN KEY ([RefPromotionReasonId]) REFERENCES [dbo].[RefPromotionReason] ([RefPromotionReasonId]);


GO
PRINT N'Creating [dbo].[FK_K12StudentEnrollment_RefPublicSchoolResidence]...';


GO
ALTER TABLE [dbo].[K12StudentEnrollment] WITH NOCHECK
    ADD CONSTRAINT [FK_K12StudentEnrollment_RefPublicSchoolResidence] FOREIGN KEY ([RefPublicSchoolResidence]) REFERENCES [dbo].[RefPublicSchoolResidence] ([RefPublicSchoolResidenceId]);


GO
PRINT N'Creating [dbo].[FK_K12StudentEnrollment_RefStudentEnrollmentAccessType]...';


GO
ALTER TABLE [dbo].[K12StudentEnrollment] WITH NOCHECK
    ADD CONSTRAINT [FK_K12StudentEnrollment_RefStudentEnrollmentAccessType] FOREIGN KEY ([RefStudentEnrollmentAccessTypeId]) REFERENCES [dbo].[RefStudentEnrollmentAccessType] ([RefStudentEnrollmentAccessTypeId]);


GO
PRINT N'Creating [dbo].[FK_K12StudentEnrollment_OrganizationPersonRole]...';


GO
ALTER TABLE [dbo].[K12StudentEnrollment] WITH NOCHECK
    ADD CONSTRAINT [FK_K12StudentEnrollment_OrganizationPersonRole] FOREIGN KEY ([OrganizationPersonRoleId]) REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]);


GO
PRINT N'Creating [dbo].[FK_OrganizationRelationship_Organization_Child]...';


GO
ALTER TABLE [dbo].[OrganizationRelationship] WITH NOCHECK
    ADD CONSTRAINT [FK_OrganizationRelationship_Organization_Child] FOREIGN KEY ([OrganizationId]) REFERENCES [dbo].[Organization] ([OrganizationId]);


GO
PRINT N'Creating [dbo].[FK_OrganizationRelationship_RefOrganizationRelationshipType]...';


GO
ALTER TABLE [dbo].[OrganizationRelationship] WITH NOCHECK
    ADD CONSTRAINT [FK_OrganizationRelationship_RefOrganizationRelationshipType] FOREIGN KEY ([RefOrganizationRelationshipId]) REFERENCES [dbo].[RefOrganizationRelationship] ([RefOrganizationRelationshipId]);


GO
PRINT N'Creating [dbo].[FK_PersonDisability_Person]...';


GO
ALTER TABLE [dbo].[PersonDisability] WITH NOCHECK
    ADD CONSTRAINT [FK_PersonDisability_Person] FOREIGN KEY ([PersonId]) REFERENCES [dbo].[Person] ([PersonId]);


GO
PRINT N'Creating [dbo].[FK_PersonDisability_RefAccommodationsNeededType]...';


GO
ALTER TABLE [dbo].[PersonDisability] WITH NOCHECK
    ADD CONSTRAINT [FK_PersonDisability_RefAccommodationsNeededType] FOREIGN KEY ([RefAccommodationsNeededTypeId]) REFERENCES [dbo].[RefAccommodationsNeededType] ([RefAccommodationsNeededTypeId]);


GO
PRINT N'Creating [dbo].[FK_PersonDisability_RefDisabilityConditionStatusCode]...';


GO
ALTER TABLE [dbo].[PersonDisability] WITH NOCHECK
    ADD CONSTRAINT [FK_PersonDisability_RefDisabilityConditionStatusCode] FOREIGN KEY ([RefDisabilityConditionStatusCodeId]) REFERENCES [dbo].[RefDisabilityConditionStatusCode] ([RefDisabilityConditionStatusCodeId]);


GO
PRINT N'Creating [dbo].[FK_PersonDisability_RefDisabilityConditionType]...';


GO
ALTER TABLE [dbo].[PersonDisability] WITH NOCHECK
    ADD CONSTRAINT [FK_PersonDisability_RefDisabilityConditionType] FOREIGN KEY ([RefDisabilityConditionTypeId]) REFERENCES [dbo].[RefDisabilityConditionType] ([RefDisabilityConditionTypeId]);


GO
PRINT N'Creating [dbo].[FK_PersonDisability_RefDisabilityDeterminationSourceType]...';


GO
ALTER TABLE [dbo].[PersonDisability] WITH NOCHECK
    ADD CONSTRAINT [FK_PersonDisability_RefDisabilityDeterminationSourceType] FOREIGN KEY ([RefDisabilityDeterminationSourceTypeId]) REFERENCES [dbo].[RefDisabilityDeterminationSourceType] ([RefDisabilityDeterminationSourceTypeId]);


GO
PRINT N'Creating [dbo].[FK_PersonDisability_RefDisabilityType]...';


GO
ALTER TABLE [dbo].[PersonDisability] WITH NOCHECK
    ADD CONSTRAINT [FK_PersonDisability_RefDisabilityType] FOREIGN KEY ([PrimaryDisabilityTypeId]) REFERENCES [dbo].[RefDisabilityType] ([RefDisabilityTypeId]);


GO
PRINT N'Creating [dbo].[FK_PersonDisability_RefIDEADisabilityType]...';


GO
ALTER TABLE [dbo].[PersonDisability] WITH NOCHECK
    ADD CONSTRAINT [FK_PersonDisability_RefIDEADisabilityType] FOREIGN KEY ([RefIDEADisabilityTypeId]) REFERENCES [dbo].[RefIDEADisabilityType] ([RefIDEADisabilityTypeId]);


GO
PRINT N'Creating [dbo].[FK_WorkforceProgramParticipation_PersonProgramParticipation]...';


GO
ALTER TABLE [dbo].[WorkforceProgramParticipation] WITH NOCHECK
    ADD CONSTRAINT [FK_WorkforceProgramParticipation_PersonProgramParticipation] FOREIGN KEY ([PersonProgramParticipationId]) REFERENCES [dbo].[PersonProgramParticipation] ([PersonProgramParticipationId]);


GO
PRINT N'Creating [dbo].[FK_PersonProgramParticipation_OrganizationPersonRole]...';


GO
ALTER TABLE [dbo].[PersonProgramParticipation] WITH NOCHECK
    ADD CONSTRAINT [FK_PersonProgramParticipation_OrganizationPersonRole] FOREIGN KEY ([OrganizationPersonRoleId]) REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]);


GO
PRINT N'Creating [dbo].[FK_PersonProgramParticipation_RefParticipationType]...';


GO
ALTER TABLE [dbo].[PersonProgramParticipation] WITH NOCHECK
    ADD CONSTRAINT [FK_PersonProgramParticipation_RefParticipationType] FOREIGN KEY ([RefParticipationTypeId]) REFERENCES [dbo].[RefParticipationType] ([RefParticipationTypeId]);


GO
PRINT N'Creating [dbo].[FK_PersonProgramParticipation_RefProgramExitReason]...';


GO
ALTER TABLE [dbo].[PersonProgramParticipation] WITH NOCHECK
    ADD CONSTRAINT [FK_PersonProgramParticipation_RefProgramExitReason] FOREIGN KEY ([RefProgramExitReasonId]) REFERENCES [dbo].[RefProgramExitReason] ([RefProgramExitReasonId]);


GO
PRINT N'Creating [dbo].[FK_ProgramParticipationAE_PersonProgramParticipation]...';


GO
ALTER TABLE [dbo].[ProgramParticipationAE] WITH NOCHECK
    ADD CONSTRAINT [FK_ProgramParticipationAE_PersonProgramParticipation] FOREIGN KEY ([PersonProgramParticipationId]) REFERENCES [dbo].[PersonProgramParticipation] ([PersonProgramParticipationId]);


GO
PRINT N'Creating [dbo].[FK_ProgramParticipationCte_PersonProgramParticipation]...';


GO
ALTER TABLE [dbo].[ProgramParticipationCte] WITH NOCHECK
    ADD CONSTRAINT [FK_ProgramParticipationCte_PersonProgramParticipation] FOREIGN KEY ([PersonProgramParticipationId]) REFERENCES [dbo].[PersonProgramParticipation] ([PersonProgramParticipationId]);


GO
PRINT N'Creating [dbo].[FK_ProgramParticipationFoodSrvc_PersonProgramParticipation]...';


GO
ALTER TABLE [dbo].[ProgramParticipationFoodService] WITH NOCHECK
    ADD CONSTRAINT [FK_ProgramParticipationFoodSrvc_PersonProgramParticipation] FOREIGN KEY ([PersonProgramParticipationId]) REFERENCES [dbo].[PersonProgramParticipation] ([PersonProgramParticipationId]);


GO
PRINT N'Creating [dbo].[FK_ProgramParticipationMigrant_PersonProgramParticipation]...';


GO
ALTER TABLE [dbo].[ProgramParticipationMigrant] WITH NOCHECK
    ADD CONSTRAINT [FK_ProgramParticipationMigrant_PersonProgramParticipation] FOREIGN KEY ([PersonProgramParticipationId]) REFERENCES [dbo].[PersonProgramParticipation] ([PersonProgramParticipationId]);


GO
PRINT N'Creating [dbo].[FK_ProgramParticipationNeglected_PersonProgramParticipation]...';


GO
ALTER TABLE [dbo].[ProgramParticipationNeglected] WITH NOCHECK
    ADD CONSTRAINT [FK_ProgramParticipationNeglected_PersonProgramParticipation] FOREIGN KEY ([PersonProgramParticipationId]) REFERENCES [dbo].[PersonProgramParticipation] ([PersonProgramParticipationId]);


GO
PRINT N'Creating [dbo].[FK_ProgramParticipationSpecialEducation_PersonProgramParticipat]...';


GO
ALTER TABLE [dbo].[ProgramParticipationSpecialEducation] WITH NOCHECK
    ADD CONSTRAINT [FK_ProgramParticipationSpecialEducation_PersonProgramParticipat] FOREIGN KEY ([PersonProgramParticipationId]) REFERENCES [dbo].[PersonProgramParticipation] ([PersonProgramParticipationId]);


GO
PRINT N'Creating [dbo].[FK_PrgmParticipationTeacherPrep_PersonProgramParticipation]...';


GO
ALTER TABLE [dbo].[ProgramParticipationTeacherPrep] WITH NOCHECK
    ADD CONSTRAINT [FK_PrgmParticipationTeacherPrep_PersonProgramParticipation] FOREIGN KEY ([PersonProgramParticipationId]) REFERENCES [dbo].[PersonProgramParticipation] ([PersonProgramParticipationId]);


GO
PRINT N'Creating [dbo].[FK_ProgramParticipationTitleI_PersonProgramParticipation]...';


GO
ALTER TABLE [dbo].[ProgramParticipationTitleI] WITH NOCHECK
    ADD CONSTRAINT [FK_ProgramParticipationTitleI_PersonProgramParticipation] FOREIGN KEY ([PersonProgramParticipationId]) REFERENCES [dbo].[PersonProgramParticipation] ([PersonProgramParticipationId]);


GO
PRINT N'Creating [dbo].[FK_ProgramParticipationTitleIII_PersonProgramParticipation]...';


GO
ALTER TABLE [dbo].[ProgramParticipationTitleIIILep] WITH NOCHECK
    ADD CONSTRAINT [FK_ProgramParticipationTitleIII_PersonProgramParticipation] FOREIGN KEY ([PersonProgramParticipationId]) REFERENCES [dbo].[PersonProgramParticipation] ([PersonProgramParticipationId]);


GO
PRINT N'Creating [dbo].[FK_ProgramParticipationAE_RefAeFunctioningLevelAtPosttest]...';


GO
ALTER TABLE [dbo].[ProgramParticipationAE] WITH NOCHECK
    ADD CONSTRAINT [FK_ProgramParticipationAE_RefAeFunctioningLevelAtPosttest] FOREIGN KEY ([RefAeFunctioningLevelAtPosttestId]) REFERENCES [dbo].[RefAeFunctioningLevelAtPosttest] ([RefAeFunctioningLevelAtPosttestId]);


GO
PRINT N'Creating [dbo].[FK_ProgramParticipationAE_RefAeInstructionalProgramType]...';


GO
ALTER TABLE [dbo].[ProgramParticipationAE] WITH NOCHECK
    ADD CONSTRAINT [FK_ProgramParticipationAE_RefAeInstructionalProgramType] FOREIGN KEY ([RefAeInstructionalProgramTypeId]) REFERENCES [dbo].[RefAeInstructionalProgramType] ([RefAeInstructionalProgramTypeId]);


GO
PRINT N'Creating [dbo].[FK_ProgramParticipationAE_RefAePostsecondaryTransitionAction]...';


GO
ALTER TABLE [dbo].[ProgramParticipationAE] WITH NOCHECK
    ADD CONSTRAINT [FK_ProgramParticipationAE_RefAePostsecondaryTransitionAction] FOREIGN KEY ([RefAePostsecondaryTransitionActionId]) REFERENCES [dbo].[RefAePostsecondaryTransitionAction] ([RefAePostsecondaryTransitionActionId]);


GO
PRINT N'Creating [dbo].[FK_ProgramParticipationAE_RefCorrectionalEducationFacilityType]...';


GO
ALTER TABLE [dbo].[ProgramParticipationAE] WITH NOCHECK
    ADD CONSTRAINT [FK_ProgramParticipationAE_RefCorrectionalEducationFacilityType] FOREIGN KEY ([RefCorrectionalEducationFacilityTypeId]) REFERENCES [dbo].[RefCorrectionalEducationFacilityType] ([RefCorrectionalEducationFacilityTypeId]);


GO
PRINT N'Creating [dbo].[FK_ProgramParticipationAE_RefGoalsForAttendingAdultEducation]...';


GO
ALTER TABLE [dbo].[ProgramParticipationAE] WITH NOCHECK
    ADD CONSTRAINT [FK_ProgramParticipationAE_RefGoalsForAttendingAdultEducation] FOREIGN KEY ([RefGoalsForAttendingAdultEducationId]) REFERENCES [dbo].[RefGoalsForAttendingAdultEducation] ([RefGoalsForAttendingAdultEducationId]);


GO
PRINT N'Creating [dbo].[FK_ProgramParticipationAE_RefWorkbasedLearningOpportunityType]...';


GO
ALTER TABLE [dbo].[ProgramParticipationAE] WITH NOCHECK
    ADD CONSTRAINT [FK_ProgramParticipationAE_RefWorkbasedLearningOpportunityType] FOREIGN KEY ([RefWorkbasedLearningOpportunityTypeId]) REFERENCES [dbo].[RefWorkbasedLearningOpportunityType] ([RefWorkbasedLearningOpportunityTypeId]);


GO
PRINT N'Creating [dbo].[FK_ProgramParticipation_RefAeSpecialProgramType]...';


GO
ALTER TABLE [dbo].[ProgramParticipationAE] WITH NOCHECK
    ADD CONSTRAINT [FK_ProgramParticipation_RefAeSpecialProgramType] FOREIGN KEY ([RefAeSpecialProgramTypeId]) REFERENCES [dbo].[RefAeSpecialProgramType] ([RefAeSpecialProgramTypeId]);


GO
PRINT N'Creating [dbo].[FK_ProgramParticipationAE_RefAeFunctioningLevelAtIntake]...';


GO
ALTER TABLE [dbo].[ProgramParticipationAE] WITH NOCHECK
    ADD CONSTRAINT [FK_ProgramParticipationAE_RefAeFunctioningLevelAtIntake] FOREIGN KEY ([RefAeFunctioningLevelAtIntakeId]) REFERENCES [dbo].[RefAeFunctioningLevelAtIntake] ([RefAeFunctioningLevelAtIntakeId]);


GO
PRINT N'Creating [dbo].[FK_ProgramParticipationCte_RefNonTraditionalGenderStatus]...';


GO
ALTER TABLE [dbo].[ProgramParticipationCte] WITH NOCHECK
    ADD CONSTRAINT [FK_ProgramParticipationCte_RefNonTraditionalGenderStatus] FOREIGN KEY ([RefNonTraditionalGenderStatusId]) REFERENCES [dbo].[RefNonTraditionalGenderStatus] ([RefNonTraditionalGenderStatusId]);


GO
PRINT N'Creating [dbo].[FK_ProgramParticipationCte_RefWorkbasedLearningOpportunityType]...';


GO
ALTER TABLE [dbo].[ProgramParticipationCte] WITH NOCHECK
    ADD CONSTRAINT [FK_ProgramParticipationCte_RefWorkbasedLearningOpportunityType] FOREIGN KEY ([RefWorkbasedLearningOpportunityTypeId]) REFERENCES [dbo].[RefWorkbasedLearningOpportunityType] ([RefWorkbasedLearningOpportunityTypeId]);


GO
PRINT N'Creating [dbo].[FK_ProgramParticipationFoodSrvc_RefSchoolFoodServiceProgram]...';


GO
ALTER TABLE [dbo].[ProgramParticipationFoodService] WITH NOCHECK
    ADD CONSTRAINT [FK_ProgramParticipationFoodSrvc_RefSchoolFoodServiceProgram] FOREIGN KEY ([RefSchoolFoodServiceProgramId]) REFERENCES [dbo].[RefSchoolFoodServiceProgram] ([RefSchoolFoodServiceProgramId]);


GO
PRINT N'Creating [dbo].[FK_ProgramParticipationMigrant_Organization]...';


GO
ALTER TABLE [dbo].[ProgramParticipationMigrant] WITH NOCHECK
    ADD CONSTRAINT [FK_ProgramParticipationMigrant_Organization] FOREIGN KEY ([DesignatedGraduationSchoolId]) REFERENCES [dbo].[Organization] ([OrganizationId]);


GO
PRINT N'Creating [dbo].[FK_ProgramParticipationMigrant_RefContinuationOfServices]...';


GO
ALTER TABLE [dbo].[ProgramParticipationMigrant] WITH NOCHECK
    ADD CONSTRAINT [FK_ProgramParticipationMigrant_RefContinuationOfServices] FOREIGN KEY ([RefContinuationOfServicesReasonId]) REFERENCES [dbo].[RefContinuationOfServices] ([RefContinuationOfServicesReasonId]);


GO
PRINT N'Creating [dbo].[FK_ProgramParticipationMigrant_RefCountry]...';


GO
ALTER TABLE [dbo].[ProgramParticipationMigrant] WITH NOCHECK
    ADD CONSTRAINT [FK_ProgramParticipationMigrant_RefCountry] FOREIGN KEY ([RefQualifyingMoveFromCountryId]) REFERENCES [dbo].[RefCountry] ([RefCountryId]);


GO
PRINT N'Creating [dbo].[FK_ProgramParticipationMigrant_RefMEPEnrollmentType]...';


GO
ALTER TABLE [dbo].[ProgramParticipationMigrant] WITH NOCHECK
    ADD CONSTRAINT [FK_ProgramParticipationMigrant_RefMEPEnrollmentType] FOREIGN KEY ([RefMepEnrollmentTypeId]) REFERENCES [dbo].[RefMepEnrollmentType] ([RefMepEnrollmentTypeId]);


GO
PRINT N'Creating [dbo].[FK_ProgramParticipationMigrant_RefMEPProjectBased]...';


GO
ALTER TABLE [dbo].[ProgramParticipationMigrant] WITH NOCHECK
    ADD CONSTRAINT [FK_ProgramParticipationMigrant_RefMEPProjectBased] FOREIGN KEY ([RefMepProjectBasedId]) REFERENCES [dbo].[RefMepProjectBased] ([RefMepProjectBasedId]);


GO
PRINT N'Creating [dbo].[FK_ProgramParticipationMigrant_RefMEPServiceType]...';


GO
ALTER TABLE [dbo].[ProgramParticipationMigrant] WITH NOCHECK
    ADD CONSTRAINT [FK_ProgramParticipationMigrant_RefMEPServiceType] FOREIGN KEY ([RefMepServiceTypeId]) REFERENCES [dbo].[RefMepServiceType] ([RefMepServiceTypeId]);


GO
PRINT N'Creating [dbo].[FK_ProgramParticipationMigrant_RefState]...';


GO
ALTER TABLE [dbo].[ProgramParticipationMigrant] WITH NOCHECK
    ADD CONSTRAINT [FK_ProgramParticipationMigrant_RefState] FOREIGN KEY ([RefQualifyingMoveFromStateId]) REFERENCES [dbo].[RefState] ([RefStateId]);


GO
PRINT N'Creating [dbo].[FK_ProgramParticipationNeglected_RefNeglectedProgramType]...';


GO
ALTER TABLE [dbo].[ProgramParticipationNeglected] WITH NOCHECK
    ADD CONSTRAINT [FK_ProgramParticipationNeglected_RefNeglectedProgramType] FOREIGN KEY ([RefNeglectedProgramTypeId]) REFERENCES [dbo].[RefNeglectedProgramType] ([RefNeglectedProgramTypeId]);


GO
PRINT N'Creating [dbo].[FK_ProgramParticipationSpecialEd_RefIDEAEdEnvironmentForEC]...';


GO
ALTER TABLE [dbo].[ProgramParticipationSpecialEducation] WITH NOCHECK
    ADD CONSTRAINT [FK_ProgramParticipationSpecialEd_RefIDEAEdEnvironmentForEC] FOREIGN KEY ([RefIDEAEducationalEnvironmentECId]) REFERENCES [dbo].[RefIDEAEducationalEnvironmentEC] ([RefIDEAEducationalEnvironmentECId]);


GO
PRINT N'Creating [dbo].[FK_ProgramParticipationSpecialEd_RefIDEAEdEnvironmentSchoolAge]...';


GO
ALTER TABLE [dbo].[ProgramParticipationSpecialEducation] WITH NOCHECK
    ADD CONSTRAINT [FK_ProgramParticipationSpecialEd_RefIDEAEdEnvironmentSchoolAge] FOREIGN KEY ([RefIDEAEdEnvironmentSchoolAgeId]) REFERENCES [dbo].[RefIDEAEducationalEnvironmentSchoolAge] ([RefIDESEducationalEnvironmentSchoolAge]);


GO
PRINT N'Creating [dbo].[FK_ProgramParticipationSpecialEd_RefSpecialEducationExitReason]...';


GO
ALTER TABLE [dbo].[ProgramParticipationSpecialEducation] WITH NOCHECK
    ADD CONSTRAINT [FK_ProgramParticipationSpecialEd_RefSpecialEducationExitReason] FOREIGN KEY ([RefSpecialEducationExitReasonId]) REFERENCES [dbo].[RefSpecialEducationExitReason] ([RefSpecialEducationExitReasonId]);


GO
PRINT N'Creating [dbo].[FK_ProgramParticipationTitleI_RefTitleIIndicator]...';


GO
ALTER TABLE [dbo].[ProgramParticipationTitleI] WITH NOCHECK
    ADD CONSTRAINT [FK_ProgramParticipationTitleI_RefTitleIIndicator] FOREIGN KEY ([RefTitleIIndicatorId]) REFERENCES [dbo].[RefTitleIIndicator] ([RefTitleIIndicatorId]);


GO
PRINT N'Creating [dbo].[FK_StaffCredential_PersonCredential]...';


GO
ALTER TABLE [dbo].[StaffCredential] WITH NOCHECK
    ADD CONSTRAINT [FK_StaffCredential_PersonCredential] FOREIGN KEY ([PersonCredentialId]) REFERENCES [dbo].[PersonCredential] ([PersonCredentialId]);


GO
PRINT N'Creating [dbo].[FK_StaffCredential_RefChildDevelopmentAssociateType]...';


GO
ALTER TABLE [dbo].[StaffCredential] WITH NOCHECK
    ADD CONSTRAINT [FK_StaffCredential_RefChildDevelopmentAssociateType] FOREIGN KEY ([RefChildDevAssociateTypeId]) REFERENCES [dbo].[RefChildDevelopmentAssociateType] ([RefChildDevelopmentAssociateTypeId]);


GO
PRINT N'Creating [dbo].[FK_StaffCredential_RefParaprofessionalQualification]...';


GO
ALTER TABLE [dbo].[StaffCredential] WITH NOCHECK
    ADD CONSTRAINT [FK_StaffCredential_RefParaprofessionalQualification] FOREIGN KEY ([RefParaprofessionalQualificationId]) REFERENCES [dbo].[RefParaprofessionalQualification] ([RefParaprofessionalQualificationId]);


GO
PRINT N'Creating [dbo].[FK_StaffCredential_RefProgramSponsorType]...';


GO
ALTER TABLE [dbo].[StaffCredential] WITH NOCHECK
    ADD CONSTRAINT [FK_StaffCredential_RefProgramSponsorType] FOREIGN KEY ([RefProgramSponsorTypeId]) REFERENCES [dbo].[RefProgramSponsorType] ([RefProgramSponsorTypeId]);


GO
PRINT N'Creating [dbo].[FK_StaffCredential_RefTeachingCredentialBasis]...';


GO
ALTER TABLE [dbo].[StaffCredential] WITH NOCHECK
    ADD CONSTRAINT [FK_StaffCredential_RefTeachingCredentialBasis] FOREIGN KEY ([RefTeachingCredentialBasisId]) REFERENCES [dbo].[RefTeachingCredentialBasis] ([RefTeachingCredentialBasisId]);


GO
PRINT N'Creating [dbo].[FK_StaffCredential_RefTeachingCredentialType]...';


GO
ALTER TABLE [dbo].[StaffCredential] WITH NOCHECK
    ADD CONSTRAINT [FK_StaffCredential_RefTeachingCredentialType] FOREIGN KEY ([RefTeachingCredentialTypeId]) REFERENCES [dbo].[RefTeachingCredentialType] ([RefTeachingCredentialTypeId]);


GO
PRINT N'Creating [dbo].[FK_TeacherEducationCredentialExam_RefTeacherEducationTestCompny]...';


GO
ALTER TABLE [dbo].[TeacherEducationCredentialExam] WITH NOCHECK
    ADD CONSTRAINT [FK_TeacherEducationCredentialExam_RefTeacherEducationTestCompny] FOREIGN KEY ([RefTeacherEducationTestCompanyId]) REFERENCES [dbo].[RefTeacherEducationTestCompany] ([RefTeacherEducationTestCompanyId]);


GO
PRINT N'Creating [dbo].[FK_TeacherEduCredentialExam_RefTeacherEduCredentialExam]...';


GO
ALTER TABLE [dbo].[TeacherEducationCredentialExam] WITH NOCHECK
    ADD CONSTRAINT [FK_TeacherEduCredentialExam_RefTeacherEduCredentialExam] FOREIGN KEY ([RefTeacherEducationCredentialExamId]) REFERENCES [dbo].[RefTeacherEducationCredentialExam] ([RefTeacherEducationCredentialExamId]);


GO
PRINT N'Creating [dbo].[FK_TeacherEduCredentialExam_RefTeacherEduExamScoreType]...';


GO
ALTER TABLE [dbo].[TeacherEducationCredentialExam] WITH NOCHECK
    ADD CONSTRAINT [FK_TeacherEduCredentialExam_RefTeacherEduExamScoreType] FOREIGN KEY ([RefTeacherEducationExamScoreTypeId]) REFERENCES [dbo].[RefTeacherEducationExamScoreType] ([RefTeacherEducationExamScoreTypeId]);


GO
PRINT N'Creating [dbo].[FK_TeacherEducationCredentialExam_PrgmParticipationTeacherPrep]...';


GO
ALTER TABLE [dbo].[TeacherEducationCredentialExam] WITH NOCHECK
    ADD CONSTRAINT [FK_TeacherEducationCredentialExam_PrgmParticipationTeacherPrep] FOREIGN KEY ([ProgramParticipationTeacherPrepId]) REFERENCES [dbo].[ProgramParticipationTeacherPrep] ([ProgramParticipationTeacherPrepId]);


GO
PRINT N'Creating [dbo].[FK_WorkforceProgramPartic_RefProfessionalTechnicalCredential]...';


GO
ALTER TABLE [dbo].[WorkforceProgramParticipation] WITH NOCHECK
    ADD CONSTRAINT [FK_WorkforceProgramPartic_RefProfessionalTechnicalCredential] FOREIGN KEY ([RefProfessionalTechnicalCredentialTypeId]) REFERENCES [dbo].[RefProfessionalTechnicalCredentialType] ([RefProfessionalTechnicalCredentialTypeId]);


GO
PRINT N'Creating [dbo].[FK_WorkforceProgramPartic_RefWfProgramParticipation]...';


GO
ALTER TABLE [dbo].[WorkforceProgramParticipation] WITH NOCHECK
    ADD CONSTRAINT [FK_WorkforceProgramPartic_RefWfProgramParticipation] FOREIGN KEY ([RefWfProgramParticipationId]) REFERENCES [dbo].[RefWfProgramParticipation] ([RefWfProgramParticipationId]);


GO
PRINT N'Creating [dbo].[FK_ProgramParticipationTitleIIILep_RefTitleIIIAccountability]...';


GO
ALTER TABLE [dbo].[ProgramParticipationTitleIIILep] WITH NOCHECK
    ADD CONSTRAINT [FK_ProgramParticipationTitleIIILep_RefTitleIIIAccountability] FOREIGN KEY ([RefTitleIIIAccountabilityId]) REFERENCES [dbo].[RefTitleIIIAccountability] ([RefTitleIIIAccountabilityId]);


GO
PRINT N'Creating [dbo].[FK_ProgramParticipationTitleIIILEP_RefTitleIIILangInstrPrgm]...';


GO
ALTER TABLE [dbo].[ProgramParticipationTitleIIILep] WITH NOCHECK
    ADD CONSTRAINT [FK_ProgramParticipationTitleIIILEP_RefTitleIIILangInstrPrgm] FOREIGN KEY ([RefTitleIIILanguageInstructionProgramTypeId]) REFERENCES [dbo].[RefTitleIIILanguageInstructionProgramType] ([RefTitleIIILanguageInstructionProgramTypeId]);


GO
PRINT N'Creating [dbo].[FK_K12School_Organization]...';


GO
ALTER TABLE [dbo].[K12School] WITH NOCHECK
    ADD CONSTRAINT [FK_K12School_Organization] FOREIGN KEY ([OrganizationId]) REFERENCES [dbo].[Organization] ([OrganizationId]);


GO
PRINT N'Creating [dbo].[FK_TeacherStudentDataLinkExclusion_K12StaffAssignment]...';


GO
ALTER TABLE [dbo].[TeacherStudentDataLinkExclusion] WITH NOCHECK
    ADD CONSTRAINT [FK_TeacherStudentDataLinkExclusion_K12StaffAssignment] FOREIGN KEY ([K12StaffAssignmentId]) REFERENCES [dbo].[K12StaffAssignment] ([K12StaffAssignmentId]);


GO
PRINT N'Creating [dbo].[FK_K12StaffAssignment_OrganizationPerson]...';


GO
ALTER TABLE [dbo].[K12StaffAssignment] WITH NOCHECK
    ADD CONSTRAINT [FK_K12StaffAssignment_OrganizationPerson] FOREIGN KEY ([OrganizationPersonRoleId]) REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]) ON DELETE CASCADE ON UPDATE CASCADE;


GO
PRINT N'Creating [dbo].[FK_K12StaffAssignment_RefClassroomPositionType]...';


GO
ALTER TABLE [dbo].[K12StaffAssignment] WITH NOCHECK
    ADD CONSTRAINT [FK_K12StaffAssignment_RefClassroomPositionType] FOREIGN KEY ([RefClassroomPositionTypeId]) REFERENCES [dbo].[RefClassroomPositionType] ([RefClassroomPositionTypeId]);


GO
PRINT N'Creating [dbo].[FK_K12StaffAssignment_RefEducationStaffClassification]...';


GO
ALTER TABLE [dbo].[K12StaffAssignment] WITH NOCHECK
    ADD CONSTRAINT [FK_K12StaffAssignment_RefEducationStaffClassification] FOREIGN KEY ([RefK12StaffClassificationId]) REFERENCES [dbo].[RefK12StaffClassification] ([RefEducationStaffClassificationId]);


GO
PRINT N'Creating [dbo].[FK_K12StaffAssignment_RefMepStaffCategory]...';


GO
ALTER TABLE [dbo].[K12StaffAssignment] WITH NOCHECK
    ADD CONSTRAINT [FK_K12StaffAssignment_RefMepStaffCategory] FOREIGN KEY ([RefMepStaffCategoryId]) REFERENCES [dbo].[RefMepStaffCategory] ([RefMepStaffCategoryId]);


GO
PRINT N'Creating [dbo].[FK_K12StaffAssignment_RefProfessionalEducationJobClassification]...';


GO
ALTER TABLE [dbo].[K12StaffAssignment] WITH NOCHECK
    ADD CONSTRAINT [FK_K12StaffAssignment_RefProfessionalEducationJobClassification] FOREIGN KEY ([RefProfessionalEducationJobClassificationId]) REFERENCES [dbo].[RefProfessionalEducationJobClassification] ([RefProfessionalEducationJobClassificationId]);


GO
PRINT N'Creating [dbo].[FK_K12StaffAssignment_RefSpecialEducationAgeGroupTaught]...';


GO
ALTER TABLE [dbo].[K12StaffAssignment] WITH NOCHECK
    ADD CONSTRAINT [FK_K12StaffAssignment_RefSpecialEducationAgeGroupTaught] FOREIGN KEY ([RefSpecialEducationAgeGroupTaughtId]) REFERENCES [dbo].[RefSpecialEducationAgeGroupTaught] ([RefSpecialEducationAgeGroupTaughtId]);


GO
PRINT N'Creating [dbo].[FK_K12StaffAssignment_RefSpecialEducationStaffCategory]...';


GO
ALTER TABLE [dbo].[K12StaffAssignment] WITH NOCHECK
    ADD CONSTRAINT [FK_K12StaffAssignment_RefSpecialEducationStaffCategory] FOREIGN KEY ([RefSpecialEducationStaffCategoryId]) REFERENCES [dbo].[RefSpecialEducationStaffCategory] ([RefSpecialEducationStaffCategoryId]);


GO
PRINT N'Creating [dbo].[FK_K12StaffAssignment_RefTeachingAssignmentRole]...';


GO
ALTER TABLE [dbo].[K12StaffAssignment] WITH NOCHECK
    ADD CONSTRAINT [FK_K12StaffAssignment_RefTeachingAssignmentRole] FOREIGN KEY ([RefTeachingAssignmentRoleId]) REFERENCES [dbo].[RefTeachingAssignmentRole] ([RefTeachingAssignmentRoleId]);


GO
PRINT N'Creating [dbo].[FK_K12StaffAssignment_RefTitleIProgramStaffCategory]...';


GO
ALTER TABLE [dbo].[K12StaffAssignment] WITH NOCHECK
    ADD CONSTRAINT [FK_K12StaffAssignment_RefTitleIProgramStaffCategory] FOREIGN KEY ([RefTitleIProgramStaffCategoryId]) REFERENCES [dbo].[RefTitleIProgramStaffCategory] ([RefTitleIProgramStaffCategoryId]);


GO
PRINT N'Creating [dbo].[FK_K12StaffAssignment_OrganizationPersonRole]...';


GO
ALTER TABLE [dbo].[K12StaffAssignment] WITH NOCHECK
    ADD CONSTRAINT [FK_K12StaffAssignment_OrganizationPersonRole] FOREIGN KEY ([OrganizationPersonRoleId]) REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]);


GO
PRINT N'Creating [dbo].[FK_K12StaffAssignment_RefUnexperiencedStatus]...';


GO
ALTER TABLE [dbo].[K12StaffAssignment] WITH NOCHECK
    ADD CONSTRAINT [FK_K12StaffAssignment_RefUnexperiencedStatus] FOREIGN KEY ([RefUnexperiencedStatusId]) REFERENCES [dbo].[RefUnexperiencedStatus] ([RefUnexperiencedStatusId]);


GO
PRINT N'Creating [dbo].[FK_K12StaffAssignment_RefEmergencyOrProvisionalCredentialStatus]...';


GO
ALTER TABLE [dbo].[K12StaffAssignment] WITH NOCHECK
    ADD CONSTRAINT [FK_K12StaffAssignment_RefEmergencyOrProvisionalCredentialStatus] FOREIGN KEY ([RefEmergencyOrProvisionalCredentialStatusId]) REFERENCES [dbo].[RefEmergencyOrProvisionalCredentialStatus] ([RefEmergencyOrProvisionalCredentialStatusId]);


GO
PRINT N'Creating [dbo].[FK_K12StaffAssignment_RefOutOfFieldStatus]...';


GO
ALTER TABLE [dbo].[K12StaffAssignment] WITH NOCHECK
    ADD CONSTRAINT [FK_K12StaffAssignment_RefOutOfFieldStatus] FOREIGN KEY ([RefOutOfFieldStatusId]) REFERENCES [dbo].[RefOutOfFieldStatus] ([RefOutOfFieldStatusId]);


GO
PRINT N'Creating [dbo].[FK_PrgmParticipationTeacherPrep_RefCritTeachShortageCandidate]...';


GO
ALTER TABLE [dbo].[ProgramParticipationTeacherPrep] WITH NOCHECK
    ADD CONSTRAINT [FK_PrgmParticipationTeacherPrep_RefCritTeachShortageCandidate] FOREIGN KEY ([RefCriticalTeacherShortageCandidateId]) REFERENCES [dbo].[RefCriticalTeacherShortageCandidate] ([RefCriticalTeacherShortageCandidateId]);


GO
PRINT N'Creating [dbo].[FK_PrgmParticipationTeacherPrep_RefTeacherPrepCompleterStatus]...';


GO
ALTER TABLE [dbo].[ProgramParticipationTeacherPrep] WITH NOCHECK
    ADD CONSTRAINT [FK_PrgmParticipationTeacherPrep_RefTeacherPrepCompleterStatus] FOREIGN KEY ([RefTeacherPrepCompleterStatusId]) REFERENCES [dbo].[RefTeacherPrepCompleterStatus] ([RefTeacherPrepCompleterStatusId]);


GO
PRINT N'Creating [dbo].[FK_PrgmParticipationTeacherPrep_RefTeacherPrepEnrollStatus]...';


GO
ALTER TABLE [dbo].[ProgramParticipationTeacherPrep] WITH NOCHECK
    ADD CONSTRAINT [FK_PrgmParticipationTeacherPrep_RefTeacherPrepEnrollStatus] FOREIGN KEY ([RefTeacherPrepEnrollmentStatusId]) REFERENCES [dbo].[RefTeacherPrepEnrollmentStatus] ([RefTeacherPrepEnrollmentStatusId]);


GO
PRINT N'Creating [dbo].[FK_PrgmParticipationTeacherPrep_RefTeachingCredentialBasis]...';


GO
ALTER TABLE [dbo].[ProgramParticipationTeacherPrep] WITH NOCHECK
    ADD CONSTRAINT [FK_PrgmParticipationTeacherPrep_RefTeachingCredentialBasis] FOREIGN KEY ([RefTeachingCredentialBasisId]) REFERENCES [dbo].[RefTeachingCredentialBasis] ([RefTeachingCredentialBasisId]);


GO
PRINT N'Creating [dbo].[FK_PrgmParticipationTeacherPrep_RefTeachingCredentialType]...';


GO
ALTER TABLE [dbo].[ProgramParticipationTeacherPrep] WITH NOCHECK
    ADD CONSTRAINT [FK_PrgmParticipationTeacherPrep_RefTeachingCredentialType] FOREIGN KEY ([RefTeachingCredentialTypeId]) REFERENCES [dbo].[RefTeachingCredentialType] ([RefTeachingCredentialTypeId]);


GO
PRINT N'Creating [dbo].[FK_ProgramParticipationTeacherPrep_RefAltRouteToCertificationOrLicensure]...';


GO
ALTER TABLE [dbo].[ProgramParticipationTeacherPrep] WITH NOCHECK
    ADD CONSTRAINT [FK_ProgramParticipationTeacherPrep_RefAltRouteToCertificationOrLicensure] FOREIGN KEY ([RefAltRouteToCertificationOrLicensureId]) REFERENCES [dbo].[RefAltRouteToCertificationOrLicensure] ([RefAltRouteToCertificationOrLicensureId]);


GO
PRINT N'Creating [dbo].[FK_ProgramParticipationTeacherPrep_RefSupervisedClinicalExper]...';


GO
ALTER TABLE [dbo].[ProgramParticipationTeacherPrep] WITH NOCHECK
    ADD CONSTRAINT [FK_ProgramParticipationTeacherPrep_RefSupervisedClinicalExper] FOREIGN KEY ([RefSupervisedClinicalExperienceId]) REFERENCES [dbo].[RefSupervisedClinicalExperience] ([RefSupervisedClinicalExperienceId]);


GO
PRINT N'Creating [dbo].[FK_Organization_K12CharterSchoolApprovalAgency]...';


GO
ALTER TABLE [dbo].[K12CharterSchoolApprovalAgency] WITH NOCHECK
    ADD CONSTRAINT [FK_Organization_K12CharterSchoolApprovalAgency] FOREIGN KEY ([OrganizationId]) REFERENCES [dbo].[Organization] ([OrganizationId]);


GO
PRINT N'Creating [dbo].[FK_K12CharterSchoolApprovalAgency_Organization]...';


GO
ALTER TABLE [dbo].[K12CharterSchoolApprovalAgency] WITH NOCHECK
    ADD CONSTRAINT [FK_K12CharterSchoolApprovalAgency_Organization] FOREIGN KEY ([RefCharterSchoolApprovalAgencyTypeId]) REFERENCES [dbo].[RefCharterSchoolApprovalAgencyType] ([RefCharterSchoolApprovalAgencyTypeId]);


GO
PRINT N'Creating [dbo].[FK_Organization_K12CharterSchoolManagementOrganization]...';


GO
ALTER TABLE [dbo].[K12CharterSchoolManagementOrganization] WITH NOCHECK
    ADD CONSTRAINT [FK_Organization_K12CharterSchoolManagementOrganization] FOREIGN KEY ([OrganizationId]) REFERENCES [dbo].[Organization] ([OrganizationId]);


GO
PRINT N'Creating [dbo].[FK_K12CharterSchoolManagementOrganization_Organization]...';


GO
ALTER TABLE [dbo].[K12CharterSchoolManagementOrganization] WITH NOCHECK
    ADD CONSTRAINT [FK_K12CharterSchoolManagementOrganization_Organization] FOREIGN KEY ([RefCharterSchoolManagementOrganizationTypeId]) REFERENCES [dbo].[RefCharterSchoolManagementOrganizationType] ([RefCharterSchoolManagementOrganizationTypeId]);


GO
PRINT N'Creating [dbo].[FK_K12FederalFundAllocation_OrganizationCalendarSession]...';


GO
ALTER TABLE [dbo].[K12FederalFundAllocation] WITH NOCHECK
    ADD CONSTRAINT [FK_K12FederalFundAllocation_OrganizationCalendarSession] FOREIGN KEY ([OrganizationCalendarSessionId]) REFERENCES [dbo].[OrganizationCalendarSession] ([OrganizationCalendarSessionId]);


GO
PRINT N'Creating [dbo].[FK_K12FederalFundAllocation_RefFederalFundingAllocation]...';


GO
ALTER TABLE [dbo].[K12FederalFundAllocation] WITH NOCHECK
    ADD CONSTRAINT [FK_K12FederalFundAllocation_RefFederalFundingAllocation] FOREIGN KEY ([RefFederalProgramFundingAllocationTypeId]) REFERENCES [dbo].[RefFederalProgramFundingAllocationType] ([RefFederalProgramFundingAllocationTypeId]);


GO
PRINT N'Creating [dbo].[FK_K12FederalFundAllocation_RefLEAFundsTransferType]...';


GO
ALTER TABLE [dbo].[K12FederalFundAllocation] WITH NOCHECK
    ADD CONSTRAINT [FK_K12FederalFundAllocation_RefLEAFundsTransferType] FOREIGN KEY ([RefLeaFundsTransferTypeId]) REFERENCES [dbo].[RefLeaFundsTransferType] ([RefLeaFundsTransferTypeId]);


GO
PRINT N'Creating [dbo].[FK_K12FederalFundAllocation_REAPAlternativeFundingStatus]...';


GO
ALTER TABLE [dbo].[K12FederalFundAllocation] WITH NOCHECK
    ADD CONSTRAINT [FK_K12FederalFundAllocation_REAPAlternativeFundingStatus] FOREIGN KEY ([RefReapAlternativeFundingStatusId]) REFERENCES [dbo].[RefReapAlternativeFundingStatus] ([RefReapAlternativeFundingStatusId]);


GO
PRINT N'Creating [dbo].[FK_K12SchoolIndicatorStatus_RefIndicatorStatusCustomType]...';


GO
ALTER TABLE [dbo].[K12SchoolIndicatorStatus] WITH NOCHECK
    ADD CONSTRAINT [FK_K12SchoolIndicatorStatus_RefIndicatorStatusCustomType] FOREIGN KEY ([RefIndicatorStatusCustomTypeId]) REFERENCES [dbo].[RefIndicatorStatusCustomType] ([RefIndicatorStatusCustomTypeId]);


GO
PRINT N'Creating [dbo].[FK_K12SchoolIndicatorStatus_K12School]...';


GO
ALTER TABLE [dbo].[K12SchoolIndicatorStatus] WITH NOCHECK
    ADD CONSTRAINT [FK_K12SchoolIndicatorStatus_K12School] FOREIGN KEY ([K12SchoolId]) REFERENCES [dbo].[K12School] ([K12SchoolId]);


GO
PRINT N'Creating [dbo].[FK_K12SchoolIndicatorStatus_RefIndicatorStatusType]...';


GO
ALTER TABLE [dbo].[K12SchoolIndicatorStatus] WITH NOCHECK
    ADD CONSTRAINT [FK_K12SchoolIndicatorStatus_RefIndicatorStatusType] FOREIGN KEY ([RefIndicatorStatusTypeId]) REFERENCES [dbo].[RefIndicatorStatusType] ([RefIndicatorStatusTypeId]);


GO
PRINT N'Creating [dbo].[FK_K12SchoolIndicatorStatus_RefIndicatorStateDefinedStatus]...';


GO
ALTER TABLE [dbo].[K12SchoolIndicatorStatus] WITH NOCHECK
    ADD CONSTRAINT [FK_K12SchoolIndicatorStatus_RefIndicatorStateDefinedStatus] FOREIGN KEY ([RefIndicatorStateDefinedStatusId]) REFERENCES [dbo].[RefIndicatorStateDefinedStatus] ([RefIndicatorStateDefinedStatusId]);


GO
PRINT N'Creating [dbo].[FK_K12SchoolIndicatorStatus_RefIndicatorStatusSubgroupType]...';


GO
ALTER TABLE [dbo].[K12SchoolIndicatorStatus] WITH NOCHECK
    ADD CONSTRAINT [FK_K12SchoolIndicatorStatus_RefIndicatorStatusSubgroupType] FOREIGN KEY ([RefIndicatorStatusSubgroupTypeId]) REFERENCES [dbo].[RefIndicatorStatusSubgroupType] ([RefIndicatorStatusSubgroupTypeId]);


GO
PRINT N'Creating [dbo].[FK_OrganizationDetail_Organization]...';


GO
ALTER TABLE [dbo].[OrganizationDetail] WITH NOCHECK
    ADD CONSTRAINT [FK_OrganizationDetail_Organization] FOREIGN KEY ([OrganizationId]) REFERENCES [dbo].[Organization] ([OrganizationId]);


GO
PRINT N'Creating [dbo].[FK_OrganizationDetail_RefOrganizationType]...';


GO
ALTER TABLE [dbo].[OrganizationDetail] WITH NOCHECK
    ADD CONSTRAINT [FK_OrganizationDetail_RefOrganizationType] FOREIGN KEY ([RefOrganizationTypeId]) REFERENCES [dbo].[RefOrganizationType] ([RefOrganizationTypeId]);


GO
PRINT N'Creating [dbo].[FK_PersonDetail_Person]...';


GO
ALTER TABLE [dbo].[PersonDetail] WITH NOCHECK
    ADD CONSTRAINT [FK_PersonDetail_Person] FOREIGN KEY ([PersonId]) REFERENCES [dbo].[Person] ([PersonId]);


GO
PRINT N'Creating [dbo].[FK_PersonDetail_RefEducationLevel]...';


GO
ALTER TABLE [dbo].[PersonDetail] WITH NOCHECK
    ADD CONSTRAINT [FK_PersonDetail_RefEducationLevel] FOREIGN KEY ([RefHighestEducationLevelCompletedId]) REFERENCES [dbo].[RefEducationLevel] ([RefEducationLevelId]);


GO
PRINT N'Creating [dbo].[FK_PersonDetail_RefPersonalInformationVerification]...';


GO
ALTER TABLE [dbo].[PersonDetail] WITH NOCHECK
    ADD CONSTRAINT [FK_PersonDetail_RefPersonalInformationVerification] FOREIGN KEY ([RefPersonalInformationVerificationId]) REFERENCES [dbo].[RefPersonalInformationVerification] ([RefPersonalInformationVerificationId]);


GO
PRINT N'Creating [dbo].[FK_PersonDetail_RefProofOfResidencyType]...';


GO
ALTER TABLE [dbo].[PersonDetail] WITH NOCHECK
    ADD CONSTRAINT [FK_PersonDetail_RefProofOfResidencyType] FOREIGN KEY ([RefProofOfResidencyTypeId]) REFERENCES [dbo].[RefProofOfResidencyType] ([RefProofOfResidencyTypeId]);


GO
PRINT N'Creating [dbo].[FK_PersonDetail_RefSex]...';


GO
ALTER TABLE [dbo].[PersonDetail] WITH NOCHECK
    ADD CONSTRAINT [FK_PersonDetail_RefSex] FOREIGN KEY ([RefSexId]) REFERENCES [dbo].[RefSex] ([RefSexId]);


GO
PRINT N'Creating [dbo].[FK_PersonDetail_RefState]...';


GO
ALTER TABLE [dbo].[PersonDetail] WITH NOCHECK
    ADD CONSTRAINT [FK_PersonDetail_RefState] FOREIGN KEY ([RefStateOfResidenceId]) REFERENCES [dbo].[RefState] ([RefStateId]);


GO
PRINT N'Creating [dbo].[FK_PersonDetail_RefTribalAffiliation]...';


GO
ALTER TABLE [dbo].[PersonDetail] WITH NOCHECK
    ADD CONSTRAINT [FK_PersonDetail_RefTribalAffiliation] FOREIGN KEY ([RefTribalAffiliationId]) REFERENCES [dbo].[RefTribalAffiliation] ([RefTribalAffiliationId]);


GO
PRINT N'Creating [dbo].[FK_PersonDetail_RefUSCitizenshipStatus]...';


GO
ALTER TABLE [dbo].[PersonDetail] WITH NOCHECK
    ADD CONSTRAINT [FK_PersonDetail_RefUSCitizenshipStatus] FOREIGN KEY ([RefUSCitizenshipStatusId]) REFERENCES [dbo].[RefUSCitizenshipStatus] ([RefUSCitizenshipStatusId]);


GO
PRINT N'Creating [dbo].[FK_PersonDetail_RefVisaType]...';


GO
ALTER TABLE [dbo].[PersonDetail] WITH NOCHECK
    ADD CONSTRAINT [FK_PersonDetail_RefVisaType] FOREIGN KEY ([RefVisaTypeId]) REFERENCES [dbo].[RefVisaType] ([RefVisaTypeId]);


GO
PRINT N'Creating [dbo].[FK_RefCharterLeaStatus_Organization]...';


GO
ALTER TABLE [dbo].[RefCharterLeaStatus] WITH NOCHECK
    ADD CONSTRAINT [FK_RefCharterLeaStatus_Organization] FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId]);


GO
PRINT N'Creating [dbo].[FK_RefComprehensiveAndTargetedSupport_Org]...';


GO
ALTER TABLE [dbo].[RefComprehensiveAndTargetedSupport] WITH NOCHECK
    ADD CONSTRAINT [FK_RefComprehensiveAndTargetedSupport_Org] FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId]);


GO
PRINT N'Creating [dbo].[FK_RefComprehensiveSupport_Org]...';


GO
ALTER TABLE [dbo].[RefComprehensiveSupport] WITH NOCHECK
    ADD CONSTRAINT [FK_RefComprehensiveSupport_Org] FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId]);


GO
PRINT N'Creating [dbo].[FK_RefEmergencyOrProvisionalCredentialStatus_Org]...';


GO
ALTER TABLE [dbo].[RefEmergencyOrProvisionalCredentialStatus] WITH NOCHECK
    ADD CONSTRAINT [FK_RefEmergencyOrProvisionalCredentialStatus_Org] FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId]);


GO
PRINT N'Creating [dbo].[FK_RefIndicatorStateDefinedStatus_Org]...';


GO
ALTER TABLE [dbo].[RefIndicatorStateDefinedStatus] WITH NOCHECK
    ADD CONSTRAINT [FK_RefIndicatorStateDefinedStatus_Org] FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId]);


GO
PRINT N'Creating [dbo].[FK_RefIndicatorStatusCustomType_Org]...';


GO
ALTER TABLE [dbo].[RefIndicatorStatusCustomType] WITH NOCHECK
    ADD CONSTRAINT [FK_RefIndicatorStatusCustomType_Org] FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId]);


GO
PRINT N'Creating [dbo].[FK_RefIndicatorStatusSubgroupType_Org]...';


GO
ALTER TABLE [dbo].[RefIndicatorStatusSubgroupType] WITH NOCHECK
    ADD CONSTRAINT [FK_RefIndicatorStatusSubgroupType_Org] FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId]);


GO
PRINT N'Creating [dbo].[FK_RefIndicatorStatusType_Org]...';


GO
ALTER TABLE [dbo].[RefIndicatorStatusType] WITH NOCHECK
    ADD CONSTRAINT [FK_RefIndicatorStatusType_Org] FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId]);


GO
PRINT N'Creating [dbo].[FK_RefNSLPStatus_Organization]...';


GO
ALTER TABLE [dbo].[RefNSLPStatus] WITH NOCHECK
    ADD CONSTRAINT [FK_RefNSLPStatus_Organization] FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId]);


GO
PRINT N'Creating [dbo].[FK_RefOutOfFieldStatus_Org]...';


GO
ALTER TABLE [dbo].[RefOutOfFieldStatus] WITH NOCHECK
    ADD CONSTRAINT [FK_RefOutOfFieldStatus_Org] FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId]);


GO
PRINT N'Creating [dbo].[FK_RefSchoolDangerousStatus_Organization]...';


GO
ALTER TABLE [dbo].[RefSchoolDangerousStatus] WITH NOCHECK
    ADD CONSTRAINT [FK_RefSchoolDangerousStatus_Organization] FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId]);


GO
PRINT N'Creating [dbo].[FK_RefTargetedSupport_Org]...';


GO
ALTER TABLE [dbo].[RefTargetedSupport] WITH NOCHECK
    ADD CONSTRAINT [FK_RefTargetedSupport_Org] FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId]);


GO
PRINT N'Creating [dbo].[FK_RefUnexperiencedStatus_Org]...';


GO
ALTER TABLE [dbo].[RefUnexperiencedStatus] WITH NOCHECK
    ADD CONSTRAINT [FK_RefUnexperiencedStatus_Org] FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId]);


GO
PRINT N'Creating [dbo].[FK_K12Lea_RefCharterLeaStatus]...';


GO
ALTER TABLE [dbo].[K12Lea] WITH NOCHECK
    ADD CONSTRAINT [FK_K12Lea_RefCharterLeaStatus] FOREIGN KEY ([RefCharterLeaStatusId]) REFERENCES [dbo].[RefCharterLeaStatus] ([RefCharterLeaStatusId]);


GO
PRINT N'Creating [dbo].[FK_K12School_K12CharterSchoolApprovalAgency]...';


GO
ALTER TABLE [dbo].[K12School] WITH NOCHECK
    ADD CONSTRAINT [FK_K12School_K12CharterSchoolApprovalAgency] FOREIGN KEY ([K12CharterSchoolApprovalAgencyId]) REFERENCES [dbo].[K12CharterSchoolApprovalAgency] ([K12CharterSchoolApprovalAgencyId]);


GO
PRINT N'Creating [dbo].[FK_K12School_K12CharterSchoolManagementOrganization]...';


GO
ALTER TABLE [dbo].[K12School] WITH NOCHECK
    ADD CONSTRAINT [FK_K12School_K12CharterSchoolManagementOrganization] FOREIGN KEY ([K12CharterSchoolManagementOrganizationId]) REFERENCES [dbo].[K12CharterSchoolManagementOrganization] ([K12CharterSchoolManagementOrganizationId]);


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information related to a specific person registered for an Assessment Administration, assigned a specific  Assessment Form for participation in one or more Assessment Sessions.
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[CreationDate].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Date/time assignment is made.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'CreationDate';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[CreationDate].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Registration Creation Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'CreationDate';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[CreationDate].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001017', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'CreationDate';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[CreationDate].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=14019', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'CreationDate';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[DaysOfInstructionPriorToAssessment].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The number of days of instruction the student has taken prior to testing.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'DaysOfInstructionPriorToAssessment';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[DaysOfInstructionPriorToAssessment].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Registration Days of Instruction', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'DaysOfInstructionPriorToAssessment';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[DaysOfInstructionPriorToAssessment].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001015', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'DaysOfInstructionPriorToAssessment';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[DaysOfInstructionPriorToAssessment].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=14017', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'DaysOfInstructionPriorToAssessment';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[ScorePublishDate].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date set by the testing program when the test scores are published.  For formative or classroom assessments, this will likely be the date when the scored the individual test.  For summative assessments, this date is likely set for a group of assessments when the processing system releases the scores.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'ScorePublishDate';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[ScorePublishDate].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Registration Score Publish Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'ScorePublishDate';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[ScorePublishDate].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001056', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'ScorePublishDate';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[ScorePublishDate].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=14062', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'ScorePublishDate';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[TestAttemptIdentifier].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A unique identifier for the test attempt assigned by the delivery system.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'TestAttemptIdentifier';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[TestAttemptIdentifier].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Registration Test Attempt Identifier', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'TestAttemptIdentifier';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[TestAttemptIdentifier].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001162', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'TestAttemptIdentifier';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[TestAttemptIdentifier].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=14119', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'TestAttemptIdentifier';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[RetestIndicator].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Indicates if this registration is for a retest (retake). Retest can occur if a student failed a prior attempt and is eligible to retake. Other retest scenarios also can occur.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RetestIndicator';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[RetestIndicator].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Registration Retest Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RetestIndicator';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[RetestIndicator].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001016', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RetestIndicator';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[RetestIndicator].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=14018', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RetestIndicator';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[RefAssessmentParticipationIndicatorId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether a student participated in an assessment.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RefAssessmentParticipationIndicatorId';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[RefAssessmentParticipationIndicatorId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Registration Participation Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RefAssessmentParticipationIndicatorId';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[RefAssessmentParticipationIndicatorId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000025', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RefAssessmentParticipationIndicatorId';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[RefAssessmentParticipationIndicatorId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13025', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RefAssessmentParticipationIndicatorId';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[TestingIndicator].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Indicates rules about use of results based on Special Events before during or after the test.  The option set values are determined by the testing program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'TestingIndicator';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[TestingIndicator].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Registration Testing Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'TestingIndicator';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[TestingIndicator].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001055', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'TestingIndicator';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[TestingIndicator].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=14061', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'TestingIndicator';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[RefAssessmentPurposeId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The reason for which an assessment is designed or delivered.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RefAssessmentPurposeId';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[RefAssessmentPurposeId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Purpose', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RefAssessmentPurposeId';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[RefAssessmentPurposeId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000026', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RefAssessmentPurposeId';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[RefAssessmentPurposeId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13026', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RefAssessmentPurposeId';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[RefAssessmentReasonNotTestedId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The primary reason a student is not tested.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RefAssessmentReasonNotTestedId';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[RefAssessmentReasonNotTestedId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Reason Not Tested', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RefAssessmentReasonNotTestedId';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[RefAssessmentReasonNotTestedId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000228', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RefAssessmentReasonNotTestedId';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[RefAssessmentReasonNotTestedId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13228', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RefAssessmentReasonNotTestedId';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[RefAssessmentReasonNotCompletingId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The primary reason a participant did not complete an assessment.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RefAssessmentReasonNotCompletingId';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[RefAssessmentReasonNotCompletingId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Registration Reason Not Completing', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RefAssessmentReasonNotCompletingId';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[RefAssessmentReasonNotCompletingId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000540', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RefAssessmentReasonNotCompletingId';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[RefAssessmentReasonNotCompletingId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13531', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RefAssessmentReasonNotCompletingId';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[RefGradeLevelToBeAssessedId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The grade or developmental level of a student when registering for an assessment, when taking the assessment, or for which an assessment is design.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RefGradeLevelToBeAssessedId';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[RefGradeLevelToBeAssessedId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Grade Level When Assessed, Assessment Registration Grade Level To Be Assessed', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RefGradeLevelToBeAssessedId';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[RefGradeLevelToBeAssessedId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000126, 001057', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RefGradeLevelToBeAssessedId';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[RefGradeLevelToBeAssessedId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13126, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=14063', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RefGradeLevelToBeAssessedId';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[RefGradeLevelWhenAssessedId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The grade or developmental level of a student when registering for an assessment, when taking the assessment, or for which an assessment is design.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RefGradeLevelWhenAssessedId';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[RefGradeLevelWhenAssessedId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Grade Level When Assessed, Assessment Registration Grade Level To Be Assessed', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RefGradeLevelWhenAssessedId';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[RefGradeLevelWhenAssessedId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000126, 001057', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RefGradeLevelWhenAssessedId';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[RefGradeLevelWhenAssessedId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13126, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=14063', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RefGradeLevelWhenAssessedId';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[PersonId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Person registering for the Assessment.  (Foreign Key - Person)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'PersonId';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[AssignedByPersonId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The unique identifier of the person who assigned the assessment to the learner.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'AssignedByPersonId';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[AssignedByPersonId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Registration Assignor Identifier', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'AssignedByPersonId';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[AssignedByPersonId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000889', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'AssignedByPersonId';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[AssignedByPersonId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13889', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'AssignedByPersonId';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[AssessmentRegistrationCompletionStatusDateTime].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date and time the completion and scoring status was changed for an instance of a person taking an assessment.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'AssessmentRegistrationCompletionStatusDateTime';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[AssessmentRegistrationCompletionStatusDateTime].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Registration Completion Status Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'AssessmentRegistrationCompletionStatusDateTime';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[AssessmentRegistrationCompletionStatusDateTime].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001542', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'AssessmentRegistrationCompletionStatusDateTime';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[AssessmentRegistrationCompletionStatusDateTime].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=14517', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'AssessmentRegistrationCompletionStatusDateTime';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[RefAssessmentRegistrationCompletionStatusId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The completion and scoring status for an instance of a person taking an assessment.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RefAssessmentRegistrationCompletionStatusId';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[RefAssessmentRegistrationCompletionStatusId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Registration Completion Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RefAssessmentRegistrationCompletionStatusId';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[RefAssessmentRegistrationCompletionStatusId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001541', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RefAssessmentRegistrationCompletionStatusId';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[RefAssessmentRegistrationCompletionStatusId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=14516', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'RefAssessmentRegistrationCompletionStatusId';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[StateFullAcademicYear].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether a student was in membership in the state education unit for a full academic year, according to the state’s definition of Full Academic Year.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'StateFullAcademicYear';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[StateFullAcademicYear].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'State Full Academic Year', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'StateFullAcademicYear';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[StateFullAcademicYear].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001761', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'StateFullAcademicYear';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[StateFullAcademicYear].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=14742', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'StateFullAcademicYear';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[LEAFullAcademicYear].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether a student was in membership in the LEA education unit for a full academic year, according to the state’s definition of Full Academic Year.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'LEAFullAcademicYear';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[LEAFullAcademicYear].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'LEA Full Academic Year', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'LEAFullAcademicYear';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[LEAFullAcademicYear].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001762', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'LEAFullAcademicYear';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[LEAFullAcademicYear].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=14743', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'LEAFullAcademicYear';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[SchoolFullAcademicYear].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether a student was in membership in the school education unit for a full academic year, according to the state’s definition of Full Academic Year.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'SchoolFullAcademicYear';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[SchoolFullAcademicYear].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'School Full Academic Year', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'SchoolFullAcademicYear';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[SchoolFullAcademicYear].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001763', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'SchoolFullAcademicYear';


GO
PRINT N'Creating [dbo].[AssessmentRegistration].[SchoolFullAcademicYear].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=14744', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentRegistration', @level2type = N'COLUMN', @level2name = N'SchoolFullAcademicYear';


GO
PRINT N'Creating [dbo].[K12LeaFederalFunds].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information on the federal funds received and distributed by the LEA under various programs.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds';


GO
PRINT N'Creating [dbo].[K12LeaFederalFunds].[InnovativeProgramsFundsReceived].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The total Title V, Part A funds received by LEAs.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds', @level2type = N'COLUMN', @level2name = N'InnovativeProgramsFundsReceived';


GO
PRINT N'Creating [dbo].[K12LeaFederalFunds].[InnovativeProgramsFundsReceived].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Innovative Programs Funds Received', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds', @level2type = N'COLUMN', @level2name = N'InnovativeProgramsFundsReceived';


GO
PRINT N'Creating [dbo].[K12LeaFederalFunds].[InnovativeProgramsFundsReceived].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000464', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds', @level2type = N'COLUMN', @level2name = N'InnovativeProgramsFundsReceived';


GO
PRINT N'Creating [dbo].[K12LeaFederalFunds].[InnovativeProgramsFundsReceived].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13454', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds', @level2type = N'COLUMN', @level2name = N'InnovativeProgramsFundsReceived';


GO
PRINT N'Creating [dbo].[K12LeaFederalFunds].[InnovativeDollarsSpent].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The total Title V, Part A funds expended by LEAs.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds', @level2type = N'COLUMN', @level2name = N'InnovativeDollarsSpent';


GO
PRINT N'Creating [dbo].[K12LeaFederalFunds].[InnovativeDollarsSpent].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Innovative Dollars Spent', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds', @level2type = N'COLUMN', @level2name = N'InnovativeDollarsSpent';


GO
PRINT N'Creating [dbo].[K12LeaFederalFunds].[InnovativeDollarsSpent].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000461', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds', @level2type = N'COLUMN', @level2name = N'InnovativeDollarsSpent';


GO
PRINT N'Creating [dbo].[K12LeaFederalFunds].[InnovativeDollarsSpent].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13451', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds', @level2type = N'COLUMN', @level2name = N'InnovativeDollarsSpent';


GO
PRINT N'Creating [dbo].[K12LeaFederalFunds].[InnovativeDollarsSpentOnStrategicPriorities].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The total amount of Title V, Part A funds expended by LEAs for the four strategic priorities.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds', @level2type = N'COLUMN', @level2name = N'InnovativeDollarsSpentOnStrategicPriorities';


GO
PRINT N'Creating [dbo].[K12LeaFederalFunds].[InnovativeDollarsSpentOnStrategicPriorities].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Innovative Dollars Spent on Strategic Priorities', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds', @level2type = N'COLUMN', @level2name = N'InnovativeDollarsSpentOnStrategicPriorities';


GO
PRINT N'Creating [dbo].[K12LeaFederalFunds].[InnovativeDollarsSpentOnStrategicPriorities].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000462', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds', @level2type = N'COLUMN', @level2name = N'InnovativeDollarsSpentOnStrategicPriorities';


GO
PRINT N'Creating [dbo].[K12LeaFederalFunds].[InnovativeDollarsSpentOnStrategicPriorities].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13452', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds', @level2type = N'COLUMN', @level2name = N'InnovativeDollarsSpentOnStrategicPriorities';


GO
PRINT N'Creating [dbo].[K12LeaFederalFunds].[PublicSchoolChoiceFundsSpent].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The dollar amount spent on transportation for public school choice during the school year under Title I of ESEA as amended, Part A, Section 1116.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds', @level2type = N'COLUMN', @level2name = N'PublicSchoolChoiceFundsSpent';


GO
PRINT N'Creating [dbo].[K12LeaFederalFunds].[PublicSchoolChoiceFundsSpent].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Public School Choice Funds Spent', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds', @level2type = N'COLUMN', @level2name = N'PublicSchoolChoiceFundsSpent';


GO
PRINT N'Creating [dbo].[K12LeaFederalFunds].[PublicSchoolChoiceFundsSpent].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000568', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds', @level2type = N'COLUMN', @level2name = N'PublicSchoolChoiceFundsSpent';


GO
PRINT N'Creating [dbo].[K12LeaFederalFunds].[PublicSchoolChoiceFundsSpent].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13560', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds', @level2type = N'COLUMN', @level2name = N'PublicSchoolChoiceFundsSpent';


GO
PRINT N'Creating [dbo].[K12LeaFederalFunds].[SesFundsSpent].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The dollar amount spent on supplemental educational services during the school year under Title I, Part A, Section 1116 of ESEA as amended.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds', @level2type = N'COLUMN', @level2name = N'SesFundsSpent';


GO
PRINT N'Creating [dbo].[K12LeaFederalFunds].[SesFundsSpent].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Supplemental Educational Services Funds Spent', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds', @level2type = N'COLUMN', @level2name = N'SesFundsSpent';


GO
PRINT N'Creating [dbo].[K12LeaFederalFunds].[SesFundsSpent].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000567', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds', @level2type = N'COLUMN', @level2name = N'SesFundsSpent';


GO
PRINT N'Creating [dbo].[K12LeaFederalFunds].[SesFundsSpent].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13559', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds', @level2type = N'COLUMN', @level2name = N'SesFundsSpent';


GO
PRINT N'Creating [dbo].[K12LeaFederalFunds].[SesSchoolChoice20PercentObligation].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The dollar amount of the 20 percent reservation for supplemental educational services and choice-related transportation.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds', @level2type = N'COLUMN', @level2name = N'SesSchoolChoice20PercentObligation';


GO
PRINT N'Creating [dbo].[K12LeaFederalFunds].[SesSchoolChoice20PercentObligation].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Supplemental Education Services Public School Choice Twenty Percent Obligation', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds', @level2type = N'COLUMN', @level2name = N'SesSchoolChoice20PercentObligation';


GO
PRINT N'Creating [dbo].[K12LeaFederalFunds].[SesSchoolChoice20PercentObligation].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000574', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds', @level2type = N'COLUMN', @level2name = N'SesSchoolChoice20PercentObligation';


GO
PRINT N'Creating [dbo].[K12LeaFederalFunds].[SesSchoolChoice20PercentObligation].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13566', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds', @level2type = N'COLUMN', @level2name = N'SesSchoolChoice20PercentObligation';


GO
PRINT N'Creating [dbo].[K12LeaFederalFunds].[RefRlisProgramUseId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of use of the Rural Low-Income Schools Program (RLIS) (Title VI, Part B, Subpart 2) Grant Funds.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds', @level2type = N'COLUMN', @level2name = N'RefRlisProgramUseId';


GO
PRINT N'Creating [dbo].[K12LeaFederalFunds].[RefRlisProgramUseId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Type of Use of the Rural Low-Income Schools Program', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds', @level2type = N'COLUMN', @level2name = N'RefRlisProgramUseId';


GO
PRINT N'Creating [dbo].[K12LeaFederalFunds].[RefRlisProgramUseId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000486', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds', @level2type = N'COLUMN', @level2name = N'RefRlisProgramUseId';


GO
PRINT N'Creating [dbo].[K12LeaFederalFunds].[RefRlisProgramUseId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13477', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds', @level2type = N'COLUMN', @level2name = N'RefRlisProgramUseId';


GO
PRINT N'Creating [dbo].[K12SchoolCorrectiveAction].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The types of corrective actions utilized by a K12 school under ESEA as amended.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolCorrectiveAction';


GO
PRINT N'Creating [dbo].[K12SchoolCorrectiveAction].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolCorrectiveAction';


GO
PRINT N'Creating [dbo].[K12SchoolCorrectiveAction].[RefCorrectiveActionTypeId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The types of corrective actions under ESEA as amended.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolCorrectiveAction', @level2type = N'COLUMN', @level2name = N'RefCorrectiveActionTypeId';


GO
PRINT N'Creating [dbo].[K12SchoolCorrectiveAction].[RefCorrectiveActionTypeId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Corrective Action Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolCorrectiveAction', @level2type = N'COLUMN', @level2name = N'RefCorrectiveActionTypeId';


GO
PRINT N'Creating [dbo].[K12SchoolCorrectiveAction].[RefCorrectiveActionTypeId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000049', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolCorrectiveAction', @level2type = N'COLUMN', @level2name = N'RefCorrectiveActionTypeId';


GO
PRINT N'Creating [dbo].[K12SchoolCorrectiveAction].[RefCorrectiveActionTypeId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13049', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolCorrectiveAction', @level2type = N'COLUMN', @level2name = N'RefCorrectiveActionTypeId';


GO
PRINT N'Creating [dbo].[K12SchoolGradeOffered].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The specific grade or combination of grades offered by an education institution.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolGradeOffered';


GO
PRINT N'Creating [dbo].[K12SchoolGradeOffered].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolGradeOffered';


GO
PRINT N'Creating [dbo].[K12SchoolGradeOffered].[RefGradeLevelId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The specific grade or combination of grades offered by an education institution.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolGradeOffered', @level2type = N'COLUMN', @level2name = N'RefGradeLevelId';


GO
PRINT N'Creating [dbo].[K12SchoolGradeOffered].[RefGradeLevelId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Grades Offered', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolGradeOffered', @level2type = N'COLUMN', @level2name = N'RefGradeLevelId';


GO
PRINT N'Creating [dbo].[K12SchoolGradeOffered].[RefGradeLevelId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000131', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolGradeOffered', @level2type = N'COLUMN', @level2name = N'RefGradeLevelId';


GO
PRINT N'Creating [dbo].[K12SchoolGradeOffered].[RefGradeLevelId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13131', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolGradeOffered', @level2type = N'COLUMN', @level2name = N'RefGradeLevelId';


GO
PRINT N'Creating [dbo].[K12SchoolImprovement].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information on the improvement status for a K12 school.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolImprovement';


GO
PRINT N'Creating [dbo].[K12SchoolImprovement].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolImprovement';


GO
PRINT N'Creating [dbo].[K12SchoolImprovement].[RefSchoolImprovementStatusId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of the improvement stage of the school.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolImprovement', @level2type = N'COLUMN', @level2name = N'RefSchoolImprovementStatusId';


GO
PRINT N'Creating [dbo].[K12SchoolImprovement].[RefSchoolImprovementStatusId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'School Improvement Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolImprovement', @level2type = N'COLUMN', @level2name = N'RefSchoolImprovementStatusId';


GO
PRINT N'Creating [dbo].[K12SchoolImprovement].[RefSchoolImprovementStatusId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000240', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolImprovement', @level2type = N'COLUMN', @level2name = N'RefSchoolImprovementStatusId';


GO
PRINT N'Creating [dbo].[K12SchoolImprovement].[RefSchoolImprovementStatusId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13240', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolImprovement', @level2type = N'COLUMN', @level2name = N'RefSchoolImprovementStatusId';


GO
PRINT N'Creating [dbo].[K12SchoolImprovement].[RefSchoolImprovementFundsId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether the school received funds under Section 1003 of ESEA, as amended.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolImprovement', @level2type = N'COLUMN', @level2name = N'RefSchoolImprovementFundsId';


GO
PRINT N'Creating [dbo].[K12SchoolImprovement].[RefSchoolImprovementFundsId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'School Improvement Funds Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolImprovement', @level2type = N'COLUMN', @level2name = N'RefSchoolImprovementFundsId';


GO
PRINT N'Creating [dbo].[K12SchoolImprovement].[RefSchoolImprovementFundsId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000238', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolImprovement', @level2type = N'COLUMN', @level2name = N'RefSchoolImprovementFundsId';


GO
PRINT N'Creating [dbo].[K12SchoolImprovement].[RefSchoolImprovementFundsId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13238', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolImprovement', @level2type = N'COLUMN', @level2name = N'RefSchoolImprovementFundsId';


GO
PRINT N'Creating [dbo].[K12SchoolImprovement].[RefSigInterventionTypeId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of intervention used by the school under the School Improvement Grant (SIG).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolImprovement', @level2type = N'COLUMN', @level2name = N'RefSigInterventionTypeId';


GO
PRINT N'Creating [dbo].[K12SchoolImprovement].[RefSigInterventionTypeId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'School Improvement Grant Intervention Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolImprovement', @level2type = N'COLUMN', @level2name = N'RefSigInterventionTypeId';


GO
PRINT N'Creating [dbo].[K12SchoolImprovement].[RefSigInterventionTypeId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000239', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolImprovement', @level2type = N'COLUMN', @level2name = N'RefSigInterventionTypeId';


GO
PRINT N'Creating [dbo].[K12SchoolImprovement].[RefSigInterventionTypeId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13239', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolImprovement', @level2type = N'COLUMN', @level2name = N'RefSigInterventionTypeId';


GO
PRINT N'Creating [dbo].[K12SchoolImprovement].[SchoolImprovementExitDate].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Date the school exited school improvement status.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolImprovement', @level2type = N'COLUMN', @level2name = N'SchoolImprovementExitDate';


GO
PRINT N'Creating [dbo].[K12SchoolImprovement].[SchoolImprovementExitDate].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'School Improvement Exit Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolImprovement', @level2type = N'COLUMN', @level2name = N'SchoolImprovementExitDate';


GO
PRINT N'Creating [dbo].[K12SchoolImprovement].[SchoolImprovementExitDate].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000481', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolImprovement', @level2type = N'COLUMN', @level2name = N'SchoolImprovementExitDate';


GO
PRINT N'Creating [dbo].[K12SchoolImprovement].[SchoolImprovementExitDate].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13472', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolImprovement', @level2type = N'COLUMN', @level2name = N'SchoolImprovementExitDate';


GO
PRINT N'Creating [dbo].[K12SchoolStatus].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The collection of status values for a K12 school.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus';


GO
PRINT N'Creating [dbo].[K12SchoolStatus].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus';


GO
PRINT N'Creating [dbo].[K12SchoolStatus].[RefMagnetSpecialProgramId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A school that has been designed: 1) to attract students of different racial/ethnic backgrounds for the purpose of reducing, preventing, or eliminating racial isolation; and/or 2)to provide an academic or social focus on a particular theme (e.g., science/math, performing arts, gifted/talented, career academy or foreign language).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefMagnetSpecialProgramId';


GO
PRINT N'Creating [dbo].[K12SchoolStatus].[RefMagnetSpecialProgramId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Magnet or Special Program Emphasis School', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefMagnetSpecialProgramId';


GO
PRINT N'Creating [dbo].[K12SchoolStatus].[RefMagnetSpecialProgramId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000181', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefMagnetSpecialProgramId';


GO
PRINT N'Creating [dbo].[K12SchoolStatus].[RefMagnetSpecialProgramId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13181', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefMagnetSpecialProgramId';


GO
PRINT N'Creating [dbo].[K12SchoolStatus].[RefAlternativeSchoolFocusId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of the specific group of students whose needs the alternative school is designed to meet.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefAlternativeSchoolFocusId';


GO
PRINT N'Creating [dbo].[K12SchoolStatus].[RefAlternativeSchoolFocusId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Alternative School Focus Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefAlternativeSchoolFocusId';


GO
PRINT N'Creating [dbo].[K12SchoolStatus].[RefAlternativeSchoolFocusId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000015', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefAlternativeSchoolFocusId';


GO
PRINT N'Creating [dbo].[K12SchoolStatus].[RefAlternativeSchoolFocusId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13015', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefAlternativeSchoolFocusId';


GO
PRINT N'Creating [dbo].[K12SchoolStatus].[RefInternetAccessId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of internet access available.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefInternetAccessId';


GO
PRINT N'Creating [dbo].[K12SchoolStatus].[RefInternetAccessId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Internet Access', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefInternetAccessId';


GO
PRINT N'Creating [dbo].[K12SchoolStatus].[RefInternetAccessId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000587', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefInternetAccessId';


GO
PRINT N'Creating [dbo].[K12SchoolStatus].[RefInternetAccessId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13580', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefInternetAccessId';


GO
PRINT N'Creating [dbo].[K12SchoolStatus].[RefRestructuringActionId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The types of actions being implemented in Title I schools as a result of the school being in an improvement status of restructuring – year 2 (implementation year).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefRestructuringActionId';


GO
PRINT N'Creating [dbo].[K12SchoolStatus].[RefRestructuringActionId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Restructuring Action', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefRestructuringActionId';


GO
PRINT N'Creating [dbo].[K12SchoolStatus].[RefRestructuringActionId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000232', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefRestructuringActionId';


GO
PRINT N'Creating [dbo].[K12SchoolStatus].[RefRestructuringActionId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13232', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefRestructuringActionId';


GO
PRINT N'Creating [dbo].[K12SchoolStatus].[RefTitleISchoolStatusId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication that a school is designated under state and federal regulations as being eligible for participation in programs authorized by Title I of ESEA as amended and whether it has a Title I program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefTitleISchoolStatusId';


GO
PRINT N'Creating [dbo].[K12SchoolStatus].[RefTitleISchoolStatusId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Title I School Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefTitleISchoolStatusId';


GO
PRINT N'Creating [dbo].[K12SchoolStatus].[RefTitleISchoolStatusId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000285', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefTitleISchoolStatusId';


GO
PRINT N'Creating [dbo].[K12SchoolStatus].[RefTitleISchoolStatusId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13285', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefTitleISchoolStatusId';


GO
PRINT N'Creating [dbo].[K12SchoolStatus].[ConsolidatedMepFundsStatus].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether the school has a school-wide program, as defined by current law, in which federal Migrant Education Program (MEP) funds are consolidated.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'ConsolidatedMepFundsStatus';


GO
PRINT N'Creating [dbo].[K12SchoolStatus].[ConsolidatedMepFundsStatus].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Consolidated Migrant Education Program Funds Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'ConsolidatedMepFundsStatus';


GO
PRINT N'Creating [dbo].[K12SchoolStatus].[ConsolidatedMepFundsStatus].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000542', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'ConsolidatedMepFundsStatus';


GO
PRINT N'Creating [dbo].[K12SchoolStatus].[ConsolidatedMepFundsStatus].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13533', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'ConsolidatedMepFundsStatus';


GO
PRINT N'Creating [dbo].[K12SchoolStatus].[RefNationalSchoolLunchProgramStatusId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The classification of participation by a school in the National School Lunch Program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefNationalSchoolLunchProgramStatusId';


GO
PRINT N'Creating [dbo].[K12SchoolStatus].[RefNationalSchoolLunchProgramStatusId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'National School Lunch Program Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefNationalSchoolLunchProgramStatusId';


GO
PRINT N'Creating [dbo].[K12SchoolStatus].[RefNationalSchoolLunchProgramStatusId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001767', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefNationalSchoolLunchProgramStatusId';


GO
PRINT N'Creating [dbo].[K12SchoolStatus].[RefNationalSchoolLunchProgramStatusId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=14748', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefNationalSchoolLunchProgramStatusId';


GO
PRINT N'Creating [dbo].[K12SchoolStatus].[RefVirtualSchoolStatusId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of the extent to which a public school offers instruction in which students and teachers are separated by time and/or location, and interaction occurs via computers and/or telecommunications technologies.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefVirtualSchoolStatusId';


GO
PRINT N'Creating [dbo].[K12SchoolStatus].[RefVirtualSchoolStatusId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Virtual School Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefVirtualSchoolStatusId';


GO
PRINT N'Creating [dbo].[K12SchoolStatus].[RefVirtualSchoolStatusId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001766', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefVirtualSchoolStatusId';


GO
PRINT N'Creating [dbo].[K12SchoolStatus].[RefVirtualSchoolStatusId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=14747', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12SchoolStatus', @level2type = N'COLUMN', @level2name = N'RefVirtualSchoolStatusId';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information about a student officially registered on the roll of a school or schools.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[RefEntryGradeLevelId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The grade level or primary instructional level at which a student enters and receives services in a school or an educational institution during a given academic session.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefEntryGradeLevelId';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[RefEntryGradeLevelId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Entry Grade Level', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefEntryGradeLevelId';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[RefEntryGradeLevelId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000100', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefEntryGradeLevelId';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[RefEntryGradeLevelId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13100', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefEntryGradeLevelId';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[RefPublicSchoolResidence].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of the location of a persons legal residence relative to (within or outside) the boundaries of the public school attended and its administrative unit.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefPublicSchoolResidence';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[RefPublicSchoolResidence].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Public School Residence Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefPublicSchoolResidence';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[RefPublicSchoolResidence].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000532', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefPublicSchoolResidence';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[RefPublicSchoolResidence].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13523', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefPublicSchoolResidence';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[RefEnrollmentStatusId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication as to whether a student''s name was, is, or will be officially registered on the roll of a school or schools.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefEnrollmentStatusId';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[RefEnrollmentStatusId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Enrollment Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefEnrollmentStatusId';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[RefEnrollmentStatusId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000094', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefEnrollmentStatusId';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[RefEnrollmentStatusId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13094', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefEnrollmentStatusId';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[RefEntryType].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The process by which a student enters a school during a given academic session.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefEntryType';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[RefEntryType].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Entry Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefEntryType';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[RefEntryType].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000099', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefEntryType';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[RefEntryType].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13099', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefEntryType';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[RefExitGradeLevel].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The grade level or primary instructional level at which a student exits a school, program, or an educational institution.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefExitGradeLevel';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[RefExitGradeLevel].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Exit Grade Level', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefExitGradeLevel';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[RefExitGradeLevel].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001210', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefExitGradeLevel';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[RefExitGradeLevel].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=14177', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefExitGradeLevel';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[RefExitOrWithdrawalStatusId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication as to whether an instance of student exit/withdrawal is considered to be of a permanent or temporary nature.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefExitOrWithdrawalStatusId';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[RefExitOrWithdrawalStatusId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Exit or Withdrawal Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefExitOrWithdrawalStatusId';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[RefExitOrWithdrawalStatusId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000108', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefExitOrWithdrawalStatusId';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[RefExitOrWithdrawalStatusId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13108', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefExitOrWithdrawalStatusId';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[RefExitOrWithdrawalTypeId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The circumstances under which the student exited from membership in an educational institution. ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefExitOrWithdrawalTypeId';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[RefExitOrWithdrawalTypeId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Exit or Withdrawal Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefExitOrWithdrawalTypeId';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[RefExitOrWithdrawalTypeId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000110', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefExitOrWithdrawalTypeId';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[RefExitOrWithdrawalTypeId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13110', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefExitOrWithdrawalTypeId';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[DisplacedStudentStatus].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A student who was enrolled, or eligible for enrollment, but has enrolled in another place because of a crisis.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'DisplacedStudentStatus';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[DisplacedStudentStatus].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Displaced Student Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'DisplacedStudentStatus';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[DisplacedStudentStatus].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000610', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'DisplacedStudentStatus';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[DisplacedStudentStatus].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13603', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'DisplacedStudentStatus';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[RefEndOfTermStatusId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The nature of the student''s progress at the end of a given school term.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefEndOfTermStatusId';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[RefEndOfTermStatusId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'End of Term Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefEndOfTermStatusId';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[RefEndOfTermStatusId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000093', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefEndOfTermStatusId';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[RefEndOfTermStatusId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13093', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefEndOfTermStatusId';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[RefPromotionReasonId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The nature of the student''s promotion or progress at the end of a given school term.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefPromotionReasonId';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[RefPromotionReasonId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Promotion Reason', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefPromotionReasonId';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[RefPromotionReasonId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000530', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefPromotionReasonId';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[RefPromotionReasonId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13521', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefPromotionReasonId';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[RefNonPromotionReasonId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The primary reason as to why a staff member determined that a student should not be promoted (or be demoted).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefNonPromotionReasonId';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[RefNonPromotionReasonId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Nonpromotion Reason', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefNonPromotionReasonId';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[RefNonPromotionReasonId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000531', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefNonPromotionReasonId';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[RefNonPromotionReasonId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13522', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefNonPromotionReasonId';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[RefFoodServiceEligibilityId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of a student''s level of eligibility to participate in the National School Lunch Program for breakfast, lunch, snack, supper, and milk programs.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefFoodServiceEligibilityId';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[RefFoodServiceEligibilityId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Eligibility Status for School Food Service Programs', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefFoodServiceEligibilityId';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[RefFoodServiceEligibilityId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000092', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefFoodServiceEligibilityId';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[RefFoodServiceEligibilityId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13092', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefFoodServiceEligibilityId';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[FirstEntryDateIntoUSSchool].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year, month and day of a person''s initial enrollment into a United States school.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'FirstEntryDateIntoUSSchool';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[FirstEntryDateIntoUSSchool].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'First Entry Date into a US School', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'FirstEntryDateIntoUSSchool';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[FirstEntryDateIntoUSSchool].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000529', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'FirstEntryDateIntoUSSchool';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[FirstEntryDateIntoUSSchool].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13520', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'FirstEntryDateIntoUSSchool';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[RefDirectoryInformationBlockStatusId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether a individual requested a Family Education Rights and Privacy Act (FERPA) block to withhold the release of the person''s directory information.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefDirectoryInformationBlockStatusId';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[RefDirectoryInformationBlockStatusId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Directory Information Block Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefDirectoryInformationBlockStatusId';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[RefDirectoryInformationBlockStatusId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001590', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefDirectoryInformationBlockStatusId';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[RefDirectoryInformationBlockStatusId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=14569', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefDirectoryInformationBlockStatusId';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[NSLPDirectCertificationIndicator].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Indicates that the student''s National School Lunch Program (NSLP) eligibility has been determined through direct certification.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'NSLPDirectCertificationIndicator';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[NSLPDirectCertificationIndicator].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'National School Lunch Program Direct Certification Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'NSLPDirectCertificationIndicator';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[NSLPDirectCertificationIndicator].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001654', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'NSLPDirectCertificationIndicator';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[NSLPDirectCertificationIndicator].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=14635', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'NSLPDirectCertificationIndicator';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[RefStudentEnrollmentAccessTypeId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The designation of how students secure access to age appropriate public schools, or publicly funded charter or private schools.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefStudentEnrollmentAccessTypeId';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[RefStudentEnrollmentAccessTypeId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Student Enrollment Access Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefStudentEnrollmentAccessTypeId';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[RefStudentEnrollmentAccessTypeId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001862', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefStudentEnrollmentAccessTypeId';


GO
PRINT N'Creating [dbo].[K12StudentEnrollment].[RefStudentEnrollmentAccessTypeId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=14843', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StudentEnrollment', @level2type = N'COLUMN', @level2name = N'RefStudentEnrollmentAccessTypeId';


GO
PRINT N'Creating [dbo].[PersonDisability].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The disability status for an individual and their primary disability.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability';


GO
PRINT N'Creating [dbo].[PersonDisability].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability';


GO
PRINT N'Creating [dbo].[PersonDisability].[PersonId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Inherited surrogate key from Person.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'PersonId';


GO
PRINT N'Creating [dbo].[PersonDisability].[PrimaryDisabilityTypeId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The major or overriding disability condition that best describes a person''s impairment.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'PrimaryDisabilityTypeId';


GO
PRINT N'Creating [dbo].[PersonDisability].[PrimaryDisabilityTypeId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Primary Disability Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'PrimaryDisabilityTypeId';


GO
PRINT N'Creating [dbo].[PersonDisability].[PrimaryDisabilityTypeId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000218', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'PrimaryDisabilityTypeId';


GO
PRINT N'Creating [dbo].[PersonDisability].[PrimaryDisabilityTypeId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13218', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'PrimaryDisabilityTypeId';


GO
PRINT N'Creating [dbo].[PersonDisability].[DisabilityStatus].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether a person is classified as disabled under the American''s with Disability Act (ADA).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'DisabilityStatus';


GO
PRINT N'Creating [dbo].[PersonDisability].[DisabilityStatus].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Disability Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'DisabilityStatus';


GO
PRINT N'Creating [dbo].[PersonDisability].[DisabilityStatus].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000577', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'DisabilityStatus';


GO
PRINT N'Creating [dbo].[PersonDisability].[DisabilityStatus].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13569', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'DisabilityStatus';


GO
PRINT N'Creating [dbo].[PersonDisability].[RefAccommodationsNeededTypeId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Codes identifying the set of health accommodations.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'RefAccommodationsNeededTypeId';


GO
PRINT N'Creating [dbo].[PersonDisability].[RefAccommodationsNeededTypeId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Accommodations Needed Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'RefAccommodationsNeededTypeId';


GO
PRINT N'Creating [dbo].[PersonDisability].[RefAccommodationsNeededTypeId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001277', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'RefAccommodationsNeededTypeId';


GO
PRINT N'Creating [dbo].[PersonDisability].[RefAccommodationsNeededTypeId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=14243', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'RefAccommodationsNeededTypeId';


GO
PRINT N'Creating [dbo].[PersonDisability].[RefDisabilityConditionTypeId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Codes identifying the set of disability conditions.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'RefDisabilityConditionTypeId';


GO
PRINT N'Creating [dbo].[PersonDisability].[RefDisabilityConditionTypeId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Disability Condition Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'RefDisabilityConditionTypeId';


GO
PRINT N'Creating [dbo].[PersonDisability].[RefDisabilityConditionTypeId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001320', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'RefDisabilityConditionTypeId';


GO
PRINT N'Creating [dbo].[PersonDisability].[RefDisabilityConditionTypeId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=14286', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'RefDisabilityConditionTypeId';


GO
PRINT N'Creating [dbo].[PersonDisability].[RefDisabilityDeterminationSourceTypeId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Codes identifying the set of disability determination sources.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'RefDisabilityDeterminationSourceTypeId';


GO
PRINT N'Creating [dbo].[PersonDisability].[RefDisabilityDeterminationSourceTypeId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Disability Determination Source Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'RefDisabilityDeterminationSourceTypeId';


GO
PRINT N'Creating [dbo].[PersonDisability].[RefDisabilityDeterminationSourceTypeId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001321', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'RefDisabilityDeterminationSourceTypeId';


GO
PRINT N'Creating [dbo].[PersonDisability].[RefDisabilityDeterminationSourceTypeId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=14287', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'RefDisabilityDeterminationSourceTypeId';


GO
PRINT N'Creating [dbo].[PersonDisability].[RefDisabilityConditionStatusCodeId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A code indicating the disability condition status.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'RefDisabilityConditionStatusCodeId';


GO
PRINT N'Creating [dbo].[PersonDisability].[RefDisabilityConditionStatusCodeId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Disability Condition Status Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'RefDisabilityConditionStatusCodeId';


GO
PRINT N'Creating [dbo].[PersonDisability].[RefDisabilityConditionStatusCodeId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001319', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'RefDisabilityConditionStatusCodeId';


GO
PRINT N'Creating [dbo].[PersonDisability].[RefDisabilityConditionStatusCodeId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=14285', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'RefDisabilityConditionStatusCodeId';


GO
PRINT N'Creating [dbo].[PersonDisability].[SignificantCognitiveDisabilityIndicator].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Student has an existing IDEA disability with cognitive impairments which may prevent him/her from attaining grade-level achievement standards.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'SignificantCognitiveDisabilityIndicator';


GO
PRINT N'Creating [dbo].[PersonDisability].[SignificantCognitiveDisabilityIndicator].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Significant Cognitive Disability Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'SignificantCognitiveDisabilityIndicator';


GO
PRINT N'Creating [dbo].[PersonDisability].[SignificantCognitiveDisabilityIndicator].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001765', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'SignificantCognitiveDisabilityIndicator';


GO
PRINT N'Creating [dbo].[PersonDisability].[SignificantCognitiveDisabilityIndicator].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=14746', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'SignificantCognitiveDisabilityIndicator';


GO
PRINT N'Creating [dbo].[PersonDisability].[RefIDEADisabilityTypeId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A category of disability that describes a person’s impairment defined by the Individuals with Disabilities Education Act.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'RefIDEADisabilityTypeId';


GO
PRINT N'Creating [dbo].[PersonDisability].[RefIDEADisabilityTypeId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'IDEA Disability Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'RefIDEADisabilityTypeId';


GO
PRINT N'Creating [dbo].[PersonDisability].[RefIDEADisabilityTypeId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001733', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'RefIDEADisabilityTypeId';


GO
PRINT N'Creating [dbo].[PersonDisability].[RefIDEADisabilityTypeId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=14714', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonDisability', @level2type = N'COLUMN', @level2name = N'RefIDEADisabilityTypeId';


GO
PRINT N'Creating [dbo].[PersonProgramParticipation].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Identifies the type of participation for a person participating in a program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonProgramParticipation';


GO
PRINT N'Creating [dbo].[PersonProgramParticipation].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonProgramParticipation';


GO
PRINT N'Creating [dbo].[PersonProgramParticipation].[RefParticipationTypeId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Status types for a person''s participation in the program.  Either, a record represents Yes (True) and it''s absence No (False), or ParticipationStatus contains a status value.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonProgramParticipation', @level2type = N'COLUMN', @level2name = N'RefParticipationTypeId';


GO
PRINT N'Creating [dbo].[PersonProgramParticipation].[RefParticipationTypeId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'GED Preparation Program Participation Status, Gifted and Talented Indicator, Homeless Serviced Indicator, Migrant Education Program Participation Status, Neglected or Delinquent Status, Section 504 Status, Title III Immigrant Participation Status, Title I Schoolwide Program Participation, Title I Targeted Assistance Participation, Title III Limited English Proficient Participation Status, Kindergarten Program Participation Type  , Career Pathways Program Participation Indicator, Correctional Education Reentry Services Participation Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonProgramParticipation', @level2type = N'COLUMN', @level2name = N'RefParticipationTypeId';


GO
PRINT N'Creating [dbo].[PersonProgramParticipation].[RefParticipationTypeId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000120, 000122, 000147, 000185, 000193, 000249, 000290, 000550, 000551, 000565, 000714, 001291, 001297', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonProgramParticipation', @level2type = N'COLUMN', @level2name = N'RefParticipationTypeId';


GO
PRINT N'Creating [dbo].[PersonProgramParticipation].[RefParticipationTypeId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13120, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13122, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13147, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13185, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13193, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13249, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13290, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13541, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13542, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13557, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13690, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=14257, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=14263', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonProgramParticipation', @level2type = N'COLUMN', @level2name = N'RefParticipationTypeId';


GO
PRINT N'Creating [dbo].[PersonProgramParticipation].[RefProgramExitReasonId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The documented or assumed reason a student is no longer being served by a special program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonProgramParticipation', @level2type = N'COLUMN', @level2name = N'RefProgramExitReasonId';


GO
PRINT N'Creating [dbo].[PersonProgramParticipation].[RefProgramExitReasonId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Exit Reason', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonProgramParticipation', @level2type = N'COLUMN', @level2name = N'RefProgramExitReasonId';


GO
PRINT N'Creating [dbo].[PersonProgramParticipation].[RefProgramExitReasonId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000222', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonProgramParticipation', @level2type = N'COLUMN', @level2name = N'RefProgramExitReasonId';


GO
PRINT N'Creating [dbo].[PersonProgramParticipation].[RefProgramExitReasonId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13222', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonProgramParticipation', @level2type = N'COLUMN', @level2name = N'RefProgramExitReasonId';


GO
PRINT N'Creating [dbo].[PersonProgramParticipation].[ParticipationStatus].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Gifted and Talented Indicator, Neglected or Delinquent Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonProgramParticipation', @level2type = N'COLUMN', @level2name = N'ParticipationStatus';


GO
PRINT N'Creating [dbo].[PersonProgramParticipation].[ParticipationStatus].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000122, 000193', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonProgramParticipation', @level2type = N'COLUMN', @level2name = N'ParticipationStatus';


GO
PRINT N'Creating [dbo].[PersonProgramParticipation].[ParticipationStatus].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13122, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13193', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonProgramParticipation', @level2type = N'COLUMN', @level2name = N'ParticipationStatus';


GO
PRINT N'Creating [dbo].[ProgramParticipationAE].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information on a person participating in an adult education program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE';


GO
PRINT N'Creating [dbo].[ProgramParticipationAE].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE';


GO
PRINT N'Creating [dbo].[ProgramParticipationAE].[RefAeInstructionalProgramTypeId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of instructional program in which an adult is enrolled.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefAeInstructionalProgramTypeId';


GO
PRINT N'Creating [dbo].[ProgramParticipationAE].[RefAeInstructionalProgramTypeId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Adult Education Instructional Program Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefAeInstructionalProgramTypeId';


GO
PRINT N'Creating [dbo].[ProgramParticipationAE].[RefAeInstructionalProgramTypeId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001077', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefAeInstructionalProgramTypeId';


GO
PRINT N'Creating [dbo].[ProgramParticipationAE].[RefAeInstructionalProgramTypeId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13765', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefAeInstructionalProgramTypeId';


GO
PRINT N'Creating [dbo].[ProgramParticipationAE].[RefAePostsecondaryTransitionActionId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The action taken with respect to postsecondary enrollment by the learner after program exit or when co-enrolled in ABE and postsecondary with respect to enrollment in a postsecondary educational or occupational skills program building on prior services or training received.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefAePostsecondaryTransitionActionId';


GO
PRINT N'Creating [dbo].[ProgramParticipationAE].[RefAePostsecondaryTransitionActionId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Adult Education Postsecondary Transition Action', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefAePostsecondaryTransitionActionId';


GO
PRINT N'Creating [dbo].[ProgramParticipationAE].[RefAePostsecondaryTransitionActionId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000784', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefAePostsecondaryTransitionActionId';


GO
PRINT N'Creating [dbo].[ProgramParticipationAE].[RefAePostsecondaryTransitionActionId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13768', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefAePostsecondaryTransitionActionId';


GO
PRINT N'Creating [dbo].[ProgramParticipationAE].[PostsecondaryTransitionDate].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year, month and day on which a person previously enrolled in adult education entered and began to receive instructional services or training at a postsecondary institution.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'PostsecondaryTransitionDate';


GO
PRINT N'Creating [dbo].[ProgramParticipationAE].[PostsecondaryTransitionDate].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Adult Education Postsecondary Transition Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'PostsecondaryTransitionDate';


GO
PRINT N'Creating [dbo].[ProgramParticipationAE].[PostsecondaryTransitionDate].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001081', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'PostsecondaryTransitionDate';


GO
PRINT N'Creating [dbo].[ProgramParticipationAE].[PostsecondaryTransitionDate].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13769', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'PostsecondaryTransitionDate';


GO
PRINT N'Creating [dbo].[ProgramParticipationAE].[RefAeSpecialProgramTypeId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type, by location or delivery mode, of adult education instruction program in which an adult participates.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefAeSpecialProgramTypeId';


GO
PRINT N'Creating [dbo].[ProgramParticipationAE].[RefAeSpecialProgramTypeId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Adult Education Special Program Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefAeSpecialProgramTypeId';


GO
PRINT N'Creating [dbo].[ProgramParticipationAE].[RefAeSpecialProgramTypeId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000782', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefAeSpecialProgramTypeId';


GO
PRINT N'Creating [dbo].[ProgramParticipationAE].[RefAeSpecialProgramTypeId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13766', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefAeSpecialProgramTypeId';


GO
PRINT N'Creating [dbo].[ProgramParticipationAE].[RefAeFunctioningLevelAtIntakeId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An individual''s entering skill level, as defined by the National Reporting System for Adult Education and determined by an approved standardized assessment at program intake.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefAeFunctioningLevelAtIntakeId';


GO
PRINT N'Creating [dbo].[ProgramParticipationAE].[RefAeFunctioningLevelAtIntakeId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Adult Educational Functioning Level at Intake', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefAeFunctioningLevelAtIntakeId';


GO
PRINT N'Creating [dbo].[ProgramParticipationAE].[RefAeFunctioningLevelAtIntakeId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000779', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefAeFunctioningLevelAtIntakeId';


GO
PRINT N'Creating [dbo].[ProgramParticipationAE].[RefAeFunctioningLevelAtIntakeId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13763', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefAeFunctioningLevelAtIntakeId';


GO
PRINT N'Creating [dbo].[ProgramParticipationAE].[RefAeFunctioningLevelAtPosttestId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An individual''s skill level, as defined by the National Reporting System for Adult Education and determined by an approved standardized assessment after a set time period or number of instructional hours.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefAeFunctioningLevelAtPosttestId';


GO
PRINT N'Creating [dbo].[ProgramParticipationAE].[RefAeFunctioningLevelAtPosttestId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Adult Educational Functioning Level at Posttest', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefAeFunctioningLevelAtPosttestId';


GO
PRINT N'Creating [dbo].[ProgramParticipationAE].[RefAeFunctioningLevelAtPosttestId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000780', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefAeFunctioningLevelAtPosttestId';


GO
PRINT N'Creating [dbo].[ProgramParticipationAE].[RefAeFunctioningLevelAtPosttestId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13764', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefAeFunctioningLevelAtPosttestId';


GO
PRINT N'Creating [dbo].[ProgramParticipationAE].[RefGoalsForAttendingAdultEducationId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A person''s reasons for attending an adult education class or program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefGoalsForAttendingAdultEducationId';


GO
PRINT N'Creating [dbo].[ProgramParticipationAE].[RefGoalsForAttendingAdultEducationId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Goals for Attending Adult Education', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefGoalsForAttendingAdultEducationId';


GO
PRINT N'Creating [dbo].[ProgramParticipationAE].[RefGoalsForAttendingAdultEducationId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001079', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefGoalsForAttendingAdultEducationId';


GO
PRINT N'Creating [dbo].[ProgramParticipationAE].[RefGoalsForAttendingAdultEducationId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13767', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefGoalsForAttendingAdultEducationId';


GO
PRINT N'Creating [dbo].[ProgramParticipationAE].[DisplacedHomemakerIndicator].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A person who ; (A) (i) has worked primarily without remuneration to care for a home and family, and for that reason has diminished marketable skills;    (ii) has been dependent on the income of another family member but is no longer supported by that income; or    (iii) is a parent whose youngest dependent child will become ineligible to receive assistance under part A of title IV of the Social Security Act (42 U.S.C. 601 et seq.) not later than 2 years after the date on which the parent applies for assistance under such title; and (B)   is unemployed or underemployed and is experiencing difficulty in obtaining or upgrading employment.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'DisplacedHomemakerIndicator';


GO
PRINT N'Creating [dbo].[ProgramParticipationAE].[DisplacedHomemakerIndicator].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Career-Technical-Adult Education Displaced Homemaker Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'DisplacedHomemakerIndicator';


GO
PRINT N'Creating [dbo].[ProgramParticipationAE].[DisplacedHomemakerIndicator].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000084', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'DisplacedHomemakerIndicator';


GO
PRINT N'Creating [dbo].[ProgramParticipationAE].[DisplacedHomemakerIndicator].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13084', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'DisplacedHomemakerIndicator';


GO
PRINT N'Creating [dbo].[ProgramParticipationAE].[ProxyContactHours].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The number of instructional hours completed by an adult enrolled in a distance learning program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'ProxyContactHours';


GO
PRINT N'Creating [dbo].[ProgramParticipationAE].[ProxyContactHours].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Proxy Contact Hours', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'ProxyContactHours';


GO
PRINT N'Creating [dbo].[ProgramParticipationAE].[ProxyContactHours].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000790', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'ProxyContactHours';


GO
PRINT N'Creating [dbo].[ProgramParticipationAE].[ProxyContactHours].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13776', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'ProxyContactHours';


GO
PRINT N'Creating [dbo].[ProgramParticipationAE].[InstructionalActivityHoursCompleted].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The number of credit hours and/or contact hours successfully completed by a person during a term.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'InstructionalActivityHoursCompleted';


GO
PRINT N'Creating [dbo].[ProgramParticipationAE].[InstructionalActivityHoursCompleted].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Instructional Activity Hours Completed', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'InstructionalActivityHoursCompleted';


GO
PRINT N'Creating [dbo].[ProgramParticipationAE].[InstructionalActivityHoursCompleted].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000362', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'InstructionalActivityHoursCompleted';


GO
PRINT N'Creating [dbo].[ProgramParticipationAE].[InstructionalActivityHoursCompleted].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13361', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'InstructionalActivityHoursCompleted';


GO
PRINT N'Creating [dbo].[ProgramParticipationAE].[RefCorrectionalEducationFacilityTypeId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of facility in which an inmate receives correctional education services.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefCorrectionalEducationFacilityTypeId';


GO
PRINT N'Creating [dbo].[ProgramParticipationAE].[RefCorrectionalEducationFacilityTypeId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Correctional Education Facility Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefCorrectionalEducationFacilityTypeId';


GO
PRINT N'Creating [dbo].[ProgramParticipationAE].[RefCorrectionalEducationFacilityTypeId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001296', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefCorrectionalEducationFacilityTypeId';


GO
PRINT N'Creating [dbo].[ProgramParticipationAE].[RefCorrectionalEducationFacilityTypeId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=14262', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefCorrectionalEducationFacilityTypeId';


GO
PRINT N'Creating [dbo].[ProgramParticipationAE].[RefWorkbasedLearningOpportunityTypeId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of work-based learning opportunity a student participated in.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefWorkbasedLearningOpportunityTypeId';


GO
PRINT N'Creating [dbo].[ProgramParticipationAE].[RefWorkbasedLearningOpportunityTypeId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Work-based Learning Opportunity Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefWorkbasedLearningOpportunityTypeId';


GO
PRINT N'Creating [dbo].[ProgramParticipationAE].[RefWorkbasedLearningOpportunityTypeId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001499', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefWorkbasedLearningOpportunityTypeId';


GO
PRINT N'Creating [dbo].[ProgramParticipationAE].[RefWorkbasedLearningOpportunityTypeId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=14471', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationAE', @level2type = N'COLUMN', @level2name = N'RefWorkbasedLearningOpportunityTypeId';


GO
PRINT N'Creating [dbo].[ProgramParticipationCte].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information on a person participating in a career and technical education program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte';


GO
PRINT N'Creating [dbo].[ProgramParticipationCte].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte';


GO
PRINT N'Creating [dbo].[ProgramParticipationCte].[CteParticipant].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication a student has met the state-defined threshold of Career and Technical Education participation as defined in the State''s approved Perkins IV State Plan.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'CteParticipant';


GO
PRINT N'Creating [dbo].[ProgramParticipationCte].[CteParticipant].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Career and Technical Education Participant', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'CteParticipant';


GO
PRINT N'Creating [dbo].[ProgramParticipationCte].[CteParticipant].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000592', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'CteParticipant';


GO
PRINT N'Creating [dbo].[ProgramParticipationCte].[CteParticipant].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13585', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'CteParticipant';


GO
PRINT N'Creating [dbo].[ProgramParticipationCte].[CteConcentrator].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of a student who has met the state-defined threshold of career and technical education concentrators, as defined in the State''s approved Perkins IV State Plan.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'CteConcentrator';


GO
PRINT N'Creating [dbo].[ProgramParticipationCte].[CteConcentrator].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Career and Technical Education Concentrator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'CteConcentrator';


GO
PRINT N'Creating [dbo].[ProgramParticipationCte].[CteConcentrator].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000037', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'CteConcentrator';


GO
PRINT N'Creating [dbo].[ProgramParticipationCte].[CteConcentrator].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13037', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'CteConcentrator';


GO
PRINT N'Creating [dbo].[ProgramParticipationCte].[CteCompleter].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of a student who reached a state-defined threshold of a career and technical education program/pathway.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'CteCompleter';


GO
PRINT N'Creating [dbo].[ProgramParticipationCte].[CteCompleter].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Career and Technical Education Completer', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'CteCompleter';


GO
PRINT N'Creating [dbo].[ProgramParticipationCte].[CteCompleter].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000036', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'CteCompleter';


GO
PRINT N'Creating [dbo].[ProgramParticipationCte].[CteCompleter].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13036', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'CteCompleter';


GO
PRINT N'Creating [dbo].[ProgramParticipationCte].[SingleParentOrSinglePregnantWoman].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A student who, at some time during the school year, is either a pregnant female student who is unmarried; or a male or female student who is unmarried or legally separated from a spouse and has a minor child or children.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'SingleParentOrSinglePregnantWoman';


GO
PRINT N'Creating [dbo].[ProgramParticipationCte].[SingleParentOrSinglePregnantWoman].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Single Parent Or Single Pregnant Woman Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'SingleParentOrSinglePregnantWoman';


GO
PRINT N'Creating [dbo].[ProgramParticipationCte].[SingleParentOrSinglePregnantWoman].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000580', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'SingleParentOrSinglePregnantWoman';


GO
PRINT N'Creating [dbo].[ProgramParticipationCte].[SingleParentOrSinglePregnantWoman].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13573', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'SingleParentOrSinglePregnantWoman';


GO
PRINT N'Creating [dbo].[ProgramParticipationCte].[DisplacedHomemakerIndicator].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A person who ; (A) (i) has worked primarily without remuneration to care for a home and family, and for that reason has diminished marketable skills;    (ii) has been dependent on the income of another family member but is no longer supported by that income; or    (iii) is a parent whose youngest dependent child will become ineligible to receive assistance under part A of title IV of the Social Security Act (42 U.S.C. 601 et seq.) not later than 2 years after the date on which the parent applies for assistance under such title; and (B)   is unemployed or underemployed and is experiencing difficulty in obtaining or upgrading employment.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'DisplacedHomemakerIndicator';


GO
PRINT N'Creating [dbo].[ProgramParticipationCte].[DisplacedHomemakerIndicator].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Career-Technical-Adult Education Displaced Homemaker Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'DisplacedHomemakerIndicator';


GO
PRINT N'Creating [dbo].[ProgramParticipationCte].[DisplacedHomemakerIndicator].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000084', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'DisplacedHomemakerIndicator';


GO
PRINT N'Creating [dbo].[ProgramParticipationCte].[DisplacedHomemakerIndicator].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13084', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'DisplacedHomemakerIndicator';


GO
PRINT N'Creating [dbo].[ProgramParticipationCte].[CteNonTraditionalCompletion].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication that the CTE student has completed a CTE program in a nontraditional field (where one gender comprises less than 25 percent of the persons employed in those occupations or fields of work).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'CteNonTraditionalCompletion';


GO
PRINT N'Creating [dbo].[ProgramParticipationCte].[CteNonTraditionalCompletion].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Career and Technical Education Nontraditional Completion', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'CteNonTraditionalCompletion';


GO
PRINT N'Creating [dbo].[ProgramParticipationCte].[CteNonTraditionalCompletion].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000593', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'CteNonTraditionalCompletion';


GO
PRINT N'Creating [dbo].[ProgramParticipationCte].[CteNonTraditionalCompletion].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13586', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'CteNonTraditionalCompletion';


GO
PRINT N'Creating [dbo].[ProgramParticipationCte].[RefNonTraditionalGenderStatusId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether CTE participants were members of an underrepresented gender group (where one gender comprises less than 25 percent of the persons employed in those occupations or field of work).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'RefNonTraditionalGenderStatusId';


GO
PRINT N'Creating [dbo].[ProgramParticipationCte].[RefNonTraditionalGenderStatusId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Career Technical Education Nontraditional Gender Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'RefNonTraditionalGenderStatusId';


GO
PRINT N'Creating [dbo].[ProgramParticipationCte].[RefNonTraditionalGenderStatusId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000588', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'RefNonTraditionalGenderStatusId';


GO
PRINT N'Creating [dbo].[ProgramParticipationCte].[RefNonTraditionalGenderStatusId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13581', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'RefNonTraditionalGenderStatusId';


GO
PRINT N'Creating [dbo].[ProgramParticipationCte].[RefWorkbasedLearningOpportunityTypeId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of work-based learning opportunity a student participated in.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'RefWorkbasedLearningOpportunityTypeId';


GO
PRINT N'Creating [dbo].[ProgramParticipationCte].[RefWorkbasedLearningOpportunityTypeId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Work-based Learning Opportunity Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'RefWorkbasedLearningOpportunityTypeId';


GO
PRINT N'Creating [dbo].[ProgramParticipationCte].[RefWorkbasedLearningOpportunityTypeId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001499', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'RefWorkbasedLearningOpportunityTypeId';


GO
PRINT N'Creating [dbo].[ProgramParticipationCte].[RefWorkbasedLearningOpportunityTypeId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=14471', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'RefWorkbasedLearningOpportunityTypeId';


GO
PRINT N'Creating [dbo].[ProgramParticipationCte].[CareerPathwaysProgramParticipationExitDate].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year, month and day on which the person ceased to participate in a program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'CareerPathwaysProgramParticipationExitDate';


GO
PRINT N'Creating [dbo].[ProgramParticipationCte].[CareerPathwaysProgramParticipationExitDate].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Career Pathways Program Participation Exit Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'CareerPathwaysProgramParticipationExitDate';


GO
PRINT N'Creating [dbo].[ProgramParticipationCte].[CareerPathwaysProgramParticipationExitDate].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001583', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'CareerPathwaysProgramParticipationExitDate';


GO
PRINT N'Creating [dbo].[ProgramParticipationCte].[CareerPathwaysProgramParticipationExitDate].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=14562', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'CareerPathwaysProgramParticipationExitDate';


GO
PRINT N'Creating [dbo].[ProgramParticipationCte].[CareerPathwaysProgramParticipationStartDate].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year, month and day on which the person began to participate in a career pathway program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'CareerPathwaysProgramParticipationStartDate';


GO
PRINT N'Creating [dbo].[ProgramParticipationCte].[CareerPathwaysProgramParticipationStartDate].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Career Pathways Program Participation Start Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'CareerPathwaysProgramParticipationStartDate';


GO
PRINT N'Creating [dbo].[ProgramParticipationCte].[CareerPathwaysProgramParticipationStartDate].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001584', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'CareerPathwaysProgramParticipationStartDate';


GO
PRINT N'Creating [dbo].[ProgramParticipationCte].[CareerPathwaysProgramParticipationStartDate].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=14563', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationCte', @level2type = N'COLUMN', @level2name = N'CareerPathwaysProgramParticipationStartDate';


GO
PRINT N'Creating [dbo].[ProgramParticipationFoodService].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information on a person participating in a food service program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationFoodService';


GO
PRINT N'Creating [dbo].[ProgramParticipationFoodService].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationFoodService';


GO
PRINT N'Creating [dbo].[ProgramParticipationFoodService].[RefSchoolFoodServiceProgramId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of a student''s participation in free, reduced price, full price breakfast, lunch, snack, supper, and milk programs.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationFoodService', @level2type = N'COLUMN', @level2name = N'RefSchoolFoodServiceProgramId';


GO
PRINT N'Creating [dbo].[ProgramParticipationFoodService].[RefSchoolFoodServiceProgramId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Participation in School Food Service Programs', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationFoodService', @level2type = N'COLUMN', @level2name = N'RefSchoolFoodServiceProgramId';


GO
PRINT N'Creating [dbo].[ProgramParticipationFoodService].[RefSchoolFoodServiceProgramId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000325', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationFoodService', @level2type = N'COLUMN', @level2name = N'RefSchoolFoodServiceProgramId';


GO
PRINT N'Creating [dbo].[ProgramParticipationFoodService].[RefSchoolFoodServiceProgramId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13325', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationFoodService', @level2type = N'COLUMN', @level2name = N'RefSchoolFoodServiceProgramId';


GO
PRINT N'Creating [dbo].[ProgramParticipationMigrant].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information on a person participating in a migrant student education program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant';


GO
PRINT N'Creating [dbo].[ProgramParticipationMigrant].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant';


GO
PRINT N'Creating [dbo].[ProgramParticipationMigrant].[RefMepEnrollmentTypeId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of school/migrant education project in which instruction and/or support services are provided.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'RefMepEnrollmentTypeId';


GO
PRINT N'Creating [dbo].[ProgramParticipationMigrant].[RefMepEnrollmentTypeId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Migrant Education Program Enrollment Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'RefMepEnrollmentTypeId';


GO
PRINT N'Creating [dbo].[ProgramParticipationMigrant].[RefMepEnrollmentTypeId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000437', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'RefMepEnrollmentTypeId';


GO
PRINT N'Creating [dbo].[ProgramParticipationMigrant].[RefMepEnrollmentTypeId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13427', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'RefMepEnrollmentTypeId';


GO
PRINT N'Creating [dbo].[ProgramParticipationMigrant].[RefMepProjectBasedId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Indicates the type of MEP project based on the location where the MEP services are held.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'RefMepProjectBasedId';


GO
PRINT N'Creating [dbo].[ProgramParticipationMigrant].[RefMepProjectBasedId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Migrant Education Program Project Based', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'RefMepProjectBasedId';


GO
PRINT N'Creating [dbo].[ProgramParticipationMigrant].[RefMepProjectBasedId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000440', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'RefMepProjectBasedId';


GO
PRINT N'Creating [dbo].[ProgramParticipationMigrant].[RefMepProjectBasedId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13430', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'RefMepProjectBasedId';


GO
PRINT N'Creating [dbo].[ProgramParticipationMigrant].[RefMepServiceTypeId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of services received by participating migrant students in the migrant education program (MEP).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'RefMepServiceTypeId';


GO
PRINT N'Creating [dbo].[ProgramParticipationMigrant].[RefMepServiceTypeId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Migrant Education Program Services Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'RefMepServiceTypeId';


GO
PRINT N'Creating [dbo].[ProgramParticipationMigrant].[RefMepServiceTypeId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000186', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'RefMepServiceTypeId';


GO
PRINT N'Creating [dbo].[ProgramParticipationMigrant].[RefMepServiceTypeId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13186', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'RefMepServiceTypeId';


GO
PRINT N'Creating [dbo].[ProgramParticipationMigrant].[MepEligibilityExpirationDate].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year, month, and day on which the child is no longer eligible for the Migrant Education Program. This date should initially be a date equal to 36 months from the Qualifying Arrival Date to indicate the end of MEP eligibility or the student reaches 22 years of age, whichever comes first.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'MepEligibilityExpirationDate';


GO
PRINT N'Creating [dbo].[ProgramParticipationMigrant].[MepEligibilityExpirationDate].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Migrant Education Program Eligibility Expiration Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'MepEligibilityExpirationDate';


GO
PRINT N'Creating [dbo].[ProgramParticipationMigrant].[MepEligibilityExpirationDate].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000430', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'MepEligibilityExpirationDate';


GO
PRINT N'Creating [dbo].[ProgramParticipationMigrant].[MepEligibilityExpirationDate].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13420', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'MepEligibilityExpirationDate';


GO
PRINT N'Creating [dbo].[ProgramParticipationMigrant].[ContinuationOfServicesStatus].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication that migrant children are receiving instructional or support services under the continuation of services authority ESEA Title III Section 1304(e)(2)-(3).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'ContinuationOfServicesStatus';


GO
PRINT N'Creating [dbo].[ProgramParticipationMigrant].[ContinuationOfServicesStatus].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Migrant Education Program Continuation of Services Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'ContinuationOfServicesStatus';


GO
PRINT N'Creating [dbo].[ProgramParticipationMigrant].[ContinuationOfServicesStatus].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000563', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'ContinuationOfServicesStatus';


GO
PRINT N'Creating [dbo].[ProgramParticipationMigrant].[ContinuationOfServicesStatus].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13555', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'ContinuationOfServicesStatus';


GO
PRINT N'Creating [dbo].[ProgramParticipationMigrant].[RefContinuationOfServicesReasonId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Reason why the student is being served under the continuation of services provision of the MEP.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'RefContinuationOfServicesReasonId';


GO
PRINT N'Creating [dbo].[ProgramParticipationMigrant].[RefContinuationOfServicesReasonId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Continuation of Services Reason', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'RefContinuationOfServicesReasonId';


GO
PRINT N'Creating [dbo].[ProgramParticipationMigrant].[RefContinuationOfServicesReasonId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000429', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'RefContinuationOfServicesReasonId';


GO
PRINT N'Creating [dbo].[ProgramParticipationMigrant].[RefContinuationOfServicesReasonId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13419', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'RefContinuationOfServicesReasonId';


GO
PRINT N'Creating [dbo].[ProgramParticipationMigrant].[BirthdateVerification].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The evidence by which a child''s date of birth is confirmed.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'BirthdateVerification';


GO
PRINT N'Creating [dbo].[ProgramParticipationMigrant].[BirthdateVerification].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Birthdate Verification', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'BirthdateVerification';


GO
PRINT N'Creating [dbo].[ProgramParticipationMigrant].[BirthdateVerification].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000428', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'BirthdateVerification';


GO
PRINT N'Creating [dbo].[ProgramParticipationMigrant].[BirthdateVerification].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13418', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'BirthdateVerification';


GO
PRINT N'Creating [dbo].[ProgramParticipationMigrant].[ImmunizationRecordFlag].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Indicates whether the school or MEP program has immunization records on file for the student.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'ImmunizationRecordFlag';


GO
PRINT N'Creating [dbo].[ProgramParticipationMigrant].[ImmunizationRecordFlag].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Immunization Record Flag', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'ImmunizationRecordFlag';


GO
PRINT N'Creating [dbo].[ProgramParticipationMigrant].[ImmunizationRecordFlag].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000438', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'ImmunizationRecordFlag';


GO
PRINT N'Creating [dbo].[ProgramParticipationMigrant].[ImmunizationRecordFlag].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13428', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'ImmunizationRecordFlag';


GO
PRINT N'Creating [dbo].[ProgramParticipationMigrant].[MigrantStudentQualifyingArrivalDate].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The qualifying arrival date (QAD) is the month, date, and year that the child completed a move with his or her parent to enable the parent to find qualifying employment. In some cases, the child and worker may not always move together, in which case the QAD would be the date that the child joins the worker who has  already moved, or the date the worker joins the child who has already moved. The QAD is the date the child''s eligibility for the Migrant Education Program begins.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'MigrantStudentQualifyingArrivalDate';


GO
PRINT N'Creating [dbo].[ProgramParticipationMigrant].[MigrantStudentQualifyingArrivalDate].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Migrant Student Qualifying Arrival Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'MigrantStudentQualifyingArrivalDate';


GO
PRINT N'Creating [dbo].[ProgramParticipationMigrant].[MigrantStudentQualifyingArrivalDate].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000432', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'MigrantStudentQualifyingArrivalDate';


GO
PRINT N'Creating [dbo].[ProgramParticipationMigrant].[MigrantStudentQualifyingArrivalDate].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13422', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'MigrantStudentQualifyingArrivalDate';


GO
PRINT N'Creating [dbo].[ProgramParticipationMigrant].[LastQualifyingMoveDate].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year, month and day of the last qualifying move of a migrant student.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'LastQualifyingMoveDate';


GO
PRINT N'Creating [dbo].[ProgramParticipationMigrant].[LastQualifyingMoveDate].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Last Qualifying Move Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'LastQualifyingMoveDate';


GO
PRINT N'Creating [dbo].[ProgramParticipationMigrant].[LastQualifyingMoveDate].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000171', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'LastQualifyingMoveDate';


GO
PRINT N'Creating [dbo].[ProgramParticipationMigrant].[LastQualifyingMoveDate].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13171', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'LastQualifyingMoveDate';


GO
PRINT N'Creating [dbo].[ProgramParticipationMigrant].[QualifyingMoveFromCity].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The name of the city in which the child resided prior to the qualifying move.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'QualifyingMoveFromCity';


GO
PRINT N'Creating [dbo].[ProgramParticipationMigrant].[QualifyingMoveFromCity].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Qualifying Move From City', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'QualifyingMoveFromCity';


GO
PRINT N'Creating [dbo].[ProgramParticipationMigrant].[QualifyingMoveFromCity].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000433', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'QualifyingMoveFromCity';


GO
PRINT N'Creating [dbo].[ProgramParticipationMigrant].[QualifyingMoveFromCity].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13423', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'QualifyingMoveFromCity';


GO
PRINT N'Creating [dbo].[ProgramParticipationMigrant].[RefQualifyingMoveFromStateId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The postal abbreviation code for a state (within the United States) or outlying area in which the child resided prior to the qualifying move.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'RefQualifyingMoveFromStateId';


GO
PRINT N'Creating [dbo].[ProgramParticipationMigrant].[RefQualifyingMoveFromStateId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Qualifying Move From State', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'RefQualifyingMoveFromStateId';


GO
PRINT N'Creating [dbo].[ProgramParticipationMigrant].[RefQualifyingMoveFromStateId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000435', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'RefQualifyingMoveFromStateId';


GO
PRINT N'Creating [dbo].[ProgramParticipationMigrant].[RefQualifyingMoveFromStateId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13425', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'RefQualifyingMoveFromStateId';


GO
PRINT N'Creating [dbo].[ProgramParticipationMigrant].[RefQualifyingMoveFromCountryId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The abbreviation code for a country (other than the US) area in which the child resided prior to the qualifying move.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'RefQualifyingMoveFromCountryId';


GO
PRINT N'Creating [dbo].[ProgramParticipationMigrant].[RefQualifyingMoveFromCountryId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Qualifying Move From Country', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'RefQualifyingMoveFromCountryId';


GO
PRINT N'Creating [dbo].[ProgramParticipationMigrant].[RefQualifyingMoveFromCountryId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000434', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'RefQualifyingMoveFromCountryId';


GO
PRINT N'Creating [dbo].[ProgramParticipationMigrant].[RefQualifyingMoveFromCountryId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13424', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'RefQualifyingMoveFromCountryId';


GO
PRINT N'Creating [dbo].[ProgramParticipationMigrant].[DesignatedGraduationSchoolId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The NCES school identification number that identifies the school or facility from which a student expects to graduate.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'DesignatedGraduationSchoolId';


GO
PRINT N'Creating [dbo].[ProgramParticipationMigrant].[DesignatedGraduationSchoolId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Designated Graduation School Identifier', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'DesignatedGraduationSchoolId';


GO
PRINT N'Creating [dbo].[ProgramParticipationMigrant].[DesignatedGraduationSchoolId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000436', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'DesignatedGraduationSchoolId';


GO
PRINT N'Creating [dbo].[ProgramParticipationMigrant].[DesignatedGraduationSchoolId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13426', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'DesignatedGraduationSchoolId';


GO
PRINT N'Creating [dbo].[ProgramParticipationMigrant].[PrioritizedForServices].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication that a migratory child 1) is failing to meet, or most at risk of failing to meet, the state''s challenging academic content standards and student academic achievement standards; and 2) has experienced interruptions in their education during the regular school year.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'PrioritizedForServices';


GO
PRINT N'Creating [dbo].[ProgramParticipationMigrant].[PrioritizedForServices].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Migrant Prioritized for Services', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'PrioritizedForServices';


GO
PRINT N'Creating [dbo].[ProgramParticipationMigrant].[PrioritizedForServices].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000562', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'PrioritizedForServices';


GO
PRINT N'Creating [dbo].[ProgramParticipationMigrant].[PrioritizedForServices].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13554', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'PrioritizedForServices';


GO
PRINT N'Creating [dbo].[ProgramParticipationNeglected].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information on a person participating in a neglected or delinquent student education program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationNeglected';


GO
PRINT N'Creating [dbo].[ProgramParticipationNeglected].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationNeglected';


GO
PRINT N'Creating [dbo].[ProgramParticipationNeglected].[RefNeglectedProgramTypeId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of program under ESEA Title I, Part D, Subpart 1 (state programs) or Subpart 2 (LEA).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationNeglected', @level2type = N'COLUMN', @level2name = N'RefNeglectedProgramTypeId';


GO
PRINT N'Creating [dbo].[ProgramParticipationNeglected].[RefNeglectedProgramTypeId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Neglected or Delinquent Program Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationNeglected', @level2type = N'COLUMN', @level2name = N'RefNeglectedProgramTypeId';


GO
PRINT N'Creating [dbo].[ProgramParticipationNeglected].[RefNeglectedProgramTypeId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000194', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationNeglected', @level2type = N'COLUMN', @level2name = N'RefNeglectedProgramTypeId';


GO
PRINT N'Creating [dbo].[ProgramParticipationNeglected].[RefNeglectedProgramTypeId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13194', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationNeglected', @level2type = N'COLUMN', @level2name = N'RefNeglectedProgramTypeId';


GO
PRINT N'Creating [dbo].[ProgramParticipationNeglected].[AchievementIndicator].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Student was served by Title I, Part D, Subpart 1 of ESEA as amended for at least 90 consecutive days during the reporting period who took both a pre- and post-test.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationNeglected', @level2type = N'COLUMN', @level2name = N'AchievementIndicator';


GO
PRINT N'Creating [dbo].[ProgramParticipationNeglected].[AchievementIndicator].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Neglected or Delinquent Academic Achievement Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationNeglected', @level2type = N'COLUMN', @level2name = N'AchievementIndicator';


GO
PRINT N'Creating [dbo].[ProgramParticipationNeglected].[AchievementIndicator].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000635', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationNeglected', @level2type = N'COLUMN', @level2name = N'AchievementIndicator';


GO
PRINT N'Creating [dbo].[ProgramParticipationNeglected].[AchievementIndicator].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13636', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationNeglected', @level2type = N'COLUMN', @level2name = N'AchievementIndicator';


GO
PRINT N'Creating [dbo].[ProgramParticipationNeglected].[OutcomeIndicator].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Student was served by Title I, Part D, Subpart 2 of ESEA as amended for at least 90 consecutive days during the reporting period who took both a pre- and post-test.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationNeglected', @level2type = N'COLUMN', @level2name = N'OutcomeIndicator';


GO
PRINT N'Creating [dbo].[ProgramParticipationNeglected].[OutcomeIndicator].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Neglected or Delinquent Academic Outcome Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationNeglected', @level2type = N'COLUMN', @level2name = N'OutcomeIndicator';


GO
PRINT N'Creating [dbo].[ProgramParticipationNeglected].[OutcomeIndicator].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000636', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationNeglected', @level2type = N'COLUMN', @level2name = N'OutcomeIndicator';


GO
PRINT N'Creating [dbo].[ProgramParticipationNeglected].[OutcomeIndicator].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13638', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationNeglected', @level2type = N'COLUMN', @level2name = N'OutcomeIndicator';


GO
PRINT N'Creating [dbo].[ProgramParticipationNeglected].[ObtainedEmployment].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication that a Neglected or Delinquent student obtained employment.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationNeglected', @level2type = N'COLUMN', @level2name = N'ObtainedEmployment';


GO
PRINT N'Creating [dbo].[ProgramParticipationNeglected].[ObtainedEmployment].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Neglected or Delinquent Obtained Employment', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationNeglected', @level2type = N'COLUMN', @level2name = N'ObtainedEmployment';


GO
PRINT N'Creating [dbo].[ProgramParticipationNeglected].[ObtainedEmployment].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000484', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationNeglected', @level2type = N'COLUMN', @level2name = N'ObtainedEmployment';


GO
PRINT N'Creating [dbo].[ProgramParticipationNeglected].[ObtainedEmployment].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13475', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationNeglected', @level2type = N'COLUMN', @level2name = N'ObtainedEmployment';


GO
PRINT N'Creating [dbo].[ProgramParticipationSpecialEducation].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information on a person participating in a special education program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation';


GO
PRINT N'Creating [dbo].[ProgramParticipationSpecialEducation].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation';


GO
PRINT N'Creating [dbo].[ProgramParticipationSpecialEducation].[AwaitingInitialIDEAEvaluationStatus].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Awaiting initial evaluation for special education programs and related services under the Individuals with Disabilities Education Act (IDEA). ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'AwaitingInitialIDEAEvaluationStatus';


GO
PRINT N'Creating [dbo].[ProgramParticipationSpecialEducation].[AwaitingInitialIDEAEvaluationStatus].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Awaiting Initial IDEA Evaluation Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'AwaitingInitialIDEAEvaluationStatus';


GO
PRINT N'Creating [dbo].[ProgramParticipationSpecialEducation].[AwaitingInitialIDEAEvaluationStatus].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000031', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'AwaitingInitialIDEAEvaluationStatus';


GO
PRINT N'Creating [dbo].[ProgramParticipationSpecialEducation].[AwaitingInitialIDEAEvaluationStatus].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13031', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'AwaitingInitialIDEAEvaluationStatus';


GO
PRINT N'Creating [dbo].[ProgramParticipationSpecialEducation].[RefIDEAEducationalEnvironmentECId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The program in which children ages 3 through 5 attend and in which these children receive special education and related services.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'RefIDEAEducationalEnvironmentECId';


GO
PRINT N'Creating [dbo].[ProgramParticipationSpecialEducation].[RefIDEAEducationalEnvironmentECId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'IDEA Educational Environment for Early Childhood', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'RefIDEAEducationalEnvironmentECId';


GO
PRINT N'Creating [dbo].[ProgramParticipationSpecialEducation].[RefIDEAEducationalEnvironmentECId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000559', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'RefIDEAEducationalEnvironmentECId';


GO
PRINT N'Creating [dbo].[ProgramParticipationSpecialEducation].[RefIDEAEducationalEnvironmentECId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13550', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'RefIDEAEducationalEnvironmentECId';


GO
PRINT N'Creating [dbo].[ProgramParticipationSpecialEducation].[RefIDEAEdEnvironmentSchoolAgeId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The setting in which children ages 6 through 21, receive special education and related services.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'RefIDEAEdEnvironmentSchoolAgeId';


GO
PRINT N'Creating [dbo].[ProgramParticipationSpecialEducation].[RefIDEAEdEnvironmentSchoolAgeId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'IDEA Educational Environment for School Age', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'RefIDEAEdEnvironmentSchoolAgeId';


GO
PRINT N'Creating [dbo].[ProgramParticipationSpecialEducation].[RefIDEAEdEnvironmentSchoolAgeId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000535', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'RefIDEAEdEnvironmentSchoolAgeId';


GO
PRINT N'Creating [dbo].[ProgramParticipationSpecialEducation].[RefIDEAEdEnvironmentSchoolAgeId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13526', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'RefIDEAEdEnvironmentSchoolAgeId';


GO
PRINT N'Creating [dbo].[ProgramParticipationSpecialEducation].[SpecialEducationFTE].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Calculated ratio of time the student is in a special education setting. Values range from 0.00 to 1.00. If the student is in a special education setting 25% of the time, the value is .25; if 100% of the time, the value is 1.00.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'SpecialEducationFTE';


GO
PRINT N'Creating [dbo].[ProgramParticipationSpecialEducation].[SpecialEducationFTE].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Special Education Full Time Equivalency', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'SpecialEducationFTE';


GO
PRINT N'Creating [dbo].[ProgramParticipationSpecialEducation].[SpecialEducationFTE].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001242', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'SpecialEducationFTE';


GO
PRINT N'Creating [dbo].[ProgramParticipationSpecialEducation].[SpecialEducationFTE].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=14208', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'SpecialEducationFTE';


GO
PRINT N'Creating [dbo].[ProgramParticipationSpecialEducation].[RefSpecialEducationExitReasonId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The reason children who were in special education at the start of the reporting period were not in special education at the end of the reporting period.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'RefSpecialEducationExitReasonId';


GO
PRINT N'Creating [dbo].[ProgramParticipationSpecialEducation].[RefSpecialEducationExitReasonId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Special Education Exit Reason', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'RefSpecialEducationExitReasonId';


GO
PRINT N'Creating [dbo].[ProgramParticipationSpecialEducation].[RefSpecialEducationExitReasonId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000260', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'RefSpecialEducationExitReasonId';


GO
PRINT N'Creating [dbo].[ProgramParticipationSpecialEducation].[RefSpecialEducationExitReasonId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13260', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'RefSpecialEducationExitReasonId';


GO
PRINT N'Creating [dbo].[ProgramParticipationSpecialEducation].[SpecialEducationServicesExitDate].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year, month and day a child with disabilities (IDEA) ages 14 through 21 exited special education.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'SpecialEducationServicesExitDate';


GO
PRINT N'Creating [dbo].[ProgramParticipationSpecialEducation].[SpecialEducationServicesExitDate].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Special Education Services Exit Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'SpecialEducationServicesExitDate';


GO
PRINT N'Creating [dbo].[ProgramParticipationSpecialEducation].[SpecialEducationServicesExitDate].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000263', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'SpecialEducationServicesExitDate';


GO
PRINT N'Creating [dbo].[ProgramParticipationSpecialEducation].[SpecialEducationServicesExitDate].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13263', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'SpecialEducationServicesExitDate';


GO
PRINT N'Creating [dbo].[ProgramParticipationSpecialEducation].[IDEAPlacementRationale].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The rationale for the placement decision and if applicable, an explanation of the extent, if any, to which the child will not participate with nondisabled children in the regular class and in the activities described in paragraph (a)(4) of CFR. §300.320.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'IDEAPlacementRationale';


GO
PRINT N'Creating [dbo].[ProgramParticipationSpecialEducation].[IDEAPlacementRationale].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'IDEA Placement Rationale', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'IDEAPlacementRationale';


GO
PRINT N'Creating [dbo].[ProgramParticipationSpecialEducation].[IDEAPlacementRationale].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001704', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'IDEAPlacementRationale';


GO
PRINT N'Creating [dbo].[ProgramParticipationSpecialEducation].[IDEAPlacementRationale].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=14685', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationSpecialEducation', @level2type = N'COLUMN', @level2name = N'IDEAPlacementRationale';


GO
PRINT N'Creating [dbo].[ProgramParticipationTitleI].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information on a person participating in a Title I education program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTitleI';


GO
PRINT N'Creating [dbo].[ProgramParticipationTitleI].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTitleI';


GO
PRINT N'Creating [dbo].[ProgramParticipationTitleI].[RefTitleIIndicatorId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication that the student is participating in and served by programs under Title I, Part A of ESEA as amended.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTitleI', @level2type = N'COLUMN', @level2name = N'RefTitleIIndicatorId';


GO
PRINT N'Creating [dbo].[ProgramParticipationTitleI].[RefTitleIIndicatorId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Title I Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTitleI', @level2type = N'COLUMN', @level2name = N'RefTitleIIndicatorId';


GO
PRINT N'Creating [dbo].[ProgramParticipationTitleI].[RefTitleIIndicatorId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000281', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTitleI', @level2type = N'COLUMN', @level2name = N'RefTitleIIndicatorId';


GO
PRINT N'Creating [dbo].[ProgramParticipationTitleI].[RefTitleIIndicatorId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13281', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTitleI', @level2type = N'COLUMN', @level2name = N'RefTitleIIndicatorId';


GO
PRINT N'Creating [dbo].[StaffCredential].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A credential held by a staff member.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential';


GO
PRINT N'Creating [dbo].[StaffCredential].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential';


GO
PRINT N'Creating [dbo].[StaffCredential].[RefTeachingCredentialTypeId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of the category of a legal document giving authorization to perform teaching assignment services.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'RefTeachingCredentialTypeId';


GO
PRINT N'Creating [dbo].[StaffCredential].[RefTeachingCredentialTypeId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Teaching Credential Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'RefTeachingCredentialTypeId';


GO
PRINT N'Creating [dbo].[StaffCredential].[RefTeachingCredentialTypeId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000278', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'RefTeachingCredentialTypeId';


GO
PRINT N'Creating [dbo].[StaffCredential].[RefTeachingCredentialTypeId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13278', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'RefTeachingCredentialTypeId';


GO
PRINT N'Creating [dbo].[StaffCredential].[RefTeachingCredentialBasisId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of the pre-determined criteria for granting the teaching credential that a person holds.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'RefTeachingCredentialBasisId';


GO
PRINT N'Creating [dbo].[StaffCredential].[RefTeachingCredentialBasisId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Teaching Credential Basis', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'RefTeachingCredentialBasisId';


GO
PRINT N'Creating [dbo].[StaffCredential].[RefTeachingCredentialBasisId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000277', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'RefTeachingCredentialBasisId';


GO
PRINT N'Creating [dbo].[StaffCredential].[RefTeachingCredentialBasisId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13277', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'RefTeachingCredentialBasisId';


GO
PRINT N'Creating [dbo].[StaffCredential].[RefChildDevAssociateTypeId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Type of Child Development Associate credential as defined by options.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'RefChildDevAssociateTypeId';


GO
PRINT N'Creating [dbo].[StaffCredential].[RefChildDevAssociateTypeId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Child Development Associate Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'RefChildDevAssociateTypeId';


GO
PRINT N'Creating [dbo].[StaffCredential].[RefChildDevAssociateTypeId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000806', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'RefChildDevAssociateTypeId';


GO
PRINT N'Creating [dbo].[StaffCredential].[RefChildDevAssociateTypeId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13805', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'RefChildDevAssociateTypeId';


GO
PRINT N'Creating [dbo].[StaffCredential].[RefParaprofessionalQualificationId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether paraprofessionals are classified as qualified for their assignment according to state definition.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'RefParaprofessionalQualificationId';


GO
PRINT N'Creating [dbo].[StaffCredential].[RefParaprofessionalQualificationId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Paraprofessional Qualification Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'RefParaprofessionalQualificationId';


GO
PRINT N'Creating [dbo].[StaffCredential].[RefParaprofessionalQualificationId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000207', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'RefParaprofessionalQualificationId';


GO
PRINT N'Creating [dbo].[StaffCredential].[RefParaprofessionalQualificationId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13207', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'RefParaprofessionalQualificationId';


GO
PRINT N'Creating [dbo].[StaffCredential].[TechnologySkillsStandardsMet].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication that the person has achieved acceptable performance on a standards-based profile of technology user skills as defined by the state.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'TechnologySkillsStandardsMet';


GO
PRINT N'Creating [dbo].[StaffCredential].[TechnologySkillsStandardsMet].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Technology Skills Standards Met', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'TechnologySkillsStandardsMet';


GO
PRINT N'Creating [dbo].[StaffCredential].[TechnologySkillsStandardsMet].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000546', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'TechnologySkillsStandardsMet';


GO
PRINT N'Creating [dbo].[StaffCredential].[TechnologySkillsStandardsMet].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13537', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'TechnologySkillsStandardsMet';


GO
PRINT N'Creating [dbo].[StaffCredential].[DiplomaOrCredentialAwardDate].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The month and year on which the diploma/credential is awarded to a student in recognition of his/her completion of the curricular requirements.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'DiplomaOrCredentialAwardDate';


GO
PRINT N'Creating [dbo].[StaffCredential].[DiplomaOrCredentialAwardDate].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Diploma or Credential Award Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'DiplomaOrCredentialAwardDate';


GO
PRINT N'Creating [dbo].[StaffCredential].[DiplomaOrCredentialAwardDate].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000081', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'DiplomaOrCredentialAwardDate';


GO
PRINT N'Creating [dbo].[StaffCredential].[DiplomaOrCredentialAwardDate].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13081', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'DiplomaOrCredentialAwardDate';


GO
PRINT N'Creating [dbo].[StaffCredential].[RefProgramSponsorTypeId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A type of organization providing funds for a particular educational or service program or activity or for an individual''s participation in the program or activity.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'RefProgramSponsorTypeId';


GO
PRINT N'Creating [dbo].[StaffCredential].[RefProgramSponsorTypeId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Program Sponsor Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'RefProgramSponsorTypeId';


GO
PRINT N'Creating [dbo].[StaffCredential].[RefProgramSponsorTypeId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000716', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'RefProgramSponsorTypeId';


GO
PRINT N'Creating [dbo].[StaffCredential].[RefProgramSponsorTypeId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13692', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'RefProgramSponsorTypeId';


GO
PRINT N'Creating [dbo].[StaffCredential].[CTEInstructorIndustryCertification].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether a Career and Technical Education (CTE) instructor holds a current industry-recognized credential related to their teaching field.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'CTEInstructorIndustryCertification';


GO
PRINT N'Creating [dbo].[StaffCredential].[CTEInstructorIndustryCertification].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Career and Technical Education Instructor Industry Certification', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'CTEInstructorIndustryCertification';


GO
PRINT N'Creating [dbo].[StaffCredential].[CTEInstructorIndustryCertification].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001318', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'CTEInstructorIndustryCertification';


GO
PRINT N'Creating [dbo].[StaffCredential].[CTEInstructorIndustryCertification].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=14284', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'CTEInstructorIndustryCertification';


GO
PRINT N'Creating [dbo].[StaffCredential].[CardiopulmonaryResuscitationCertification].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date an individual''s cardiopulmonary resuscitation (CPR) training certification expires.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'CardiopulmonaryResuscitationCertification';


GO
PRINT N'Creating [dbo].[StaffCredential].[CardiopulmonaryResuscitationCertification].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Cardiopulmonary Resuscitation Certification Expiration Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'CardiopulmonaryResuscitationCertification';


GO
PRINT N'Creating [dbo].[StaffCredential].[CardiopulmonaryResuscitationCertification].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001059', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'CardiopulmonaryResuscitationCertification';


GO
PRINT N'Creating [dbo].[StaffCredential].[CardiopulmonaryResuscitationCertification].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=14065', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'CardiopulmonaryResuscitationCertification';


GO
PRINT N'Creating [dbo].[StaffCredential].[FirstAidCertification].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date an individual''s first aid training certification expires.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'FirstAidCertification';


GO
PRINT N'Creating [dbo].[StaffCredential].[FirstAidCertification].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'First Aid Certification Expiration Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'FirstAidCertification';


GO
PRINT N'Creating [dbo].[StaffCredential].[FirstAidCertification].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001060', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'FirstAidCertification';


GO
PRINT N'Creating [dbo].[StaffCredential].[FirstAidCertification].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=14066', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffCredential', @level2type = N'COLUMN', @level2name = N'FirstAidCertification';


GO
PRINT N'Creating [dbo].[TeacherEducationCredentialExam].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The exam and score of a person on a teaching credential exam.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TeacherEducationCredentialExam';


GO
PRINT N'Creating [dbo].[TeacherEducationCredentialExam].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TeacherEducationCredentialExam';


GO
PRINT N'Creating [dbo].[TeacherEducationCredentialExam].[RefTeacherEducationCredentialExamId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of examination used to assess teacher candidate''s knowledge and skills.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TeacherEducationCredentialExam', @level2type = N'COLUMN', @level2name = N'RefTeacherEducationCredentialExamId';


GO
PRINT N'Creating [dbo].[TeacherEducationCredentialExam].[RefTeacherEducationCredentialExamId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Teacher Education Credential Exam Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TeacherEducationCredentialExam', @level2type = N'COLUMN', @level2name = N'RefTeacherEducationCredentialExamId';


GO
PRINT N'Creating [dbo].[TeacherEducationCredentialExam].[RefTeacherEducationCredentialExamId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000773', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TeacherEducationCredentialExam', @level2type = N'COLUMN', @level2name = N'RefTeacherEducationCredentialExamId';


GO
PRINT N'Creating [dbo].[TeacherEducationCredentialExam].[RefTeacherEducationCredentialExamId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13756', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TeacherEducationCredentialExam', @level2type = N'COLUMN', @level2name = N'RefTeacherEducationCredentialExamId';


GO
PRINT N'Creating [dbo].[TeacherEducationCredentialExam].[RefTeacherEducationExamScoreTypeId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of the type of credential exam associated with a given exam score.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TeacherEducationCredentialExam', @level2type = N'COLUMN', @level2name = N'RefTeacherEducationExamScoreTypeId';


GO
PRINT N'Creating [dbo].[TeacherEducationCredentialExam].[RefTeacherEducationExamScoreTypeId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Teacher Education Credential Exam Score Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TeacherEducationCredentialExam', @level2type = N'COLUMN', @level2name = N'RefTeacherEducationExamScoreTypeId';


GO
PRINT N'Creating [dbo].[TeacherEducationCredentialExam].[RefTeacherEducationExamScoreTypeId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000774', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TeacherEducationCredentialExam', @level2type = N'COLUMN', @level2name = N'RefTeacherEducationExamScoreTypeId';


GO
PRINT N'Creating [dbo].[TeacherEducationCredentialExam].[RefTeacherEducationExamScoreTypeId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13757', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TeacherEducationCredentialExam', @level2type = N'COLUMN', @level2name = N'RefTeacherEducationExamScoreTypeId';


GO
PRINT N'Creating [dbo].[TeacherEducationCredentialExam].[RefTeacherEducationTestCompanyId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The name of the company that provides the examination used in the teacher education program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TeacherEducationCredentialExam', @level2type = N'COLUMN', @level2name = N'RefTeacherEducationTestCompanyId';


GO
PRINT N'Creating [dbo].[TeacherEducationCredentialExam].[RefTeacherEducationTestCompanyId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Teacher Education Test Company', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TeacherEducationCredentialExam', @level2type = N'COLUMN', @level2name = N'RefTeacherEducationTestCompanyId';


GO
PRINT N'Creating [dbo].[TeacherEducationCredentialExam].[RefTeacherEducationTestCompanyId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000766', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TeacherEducationCredentialExam', @level2type = N'COLUMN', @level2name = N'RefTeacherEducationTestCompanyId';


GO
PRINT N'Creating [dbo].[TeacherEducationCredentialExam].[RefTeacherEducationTestCompanyId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13748', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TeacherEducationCredentialExam', @level2type = N'COLUMN', @level2name = N'RefTeacherEducationTestCompanyId';


GO
PRINT N'Creating [dbo].[WorkforceProgramParticipation].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information on a person''s participation in a workforce program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceProgramParticipation';


GO
PRINT N'Creating [dbo].[WorkforceProgramParticipation].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceProgramParticipation';


GO
PRINT N'Creating [dbo].[WorkforceProgramParticipation].[RefWfProgramParticipationId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of workforce and employment development program that an individual is participating in.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceProgramParticipation', @level2type = N'COLUMN', @level2name = N'RefWfProgramParticipationId';


GO
PRINT N'Creating [dbo].[WorkforceProgramParticipation].[RefWfProgramParticipationId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Workforce Program Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceProgramParticipation', @level2type = N'COLUMN', @level2name = N'RefWfProgramParticipationId';


GO
PRINT N'Creating [dbo].[WorkforceProgramParticipation].[RefWfProgramParticipationId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000997', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceProgramParticipation', @level2type = N'COLUMN', @level2name = N'RefWfProgramParticipationId';


GO
PRINT N'Creating [dbo].[WorkforceProgramParticipation].[RefWfProgramParticipationId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=14000', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceProgramParticipation', @level2type = N'COLUMN', @level2name = N'RefWfProgramParticipationId';


GO
PRINT N'Creating [dbo].[WorkforceProgramParticipation].[RefProfessionalTechnicalCredentialTypeId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indicator of the category of credential conferred by a state occupational licensing entity or industry organization for competency in a specific area measured by a set of pre-established standards.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceProgramParticipation', @level2type = N'COLUMN', @level2name = N'RefProfessionalTechnicalCredentialTypeId';


GO
PRINT N'Creating [dbo].[WorkforceProgramParticipation].[RefProfessionalTechnicalCredentialTypeId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Professional or Technical Credential Conferred', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceProgramParticipation', @level2type = N'COLUMN', @level2name = N'RefProfessionalTechnicalCredentialTypeId';


GO
PRINT N'Creating [dbo].[WorkforceProgramParticipation].[RefProfessionalTechnicalCredentialTypeId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000783', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceProgramParticipation', @level2type = N'COLUMN', @level2name = N'RefProfessionalTechnicalCredentialTypeId';


GO
PRINT N'Creating [dbo].[WorkforceProgramParticipation].[RefProfessionalTechnicalCredentialTypeId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13780', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceProgramParticipation', @level2type = N'COLUMN', @level2name = N'RefProfessionalTechnicalCredentialTypeId';


GO
PRINT N'Creating [dbo].[WorkforceProgramParticipation].[DiplomaOrCredentialAwardDate].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The month and year on which the diploma/credential is awarded to a student in recognition of his/her completion of the curricular requirements.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceProgramParticipation', @level2type = N'COLUMN', @level2name = N'DiplomaOrCredentialAwardDate';


GO
PRINT N'Creating [dbo].[WorkforceProgramParticipation].[DiplomaOrCredentialAwardDate].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Diploma or Credential Award Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceProgramParticipation', @level2type = N'COLUMN', @level2name = N'DiplomaOrCredentialAwardDate';


GO
PRINT N'Creating [dbo].[WorkforceProgramParticipation].[DiplomaOrCredentialAwardDate].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000081', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceProgramParticipation', @level2type = N'COLUMN', @level2name = N'DiplomaOrCredentialAwardDate';


GO
PRINT N'Creating [dbo].[WorkforceProgramParticipation].[DiplomaOrCredentialAwardDate].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13081', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkforceProgramParticipation', @level2type = N'COLUMN', @level2name = N'DiplomaOrCredentialAwardDate';


GO
PRINT N'Creating [dbo].[ProgramParticipationTitleIIILep].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information on a person participating in a Title III limited English proficiency education program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTitleIIILep';


GO
PRINT N'Creating [dbo].[ProgramParticipationTitleIIILep].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTitleIIILep';


GO
PRINT N'Creating [dbo].[ProgramParticipationTitleIIILep].[RefTitleIIIAccountabilityId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of the progress made by a student toward English proficiency.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTitleIIILep', @level2type = N'COLUMN', @level2name = N'RefTitleIIIAccountabilityId';


GO
PRINT N'Creating [dbo].[ProgramParticipationTitleIIILep].[RefTitleIIIAccountabilityId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Title III Accountability Progress Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTitleIIILep', @level2type = N'COLUMN', @level2name = N'RefTitleIIIAccountabilityId';


GO
PRINT N'Creating [dbo].[ProgramParticipationTitleIIILep].[RefTitleIIIAccountabilityId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000536', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTitleIIILep', @level2type = N'COLUMN', @level2name = N'RefTitleIIIAccountabilityId';


GO
PRINT N'Creating [dbo].[ProgramParticipationTitleIIILep].[RefTitleIIIAccountabilityId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13527', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTitleIIILep', @level2type = N'COLUMN', @level2name = N'RefTitleIIIAccountabilityId';


GO
PRINT N'Creating [dbo].[ProgramParticipationTitleIIILep].[RefTitleIIILanguageInstructionProgramTypeId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of Title III language instructional programs.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTitleIIILep', @level2type = N'COLUMN', @level2name = N'RefTitleIIILanguageInstructionProgramTypeId';


GO
PRINT N'Creating [dbo].[ProgramParticipationTitleIIILep].[RefTitleIIILanguageInstructionProgramTypeId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Title III Language Instruction Program Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTitleIIILep', @level2type = N'COLUMN', @level2name = N'RefTitleIIILanguageInstructionProgramTypeId';


GO
PRINT N'Creating [dbo].[ProgramParticipationTitleIIILep].[RefTitleIIILanguageInstructionProgramTypeId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000447', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTitleIIILep', @level2type = N'COLUMN', @level2name = N'RefTitleIIILanguageInstructionProgramTypeId';


GO
PRINT N'Creating [dbo].[ProgramParticipationTitleIIILep].[RefTitleIIILanguageInstructionProgramTypeId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13437', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTitleIIILep', @level2type = N'COLUMN', @level2name = N'RefTitleIIILanguageInstructionProgramTypeId';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Describes a person''s assignment to a K12 organization.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[OrganizationPersonRoleId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Inherited surrogate key from OrganizationPersonRole.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'OrganizationPersonRoleId';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[RefK12StaffClassificationId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The titles of employment, official status, or rank of education staff.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefK12StaffClassificationId';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[RefK12StaffClassificationId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'K12 Staff Classification', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefK12StaffClassificationId';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[RefK12StaffClassificationId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000087', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefK12StaffClassificationId';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[RefK12StaffClassificationId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13087', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefK12StaffClassificationId';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[RefProfessionalEducationJobClassificationId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A general job classification that describes staff that performs duties requiring a high degree of knowledge and skills generally acquired through at least a baccalaureate degree (or its equivalent obtained through special study and/or experience) including skills in the field of education, educational psychology, educational social work, or an education therapy field.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefProfessionalEducationJobClassificationId';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[RefProfessionalEducationJobClassificationId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Professional Educational Job Classification', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefProfessionalEducationJobClassificationId';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[RefProfessionalEducationJobClassificationId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000220', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefProfessionalEducationJobClassificationId';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[RefProfessionalEducationJobClassificationId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13220', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefProfessionalEducationJobClassificationId';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[RefTeachingAssignmentRoleId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The role that the Staff Member has been assigned for a Class Section.  (A teacher may have the lead responsibility for one section and serve a supporting role for another section of the same course.)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefTeachingAssignmentRoleId';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[RefTeachingAssignmentRoleId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Teaching Assignment Role', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefTeachingAssignmentRoleId';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[RefTeachingAssignmentRoleId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000648', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefTeachingAssignmentRoleId';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[RefTeachingAssignmentRoleId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13650', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefTeachingAssignmentRoleId';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[PrimaryAssignment].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether the assignment is this the staff member''s primary assignment.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'PrimaryAssignment';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[PrimaryAssignment].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Primary Assignment Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'PrimaryAssignment';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[PrimaryAssignment].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000525', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'PrimaryAssignment';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[PrimaryAssignment].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13516', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'PrimaryAssignment';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[TeacherOfRecord].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Staff member who has a Teacher of Record responsibility for a Class Section based upon the state''s definition of Teacher of Record.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'TeacherOfRecord';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[TeacherOfRecord].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Teacher of Record', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'TeacherOfRecord';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[TeacherOfRecord].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000647', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'TeacherOfRecord';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[TeacherOfRecord].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13649', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'TeacherOfRecord';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[RefClassroomPositionTypeId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of position the staff member holds in the specific course section.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefClassroomPositionTypeId';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[RefClassroomPositionTypeId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Classroom Position Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefClassroomPositionTypeId';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[RefClassroomPositionTypeId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000622', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefClassroomPositionTypeId';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[RefClassroomPositionTypeId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13615', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefClassroomPositionTypeId';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[FullTimeEquivalency].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The ratio between the hours of work expected in a position and the hours of work normally expected in a full-time position in the same setting.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'FullTimeEquivalency';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[FullTimeEquivalency].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Staff Full Time Equivalency', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'FullTimeEquivalency';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[FullTimeEquivalency].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000118', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'FullTimeEquivalency';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[FullTimeEquivalency].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13118', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'FullTimeEquivalency';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[ContributionPercentage].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A percentage used to weight the educator''s assigned responsibility for student learning in a Class Section, particularly when more than one educator is assigned to the class section.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'ContributionPercentage';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[ContributionPercentage].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Teaching Assignment Contribution Percentage', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'ContributionPercentage';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[ContributionPercentage].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000649', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'ContributionPercentage';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[ContributionPercentage].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13651', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'ContributionPercentage';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[ItinerantTeacher].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether a teacher provides instruction in more than one instructional site.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'ItinerantTeacher';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[ItinerantTeacher].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Itinerant Teacher', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'ItinerantTeacher';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[ItinerantTeacher].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000528', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'ItinerantTeacher';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[ItinerantTeacher].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13519', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'ItinerantTeacher';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[HighlyQualifiedTeacherIndicator].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication that the teacher has been classified as highly qualified based on assignment.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'HighlyQualifiedTeacherIndicator';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[HighlyQualifiedTeacherIndicator].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Highly Qualified Teacher Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'HighlyQualifiedTeacherIndicator';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[HighlyQualifiedTeacherIndicator].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000142', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'HighlyQualifiedTeacherIndicator';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[HighlyQualifiedTeacherIndicator].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13142', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'HighlyQualifiedTeacherIndicator';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[SpecialEducationTeacher].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether a teacher is employed or contracted to work with children with disabilities who are ages 3 through 21.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'SpecialEducationTeacher';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[SpecialEducationTeacher].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Special Education Teacher', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'SpecialEducationTeacher';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[SpecialEducationTeacher].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000264', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'SpecialEducationTeacher';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[SpecialEducationTeacher].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13264', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'SpecialEducationTeacher';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[RefSpecialEducationStaffCategoryId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Titles of personnel employed and contracted to provide special education and related services for children with disabilities.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefSpecialEducationStaffCategoryId';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[RefSpecialEducationStaffCategoryId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Special Education Support Services Category', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefSpecialEducationStaffCategoryId';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[RefSpecialEducationStaffCategoryId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000558', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefSpecialEducationStaffCategoryId';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[RefSpecialEducationStaffCategoryId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13549', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefSpecialEducationStaffCategoryId';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[SpecialEducationRelatedServicesPersonnel].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether a related services person is employed or contracted to work with children with disabilities who are ages 3 through 21.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'SpecialEducationRelatedServicesPersonnel';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[SpecialEducationRelatedServicesPersonnel].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Special Education Related Services Personnel', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'SpecialEducationRelatedServicesPersonnel';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[SpecialEducationRelatedServicesPersonnel].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000262', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'SpecialEducationRelatedServicesPersonnel';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[SpecialEducationRelatedServicesPersonnel].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13262', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'SpecialEducationRelatedServicesPersonnel';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[SpecialEducationParaprofessional].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether a paraprofessional is employed or contracted to work with children with disabilities who are ages 3 through 21.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'SpecialEducationParaprofessional';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[SpecialEducationParaprofessional].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Special Education Paraprofessional', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'SpecialEducationParaprofessional';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[SpecialEducationParaprofessional].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000261', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'SpecialEducationParaprofessional';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[SpecialEducationParaprofessional].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13261', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'SpecialEducationParaprofessional';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[RefSpecialEducationAgeGroupTaughtId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The age range of special education students taught.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefSpecialEducationAgeGroupTaughtId';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[RefSpecialEducationAgeGroupTaughtId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Special Education Age Group Taught', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefSpecialEducationAgeGroupTaughtId';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[RefSpecialEducationAgeGroupTaughtId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000564', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefSpecialEducationAgeGroupTaughtId';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[RefSpecialEducationAgeGroupTaughtId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13556', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefSpecialEducationAgeGroupTaughtId';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[RefMepStaffCategoryId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Titles of employment, official status, or rank of staff working in the Migrant Education Program (MEP).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefMepStaffCategoryId';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[RefMepStaffCategoryId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Migrant Education Program Staff Category', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefMepStaffCategoryId';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[RefMepStaffCategoryId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000188', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefMepStaffCategoryId';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[RefMepStaffCategoryId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13188', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefMepStaffCategoryId';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[RefTitleIProgramStaffCategoryId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Titles of employment, official status, or rank for staff working in a Title I program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefTitleIProgramStaffCategoryId';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[RefTitleIProgramStaffCategoryId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Title I Program Staff Category', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefTitleIProgramStaffCategoryId';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[RefTitleIProgramStaffCategoryId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000283', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefTitleIProgramStaffCategoryId';


GO
PRINT N'Creating [dbo].[K12StaffAssignment].[RefTitleIProgramStaffCategoryId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13283', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12StaffAssignment', @level2type = N'COLUMN', @level2name = N'RefTitleIProgramStaffCategoryId';


GO
PRINT N'Creating [dbo].[ProgramParticipationTeacherPrep].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information on a person participating in a teacher preparation education program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep';


GO
PRINT N'Creating [dbo].[ProgramParticipationTeacherPrep].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep';


GO
PRINT N'Creating [dbo].[ProgramParticipationTeacherPrep].[RefTeacherPrepEnrollmentStatusId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether a person is pursuing certification as a teacher.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'RefTeacherPrepEnrollmentStatusId';


GO
PRINT N'Creating [dbo].[ProgramParticipationTeacherPrep].[RefTeacherPrepEnrollmentStatusId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Teacher Preparation Program Enrollment Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'RefTeacherPrepEnrollmentStatusId';


GO
PRINT N'Creating [dbo].[ProgramParticipationTeacherPrep].[RefTeacherPrepEnrollmentStatusId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000767', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'RefTeacherPrepEnrollmentStatusId';


GO
PRINT N'Creating [dbo].[ProgramParticipationTeacherPrep].[RefTeacherPrepEnrollmentStatusId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13749', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'RefTeacherPrepEnrollmentStatusId';


GO
PRINT N'Creating [dbo].[ProgramParticipationTeacherPrep].[RefTeacherPrepCompleterStatusId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether a person completed a state-approved teacher preparation program.  The fact that a person has or has not been recommended to the state for initial certification or licensure may not be used as a criterion for determining who is a program completer.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'RefTeacherPrepCompleterStatusId';


GO
PRINT N'Creating [dbo].[ProgramParticipationTeacherPrep].[RefTeacherPrepCompleterStatusId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Teacher Preparation Program Completer Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'RefTeacherPrepCompleterStatusId';


GO
PRINT N'Creating [dbo].[ProgramParticipationTeacherPrep].[RefTeacherPrepCompleterStatusId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000768', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'RefTeacherPrepCompleterStatusId';


GO
PRINT N'Creating [dbo].[ProgramParticipationTeacherPrep].[RefTeacherPrepCompleterStatusId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13750', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'RefTeacherPrepCompleterStatusId';


GO
PRINT N'Creating [dbo].[ProgramParticipationTeacherPrep].[RefSupervisedClinicalExperienceId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether a person is enrolled in a supervised clinical experience (including student teaching) as part of a teacher preparation program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'RefSupervisedClinicalExperienceId';


GO
PRINT N'Creating [dbo].[ProgramParticipationTeacherPrep].[RefSupervisedClinicalExperienceId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Supervised Clinical Experience', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'RefSupervisedClinicalExperienceId';


GO
PRINT N'Creating [dbo].[ProgramParticipationTeacherPrep].[RefSupervisedClinicalExperienceId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000771', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'RefSupervisedClinicalExperienceId';


GO
PRINT N'Creating [dbo].[ProgramParticipationTeacherPrep].[RefSupervisedClinicalExperienceId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13754', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'RefSupervisedClinicalExperienceId';


GO
PRINT N'Creating [dbo].[ProgramParticipationTeacherPrep].[ClinicalExperienceClockHours].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of  the number of clock hours (minimum) a student is required to complete associated with a supervised clinical experience.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'ClinicalExperienceClockHours';


GO
PRINT N'Creating [dbo].[ProgramParticipationTeacherPrep].[ClinicalExperienceClockHours].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Supervised Clinical Experience Clock Hours', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'ClinicalExperienceClockHours';


GO
PRINT N'Creating [dbo].[ProgramParticipationTeacherPrep].[ClinicalExperienceClockHours].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000772', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'ClinicalExperienceClockHours';


GO
PRINT N'Creating [dbo].[ProgramParticipationTeacherPrep].[ClinicalExperienceClockHours].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13755', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'ClinicalExperienceClockHours';


GO
PRINT N'Creating [dbo].[ProgramParticipationTeacherPrep].[RefTeachingCredentialBasisId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of the pre-determined criteria for granting the teaching credential that a person holds.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'RefTeachingCredentialBasisId';


GO
PRINT N'Creating [dbo].[ProgramParticipationTeacherPrep].[RefTeachingCredentialBasisId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Teaching Credential Basis', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'RefTeachingCredentialBasisId';


GO
PRINT N'Creating [dbo].[ProgramParticipationTeacherPrep].[RefTeachingCredentialBasisId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000277', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'RefTeachingCredentialBasisId';


GO
PRINT N'Creating [dbo].[ProgramParticipationTeacherPrep].[RefTeachingCredentialBasisId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13277', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'RefTeachingCredentialBasisId';


GO
PRINT N'Creating [dbo].[ProgramParticipationTeacherPrep].[RefTeachingCredentialTypeId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of the category of a legal document giving authorization to perform teaching assignment services.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'RefTeachingCredentialTypeId';


GO
PRINT N'Creating [dbo].[ProgramParticipationTeacherPrep].[RefTeachingCredentialTypeId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Teaching Credential Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'RefTeachingCredentialTypeId';


GO
PRINT N'Creating [dbo].[ProgramParticipationTeacherPrep].[RefTeachingCredentialTypeId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000278', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'RefTeachingCredentialTypeId';


GO
PRINT N'Creating [dbo].[ProgramParticipationTeacherPrep].[RefTeachingCredentialTypeId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13278', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'RefTeachingCredentialTypeId';


GO
PRINT N'Creating [dbo].[ProgramParticipationTeacherPrep].[RefCriticalTeacherShortageCandidateId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether a person is pursuing licensure/certification in a field designated as a shortage area as defined by Title II.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'RefCriticalTeacherShortageCandidateId';


GO
PRINT N'Creating [dbo].[ProgramParticipationTeacherPrep].[RefCriticalTeacherShortageCandidateId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Critical Teacher Shortage Area Candidate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'RefCriticalTeacherShortageCandidateId';


GO
PRINT N'Creating [dbo].[ProgramParticipationTeacherPrep].[RefCriticalTeacherShortageCandidateId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000770', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'RefCriticalTeacherShortageCandidateId';


GO
PRINT N'Creating [dbo].[ProgramParticipationTeacherPrep].[RefCriticalTeacherShortageCandidateId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13753', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'RefCriticalTeacherShortageCandidateId';


GO
PRINT N'Creating [dbo].[ProgramParticipationTeacherPrep].[RefAltRouteToCertificationOrLicensureId].[CEDS_Def_Desc]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether a person is enrolled in an alternative teacher preparation program as defined by Title II.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'RefAltRouteToCertificationOrLicensureId';


GO
PRINT N'Creating [dbo].[ProgramParticipationTeacherPrep].[RefAltRouteToCertificationOrLicensureId].[CEDS_Element]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Alternative Route to Certification or Licensure', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'RefAltRouteToCertificationOrLicensureId';


GO
PRINT N'Creating [dbo].[ProgramParticipationTeacherPrep].[RefAltRouteToCertificationOrLicensureId].[CEDS_GlobalId]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000769', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'RefAltRouteToCertificationOrLicensureId';


GO
PRINT N'Creating [dbo].[ProgramParticipationTeacherPrep].[RefAltRouteToCertificationOrLicensureId].[CEDS_URL]...';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=13751', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationTeacherPrep', @level2type = N'COLUMN', @level2name = N'RefAltRouteToCertificationOrLicensureId';


GO
PRINT N'Checking existing data against newly created constraints';

GO
ALTER TABLE [dbo].[AssessmentRegistration] WITH CHECK CHECK CONSTRAINT [FK_AssessmentRegirstration_RefAssessmentForm];

ALTER TABLE [dbo].[AssessmentRegistration] WITH CHECK CHECK CONSTRAINT [FK_AssessmentRegistration_AssessmentAdministration];

ALTER TABLE [dbo].[AssessmentRegistration] WITH CHECK CHECK CONSTRAINT [FK_AssessmentRegistration_CourseSection];

ALTER TABLE [dbo].[AssessmentRegistration] WITH CHECK CHECK CONSTRAINT [FK_AssessmentRegistration_Organization];

ALTER TABLE [dbo].[AssessmentRegistration] WITH CHECK CHECK CONSTRAINT [FK_AssessmentRegistration_Person];

ALTER TABLE [dbo].[AssessmentRegistration] WITH CHECK CHECK CONSTRAINT [FK_AssessmentRegistration_Person2];

ALTER TABLE [dbo].[AssessmentRegistration] WITH CHECK CHECK CONSTRAINT [FK_AssessmentRegistration_RefAssessmentParticipationIndicator];

ALTER TABLE [dbo].[AssessmentRegistration] WITH CHECK CHECK CONSTRAINT [FK_AssessmentRegistration_RefAssessmentPurpose];

ALTER TABLE [dbo].[AssessmentRegistration] WITH CHECK CHECK CONSTRAINT [FK_AssessmentRegistration_RefAssessmentReasonNotCompleting];

ALTER TABLE [dbo].[AssessmentRegistration] WITH CHECK CHECK CONSTRAINT [FK_AssessmentRegistration_RefAssessmentReasonNotTested];

ALTER TABLE [dbo].[AssessmentRegistration] WITH CHECK CHECK CONSTRAINT [FK_AssessmentRegistration_RefAssessmentRegistrationCompletionStatus];

ALTER TABLE [dbo].[AssessmentRegistration] WITH CHECK CHECK CONSTRAINT [FK_AssessmentRegistration_RefGradeLevel];

ALTER TABLE [dbo].[AssessmentRegistration] WITH CHECK CHECK CONSTRAINT [FK_AssessmentRegistration_RefGradeLevel1];

ALTER TABLE [dbo].[AssessmentRegistration] WITH CHECK CHECK CONSTRAINT [FK_AssessmentRegistration_RefOrganization1];

ALTER TABLE [dbo].[AssessmentRegistration] WITH CHECK CHECK CONSTRAINT [FK_AssessmentRegistration_RefOrganization2];

ALTER TABLE [dbo].[AssessmentRegistration_Accommodation] WITH CHECK CHECK CONSTRAINT [FK_AssessmentRegistration_Registration];

ALTER TABLE [dbo].[AssessmentResult] WITH CHECK CHECK CONSTRAINT [FK_AssessmentResult_AssessmentRegistration];

ALTER TABLE [dbo].[LearnerActivity] WITH CHECK CHECK CONSTRAINT [FK_LearnerActivity_AssessmentRegistration];

ALTER TABLE [dbo].[AssessmentParticipantSession] WITH CHECK CHECK CONSTRAINT [FK_AssessmentParticipantSession_AssessmentRegistration];

ALTER TABLE [dbo].[K12LeaFederalFunds] WITH CHECK CHECK CONSTRAINT [FK_K12LEAFederalFunds_RefRLISProgramUse];

ALTER TABLE [dbo].[K12LeaFederalFunds] WITH CHECK CHECK CONSTRAINT [FK_K12LEAFederalFunds_OrganizationCalendarSession];

ALTER TABLE [dbo].[K12SchoolCorrectiveAction] WITH CHECK CHECK CONSTRAINT [FK_K12SchoolCorrectiveAction_K12School];

ALTER TABLE [dbo].[K12SchoolCorrectiveAction] WITH CHECK CHECK CONSTRAINT [FK_K12SchoolCorrectiveAction_RefCorrectiveActionType];

ALTER TABLE [dbo].[K12SchoolGradeOffered] WITH CHECK CHECK CONSTRAINT [FK_K12SchoolGradeOffered_K12School];

ALTER TABLE [dbo].[K12SchoolGradeOffered] WITH CHECK CHECK CONSTRAINT [FK_K12SchoolGradeOffered_RefGradeLevel];

ALTER TABLE [dbo].[K12SchoolImprovement] WITH CHECK CHECK CONSTRAINT [FK_K12SchoolImprovement_K12School];

ALTER TABLE [dbo].[K12SchoolImprovement] WITH CHECK CHECK CONSTRAINT [FK_K12SchoolImprovement_RefSchoolImprovementFunds];

ALTER TABLE [dbo].[K12SchoolImprovement] WITH CHECK CHECK CONSTRAINT [FK_K12SchoolImprovement_RefSchoolImprovementStatus];

ALTER TABLE [dbo].[K12SchoolImprovement] WITH CHECK CHECK CONSTRAINT [FK_K12SchoolImprovement_RefSIGInterventionType];

ALTER TABLE [dbo].[K12SchoolStatus] WITH CHECK CHECK CONSTRAINT [FK_K12SchoolStatus_K12School];

ALTER TABLE [dbo].[K12SchoolStatus] WITH CHECK CHECK CONSTRAINT [FK_K12SchoolStatus_RefAlternativeSchoolFocus];

ALTER TABLE [dbo].[K12SchoolStatus] WITH CHECK CHECK CONSTRAINT [FK_K12SchoolStatus_RefInternetAccess];

ALTER TABLE [dbo].[K12SchoolStatus] WITH CHECK CHECK CONSTRAINT [FK_K12SchoolStatus_RefMagnetSpecialProgram];

ALTER TABLE [dbo].[K12SchoolStatus] WITH CHECK CHECK CONSTRAINT [FK_K12SchoolStatus_RefNationalSchoolLunchProgramStatus];

ALTER TABLE [dbo].[K12SchoolStatus] WITH CHECK CHECK CONSTRAINT [FK_K12SchoolStatus_RefRestructuringAction];

ALTER TABLE [dbo].[K12SchoolStatus] WITH CHECK CHECK CONSTRAINT [FK_K12SchoolStatus_RefTitle1SchoolStatus];

ALTER TABLE [dbo].[K12SchoolStatus] WITH CHECK CHECK CONSTRAINT [FK_K12SchoolStatus_RefVirtualSchoolStatus];

ALTER TABLE [dbo].[K12SchoolStatus] WITH CHECK CHECK CONSTRAINT [FK_K12SchoolStatus_RefComprehensiveAndTargetedSupport];

ALTER TABLE [dbo].[K12SchoolStatus] WITH CHECK CHECK CONSTRAINT [FK_K12SchoolStatus_RefComprehensiveSupport];

ALTER TABLE [dbo].[K12SchoolStatus] WITH CHECK CHECK CONSTRAINT [FK_K12SchoolStatus_RefTargetedSupport];

ALTER TABLE [dbo].[K12SchoolStatus] WITH CHECK CHECK CONSTRAINT [FK_K12SchoolStatus_RefNSLPStatus];

ALTER TABLE [dbo].[K12SchoolStatus] WITH CHECK CHECK CONSTRAINT [FK_K12SchoolStatus_RefSchoolDangerousStatus];

ALTER TABLE [dbo].[K12SchoolStatus] WITH CHECK CHECK CONSTRAINT [FK_K12SchoolStatus_RefSchoolImprovementStatus];

ALTER TABLE [dbo].[K12SchoolStatus] WITH CHECK CHECK CONSTRAINT [FK_K12SchoolStatus_RefProgressAchievingEnglishLanguageProficiencyIndicatorStatus];

ALTER TABLE [dbo].[K12StudentEnrollment] WITH CHECK CHECK CONSTRAINT [FK_K12EnrollmentMember_OrganizationPerson];

ALTER TABLE [dbo].[K12StudentEnrollment] WITH CHECK CHECK CONSTRAINT [FK_K12EnrollmentMember_RefGrade];

ALTER TABLE [dbo].[K12StudentEnrollment] WITH CHECK CHECK CONSTRAINT [FK_K12StudentEnrollment_RefDirectoryInformationBlockStatus];

ALTER TABLE [dbo].[K12StudentEnrollment] WITH CHECK CHECK CONSTRAINT [FK_K12StudentEnrollment_RefEndOfTermStatus];

ALTER TABLE [dbo].[K12StudentEnrollment] WITH CHECK CHECK CONSTRAINT [FK_K12StudentEnrollment_RefEnrollmentStatus];

ALTER TABLE [dbo].[K12StudentEnrollment] WITH CHECK CHECK CONSTRAINT [FK_K12StudentEnrollment_RefEntryType];

ALTER TABLE [dbo].[K12StudentEnrollment] WITH CHECK CHECK CONSTRAINT [FK_K12StudentEnrollment_RefExitOrWithdrawalStatus];

ALTER TABLE [dbo].[K12StudentEnrollment] WITH CHECK CHECK CONSTRAINT [FK_K12StudentEnrollment_RefExitOrWithdrawalType];

ALTER TABLE [dbo].[K12StudentEnrollment] WITH CHECK CHECK CONSTRAINT [FK_K12StudentEnrollment_RefFoodServiceEligibility];

ALTER TABLE [dbo].[K12StudentEnrollment] WITH CHECK CHECK CONSTRAINT [FK_K12StudentEnrollment_RefGradeLevel];

ALTER TABLE [dbo].[K12StudentEnrollment] WITH CHECK CHECK CONSTRAINT [FK_K12StudentEnrollment_RefNonPromotionReason];

ALTER TABLE [dbo].[K12StudentEnrollment] WITH CHECK CHECK CONSTRAINT [FK_K12StudentEnrollment_RefPromotionReason];

ALTER TABLE [dbo].[K12StudentEnrollment] WITH CHECK CHECK CONSTRAINT [FK_K12StudentEnrollment_RefPublicSchoolResidence];

ALTER TABLE [dbo].[K12StudentEnrollment] WITH CHECK CHECK CONSTRAINT [FK_K12StudentEnrollment_RefStudentEnrollmentAccessType];

ALTER TABLE [dbo].[K12StudentEnrollment] WITH CHECK CHECK CONSTRAINT [FK_K12StudentEnrollment_OrganizationPersonRole];

ALTER TABLE [dbo].[OrganizationRelationship] WITH CHECK CHECK CONSTRAINT [FK_OrganizationRelationship_Organization_Child];

ALTER TABLE [dbo].[OrganizationRelationship] WITH CHECK CHECK CONSTRAINT [FK_OrganizationRelationship_RefOrganizationRelationshipType];

ALTER TABLE [dbo].[PersonDisability] WITH CHECK CHECK CONSTRAINT [FK_PersonDisability_Person];

ALTER TABLE [dbo].[PersonDisability] WITH CHECK CHECK CONSTRAINT [FK_PersonDisability_RefAccommodationsNeededType];

ALTER TABLE [dbo].[PersonDisability] WITH CHECK CHECK CONSTRAINT [FK_PersonDisability_RefDisabilityConditionStatusCode];

ALTER TABLE [dbo].[PersonDisability] WITH CHECK CHECK CONSTRAINT [FK_PersonDisability_RefDisabilityConditionType];

ALTER TABLE [dbo].[PersonDisability] WITH CHECK CHECK CONSTRAINT [FK_PersonDisability_RefDisabilityDeterminationSourceType];

ALTER TABLE [dbo].[PersonDisability] WITH CHECK CHECK CONSTRAINT [FK_PersonDisability_RefDisabilityType];

ALTER TABLE [dbo].[PersonDisability] WITH CHECK CHECK CONSTRAINT [FK_PersonDisability_RefIDEADisabilityType];

ALTER TABLE [dbo].[WorkforceProgramParticipation] WITH CHECK CHECK CONSTRAINT [FK_WorkforceProgramParticipation_PersonProgramParticipation];

ALTER TABLE [dbo].[PersonProgramParticipation] WITH CHECK CHECK CONSTRAINT [FK_PersonProgramParticipation_OrganizationPersonRole];

ALTER TABLE [dbo].[PersonProgramParticipation] WITH CHECK CHECK CONSTRAINT [FK_PersonProgramParticipation_RefParticipationType];

ALTER TABLE [dbo].[PersonProgramParticipation] WITH CHECK CHECK CONSTRAINT [FK_PersonProgramParticipation_RefProgramExitReason];

ALTER TABLE [dbo].[ProgramParticipationAE] WITH CHECK CHECK CONSTRAINT [FK_ProgramParticipationAE_PersonProgramParticipation];

ALTER TABLE [dbo].[ProgramParticipationCte] WITH CHECK CHECK CONSTRAINT [FK_ProgramParticipationCte_PersonProgramParticipation];

ALTER TABLE [dbo].[ProgramParticipationFoodService] WITH CHECK CHECK CONSTRAINT [FK_ProgramParticipationFoodSrvc_PersonProgramParticipation];

ALTER TABLE [dbo].[ProgramParticipationMigrant] WITH CHECK CHECK CONSTRAINT [FK_ProgramParticipationMigrant_PersonProgramParticipation];

ALTER TABLE [dbo].[ProgramParticipationNeglected] WITH CHECK CHECK CONSTRAINT [FK_ProgramParticipationNeglected_PersonProgramParticipation];

ALTER TABLE [dbo].[ProgramParticipationSpecialEducation] WITH CHECK CHECK CONSTRAINT [FK_ProgramParticipationSpecialEducation_PersonProgramParticipat];

ALTER TABLE [dbo].[ProgramParticipationTeacherPrep] WITH CHECK CHECK CONSTRAINT [FK_PrgmParticipationTeacherPrep_PersonProgramParticipation];

ALTER TABLE [dbo].[ProgramParticipationTitleI] WITH CHECK CHECK CONSTRAINT [FK_ProgramParticipationTitleI_PersonProgramParticipation];

ALTER TABLE [dbo].[ProgramParticipationTitleIIILep] WITH CHECK CHECK CONSTRAINT [FK_ProgramParticipationTitleIII_PersonProgramParticipation];

ALTER TABLE [dbo].[ProgramParticipationAE] WITH CHECK CHECK CONSTRAINT [FK_ProgramParticipationAE_RefAeFunctioningLevelAtPosttest];

ALTER TABLE [dbo].[ProgramParticipationAE] WITH CHECK CHECK CONSTRAINT [FK_ProgramParticipationAE_RefAeInstructionalProgramType];

ALTER TABLE [dbo].[ProgramParticipationAE] WITH CHECK CHECK CONSTRAINT [FK_ProgramParticipationAE_RefAePostsecondaryTransitionAction];

ALTER TABLE [dbo].[ProgramParticipationAE] WITH CHECK CHECK CONSTRAINT [FK_ProgramParticipationAE_RefCorrectionalEducationFacilityType];

ALTER TABLE [dbo].[ProgramParticipationAE] WITH CHECK CHECK CONSTRAINT [FK_ProgramParticipationAE_RefGoalsForAttendingAdultEducation];

ALTER TABLE [dbo].[ProgramParticipationAE] WITH CHECK CHECK CONSTRAINT [FK_ProgramParticipationAE_RefWorkbasedLearningOpportunityType];

ALTER TABLE [dbo].[ProgramParticipationAE] WITH CHECK CHECK CONSTRAINT [FK_ProgramParticipation_RefAeSpecialProgramType];

ALTER TABLE [dbo].[ProgramParticipationAE] WITH CHECK CHECK CONSTRAINT [FK_ProgramParticipationAE_RefAeFunctioningLevelAtIntake];

ALTER TABLE [dbo].[ProgramParticipationCte] WITH CHECK CHECK CONSTRAINT [FK_ProgramParticipationCte_RefNonTraditionalGenderStatus];

ALTER TABLE [dbo].[ProgramParticipationCte] WITH CHECK CHECK CONSTRAINT [FK_ProgramParticipationCte_RefWorkbasedLearningOpportunityType];

ALTER TABLE [dbo].[ProgramParticipationFoodService] WITH CHECK CHECK CONSTRAINT [FK_ProgramParticipationFoodSrvc_RefSchoolFoodServiceProgram];

ALTER TABLE [dbo].[ProgramParticipationMigrant] WITH CHECK CHECK CONSTRAINT [FK_ProgramParticipationMigrant_Organization];

ALTER TABLE [dbo].[ProgramParticipationMigrant] WITH CHECK CHECK CONSTRAINT [FK_ProgramParticipationMigrant_RefContinuationOfServices];

ALTER TABLE [dbo].[ProgramParticipationMigrant] WITH CHECK CHECK CONSTRAINT [FK_ProgramParticipationMigrant_RefCountry];

ALTER TABLE [dbo].[ProgramParticipationMigrant] WITH CHECK CHECK CONSTRAINT [FK_ProgramParticipationMigrant_RefMEPEnrollmentType];

ALTER TABLE [dbo].[ProgramParticipationMigrant] WITH CHECK CHECK CONSTRAINT [FK_ProgramParticipationMigrant_RefMEPProjectBased];

ALTER TABLE [dbo].[ProgramParticipationMigrant] WITH CHECK CHECK CONSTRAINT [FK_ProgramParticipationMigrant_RefMEPServiceType];

ALTER TABLE [dbo].[ProgramParticipationMigrant] WITH CHECK CHECK CONSTRAINT [FK_ProgramParticipationMigrant_RefState];

ALTER TABLE [dbo].[ProgramParticipationNeglected] WITH CHECK CHECK CONSTRAINT [FK_ProgramParticipationNeglected_RefNeglectedProgramType];

ALTER TABLE [dbo].[ProgramParticipationSpecialEducation] WITH CHECK CHECK CONSTRAINT [FK_ProgramParticipationSpecialEd_RefIDEAEdEnvironmentForEC];

ALTER TABLE [dbo].[ProgramParticipationSpecialEducation] WITH CHECK CHECK CONSTRAINT [FK_ProgramParticipationSpecialEd_RefIDEAEdEnvironmentSchoolAge];

ALTER TABLE [dbo].[ProgramParticipationSpecialEducation] WITH CHECK CHECK CONSTRAINT [FK_ProgramParticipationSpecialEd_RefSpecialEducationExitReason];

ALTER TABLE [dbo].[ProgramParticipationTitleI] WITH CHECK CHECK CONSTRAINT [FK_ProgramParticipationTitleI_RefTitleIIndicator];

ALTER TABLE [dbo].[StaffCredential] WITH CHECK CHECK CONSTRAINT [FK_StaffCredential_PersonCredential];

ALTER TABLE [dbo].[StaffCredential] WITH CHECK CHECK CONSTRAINT [FK_StaffCredential_RefChildDevelopmentAssociateType];

ALTER TABLE [dbo].[StaffCredential] WITH CHECK CHECK CONSTRAINT [FK_StaffCredential_RefParaprofessionalQualification];

ALTER TABLE [dbo].[StaffCredential] WITH CHECK CHECK CONSTRAINT [FK_StaffCredential_RefProgramSponsorType];

ALTER TABLE [dbo].[StaffCredential] WITH CHECK CHECK CONSTRAINT [FK_StaffCredential_RefTeachingCredentialBasis];

ALTER TABLE [dbo].[StaffCredential] WITH CHECK CHECK CONSTRAINT [FK_StaffCredential_RefTeachingCredentialType];

ALTER TABLE [dbo].[TeacherEducationCredentialExam] WITH CHECK CHECK CONSTRAINT [FK_TeacherEducationCredentialExam_RefTeacherEducationTestCompny];

ALTER TABLE [dbo].[TeacherEducationCredentialExam] WITH CHECK CHECK CONSTRAINT [FK_TeacherEduCredentialExam_RefTeacherEduCredentialExam];

ALTER TABLE [dbo].[TeacherEducationCredentialExam] WITH CHECK CHECK CONSTRAINT [FK_TeacherEduCredentialExam_RefTeacherEduExamScoreType];

ALTER TABLE [dbo].[TeacherEducationCredentialExam] WITH CHECK CHECK CONSTRAINT [FK_TeacherEducationCredentialExam_PrgmParticipationTeacherPrep];

ALTER TABLE [dbo].[WorkforceProgramParticipation] WITH CHECK CHECK CONSTRAINT [FK_WorkforceProgramPartic_RefProfessionalTechnicalCredential];

ALTER TABLE [dbo].[WorkforceProgramParticipation] WITH CHECK CHECK CONSTRAINT [FK_WorkforceProgramPartic_RefWfProgramParticipation];

ALTER TABLE [dbo].[ProgramParticipationTitleIIILep] WITH CHECK CHECK CONSTRAINT [FK_ProgramParticipationTitleIIILep_RefTitleIIIAccountability];

ALTER TABLE [dbo].[ProgramParticipationTitleIIILep] WITH CHECK CHECK CONSTRAINT [FK_ProgramParticipationTitleIIILEP_RefTitleIIILangInstrPrgm];

ALTER TABLE [dbo].[K12School] WITH CHECK CHECK CONSTRAINT [FK_K12School_Organization];

ALTER TABLE [dbo].[TeacherStudentDataLinkExclusion] WITH CHECK CHECK CONSTRAINT [FK_TeacherStudentDataLinkExclusion_K12StaffAssignment];

ALTER TABLE [dbo].[K12StaffAssignment] WITH CHECK CHECK CONSTRAINT [FK_K12StaffAssignment_OrganizationPerson];

ALTER TABLE [dbo].[K12StaffAssignment] WITH CHECK CHECK CONSTRAINT [FK_K12StaffAssignment_RefClassroomPositionType];

ALTER TABLE [dbo].[K12StaffAssignment] WITH CHECK CHECK CONSTRAINT [FK_K12StaffAssignment_RefEducationStaffClassification];

ALTER TABLE [dbo].[K12StaffAssignment] WITH CHECK CHECK CONSTRAINT [FK_K12StaffAssignment_RefMepStaffCategory];

ALTER TABLE [dbo].[K12StaffAssignment] WITH CHECK CHECK CONSTRAINT [FK_K12StaffAssignment_RefProfessionalEducationJobClassification];

ALTER TABLE [dbo].[K12StaffAssignment] WITH CHECK CHECK CONSTRAINT [FK_K12StaffAssignment_RefSpecialEducationAgeGroupTaught];

ALTER TABLE [dbo].[K12StaffAssignment] WITH CHECK CHECK CONSTRAINT [FK_K12StaffAssignment_RefSpecialEducationStaffCategory];

ALTER TABLE [dbo].[K12StaffAssignment] WITH CHECK CHECK CONSTRAINT [FK_K12StaffAssignment_RefTeachingAssignmentRole];

ALTER TABLE [dbo].[K12StaffAssignment] WITH CHECK CHECK CONSTRAINT [FK_K12StaffAssignment_RefTitleIProgramStaffCategory];

ALTER TABLE [dbo].[K12StaffAssignment] WITH CHECK CHECK CONSTRAINT [FK_K12StaffAssignment_OrganizationPersonRole];

ALTER TABLE [dbo].[K12StaffAssignment] WITH CHECK CHECK CONSTRAINT [FK_K12StaffAssignment_RefUnexperiencedStatus];

ALTER TABLE [dbo].[K12StaffAssignment] WITH CHECK CHECK CONSTRAINT [FK_K12StaffAssignment_RefEmergencyOrProvisionalCredentialStatus];

ALTER TABLE [dbo].[K12StaffAssignment] WITH CHECK CHECK CONSTRAINT [FK_K12StaffAssignment_RefOutOfFieldStatus];

ALTER TABLE [dbo].[ProgramParticipationTeacherPrep] WITH CHECK CHECK CONSTRAINT [FK_PrgmParticipationTeacherPrep_RefCritTeachShortageCandidate];

ALTER TABLE [dbo].[ProgramParticipationTeacherPrep] WITH CHECK CHECK CONSTRAINT [FK_PrgmParticipationTeacherPrep_RefTeacherPrepCompleterStatus];

ALTER TABLE [dbo].[ProgramParticipationTeacherPrep] WITH CHECK CHECK CONSTRAINT [FK_PrgmParticipationTeacherPrep_RefTeacherPrepEnrollStatus];

ALTER TABLE [dbo].[ProgramParticipationTeacherPrep] WITH CHECK CHECK CONSTRAINT [FK_PrgmParticipationTeacherPrep_RefTeachingCredentialBasis];

ALTER TABLE [dbo].[ProgramParticipationTeacherPrep] WITH CHECK CHECK CONSTRAINT [FK_PrgmParticipationTeacherPrep_RefTeachingCredentialType];

ALTER TABLE [dbo].[ProgramParticipationTeacherPrep] WITH CHECK CHECK CONSTRAINT [FK_ProgramParticipationTeacherPrep_RefAltRouteToCertificationOrLicensure];

ALTER TABLE [dbo].[ProgramParticipationTeacherPrep] WITH CHECK CHECK CONSTRAINT [FK_ProgramParticipationTeacherPrep_RefSupervisedClinicalExper];

ALTER TABLE [dbo].[K12CharterSchoolApprovalAgency] WITH CHECK CHECK CONSTRAINT [FK_Organization_K12CharterSchoolApprovalAgency];

ALTER TABLE [dbo].[K12CharterSchoolApprovalAgency] WITH CHECK CHECK CONSTRAINT [FK_K12CharterSchoolApprovalAgency_Organization];

ALTER TABLE [dbo].[K12CharterSchoolManagementOrganization] WITH CHECK CHECK CONSTRAINT [FK_Organization_K12CharterSchoolManagementOrganization];

ALTER TABLE [dbo].[K12CharterSchoolManagementOrganization] WITH CHECK CHECK CONSTRAINT [FK_K12CharterSchoolManagementOrganization_Organization];

ALTER TABLE [dbo].[K12FederalFundAllocation] WITH CHECK CHECK CONSTRAINT [FK_K12FederalFundAllocation_OrganizationCalendarSession];

ALTER TABLE [dbo].[K12FederalFundAllocation] WITH CHECK CHECK CONSTRAINT [FK_K12FederalFundAllocation_RefFederalFundingAllocation];

ALTER TABLE [dbo].[K12FederalFundAllocation] WITH CHECK CHECK CONSTRAINT [FK_K12FederalFundAllocation_RefLEAFundsTransferType];

ALTER TABLE [dbo].[K12FederalFundAllocation] WITH CHECK CHECK CONSTRAINT [FK_K12FederalFundAllocation_REAPAlternativeFundingStatus];

ALTER TABLE [dbo].[K12SchoolIndicatorStatus] WITH CHECK CHECK CONSTRAINT [FK_K12SchoolIndicatorStatus_RefIndicatorStatusCustomType];

ALTER TABLE [dbo].[K12SchoolIndicatorStatus] WITH CHECK CHECK CONSTRAINT [FK_K12SchoolIndicatorStatus_K12School];

ALTER TABLE [dbo].[K12SchoolIndicatorStatus] WITH CHECK CHECK CONSTRAINT [FK_K12SchoolIndicatorStatus_RefIndicatorStatusType];

ALTER TABLE [dbo].[K12SchoolIndicatorStatus] WITH CHECK CHECK CONSTRAINT [FK_K12SchoolIndicatorStatus_RefIndicatorStateDefinedStatus];

ALTER TABLE [dbo].[K12SchoolIndicatorStatus] WITH CHECK CHECK CONSTRAINT [FK_K12SchoolIndicatorStatus_RefIndicatorStatusSubgroupType];

ALTER TABLE [dbo].[OrganizationDetail] WITH CHECK CHECK CONSTRAINT [FK_OrganizationDetail_Organization];

ALTER TABLE [dbo].[OrganizationDetail] WITH CHECK CHECK CONSTRAINT [FK_OrganizationDetail_RefOrganizationType];

ALTER TABLE [dbo].[PersonDetail] WITH CHECK CHECK CONSTRAINT [FK_PersonDetail_Person];

ALTER TABLE [dbo].[PersonDetail] WITH CHECK CHECK CONSTRAINT [FK_PersonDetail_RefEducationLevel];

ALTER TABLE [dbo].[PersonDetail] WITH CHECK CHECK CONSTRAINT [FK_PersonDetail_RefPersonalInformationVerification];

ALTER TABLE [dbo].[PersonDetail] WITH CHECK CHECK CONSTRAINT [FK_PersonDetail_RefProofOfResidencyType];

ALTER TABLE [dbo].[PersonDetail] WITH CHECK CHECK CONSTRAINT [FK_PersonDetail_RefSex];

ALTER TABLE [dbo].[PersonDetail] WITH CHECK CHECK CONSTRAINT [FK_PersonDetail_RefState];

ALTER TABLE [dbo].[PersonDetail] WITH CHECK CHECK CONSTRAINT [FK_PersonDetail_RefTribalAffiliation];

ALTER TABLE [dbo].[PersonDetail] WITH CHECK CHECK CONSTRAINT [FK_PersonDetail_RefUSCitizenshipStatus];

ALTER TABLE [dbo].[PersonDetail] WITH CHECK CHECK CONSTRAINT [FK_PersonDetail_RefVisaType];

ALTER TABLE [dbo].[RefCharterLeaStatus] WITH CHECK CHECK CONSTRAINT [FK_RefCharterLeaStatus_Organization];

ALTER TABLE [dbo].[RefComprehensiveAndTargetedSupport] WITH CHECK CHECK CONSTRAINT [FK_RefComprehensiveAndTargetedSupport_Org];

ALTER TABLE [dbo].[RefComprehensiveSupport] WITH CHECK CHECK CONSTRAINT [FK_RefComprehensiveSupport_Org];

ALTER TABLE [dbo].[RefEmergencyOrProvisionalCredentialStatus] WITH CHECK CHECK CONSTRAINT [FK_RefEmergencyOrProvisionalCredentialStatus_Org];

ALTER TABLE [dbo].[RefIndicatorStateDefinedStatus] WITH CHECK CHECK CONSTRAINT [FK_RefIndicatorStateDefinedStatus_Org];

ALTER TABLE [dbo].[RefIndicatorStatusCustomType] WITH CHECK CHECK CONSTRAINT [FK_RefIndicatorStatusCustomType_Org];

ALTER TABLE [dbo].[RefIndicatorStatusSubgroupType] WITH CHECK CHECK CONSTRAINT [FK_RefIndicatorStatusSubgroupType_Org];

ALTER TABLE [dbo].[RefIndicatorStatusType] WITH CHECK CHECK CONSTRAINT [FK_RefIndicatorStatusType_Org];

ALTER TABLE [dbo].[RefNSLPStatus] WITH CHECK CHECK CONSTRAINT [FK_RefNSLPStatus_Organization];

ALTER TABLE [dbo].[RefOutOfFieldStatus] WITH CHECK CHECK CONSTRAINT [FK_RefOutOfFieldStatus_Org];

ALTER TABLE [dbo].[RefSchoolDangerousStatus] WITH CHECK CHECK CONSTRAINT [FK_RefSchoolDangerousStatus_Organization];

ALTER TABLE [dbo].[RefTargetedSupport] WITH CHECK CHECK CONSTRAINT [FK_RefTargetedSupport_Org];

ALTER TABLE [dbo].[RefUnexperiencedStatus] WITH CHECK CHECK CONSTRAINT [FK_RefUnexperiencedStatus_Org];

ALTER TABLE [dbo].[K12Lea] WITH CHECK CHECK CONSTRAINT [FK_K12Lea_RefCharterLeaStatus];

ALTER TABLE [dbo].[K12School] WITH CHECK CHECK CONSTRAINT [FK_K12School_K12CharterSchoolApprovalAgency];

ALTER TABLE [dbo].[K12School] WITH CHECK CHECK CONSTRAINT [FK_K12School_K12CharterSchoolManagementOrganization];


GO
PRINT N'Update complete.';


GO
