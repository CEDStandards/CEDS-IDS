/*    

	Copyright 2021 Common Education Data Standards
	
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
    Version 9.0.1.0
    Integration Data Schema (IDS)
    
	Model database update script
	
    This script updates an IDS version 9.0.0.0 model database to version 9.0.1.0. 
    

    WARNING!!!!
    This script is intended for use on a model database and should not 
    be used on a database that contains data.
    
    This script contains potentially breaking changes.  Queries are included to preserve data.  
	However, programming logic should be adjusted were necessary for these changes.

    Search for "WARNING!!!!" through this update script to see said changes and make necessary adjustments before executing.


    The script was generated from a model database 
    hosted on a Microsoft SQL Server 2012 platform.  
    
    Questions on this script can be sent to ceds@ed.gov
    
	More information on the data model is available at the CEDS website,  
	http://ceds.ed.gov, and the CEDS Open Source Community (OSC) site, 
	https://github.com/CEDStandards/CEDS-IDS.  
      	  
*/ 


/*

    WARNING!!!!

	This update creates a new tabled called "DataCollection"
	It then adds the DataCollectionId as a Foreign Key to all existing tables in the IDS with the exception of the tables prefixed with "Ref"
	(reference tables) and the _CEDSElements and _CEDStoNDSMapping tables.
	It then adds constraints.

	These are the only changes in the V9.0.0.0 to V9.0.1.0 update

*/


USE [CEDS-IDS-V9_0_1_0]
GO

CREATE TABLE [dbo].[DataCollection](
	[DataCollectionId] [int] IDENTITY(1,1) NOT NULL,
	[SourceSystemDataCollectionIdentifier] [nvarchar](36) NULL,
	[SourceSystemName] [nvarchar](100) NULL,
	[DataCollectionName] [nvarchar](100) NULL,
	[DataCollectionDescription] [nvarchar](max) NULL,
	[DataCollectionOpenDate] [datetime] NULL,
	[DataCollectionCloseDate] [datetime] NULL,
	[DataCollectionAcademicSchoolYear] [nvarchar](4) NULL,
	[DataCollectionSchoolYear] [nvarchar](4) NULL,
 CONSTRAINT [PK_DataCollection] PRIMARY KEY CLUSTERED 
(
	[DataCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[DataCollection]  WITH CHECK ADD  CONSTRAINT [FK_DataCollection_DataCollection] FOREIGN KEY([DataCollectionId])
REFERENCES [dbo].[DataCollection] ([DataCollectionId])
GO

ALTER TABLE [dbo].[DataCollection] CHECK CONSTRAINT [FK_DataCollection_DataCollection]
GO


--Add DataCollectionId
ALTER TABLE AssessmentResultRubricCriterionResult ADD DataCollectionId INT NULL
ALTER TABLE PsStudentFinancialAid ADD DataCollectionId INT NULL
ALTER TABLE OrganizationPolicy ADD DataCollectionId INT NULL
ALTER TABLE ELProgramLicensing ADD DataCollectionId INT NULL
ALTER TABLE Course ADD DataCollectionId INT NULL
ALTER TABLE RequiredImmunization ADD DataCollectionId INT NULL
ALTER TABLE PSStudentProgram ADD DataCollectionId INT NULL
ALTER TABLE OrganizationProgramType ADD DataCollectionId INT NULL
ALTER TABLE K12FederalFundAllocation ADD DataCollectionId INT NULL
ALTER TABLE ELQualityInitiative ADD DataCollectionId INT NULL
ALTER TABLE AssessmentSession ADD DataCollectionId INT NULL
ALTER TABLE PsStudentSection ADD DataCollectionId INT NULL
ALTER TABLE OrganizationRelationship ADD DataCollectionId INT NULL
ALTER TABLE K12Lea ADD DataCollectionId INT NULL
ALTER TABLE ELQualityRatingImprovement ADD DataCollectionId INT NULL
ALTER TABLE AssessmentSessionStaffRole ADD DataCollectionId INT NULL
ALTER TABLE K12Course ADD DataCollectionId INT NULL
ALTER TABLE QuarterlyEmploymentRecord ADD DataCollectionId INT NULL
ALTER TABLE RoleAttendance ADD DataCollectionId INT NULL
ALTER TABLE OrganizationService ADD DataCollectionId INT NULL
ALTER TABLE K12LeaFederalFunds ADD DataCollectionId INT NULL
ALTER TABLE ELServicePartner ADD DataCollectionId INT NULL
ALTER TABLE AssessmentSubtest ADD DataCollectionId INT NULL
ALTER TABLE K12School ADD DataCollectionId INT NULL
ALTER TABLE RoleAttendanceEvent ADD DataCollectionId INT NULL
ALTER TABLE K12LeaFederalReporting ADD DataCollectionId INT NULL
ALTER TABLE ELStaff ADD DataCollectionId INT NULL
ALTER TABLE AssessmentSubtest_AssessmentItem ADD DataCollectionId INT NULL
ALTER TABLE K12SchoolStatus ADD DataCollectionId INT NULL
ALTER TABLE OrganizationTechnicalAssistance ADD DataCollectionId INT NULL
ALTER TABLE RoleStatus ADD DataCollectionId INT NULL
ALTER TABLE K12LeaPreKEligibility ADD DataCollectionId INT NULL
ALTER TABLE ELStaffAssignment ADD DataCollectionId INT NULL
ALTER TABLE AssessmentSubtest_CompetencyDefinition ADD DataCollectionId INT NULL
ALTER TABLE K12Sea ADD DataCollectionId INT NULL
ALTER TABLE OrganizationTelephone ADD DataCollectionId INT NULL
ALTER TABLE Rubric ADD DataCollectionId INT NULL
ALTER TABLE K12LeaPreKEligibleAgesIDEA ADD DataCollectionId INT NULL
ALTER TABLE ELStaffEducation ADD DataCollectionId INT NULL
ALTER TABLE AssessmentSubtestELDevelopmentalDomain ADD DataCollectionId INT NULL
ALTER TABLE K12StaffAssignment ADD DataCollectionId INT NULL
ALTER TABLE OrganizationWebsite ADD DataCollectionId INT NULL
ALTER TABLE RubricCriterion ADD DataCollectionId INT NULL
ALTER TABLE K12LeaSafeDrugFree ADD DataCollectionId INT NULL
ALTER TABLE ELStaffEmployment ADD DataCollectionId INT NULL
ALTER TABLE K12StaffEmployment ADD DataCollectionId INT NULL
ALTER TABLE PDActivityEducationLevel ADD DataCollectionId INT NULL
ALTER TABLE AssessmentSubtestLevelsForWhichDesigned ADD DataCollectionId INT NULL
ALTER TABLE RubricCriterionLevel ADD DataCollectionId INT NULL
ALTER TABLE K12LeaTitleIIIProfessionalDevelopment ADD DataCollectionId INT NULL
ALTER TABLE Facility ADD DataCollectionId INT NULL
ALTER TABLE K12StudentEnrollment ADD DataCollectionId INT NULL
ALTER TABLE PeerRatingSystem ADD DataCollectionId INT NULL
ALTER TABLE ServiceFrequency ADD DataCollectionId INT NULL
ALTER TABLE K12LeaTitleISupportService ADD DataCollectionId INT NULL
ALTER TABLE FacilityAudit ADD DataCollectionId INT NULL
ALTER TABLE [Authentication] ADD DataCollectionId INT NULL
ALTER TABLE OrganizationDetail ADD DataCollectionId INT NULL
ALTER TABLE Person ADD DataCollectionId INT NULL
ALTER TABLE ServicePlan ADD DataCollectionId INT NULL
ALTER TABLE K12OrganizationStudentResponsibility ADD DataCollectionId INT NULL
ALTER TABLE FacilityCompliance ADD DataCollectionId INT NULL
ALTER TABLE [Authorization] ADD DataCollectionId INT NULL
ALTER TABLE OrganizationFederalAccountability ADD DataCollectionId INT NULL
ALTER TABLE Person_AssessmentPersonalNeedsProfile ADD DataCollectionId INT NULL
ALTER TABLE ServiceProvided ADD DataCollectionId INT NULL
ALTER TABLE FacilityDesign ADD DataCollectionId INT NULL
ALTER TABLE AuthorizationDocument ADD DataCollectionId INT NULL
ALTER TABLE PersonRelationship ADD DataCollectionId INT NULL
ALTER TABLE K12ProgramOrService ADD DataCollectionId INT NULL
ALTER TABLE ServiceProvider ADD DataCollectionId INT NULL
ALTER TABLE PersonAddress ADD DataCollectionId INT NULL
ALTER TABLE FacilityDesignConstruction ADD DataCollectionId INT NULL
ALTER TABLE BuildingSpace ADD DataCollectionId INT NULL
ALTER TABLE ProfessionalDevelopmentActivity ADD DataCollectionId INT NULL
ALTER TABLE Activity ADD DataCollectionId INT NULL
ALTER TABLE ServicesReceived ADD DataCollectionId INT NULL
ALTER TABLE PersonAllergy ADD DataCollectionId INT NULL
ALTER TABLE FacilityEnergy ADD DataCollectionId INT NULL
ALTER TABLE BuildingSpaceUtilization ADD DataCollectionId INT NULL
ALTER TABLE ProgramParticipationSpecialEducation ADD DataCollectionId INT NULL
ALTER TABLE ActivityRecognition ADD DataCollectionId INT NULL
ALTER TABLE K12SchoolCorrectiveAction ADD DataCollectionId INT NULL
ALTER TABLE ServiceStaff ADD DataCollectionId INT NULL
ALTER TABLE PersonBirthplace ADD DataCollectionId INT NULL
ALTER TABLE FacilityFinance ADD DataCollectionId INT NULL
ALTER TABLE BuildingSystemCategory ADD DataCollectionId INT NULL
ALTER TABLE PsStudentEnrollment ADD DataCollectionId INT NULL
ALTER TABLE AeCourse ADD DataCollectionId INT NULL
ALTER TABLE K12SchoolGradeOffered ADD DataCollectionId INT NULL
ALTER TABLE PersonCareerEducationPlan ADD DataCollectionId INT NULL
ALTER TABLE FacilityFinancial ADD DataCollectionId INT NULL
ALTER TABLE BuildingSystemComponent ADD DataCollectionId INT NULL
ALTER TABLE StaffCredential ADD DataCollectionId INT NULL
ALTER TABLE AeProvider ADD DataCollectionId INT NULL
ALTER TABLE K12SchoolImprovement ADD DataCollectionId INT NULL
ALTER TABLE PersonCredential ADD DataCollectionId INT NULL
ALTER TABLE FacilityHazard ADD DataCollectionId INT NULL
ALTER TABLE BuildingSystemComponentService ADD DataCollectionId INT NULL
ALTER TABLE AeStaff ADD DataCollectionId INT NULL
ALTER TABLE K12SchoolIndicatorStatus ADD DataCollectionId INT NULL
ALTER TABLE PersonDegreeOrCertificate ADD DataCollectionId INT NULL
ALTER TABLE FacilityJointUse ADD DataCollectionId INT NULL
ALTER TABLE Classroom ADD DataCollectionId INT NULL
ALTER TABLE StaffEvaluation ADD DataCollectionId INT NULL
ALTER TABLE AeStudentAcademicRecord ADD DataCollectionId INT NULL
ALTER TABLE PersonDemographicRace ADD DataCollectionId INT NULL
ALTER TABLE FacilityLease ADD DataCollectionId INT NULL
ALTER TABLE CompetencyDefAssociation ADD DataCollectionId INT NULL
ALTER TABLE StaffExperience ADD DataCollectionId INT NULL
ALTER TABLE AeStudentEmployment ADD DataCollectionId INT NULL
ALTER TABLE PersonDetail ADD DataCollectionId INT NULL
ALTER TABLE FacilityLocation ADD DataCollectionId INT NULL
ALTER TABLE CompetencyDefEducationLevel ADD DataCollectionId INT NULL
ALTER TABLE StaffProfessionalDevelopmentActivity ADD DataCollectionId INT NULL
ALTER TABLE ApipInteraction ADD DataCollectionId INT NULL
ALTER TABLE K12SeaAlternateFundUse ADD DataCollectionId INT NULL
ALTER TABLE PersonDisability ADD DataCollectionId INT NULL
ALTER TABLE StaffTechnicalAssistance ADD DataCollectionId INT NULL
ALTER TABLE Application ADD DataCollectionId INT NULL
ALTER TABLE K12SeaFederalFunds ADD DataCollectionId INT NULL
ALTER TABLE FacilityManagement ADD DataCollectionId INT NULL
ALTER TABLE PersonEmailAddress ADD DataCollectionId INT NULL
ALTER TABLE CompetencyDefinition_CompetencySet ADD DataCollectionId INT NULL
ALTER TABLE TeacherEducationCredentialExam ADD DataCollectionId INT NULL
ALTER TABLE Assessment ADD DataCollectionId INT NULL
ALTER TABLE FacilityManagementPlan ADD DataCollectionId INT NULL
ALTER TABLE PersonFamily ADD DataCollectionId INT NULL
ALTER TABLE CompetencyFramework ADD DataCollectionId INT NULL
ALTER TABLE TeacherStudentDataLinkExclusion ADD DataCollectionId INT NULL
ALTER TABLE Assessment_AssessmentAdministration ADD DataCollectionId INT NULL
ALTER TABLE FacilityMandate ADD DataCollectionId INT NULL
ALTER TABLE PersonHealth ADD DataCollectionId INT NULL
ALTER TABLE CompetencySet ADD DataCollectionId INT NULL
ALTER TABLE StaffEmployment ADD DataCollectionId INT NULL
ALTER TABLE WorkforceEmploymentQuarterlyData ADD DataCollectionId INT NULL
ALTER TABLE K12StudentAcademicHonor ADD DataCollectionId INT NULL
ALTER TABLE FacilityMortgage ADD DataCollectionId INT NULL
ALTER TABLE AssessmentAccommodation ADD DataCollectionId INT NULL
ALTER TABLE PersonHealthBirth ADD DataCollectionId INT NULL
ALTER TABLE CoreKnowledgeArea ADD DataCollectionId INT NULL
ALTER TABLE WorkforceProgramParticipation ADD DataCollectionId INT NULL
ALTER TABLE K12StudentAcademicRecord ADD DataCollectionId INT NULL
ALTER TABLE FacilityMortgageFee ADD DataCollectionId INT NULL
ALTER TABLE AssessmentAdministration ADD DataCollectionId INT NULL
ALTER TABLE PersonHomelessness ADD DataCollectionId INT NULL
ALTER TABLE K12CharterSchoolAuthorizerAgency ADD DataCollectionId INT NULL
ALTER TABLE K12StudentActivity ADD DataCollectionId INT NULL
ALTER TABLE AssessmentAdministration_Organization ADD DataCollectionId INT NULL
ALTER TABLE PersonIdentifier ADD DataCollectionId INT NULL
ALTER TABLE FacilityRelationship ADD DataCollectionId INT NULL
ALTER TABLE K12StudentCohort ADD DataCollectionId INT NULL
ALTER TABLE CourseSection ADD DataCollectionId INT NULL
ALTER TABLE PersonImmunization ADD DataCollectionId INT NULL
ALTER TABLE AssessmentAsset ADD DataCollectionId INT NULL
ALTER TABLE K12StudentCourseSection ADD DataCollectionId INT NULL
ALTER TABLE FacilitySchoolDesign ADD DataCollectionId INT NULL
ALTER TABLE CourseSectionAssessmentReporting ADD DataCollectionId INT NULL
ALTER TABLE PersonLanguage ADD DataCollectionId INT NULL
ALTER TABLE AssessmentELDevelopmentalDomain ADD DataCollectionId INT NULL
ALTER TABLE K12StudentCourseSectionMark ADD DataCollectionId INT NULL
ALTER TABLE CourseSectionLevel ADD DataCollectionId INT NULL
ALTER TABLE PersonMaster ADD DataCollectionId INT NULL
ALTER TABLE FacilitySite ADD DataCollectionId INT NULL
ALTER TABLE K12StudentDiscipline ADD DataCollectionId INT NULL
ALTER TABLE CourseSectionLocation ADD DataCollectionId INT NULL
ALTER TABLE AssessmentForm ADD DataCollectionId INT NULL
ALTER TABLE PersonMilitary ADD DataCollectionId INT NULL
ALTER TABLE FacilityUtilization ADD DataCollectionId INT NULL
ALTER TABLE K12StudentEmployment ADD DataCollectionId INT NULL
ALTER TABLE CourseSectionSchedule ADD DataCollectionId INT NULL
ALTER TABLE AssessmentForm_AssessmentAsset ADD DataCollectionId INT NULL
ALTER TABLE PersonOtherName ADD DataCollectionId INT NULL
ALTER TABLE FinancialAccount ADD DataCollectionId INT NULL
ALTER TABLE CredentialAward ADD DataCollectionId INT NULL
ALTER TABLE PersonProgramParticipation ADD DataCollectionId INT NULL
ALTER TABLE FinancialAccountProgram ADD DataCollectionId INT NULL
ALTER TABLE AssessmentForm_AssessmentFormSection ADD DataCollectionId INT NULL
ALTER TABLE K12StudentGraduationPlan ADD DataCollectionId INT NULL
ALTER TABLE CredentialAwardCredit ADD DataCollectionId INT NULL
ALTER TABLE PersonReferral ADD DataCollectionId INT NULL
ALTER TABLE FinancialAidApplication ADD DataCollectionId INT NULL
ALTER TABLE AssessmentFormSection ADD DataCollectionId INT NULL
ALTER TABLE K12StudentLiteracyAssessment ADD DataCollectionId INT NULL
ALTER TABLE CredentialAwardEvidence ADD DataCollectionId INT NULL
ALTER TABLE FinancialAidAward ADD DataCollectionId INT NULL
ALTER TABLE AssessmentFormSection_AssessmentAsset ADD DataCollectionId INT NULL
ALTER TABLE K12StudentSession ADD DataCollectionId INT NULL
ALTER TABLE CredentialCriteriaCourse ADD DataCollectionId INT NULL
ALTER TABLE PersonStatus ADD DataCollectionId INT NULL
ALTER TABLE Goal ADD DataCollectionId INT NULL
ALTER TABLE K12TitleIIILanguageInstruction ADD DataCollectionId INT NULL
ALTER TABLE CredentialDefAgent ADD DataCollectionId INT NULL
ALTER TABLE AssessmentFormSection_AssessmentItem ADD DataCollectionId INT NULL
ALTER TABLE PersonTelephone ADD DataCollectionId INT NULL
ALTER TABLE GoalMeasurement ADD DataCollectionId INT NULL
ALTER TABLE CredentialDefAgentCredential ADD DataCollectionId INT NULL
ALTER TABLE AssessmentItem ADD DataCollectionId INT NULL
ALTER TABLE LearnerAction ADD DataCollectionId INT NULL
ALTER TABLE GoalMeasurementCriterion ADD DataCollectionId INT NULL
ALTER TABLE CredentialDefCategory ADD DataCollectionId INT NULL
ALTER TABLE AssessmentItemApip ADD DataCollectionId INT NULL
ALTER TABLE ProfessionalDevelopmentRequirement ADD DataCollectionId INT NULL
ALTER TABLE LearnerActivity ADD DataCollectionId INT NULL
ALTER TABLE GoalPerformance ADD DataCollectionId INT NULL
ALTER TABLE CredentialDefCriteria ADD DataCollectionId INT NULL
ALTER TABLE AssessmentItemApipDescription ADD DataCollectionId INT NULL
ALTER TABLE ProfessionalDevelopmentSession ADD DataCollectionId INT NULL
ALTER TABLE LearnerActivity_LearningResource ADD DataCollectionId INT NULL
ALTER TABLE IDEAEligibilityEvaluationCategory ADD DataCollectionId INT NULL
ALTER TABLE CredentialDefIdentifier ADD DataCollectionId INT NULL
ALTER TABLE AssessmentItemCharacteristic ADD DataCollectionId INT NULL
ALTER TABLE ProfessionalDevelopmentSessionInstructor ADD DataCollectionId INT NULL
ALTER TABLE LearningResource ADD DataCollectionId INT NULL
ALTER TABLE IEPAuthorization ADD DataCollectionId INT NULL
ALTER TABLE CredentialDefinition ADD DataCollectionId INT NULL
ALTER TABLE AssessmentItemPossibleResponse ADD DataCollectionId INT NULL
ALTER TABLE Program ADD DataCollectionId INT NULL
ALTER TABLE LearningResourceAdaptation ADD DataCollectionId INT NULL
ALTER TABLE IEPAuthorizationRejected ADD DataCollectionId INT NULL
ALTER TABLE CredentialIssuer ADD DataCollectionId INT NULL
ALTER TABLE AssessmentItemResponse ADD DataCollectionId INT NULL
ALTER TABLE ProgramParticipationAE ADD DataCollectionId INT NULL
ALTER TABLE LearningResourceEducationLevel ADD DataCollectionId INT NULL
ALTER TABLE IEPPresentLevel ADD DataCollectionId INT NULL
ALTER TABLE CredentialOffered ADD DataCollectionId INT NULL
ALTER TABLE AssessmentItemResponseTheory ADD DataCollectionId INT NULL
ALTER TABLE ProgramParticipationCte ADD DataCollectionId INT NULL
ALTER TABLE Incident ADD DataCollectionId INT NULL
ALTER TABLE CteCourse ADD DataCollectionId INT NULL
ALTER TABLE AssessmentItemRubricCriterionResult ADD DataCollectionId INT NULL
ALTER TABLE ProgramParticipationFoodService ADD DataCollectionId INT NULL
ALTER TABLE LearningResourceMediaFeature ADD DataCollectionId INT NULL
ALTER TABLE IncidentPerson ADD DataCollectionId INT NULL
ALTER TABLE CteStudentAcademicRecord ADD DataCollectionId INT NULL
ALTER TABLE AssessmentLanguage ADD DataCollectionId INT NULL
ALTER TABLE ProgramParticipationMigrant ADD DataCollectionId INT NULL
ALTER TABLE LearningResourcePeerRating ADD DataCollectionId INT NULL
ALTER TABLE IndividualizedProgram ADD DataCollectionId INT NULL
ALTER TABLE EarlyChildhoodCredential ADD DataCollectionId INT NULL
ALTER TABLE ProgramParticipationNeglected ADD DataCollectionId INT NULL
ALTER TABLE LearningResourcePhysicalMedia ADD DataCollectionId INT NULL
ALTER TABLE AssessmentLevelsForWhichDesigned ADD DataCollectionId INT NULL
ALTER TABLE IndividualizedProgramAccommodation ADD DataCollectionId INT NULL
ALTER TABLE EarlyChildhoodProgramTypeOffered ADD DataCollectionId INT NULL
ALTER TABLE Location ADD DataCollectionId INT NULL
ALTER TABLE IndividualizedProgramAccommodationSubject ADD DataCollectionId INT NULL
ALTER TABLE AssessmentNeedApipContent ADD DataCollectionId INT NULL
ALTER TABLE ProgramParticipationTeacherPrep ADD DataCollectionId INT NULL
ALTER TABLE LocationAddress ADD DataCollectionId INT NULL
ALTER TABLE ELChildDemographic ADD DataCollectionId INT NULL
ALTER TABLE AssessmentNeedApipControl ADD DataCollectionId INT NULL
ALTER TABLE ProgramParticipationTitleI ADD DataCollectionId INT NULL
ALTER TABLE Organization ADD DataCollectionId INT NULL
ALTER TABLE IndividualizedProgramAmendment ADD DataCollectionId INT NULL
ALTER TABLE ELChildDevelopmentalAssessment ADD DataCollectionId INT NULL
ALTER TABLE AssessmentNeedApipDisplay ADD DataCollectionId INT NULL
ALTER TABLE ProgramParticipationTitleIIILep ADD DataCollectionId INT NULL
ALTER TABLE OrganizationAccreditation ADD DataCollectionId INT NULL
ALTER TABLE IndividualizedProgramAssessment ADD DataCollectionId INT NULL
ALTER TABLE ELChildHealth ADD DataCollectionId INT NULL
ALTER TABLE AssessmentNeedBraille ADD DataCollectionId INT NULL
ALTER TABLE PsCourse ADD DataCollectionId INT NULL
ALTER TABLE OrganizationCalendar ADD DataCollectionId INT NULL
ALTER TABLE IndividualizedProgramAssessmentAccommodation ADD DataCollectionId INT NULL
ALTER TABLE ELChildIndividualizedProgram ADD DataCollectionId INT NULL
ALTER TABLE AssessmentNeedScreenEnhancement ADD DataCollectionId INT NULL
ALTER TABLE PsInstitution ADD DataCollectionId INT NULL
ALTER TABLE OrganizationCalendarCrisis ADD DataCollectionId INT NULL
ALTER TABLE ELChildOutcomeSummary ADD DataCollectionId INT NULL
ALTER TABLE IndividualizedProgramEligibility ADD DataCollectionId INT NULL
ALTER TABLE AssessmentParticipantSession ADD DataCollectionId INT NULL
ALTER TABLE PsPriceOfAttendance ADD DataCollectionId INT NULL
ALTER TABLE OrganizationCalendarDay ADD DataCollectionId INT NULL
ALTER TABLE ELChildProgramEligibility ADD DataCollectionId INT NULL
ALTER TABLE IndividualizedProgramEligibilityEvaluation ADD DataCollectionId INT NULL
ALTER TABLE AssessmentParticipantSession_Accommodation ADD DataCollectionId INT NULL
ALTER TABLE PsProgram ADD DataCollectionId INT NULL
ALTER TABLE OrganizationCalendarEvent ADD DataCollectionId INT NULL
ALTER TABLE ELChildService ADD DataCollectionId INT NULL
ALTER TABLE IndividualizedProgramGoal ADD DataCollectionId INT NULL
ALTER TABLE AssessmentPerformanceLevel ADD DataCollectionId INT NULL
ALTER TABLE PsSection ADD DataCollectionId INT NULL
ALTER TABLE OrganizationCalendarSession ADD DataCollectionId INT NULL
ALTER TABLE ELChildServicesApplication ADD DataCollectionId INT NULL
ALTER TABLE IndividualizedProgramMeeting ADD DataCollectionId INT NULL
ALTER TABLE AssessmentPersonalNeedLanguageLearner ADD DataCollectionId INT NULL
ALTER TABLE PsSectionLocation ADD DataCollectionId INT NULL
ALTER TABLE ELChildTransitionPlan ADD DataCollectionId INT NULL
ALTER TABLE IndividualizedProgramMeetingAttendee ADD DataCollectionId INT NULL
ALTER TABLE AssessmentPersonalNeedScreenReader ADD DataCollectionId INT NULL
ALTER TABLE PsStaffEmployment ADD DataCollectionId INT NULL
ALTER TABLE OrganizationEmail ADD DataCollectionId INT NULL
ALTER TABLE ELClassSection ADD DataCollectionId INT NULL
ALTER TABLE AssessmentPersonalNeedsProfile ADD DataCollectionId INT NULL
ALTER TABLE PsStudentAcademicAward ADD DataCollectionId INT NULL
ALTER TABLE OrganizationEmployeeBenefit ADD DataCollectionId INT NULL
ALTER TABLE IndividualizedProgramProgressGoal ADD DataCollectionId INT NULL
ALTER TABLE ELClassSectionService ADD DataCollectionId INT NULL
ALTER TABLE AssessmentPersonalNeedsProfileContent ADD DataCollectionId INT NULL
ALTER TABLE PsStudentAcademicRecord ADD DataCollectionId INT NULL
ALTER TABLE ELEnrollment ADD DataCollectionId INT NULL
ALTER TABLE IndividualizedProgramProgressReport ADD DataCollectionId INT NULL
ALTER TABLE AssessmentPersonalNeedsProfileControl ADD DataCollectionId INT NULL
ALTER TABLE PsStudentAdmissionTest ADD DataCollectionId INT NULL
ALTER TABLE OrganizationFinancial ADD DataCollectionId INT NULL
ALTER TABLE ELEnrollmentOtherFunding ADD DataCollectionId INT NULL
ALTER TABLE IndividualizedProgramProgressReportPlan ADD DataCollectionId INT NULL
ALTER TABLE AssessmentPersonalNeedsProfileDisplay ADD DataCollectionId INT NULL
ALTER TABLE PsStudentApplication ADD DataCollectionId INT NULL
ALTER TABLE OrganizationIdentifier ADD DataCollectionId INT NULL
ALTER TABLE ELFacilityLicensing ADD DataCollectionId INT NULL
ALTER TABLE IndividualizedProgramService ADD DataCollectionId INT NULL
ALTER TABLE AssessmentPersonalNeedsProfileScreenEnhancement ADD DataCollectionId INT NULL
ALTER TABLE PsStudentCohort ADD DataCollectionId INT NULL
ALTER TABLE OrganizationImage ADD DataCollectionId INT NULL
ALTER TABLE EligibilityEvaluation ADD DataCollectionId INT NULL
ALTER TABLE IndividualizedProgramServicesReceived ADD DataCollectionId INT NULL
ALTER TABLE AssessmentRegistration ADD DataCollectionId INT NULL
ALTER TABLE PsStudentCourseSectionMark ADD DataCollectionId INT NULL
ALTER TABLE OrganizationIndicator ADD DataCollectionId INT NULL
ALTER TABLE ELOrganization ADD DataCollectionId INT NULL
ALTER TABLE AssessmentRegistration_Accommodation ADD DataCollectionId INT NULL
ALTER TABLE PsStudentDemographic ADD DataCollectionId INT NULL
ALTER TABLE OrganizationLocation ADD DataCollectionId INT NULL
ALTER TABLE IPEDSFinance ADD DataCollectionId INT NULL
ALTER TABLE ELOrganizationAvailability ADD DataCollectionId INT NULL
ALTER TABLE AssessmentResult ADD DataCollectionId INT NULL
ALTER TABLE PsStudentEmployment ADD DataCollectionId INT NULL
ALTER TABLE OrganizationOperationalStatus ADD DataCollectionId INT NULL
ALTER TABLE ELOrganizationFunds ADD DataCollectionId INT NULL
ALTER TABLE AssessmentResult_PerformanceLevel ADD DataCollectionId INT NULL
ALTER TABLE OrganizationPersonRole ADD DataCollectionId INT NULL
ALTER TABLE K12CharterSchoolManagementOrganization ADD DataCollectionId INT NULL
ALTER TABLE ELOrganizationMonitoring ADD DataCollectionId INT NULL
ALTER TABLE CompetencyDefinition ADD DataCollectionId INT NULL


--Add FK constraints
ALTER TABLE AssessmentResultRubricCriterionResult ADD CONSTRAINT FK_AssessmentResultRubricCriterionResult_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE PsStudentFinancialAid ADD CONSTRAINT FK_PsStudentFinancialAid_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE OrganizationPolicy ADD CONSTRAINT FK_OrganizationPolicy_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE ELProgramLicensing ADD CONSTRAINT FK_ELProgramLicensing_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE Course ADD CONSTRAINT FK_Course_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE RequiredImmunization ADD CONSTRAINT FK_RequiredImmunization_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE PSStudentProgram ADD CONSTRAINT FK_PSStudentProgram_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE OrganizationProgramType ADD CONSTRAINT FK_OrganizationProgramType_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE K12FederalFundAllocation ADD CONSTRAINT FK_K12FederalFundAllocation_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE ELQualityInitiative ADD CONSTRAINT FK_ELQualityInitiative_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE AssessmentSession ADD CONSTRAINT FK_AssessmentSession_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE PsStudentSection ADD CONSTRAINT FK_PsStudentSection_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE OrganizationRelationship ADD CONSTRAINT FK_OrganizationRelationship_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE K12Lea ADD CONSTRAINT FK_K12Lea_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE ELQualityRatingImprovement ADD CONSTRAINT FK_ELQualityRatingImprovement_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE AssessmentSessionStaffRole ADD CONSTRAINT FK_AssessmentSessionStaffRole_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE K12Course ADD CONSTRAINT FK_K12Course_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE QuarterlyEmploymentRecord ADD CONSTRAINT FK_QuarterlyEmploymentRecord_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE RoleAttendance ADD CONSTRAINT FK_RoleAttendance_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE OrganizationService ADD CONSTRAINT FK_OrganizationService_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE K12LeaFederalFunds ADD CONSTRAINT FK_K12LeaFederalFunds_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE ELServicePartner ADD CONSTRAINT FK_ELServicePartner_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE AssessmentSubtest ADD CONSTRAINT FK_AssessmentSubtest_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE K12School ADD CONSTRAINT FK_K12School_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE RoleAttendanceEvent ADD CONSTRAINT FK_RoleAttendanceEvent_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE K12LeaFederalReporting ADD CONSTRAINT FK_K12LeaFederalReporting_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE ELStaff ADD CONSTRAINT FK_ELStaff_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE AssessmentSubtest_AssessmentItem ADD CONSTRAINT FK_AssessmentSubtest_AssessmentItem_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE K12SchoolStatus ADD CONSTRAINT FK_K12SchoolStatus_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE OrganizationTechnicalAssistance ADD CONSTRAINT FK_OrganizationTechnicalAssistance_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE RoleStatus ADD CONSTRAINT FK_RoleStatus_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE K12LeaPreKEligibility ADD CONSTRAINT FK_K12LeaPreKEligibility_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE ELStaffAssignment ADD CONSTRAINT FK_ELStaffAssignment_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE AssessmentSubtest_CompetencyDefinition ADD CONSTRAINT FK_AssessmentSubtest_CompetencyDefinition_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE K12Sea ADD CONSTRAINT FK_K12Sea_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE OrganizationTelephone ADD CONSTRAINT FK_OrganizationTelephone_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE Rubric ADD CONSTRAINT FK_Rubric_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE K12LeaPreKEligibleAgesIDEA ADD CONSTRAINT FK_K12LeaPreKEligibleAgesIDEA_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE ELStaffEducation ADD CONSTRAINT FK_ELStaffEducation_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE AssessmentSubtestELDevelopmentalDomain ADD CONSTRAINT FK_AssessmentSubtestELDevelopmentalDomain_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE K12StaffAssignment ADD CONSTRAINT FK_K12StaffAssignment_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE OrganizationWebsite ADD CONSTRAINT FK_OrganizationWebsite_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE RubricCriterion ADD CONSTRAINT FK_RubricCriterion_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE K12LeaSafeDrugFree ADD CONSTRAINT FK_K12LeaSafeDrugFree_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE ELStaffEmployment ADD CONSTRAINT FK_ELStaffEmployment_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE K12StaffEmployment ADD CONSTRAINT FK_K12StaffEmployment_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE PDActivityEducationLevel ADD CONSTRAINT FK_PDActivityEducationLevel_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE AssessmentSubtestLevelsForWhichDesigned ADD CONSTRAINT FK_AssessmentSubtestLevelsForWhichDesigned_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE RubricCriterionLevel ADD CONSTRAINT FK_RubricCriterionLevel_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE K12LeaTitleIIIProfessionalDevelopment ADD CONSTRAINT FK_K12LeaTitleIIIProfessionalDevelopment_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE Facility ADD CONSTRAINT FK_Facility_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE K12StudentEnrollment ADD CONSTRAINT FK_K12StudentEnrollment_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE PeerRatingSystem ADD CONSTRAINT FK_PeerRatingSystem_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE ServiceFrequency ADD CONSTRAINT FK_ServiceFrequency_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE K12LeaTitleISupportService ADD CONSTRAINT FK_K12LeaTitleISupportService_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE FacilityAudit ADD CONSTRAINT FK_FacilityAudit_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE Authentication ADD CONSTRAINT FK_Authentication_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE OrganizationDetail ADD CONSTRAINT FK_OrganizationDetail_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE Person ADD CONSTRAINT FK_Person_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE ServicePlan ADD CONSTRAINT FK_ServicePlan_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE K12OrganizationStudentResponsibility ADD CONSTRAINT FK_K12OrganizationStudentResponsibility_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE FacilityCompliance ADD CONSTRAINT FK_FacilityCompliance_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE [Authorization] ADD CONSTRAINT FK_Authorization_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE OrganizationFederalAccountability ADD CONSTRAINT FK_OrganizationFederalAccountability_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE Person_AssessmentPersonalNeedsProfile ADD CONSTRAINT FK_Person_AssessmentPersonalNeedsProfile_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE ServiceProvided ADD CONSTRAINT FK_ServiceProvided_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE FacilityDesign ADD CONSTRAINT FK_FacilityDesign_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE AuthorizationDocument ADD CONSTRAINT FK_AuthorizationDocument_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE PersonRelationship ADD CONSTRAINT FK_PersonRelationship_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE K12ProgramOrService ADD CONSTRAINT FK_K12ProgramOrService_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE ServiceProvider ADD CONSTRAINT FK_ServiceProvider_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE PersonAddress ADD CONSTRAINT FK_PersonAddress_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE FacilityDesignConstruction ADD CONSTRAINT FK_FacilityDesignConstruction_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE BuildingSpace ADD CONSTRAINT FK_BuildingSpace_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE ProfessionalDevelopmentActivity ADD CONSTRAINT FK_ProfessionalDevelopmentActivity_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE Activity ADD CONSTRAINT FK_Activity_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE ServicesReceived ADD CONSTRAINT FK_ServicesReceived_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE PersonAllergy ADD CONSTRAINT FK_PersonAllergy_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE FacilityEnergy ADD CONSTRAINT FK_FacilityEnergy_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE BuildingSpaceUtilization ADD CONSTRAINT FK_BuildingSpaceUtilization_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE ProgramParticipationSpecialEducation ADD CONSTRAINT FK_ProgramParticipationSpecialEducation_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE ActivityRecognition ADD CONSTRAINT FK_ActivityRecognition_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE K12SchoolCorrectiveAction ADD CONSTRAINT FK_K12SchoolCorrectiveAction_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE ServiceStaff ADD CONSTRAINT FK_ServiceStaff_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE PersonBirthplace ADD CONSTRAINT FK_PersonBirthplace_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE FacilityFinance ADD CONSTRAINT FK_FacilityFinance_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE BuildingSystemCategory ADD CONSTRAINT FK_BuildingSystemCategory_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE PsStudentEnrollment ADD CONSTRAINT FK_PsStudentEnrollment_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE AeCourse ADD CONSTRAINT FK_AeCourse_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE K12SchoolGradeOffered ADD CONSTRAINT FK_K12SchoolGradeOffered_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE PersonCareerEducationPlan ADD CONSTRAINT FK_PersonCareerEducationPlan_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE FacilityFinancial ADD CONSTRAINT FK_FacilityFinancial_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE BuildingSystemComponent ADD CONSTRAINT FK_BuildingSystemComponent_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE StaffCredential ADD CONSTRAINT FK_StaffCredential_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE AeProvider ADD CONSTRAINT FK_AeProvider_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE K12SchoolImprovement ADD CONSTRAINT FK_K12SchoolImprovement_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE PersonCredential ADD CONSTRAINT FK_PersonCredential_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE FacilityHazard ADD CONSTRAINT FK_FacilityHazard_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE BuildingSystemComponentService ADD CONSTRAINT FK_BuildingSystemComponentService_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE AeStaff ADD CONSTRAINT FK_AeStaff_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE K12SchoolIndicatorStatus ADD CONSTRAINT FK_K12SchoolIndicatorStatus_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE PersonDegreeOrCertificate ADD CONSTRAINT FK_PersonDegreeOrCertificate_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE FacilityJointUse ADD CONSTRAINT FK_FacilityJointUse_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE Classroom ADD CONSTRAINT FK_Classroom_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE StaffEvaluation ADD CONSTRAINT FK_StaffEvaluation_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE AeStudentAcademicRecord ADD CONSTRAINT FK_AeStudentAcademicRecord_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE PersonDemographicRace ADD CONSTRAINT FK_PersonDemographicRace_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE FacilityLease ADD CONSTRAINT FK_FacilityLease_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE CompetencyDefAssociation ADD CONSTRAINT FK_CompetencyDefAssociation_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE StaffExperience ADD CONSTRAINT FK_StaffExperience_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE AeStudentEmployment ADD CONSTRAINT FK_AeStudentEmployment_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE PersonDetail ADD CONSTRAINT FK_PersonDetail_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE FacilityLocation ADD CONSTRAINT FK_FacilityLocation_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE CompetencyDefEducationLevel ADD CONSTRAINT FK_CompetencyDefEducationLevel_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE StaffProfessionalDevelopmentActivity ADD CONSTRAINT FK_StaffProfessionalDevelopmentActivity_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE ApipInteraction ADD CONSTRAINT FK_ApipInteraction_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE K12SeaAlternateFundUse ADD CONSTRAINT FK_K12SeaAlternateFundUse_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE PersonDisability ADD CONSTRAINT FK_PersonDisability_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE StaffTechnicalAssistance ADD CONSTRAINT FK_StaffTechnicalAssistance_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE Application ADD CONSTRAINT FK_Application_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE K12SeaFederalFunds ADD CONSTRAINT FK_K12SeaFederalFunds_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE FacilityManagement ADD CONSTRAINT FK_FacilityManagement_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE PersonEmailAddress ADD CONSTRAINT FK_PersonEmailAddress_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE CompetencyDefinition_CompetencySet ADD CONSTRAINT FK_CompetencyDefinition_CompetencySet_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE TeacherEducationCredentialExam ADD CONSTRAINT FK_TeacherEducationCredentialExam_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE Assessment ADD CONSTRAINT FK_Assessment_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE FacilityManagementPlan ADD CONSTRAINT FK_FacilityManagementPlan_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE PersonFamily ADD CONSTRAINT FK_PersonFamily_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE CompetencyFramework ADD CONSTRAINT FK_CompetencyFramework_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE TeacherStudentDataLinkExclusion ADD CONSTRAINT FK_TeacherStudentDataLinkExclusion_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE Assessment_AssessmentAdministration ADD CONSTRAINT FK_Assessment_AssessmentAdministration_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE FacilityMandate ADD CONSTRAINT FK_FacilityMandate_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE PersonHealth ADD CONSTRAINT FK_PersonHealth_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE CompetencySet ADD CONSTRAINT FK_CompetencySet_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE StaffEmployment ADD CONSTRAINT FK_StaffEmployment_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE WorkforceEmploymentQuarterlyData ADD CONSTRAINT FK_WorkforceEmploymentQuarterlyData_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE K12StudentAcademicHonor ADD CONSTRAINT FK_K12StudentAcademicHonor_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE FacilityMortgage ADD CONSTRAINT FK_FacilityMortgage_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE AssessmentAccommodation ADD CONSTRAINT FK_AssessmentAccommodation_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE PersonHealthBirth ADD CONSTRAINT FK_PersonHealthBirth_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE CoreKnowledgeArea ADD CONSTRAINT FK_CoreKnowledgeArea_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE WorkforceProgramParticipation ADD CONSTRAINT FK_WorkforceProgramParticipation_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE K12StudentAcademicRecord ADD CONSTRAINT FK_K12StudentAcademicRecord_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE FacilityMortgageFee ADD CONSTRAINT FK_FacilityMortgageFee_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE AssessmentAdministration ADD CONSTRAINT FK_AssessmentAdministration_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE PersonHomelessness ADD CONSTRAINT FK_PersonHomelessness_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE K12CharterSchoolAuthorizerAgency ADD CONSTRAINT FK_K12CharterSchoolAuthorizerAgency_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE K12StudentActivity ADD CONSTRAINT FK_K12StudentActivity_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE AssessmentAdministration_Organization ADD CONSTRAINT FK_AssessmentAdministration_Organization_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE PersonIdentifier ADD CONSTRAINT FK_PersonIdentifier_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE FacilityRelationship ADD CONSTRAINT FK_FacilityRelationship_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE K12StudentCohort ADD CONSTRAINT FK_K12StudentCohort_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE CourseSection ADD CONSTRAINT FK_CourseSection_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE PersonImmunization ADD CONSTRAINT FK_PersonImmunization_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE AssessmentAsset ADD CONSTRAINT FK_AssessmentAsset_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE K12StudentCourseSection ADD CONSTRAINT FK_K12StudentCourseSection_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE FacilitySchoolDesign ADD CONSTRAINT FK_FacilitySchoolDesign_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE CourseSectionAssessmentReporting ADD CONSTRAINT FK_CourseSectionAssessmentReporting_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE PersonLanguage ADD CONSTRAINT FK_PersonLanguage_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE AssessmentELDevelopmentalDomain ADD CONSTRAINT FK_AssessmentELDevelopmentalDomain_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE K12StudentCourseSectionMark ADD CONSTRAINT FK_K12StudentCourseSectionMark_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE CourseSectionLevel ADD CONSTRAINT FK_CourseSectionLevel_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE PersonMaster ADD CONSTRAINT FK_PersonMaster_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE FacilitySite ADD CONSTRAINT FK_FacilitySite_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE K12StudentDiscipline ADD CONSTRAINT FK_K12StudentDiscipline_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE CourseSectionLocation ADD CONSTRAINT FK_CourseSectionLocation_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE AssessmentForm ADD CONSTRAINT FK_AssessmentForm_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE PersonMilitary ADD CONSTRAINT FK_PersonMilitary_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE FacilityUtilization ADD CONSTRAINT FK_FacilityUtilization_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE K12StudentEmployment ADD CONSTRAINT FK_K12StudentEmployment_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE CourseSectionSchedule ADD CONSTRAINT FK_CourseSectionSchedule_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE AssessmentForm_AssessmentAsset ADD CONSTRAINT FK_AssessmentForm_AssessmentAsset_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE PersonOtherName ADD CONSTRAINT FK_PersonOtherName_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE FinancialAccount ADD CONSTRAINT FK_FinancialAccount_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE CredentialAward ADD CONSTRAINT FK_CredentialAward_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE PersonProgramParticipation ADD CONSTRAINT FK_PersonProgramParticipation_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE FinancialAccountProgram ADD CONSTRAINT FK_FinancialAccountProgram_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE AssessmentForm_AssessmentFormSection ADD CONSTRAINT FK_AssessmentForm_AssessmentFormSection_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE K12StudentGraduationPlan ADD CONSTRAINT FK_K12StudentGraduationPlan_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE CredentialAwardCredit ADD CONSTRAINT FK_CredentialAwardCredit_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE PersonReferral ADD CONSTRAINT FK_PersonReferral_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE FinancialAidApplication ADD CONSTRAINT FK_FinancialAidApplication_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE AssessmentFormSection ADD CONSTRAINT FK_AssessmentFormSection_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE K12StudentLiteracyAssessment ADD CONSTRAINT FK_K12StudentLiteracyAssessment_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE CredentialAwardEvidence ADD CONSTRAINT FK_CredentialAwardEvidence_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE FinancialAidAward ADD CONSTRAINT FK_FinancialAidAward_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE AssessmentFormSection_AssessmentAsset ADD CONSTRAINT FK_AssessmentFormSection_AssessmentAsset_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE K12StudentSession ADD CONSTRAINT FK_K12StudentSession_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE CredentialCriteriaCourse ADD CONSTRAINT FK_CredentialCriteriaCourse_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE PersonStatus ADD CONSTRAINT FK_PersonStatus_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE Goal ADD CONSTRAINT FK_Goal_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE K12TitleIIILanguageInstruction ADD CONSTRAINT FK_K12TitleIIILanguageInstruction_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE CredentialDefAgent ADD CONSTRAINT FK_CredentialDefAgent_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE AssessmentFormSection_AssessmentItem ADD CONSTRAINT FK_AssessmentFormSection_AssessmentItem_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE PersonTelephone ADD CONSTRAINT FK_PersonTelephone_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE GoalMeasurement ADD CONSTRAINT FK_GoalMeasurement_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE CredentialDefAgentCredential ADD CONSTRAINT FK_CredentialDefAgentCredential_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE AssessmentItem ADD CONSTRAINT FK_AssessmentItem_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE LearnerAction ADD CONSTRAINT FK_LearnerAction_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE GoalMeasurementCriterion ADD CONSTRAINT FK_GoalMeasurementCriterion_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE CredentialDefCategory ADD CONSTRAINT FK_CredentialDefCategory_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE AssessmentItemApip ADD CONSTRAINT FK_AssessmentItemApip_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE ProfessionalDevelopmentRequirement ADD CONSTRAINT FK_ProfessionalDevelopmentRequirement_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE LearnerActivity ADD CONSTRAINT FK_LearnerActivity_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE GoalPerformance ADD CONSTRAINT FK_GoalPerformance_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE CredentialDefCriteria ADD CONSTRAINT FK_CredentialDefCriteria_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE AssessmentItemApipDescription ADD CONSTRAINT FK_AssessmentItemApipDescription_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE ProfessionalDevelopmentSession ADD CONSTRAINT FK_ProfessionalDevelopmentSession_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE LearnerActivity_LearningResource ADD CONSTRAINT FK_LearnerActivity_LearningResource_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE IDEAEligibilityEvaluationCategory ADD CONSTRAINT FK_IDEAEligibilityEvaluationCategory_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE CredentialDefIdentifier ADD CONSTRAINT FK_CredentialDefIdentifier_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE AssessmentItemCharacteristic ADD CONSTRAINT FK_AssessmentItemCharacteristic_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE ProfessionalDevelopmentSessionInstructor ADD CONSTRAINT FK_ProfessionalDevelopmentSessionInstructor_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE LearningResource ADD CONSTRAINT FK_LearningResource_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE IEPAuthorization ADD CONSTRAINT FK_IEPAuthorization_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE CredentialDefinition ADD CONSTRAINT FK_CredentialDefinition_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE AssessmentItemPossibleResponse ADD CONSTRAINT FK_AssessmentItemPossibleResponse_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE Program ADD CONSTRAINT FK_Program_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE LearningResourceAdaptation ADD CONSTRAINT FK_LearningResourceAdaptation_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE IEPAuthorizationRejected ADD CONSTRAINT FK_IEPAuthorizationRejected_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE CredentialIssuer ADD CONSTRAINT FK_CredentialIssuer_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE AssessmentItemResponse ADD CONSTRAINT FK_AssessmentItemResponse_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE ProgramParticipationAE ADD CONSTRAINT FK_ProgramParticipationAE_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE LearningResourceEducationLevel ADD CONSTRAINT FK_LearningResourceEducationLevel_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE IEPPresentLevel ADD CONSTRAINT FK_IEPPresentLevel_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE CredentialOffered ADD CONSTRAINT FK_CredentialOffered_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE AssessmentItemResponseTheory ADD CONSTRAINT FK_AssessmentItemResponseTheory_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE ProgramParticipationCte ADD CONSTRAINT FK_ProgramParticipationCte_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE Incident ADD CONSTRAINT FK_Incident_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE CteCourse ADD CONSTRAINT FK_CteCourse_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE AssessmentItemRubricCriterionResult ADD CONSTRAINT FK_AssessmentItemRubricCriterionResult_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE ProgramParticipationFoodService ADD CONSTRAINT FK_ProgramParticipationFoodService_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE LearningResourceMediaFeature ADD CONSTRAINT FK_LearningResourceMediaFeature_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE IncidentPerson ADD CONSTRAINT FK_IncidentPerson_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE CteStudentAcademicRecord ADD CONSTRAINT FK_CteStudentAcademicRecord_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE AssessmentLanguage ADD CONSTRAINT FK_AssessmentLanguage_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE ProgramParticipationMigrant ADD CONSTRAINT FK_ProgramParticipationMigrant_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE LearningResourcePeerRating ADD CONSTRAINT FK_LearningResourcePeerRating_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE IndividualizedProgram ADD CONSTRAINT FK_IndividualizedProgram_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE EarlyChildhoodCredential ADD CONSTRAINT FK_EarlyChildhoodCredential_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE ProgramParticipationNeglected ADD CONSTRAINT FK_ProgramParticipationNeglected_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE LearningResourcePhysicalMedia ADD CONSTRAINT FK_LearningResourcePhysicalMedia_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE AssessmentLevelsForWhichDesigned ADD CONSTRAINT FK_AssessmentLevelsForWhichDesigned_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE IndividualizedProgramAccommodation ADD CONSTRAINT FK_IndividualizedProgramAccommodation_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE EarlyChildhoodProgramTypeOffered ADD CONSTRAINT FK_EarlyChildhoodProgramTypeOffered_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE Location ADD CONSTRAINT FK_Location_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE IndividualizedProgramAccommodationSubject ADD CONSTRAINT FK_IndividualizedProgramAccommodationSubject_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE AssessmentNeedApipContent ADD CONSTRAINT FK_AssessmentNeedApipContent_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE ProgramParticipationTeacherPrep ADD CONSTRAINT FK_ProgramParticipationTeacherPrep_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE LocationAddress ADD CONSTRAINT FK_LocationAddress_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE ELChildDemographic ADD CONSTRAINT FK_ELChildDemographic_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE AssessmentNeedApipControl ADD CONSTRAINT FK_AssessmentNeedApipControl_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE ProgramParticipationTitleI ADD CONSTRAINT FK_ProgramParticipationTitleI_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE Organization ADD CONSTRAINT FK_Organization_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE IndividualizedProgramAmendment ADD CONSTRAINT FK_IndividualizedProgramAmendment_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE ELChildDevelopmentalAssessment ADD CONSTRAINT FK_ELChildDevelopmentalAssessment_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE AssessmentNeedApipDisplay ADD CONSTRAINT FK_AssessmentNeedApipDisplay_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE ProgramParticipationTitleIIILep ADD CONSTRAINT FK_ProgramParticipationTitleIIILep_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE OrganizationAccreditation ADD CONSTRAINT FK_OrganizationAccreditation_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE IndividualizedProgramAssessment ADD CONSTRAINT FK_IndividualizedProgramAssessment_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE ELChildHealth ADD CONSTRAINT FK_ELChildHealth_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE AssessmentNeedBraille ADD CONSTRAINT FK_AssessmentNeedBraille_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE PsCourse ADD CONSTRAINT FK_PsCourse_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE OrganizationCalendar ADD CONSTRAINT FK_OrganizationCalendar_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE IndividualizedProgramAssessmentAccommodation ADD CONSTRAINT FK_IndividualizedProgramAssessmentAccommodation_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE ELChildIndividualizedProgram ADD CONSTRAINT FK_ELChildIndividualizedProgram_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE AssessmentNeedScreenEnhancement ADD CONSTRAINT FK_AssessmentNeedScreenEnhancement_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE PsInstitution ADD CONSTRAINT FK_PsInstitution_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE OrganizationCalendarCrisis ADD CONSTRAINT FK_OrganizationCalendarCrisis_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE ELChildOutcomeSummary ADD CONSTRAINT FK_ELChildOutcomeSummary_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE IndividualizedProgramEligibility ADD CONSTRAINT FK_IndividualizedProgramEligibility_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE AssessmentParticipantSession ADD CONSTRAINT FK_AssessmentParticipantSession_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE PsPriceOfAttendance ADD CONSTRAINT FK_PsPriceOfAttendance_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE OrganizationCalendarDay ADD CONSTRAINT FK_OrganizationCalendarDay_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE ELChildProgramEligibility ADD CONSTRAINT FK_ELChildProgramEligibility_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE IndividualizedProgramEligibilityEvaluation ADD CONSTRAINT FK_IndividualizedProgramEligibilityEvaluation_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE AssessmentParticipantSession_Accommodation ADD CONSTRAINT FK_AssessmentParticipantSession_Accommodation_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE PsProgram ADD CONSTRAINT FK_PsProgram_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE OrganizationCalendarEvent ADD CONSTRAINT FK_OrganizationCalendarEvent_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE ELChildService ADD CONSTRAINT FK_ELChildService_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE IndividualizedProgramGoal ADD CONSTRAINT FK_IndividualizedProgramGoal_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE AssessmentPerformanceLevel ADD CONSTRAINT FK_AssessmentPerformanceLevel_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE PsSection ADD CONSTRAINT FK_PsSection_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE OrganizationCalendarSession ADD CONSTRAINT FK_OrganizationCalendarSession_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE ELChildServicesApplication ADD CONSTRAINT FK_ELChildServicesApplication_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE IndividualizedProgramMeeting ADD CONSTRAINT FK_IndividualizedProgramMeeting_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE AssessmentPersonalNeedLanguageLearner ADD CONSTRAINT FK_AssessmentPersonalNeedLanguageLearner_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE PsSectionLocation ADD CONSTRAINT FK_PsSectionLocation_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE ELChildTransitionPlan ADD CONSTRAINT FK_ELChildTransitionPlan_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE IndividualizedProgramMeetingAttendee ADD CONSTRAINT FK_IndividualizedProgramMeetingAttendee_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE AssessmentPersonalNeedScreenReader ADD CONSTRAINT FK_AssessmentPersonalNeedScreenReader_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE PsStaffEmployment ADD CONSTRAINT FK_PsStaffEmployment_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE OrganizationEmail ADD CONSTRAINT FK_OrganizationEmail_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE ELClassSection ADD CONSTRAINT FK_ELClassSection_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE AssessmentPersonalNeedsProfile ADD CONSTRAINT FK_AssessmentPersonalNeedsProfile_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE PsStudentAcademicAward ADD CONSTRAINT FK_PsStudentAcademicAward_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE OrganizationEmployeeBenefit ADD CONSTRAINT FK_OrganizationEmployeeBenefit_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE IndividualizedProgramProgressGoal ADD CONSTRAINT FK_IndividualizedProgramProgressGoal_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE ELClassSectionService ADD CONSTRAINT FK_ELClassSectionService_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE AssessmentPersonalNeedsProfileContent ADD CONSTRAINT FK_AssessmentPersonalNeedsProfileContent_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE PsStudentAcademicRecord ADD CONSTRAINT FK_PsStudentAcademicRecord_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE ELEnrollment ADD CONSTRAINT FK_ELEnrollment_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE IndividualizedProgramProgressReport ADD CONSTRAINT FK_IndividualizedProgramProgressReport_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE AssessmentPersonalNeedsProfileControl ADD CONSTRAINT FK_AssessmentPersonalNeedsProfileControl_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE PsStudentAdmissionTest ADD CONSTRAINT FK_PsStudentAdmissionTest_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE OrganizationFinancial ADD CONSTRAINT FK_OrganizationFinancial_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE ELEnrollmentOtherFunding ADD CONSTRAINT FK_ELEnrollmentOtherFunding_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE IndividualizedProgramProgressReportPlan ADD CONSTRAINT FK_IndividualizedProgramProgressReportPlan_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE AssessmentPersonalNeedsProfileDisplay ADD CONSTRAINT FK_AssessmentPersonalNeedsProfileDisplay_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE PsStudentApplication ADD CONSTRAINT FK_PsStudentApplication_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE OrganizationIdentifier ADD CONSTRAINT FK_OrganizationIdentifier_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE ELFacilityLicensing ADD CONSTRAINT FK_ELFacilityLicensing_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE IndividualizedProgramService ADD CONSTRAINT FK_IndividualizedProgramService_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE AssessmentPersonalNeedsProfileScreenEnhancement ADD CONSTRAINT FK_AssessmentPersonalNeedsProfileScreenEnhancement_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE PsStudentCohort ADD CONSTRAINT FK_PsStudentCohort_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE OrganizationImage ADD CONSTRAINT FK_OrganizationImage_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE EligibilityEvaluation ADD CONSTRAINT FK_EligibilityEvaluation_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE IndividualizedProgramServicesReceived ADD CONSTRAINT FK_IndividualizedProgramServicesReceived_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE AssessmentRegistration ADD CONSTRAINT FK_AssessmentRegistration_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE PsStudentCourseSectionMark ADD CONSTRAINT FK_PsStudentCourseSectionMark_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE OrganizationIndicator ADD CONSTRAINT FK_OrganizationIndicator_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE ELOrganization ADD CONSTRAINT FK_ELOrganization_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE AssessmentRegistration_Accommodation ADD CONSTRAINT FK_AssessmentRegistration_Accommodation_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE PsStudentDemographic ADD CONSTRAINT FK_PsStudentDemographic_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE OrganizationLocation ADD CONSTRAINT FK_OrganizationLocation_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE IPEDSFinance ADD CONSTRAINT FK_IPEDSFinance_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE ELOrganizationAvailability ADD CONSTRAINT FK_ELOrganizationAvailability_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE AssessmentResult ADD CONSTRAINT FK_AssessmentResult_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE PsStudentEmployment ADD CONSTRAINT FK_PsStudentEmployment_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE OrganizationOperationalStatus ADD CONSTRAINT FK_OrganizationOperationalStatus_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE ELOrganizationFunds ADD CONSTRAINT FK_ELOrganizationFunds_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE AssessmentResult_PerformanceLevel ADD CONSTRAINT FK_AssessmentResult_PerformanceLevel_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE OrganizationPersonRole ADD CONSTRAINT FK_OrganizationPersonRole_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE K12CharterSchoolManagementOrganization ADD CONSTRAINT FK_K12CharterSchoolManagementOrganization_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE ELOrganizationMonitoring ADD CONSTRAINT FK_ELOrganizationMonitoring_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)
ALTER TABLE CompetencyDefinition ADD CONSTRAINT FK_CompetencyDefinition_DataCollection FOREIGN KEY (DataCollectionId) REFERENCES DataCollection(DataCollectionId)