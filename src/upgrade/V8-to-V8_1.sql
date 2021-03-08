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
    Version 8.1
    Integration Data Schema (IDS)
    
	Model database update script
	
    This script updates a IDS version 8 model database to version 8.1.  
    

    WARNING!!!!
    This script is intended for use on a model database and should not 
    be used on a database that contains data.
    
    This script contains potentially breaking changes.  Queries are included to preserve data.  However, programming logic should be adjusted were necessary for these changes.

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
    V8_1 update fixes the following bugs found in the V8 upgrade and ddl scripts

	- DECIMAL AND NUMERIC precision and scale missing during DROP and CREATE for columns in the following tables.  
		As a result, these columns defaulted to (18,0), effectively removing any decimals in data stored in them
			AeStaff
			ApipInteraction
			BuildingSpaceUtilization
			CompetencyDefAssociation
			CompetencyDefinition
			Course
			CourseSection
			CredentialDefinition
			CteCourse
			CteStudentAcademicRecord
			ELClassSection
			ELEnrollment
			ELOrganizationAvailability
			ELStaffEducation
			ELStaffEmployment
			FacilityUtilization
			K12Course
			K12LeaFederalFunds
			K12LeaFederalReporting
			K12SeaFederalFunds
			K12StaffEmployment
			K12StudentAcademicRecord
			K12StudentActivity
			K12StudentCourseSection
			K12StudentGraduationPlan
			Program
			PsPriceOfAttendance
			PsStaffEmployment
			PsStudentApplication
			PsStudentFinancialAid
			PsStudentSection
			StaffExperience
			WorkforceEmploymentQuarterlyData
			RefCompetencyDefAssociationType
			RefCompetencyDefNodeAccessibilityProfile
			RefCompetencyDefTestabilityType
			RefCredentialDefAssessMethodType
			RefCredentialDefIntendedPurposeType
			RefCredentialDefStatusType
			RefCredentialDefVerificationType
	
	NOTE: Non-breaking changes for the following bugs found in the V8 upgrade and ddl scripts upgrade.
	- Restoring UPDATE and DELETE CASCADE to FKs missing after DROP and CREATE in V8
	- Recreating INDEX missing after DROP and CREATE in V8
	- Adding FK to Organization table missing from new Ref tables in V8

*/

PRINT N'--Drop FK and Unique statements'

PRINT N'Dropping [dbo].[FK_CourseSection_Organization]...';


GO
ALTER TABLE [dbo].[CourseSection] DROP CONSTRAINT [FK_CourseSection_Organization];


GO

PRINT N'Dropping [dbo].[FK_EcProgramEnrollment_OrganizationPerson]...';


GO
ALTER TABLE [dbo].[ELEnrollment] DROP CONSTRAINT [FK_EcProgramEnrollment_OrganizationPerson];


GO

PRINT N'Dropping [dbo].[FK_K12Lea_Organization]...';


GO
ALTER TABLE [dbo].[K12Lea] DROP CONSTRAINT [FK_K12Lea_Organization];


GO

PRINT N'Dropping [dbo].[FK_K12Sea_Organization]...';


GO
ALTER TABLE [dbo].[K12Sea] DROP CONSTRAINT [FK_K12Sea_Organization];


GO

PRINT N'Dropping [dbo].[FK_K12StudentAcademicRecord_OrganizationPerson]...';


GO
ALTER TABLE [dbo].[K12StudentAcademicRecord] DROP CONSTRAINT [FK_K12StudentAcademicRecord_OrganizationPerson];


GO

PRINT N'Dropping [dbo].[FK_K12StudentCourseSection_OrganizationPerson]...';


GO
ALTER TABLE [dbo].[K12StudentCourseSection] DROP CONSTRAINT [FK_K12StudentCourseSection_OrganizationPerson];


GO

PRINT N'Dropping [dbo].[FK_LocationAddress_Location]...';


GO
ALTER TABLE [dbo].[LocationAddress] DROP CONSTRAINT [FK_LocationAddress_Location];


GO

PRINT N'Dropping [dbo].[FK_PsInstitution_Organization]...';


GO
ALTER TABLE [dbo].[PsInstitution] DROP CONSTRAINT [FK_PsInstitution_Organization];


GO

PRINT N'--Drop and Create or Alter existing table statements'

PRINT N'Altering [dbo].[PsStaffEmployment]...';


GO
ALTER TABLE [dbo].[PsStaffEmployment]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for AnnualBaseContractualSalary, data type has changed from DECIMAL(18, 0) to DECIMAL(9, 2)
	[AnnualBaseContractualSalary]                       DECIMAL(9, 2)             NULL;

GO


PRINT N'Altering [dbo].[AeStaff]...';


GO
ALTER TABLE [dbo].[AeStaff]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for YearsOfPriorAeTeachingExperience, data type has changed from DECIMAL(18, 0) to DECIMAL(4, 2)
	[YearsOfPriorAeTeachingExperience]                       DECIMAL(4, 2)             NULL;

GO


PRINT N'Altering [dbo].[ApipInteraction]...';


GO
ALTER TABLE [dbo].[ApipInteraction]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for APIPInteractionSequenceNumber, data type has changed from DECIMAL(18, 0) to DECIMAL(9, 2)
	[APIPInteractionSequenceNumber]                       DECIMAL(9, 2)             NULL;

GO


PRINT N'Altering [dbo].[BuildingSpaceUtilization]...';


GO
ALTER TABLE [dbo].[BuildingSpaceUtilization]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for BuildingSpaceUtilizationArea, data type has changed from DECIMAL(18, 0) to DECIMAL(9, 2)
	[BuildingSpaceUtilizationArea]                       DECIMAL(9, 2)             NULL;

GO


PRINT N'Altering [dbo].[CompetencyDefAssociation]...';


GO
ALTER TABLE [dbo].[CompetencyDefAssociation]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for Weight, data type has changed from DECIMAL(18, 0) to DECIMAL(9, 3)
	[Weight]                       DECIMAL(9, 3)             NULL;

GO


PRINT N'Altering [dbo].[CompetencyDefinition]...';


GO
ALTER TABLE [dbo].[CompetencyDefinition]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for TextComplexityMinimumValue, data type has changed from DECIMAL(18, 0) to DECIMAL(18, 4)
	[TextComplexityMinimumValue]                       DECIMAL(18, 4)             NULL;

GO

ALTER TABLE [dbo].[CompetencyDefinition]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for TextComplexityMaximumValue, data type has changed from DECIMAL(18, 0) to DECIMAL(18, 4)
	[TextComplexityMaximumValue]                       DECIMAL(18, 4)             NULL;

GO


PRINT N'Altering [dbo].[Course]...';


GO
ALTER TABLE [dbo].[Course]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for CreditValue, data type has changed from DECIMAL(18, 0) to DECIMAL(9, 2)
	[CreditValue]                       DECIMAL(9, 2)             NULL;

GO


PRINT N'Altering [dbo].[CourseSection]...';


GO
ALTER TABLE [dbo].[CourseSection]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for AvailableCarnegieUnitCredit, data type has changed from DECIMAL(18, 0) to DECIMAL(9, 2)
	[AvailableCarnegieUnitCredit]                       DECIMAL(9, 2)             NULL;

GO

ALTER TABLE [dbo].[CourseSection]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for TimeRequiredForCompletion, data type has changed from DECIMAL(18, 0) to DECIMAL(9, 0)
	[TimeRequiredForCompletion]                       DECIMAL(9, 0)             NULL;

GO


PRINT N'Altering [dbo].[CredentialDefinition]...';


GO
ALTER TABLE [dbo].[CredentialDefinition]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for Version, data type has changed from DECIMAL(18, 0) to DECIMAL(9, 2)
	[Version]                       DECIMAL(9, 2)             NULL;

GO


PRINT N'Altering [dbo].[CteCourse]...';


GO
ALTER TABLE [dbo].[CteCourse]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for AvailableCarnegieUnitCredit, data type has changed from DECIMAL(18, 0) to DECIMAL(9, 2)
	[AvailableCarnegieUnitCredit]                       DECIMAL(9, 2)             NULL;

GO


PRINT N'Altering [dbo].[CteStudentAcademicRecord]...';


GO
ALTER TABLE [dbo].[CteStudentAcademicRecord]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for CreditsAttemptedCumulative, data type has changed from DECIMAL(18, 0) to DECIMAL(9, 2)
	[CreditsAttemptedCumulative]                       DECIMAL(9, 2)             NULL;

GO

ALTER TABLE [dbo].[CteStudentAcademicRecord]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for CreditsEarnedCumulative, data type has changed from DECIMAL(18, 0) to DECIMAL(9, 2)
	[CreditsEarnedCumulative]                       DECIMAL(9, 2)             NULL;

GO


PRINT N'Altering [dbo].[ELClassSection]...';


GO
ALTER TABLE [dbo].[ELClassSection]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for HoursAvailablePerDay, data type has changed from DECIMAL(18, 0) to DECIMAL(4, 2)
	[HoursAvailablePerDay]                       DECIMAL(4, 2)             NULL;

GO


PRINT N'Altering [dbo].[ELEnrollment]...';


GO
ALTER TABLE [dbo].[ELEnrollment]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for NumberOfDaysInAttendance, data type has changed from DECIMAL(18, 0) to DECIMAL(8, 2)
	[NumberOfDaysInAttendance]                       DECIMAL(8, 2)             NULL;

GO


PRINT N'Altering [dbo].[ELOrganizationAvailability]...';


GO
ALTER TABLE [dbo].[ELOrganizationAvailability]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for HoursAvailablePerDay, data type has changed from DECIMAL(18, 0) to DECIMAL(5, 2)
	[HoursAvailablePerDay]                       DECIMAL(5, 2)             NULL;

GO


PRINT N'Altering [dbo].[ELStaffEducation]...';


GO
ALTER TABLE [dbo].[ELStaffEducation]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for TotalCollegeCreditsEarned, data type has changed from DECIMAL(18, 0) to DECIMAL(10, 2)
	[TotalCollegeCreditsEarned]                       DECIMAL(10, 2)             NULL;

GO

ALTER TABLE [dbo].[ELStaffEducation]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for TotalApprovedECCreditsEarned, data type has changed from DECIMAL(18, 0) to DECIMAL(10, 2)
	[TotalApprovedECCreditsEarned]                       DECIMAL(10, 2)             NULL;

GO

ALTER TABLE [dbo].[ELStaffEducation]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for SchoolAgeEducationPSCredits, data type has changed from DECIMAL(18, 0) to DECIMAL(10, 2)
	[SchoolAgeEducationPSCredits]                       DECIMAL(10, 2)             NULL;

GO


PRINT N'Altering [dbo].[ELStaffEmployment]...';


GO
ALTER TABLE [dbo].[ELStaffEmployment]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for HoursWorkedPerWeek, data type has changed from DECIMAL(18, 0) to DECIMAL(5, 2)
	[HoursWorkedPerWeek]                       DECIMAL(5, 2)             NULL;

GO

ALTER TABLE [dbo].[ELStaffEmployment]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for HourlyWage, data type has changed from DECIMAL(18, 0) to DECIMAL(5, 2)
	[HourlyWage]                       DECIMAL(5, 2)             NULL;

GO


PRINT N'Altering [dbo].[FacilityUtilization]...';


GO
ALTER TABLE [dbo].[FacilityUtilization]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for BuildingNetAreaOfInstructionalSpace, data type has changed from DECIMAL(18, 0) to DECIMAL(9, 2)
	[BuildingNetAreaOfInstructionalSpace]                       DECIMAL(9, 2)             NULL;

GO


PRINT N'Altering [dbo].[K12Course]...';


GO
ALTER TABLE [dbo].[K12Course]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for AvailableCarnegieUnitCredit, data type has changed from DECIMAL(18, 0) to DECIMAL(9, 2)
	[AvailableCarnegieUnitCredit]                       DECIMAL(9, 2)             NULL;

GO


PRINT N'Altering [dbo].[K12LeaFederalFunds]...';


GO
ALTER TABLE [dbo].[K12LeaFederalFunds]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for InnovativeProgramsFundsReceived, data type has changed from NUMERIC(18, 0) to NUMERIC(12, 2)
	[InnovativeProgramsFundsReceived]                       NUMERIC(12, 2)             NULL;

GO

ALTER TABLE [dbo].[K12LeaFederalFunds]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for InnovativeDollarsSpent, data type has changed from NUMERIC(18, 0) to NUMERIC(12, 2)
	[InnovativeDollarsSpent]                       NUMERIC(12, 2)             NULL;

GO

ALTER TABLE [dbo].[K12LeaFederalFunds]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for InnovativeDollarsSpentOnStrategicPriorities, data type has changed from NUMERIC(18, 0) to NUMERIC(12, 2)
	[InnovativeDollarsSpentOnStrategicPriorities]                       NUMERIC(12, 2)             NULL;

GO

ALTER TABLE [dbo].[K12LeaFederalFunds]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for PublicSchoolChoiceFundsSpent, data type has changed from NUMERIC(18, 0) to NUMERIC(12, 2)
	[PublicSchoolChoiceFundsSpent]                       NUMERIC(12, 2)             NULL;

GO

ALTER TABLE [dbo].[K12LeaFederalFunds]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for SesFundsSpent, data type has changed from NUMERIC(18, 0) to NUMERIC(12, 2)
	[SesFundsSpent]                       NUMERIC(12, 2)             NULL;

GO

ALTER TABLE [dbo].[K12LeaFederalFunds]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for SesSchoolChoice20PercentObligation, data type has changed from NUMERIC(18, 0) to NUMERIC(12, 2)
	[SesSchoolChoice20PercentObligation]                       NUMERIC(12, 2)             NULL;

GO

ALTER TABLE [dbo].[K12LeaFederalFunds]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for ParentalInvolvementReservationFunds, data type has changed from NUMERIC(18, 0) to NUMERIC(12, 2)
	[ParentalInvolvementReservationFunds]                       NUMERIC(12, 2)             NULL;

GO


PRINT N'Altering [dbo].[K12LeaFederalReporting]...';


GO
ALTER TABLE [dbo].[K12LeaFederalReporting]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for StateAssessmentAdminFunding, data type has changed from NUMERIC(18, 0) to NUMERIC(5, 2)
	[StateAssessmentAdminFunding]                       NUMERIC(5, 2)             NULL;

GO

ALTER TABLE [dbo].[K12LeaFederalReporting]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for StateAssessStandardsFunding, data type has changed from NUMERIC(18, 0) to NUMERIC(5, 2)
	[StateAssessStandardsFunding]                       NUMERIC(5, 2)             NULL;

GO


PRINT N'Altering [dbo].[K12SeaFederalFunds]...';


GO
ALTER TABLE [dbo].[K12SeaFederalFunds]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for NumberOfDaysForTitleIIISubgrants, data type has changed from NUMERIC(18, 0) to NUMERIC(6, 2)
	[NumberOfDaysForTitleIIISubgrants]                       NUMERIC(6, 2)             NULL;

GO


PRINT N'Altering [dbo].[K12StaffEmployment]...';


GO
ALTER TABLE [dbo].[K12StaffEmployment]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for ContractDaysOfServicePerYear, data type has changed from DECIMAL(18, 0) to DECIMAL(5, 2)
	[ContractDaysOfServicePerYear]                       DECIMAL(5, 2)             NULL;

GO

ALTER TABLE [dbo].[K12StaffEmployment]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for StaffCompensationBaseSalary, data type has changed from DECIMAL(18, 0) to DECIMAL(9, 2)
	[StaffCompensationBaseSalary]                       DECIMAL(9, 2)             NULL;

GO

ALTER TABLE [dbo].[K12StaffEmployment]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for StaffCompensationRetirementBenefits, data type has changed from DECIMAL(18, 0) to DECIMAL(9, 2)
	[StaffCompensationRetirementBenefits]                       DECIMAL(9, 2)             NULL;

GO

ALTER TABLE [dbo].[K12StaffEmployment]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for StaffCompensationHealthBenefits, data type has changed from DECIMAL(18, 0) to DECIMAL(9, 2)
	[StaffCompensationHealthBenefits]                       DECIMAL(9, 2)             NULL;

GO

ALTER TABLE [dbo].[K12StaffEmployment]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for StaffCompensationOtherBenefits, data type has changed from DECIMAL(18, 0) to DECIMAL(9, 2)
	[StaffCompensationOtherBenefits]                       DECIMAL(9, 2)             NULL;

GO

ALTER TABLE [dbo].[K12StaffEmployment]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for StaffCompensationTotalBenefits, data type has changed from DECIMAL(18, 0) to DECIMAL(9, 2)
	[StaffCompensationTotalBenefits]                       DECIMAL(9, 2)             NULL;

GO

ALTER TABLE [dbo].[K12StaffEmployment]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for StaffCompensationTotalSalary, data type has changed from DECIMAL(18, 0) to DECIMAL(9, 2)
	[StaffCompensationTotalSalary]                       DECIMAL(9, 2)             NULL;

GO


PRINT N'Altering [dbo].[K12StudentAcademicRecord]...';


GO
ALTER TABLE [dbo].[K12StudentAcademicRecord]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for CreditsAttemptedCumulative, data type has changed from DECIMAL(18, 0) to DECIMAL(9, 2)
	[CreditsAttemptedCumulative]                       DECIMAL(9, 2)             NULL;

GO

ALTER TABLE [dbo].[K12StudentAcademicRecord]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for CreditsEarnedCumulative, data type has changed from DECIMAL(18, 0) to DECIMAL(9, 2)
	[CreditsEarnedCumulative]                       DECIMAL(9, 2)             NULL;

GO

ALTER TABLE [dbo].[K12StudentAcademicRecord]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for GradePointsEarnedCumulative, data type has changed from DECIMAL(18, 0) to DECIMAL(9, 2)
	[GradePointsEarnedCumulative]                       DECIMAL(9, 2)             NULL;

GO

ALTER TABLE [dbo].[K12StudentAcademicRecord]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for GradePointAverageCumulative, data type has changed from DECIMAL(18, 0) to DECIMAL(9, 4)
	[GradePointAverageCumulative]                       DECIMAL(9, 4)             NULL;

GO


PRINT N'Altering [dbo].[K12StudentActivity]...';


GO
ALTER TABLE [dbo].[K12StudentActivity]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for ActivityTimeInvolved, data type has changed from DECIMAL(18, 0) to DECIMAL(9, 2)
	[ActivityTimeInvolved]                       DECIMAL(9, 2)             NULL;

GO


PRINT N'Altering [dbo].[K12StudentCourseSection]...';


GO
ALTER TABLE [dbo].[K12StudentCourseSection]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for NumberOfCreditsAttempted, data type has changed from DECIMAL(18, 0) to DECIMAL(9, 2)
	[NumberOfCreditsAttempted]                       DECIMAL(9, 2)             NULL;

GO

ALTER TABLE [dbo].[K12StudentCourseSection]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for NumberOfCreditsEarned, data type has changed from DECIMAL(18, 0) to DECIMAL(9, 2)
	[NumberOfCreditsEarned]                       DECIMAL(9, 2)             NULL;

GO


PRINT N'Altering [dbo].[K12StudentGraduationPlan]...';


GO
ALTER TABLE [dbo].[K12StudentGraduationPlan]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for CreditsRequired, data type has changed from DECIMAL(18, 0) to DECIMAL(9, 2)
	[CreditsRequired]                       DECIMAL(9, 2)             NULL;

GO


PRINT N'Altering [dbo].[Program]...';


GO
ALTER TABLE [dbo].[Program]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for CreditsRequired, data type has changed from DECIMAL(18, 0) to DECIMAL(9, 2)
	[CreditsRequired]                       DECIMAL(9, 2)             NULL;

GO


PRINT N'Altering [dbo].[PsPriceOfAttendance]...';


GO
ALTER TABLE [dbo].[PsPriceOfAttendance]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for TuitionPublished, data type has changed from DECIMAL(18, 0) to DECIMAL(9, 2)
	[TuitionPublished]                       DECIMAL(9, 2)             NULL;

GO

ALTER TABLE [dbo].[PsPriceOfAttendance]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for BoardCharges, data type has changed from DECIMAL(18, 0) to DECIMAL(9, 2)
	[BoardCharges]                       DECIMAL(9, 2)             NULL;

GO

ALTER TABLE [dbo].[PsPriceOfAttendance]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for RoomCharges, data type has changed from DECIMAL(18, 0) to DECIMAL(9, 2)
	[RoomCharges]                       DECIMAL(9, 2)             NULL;

GO

ALTER TABLE [dbo].[PsPriceOfAttendance]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for BooksAndSuppliesCosts, data type has changed from DECIMAL(18, 0) to DECIMAL(9, 2)
	[BooksAndSuppliesCosts]                       DECIMAL(9, 2)             NULL;

GO

ALTER TABLE [dbo].[PsPriceOfAttendance]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for RequiredStudentFees, data type has changed from DECIMAL(18, 0) to DECIMAL(9, 2)
	[RequiredStudentFees]                       DECIMAL(9, 2)             NULL;

GO

ALTER TABLE [dbo].[PsPriceOfAttendance]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for ComprehensiveFee, data type has changed from DECIMAL(18, 0) to DECIMAL(9, 2)
	[ComprehensiveFee]                       DECIMAL(9, 2)             NULL;

GO

ALTER TABLE [dbo].[PsPriceOfAttendance]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for OtherStudentExpenses, data type has changed from DECIMAL(18, 0) to DECIMAL(9, 2)
	[OtherStudentExpenses]                       DECIMAL(9, 2)             NULL;

GO

ALTER TABLE [dbo].[PsPriceOfAttendance]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for PriceOfAttendance, data type has changed from DECIMAL(18, 0) to DECIMAL(9, 2)
	[PriceOfAttendance]                       DECIMAL(9, 2)             NULL;

GO


PRINT N'Altering [dbo].[PsStudentApplication]...';


GO
ALTER TABLE [dbo].[PsStudentApplication]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for GradePointAverageCumulative, data type has changed from DECIMAL(18, 0) to DECIMAL(9, 4)
	[GradePointAverageCumulative]                       DECIMAL(9, 4)             NULL;

GO

ALTER TABLE [dbo].[PsStudentApplication]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for HighSchoolPercentile, data type has changed from DECIMAL(18, 0) to DECIMAL(5, 4)
	[HighSchoolPercentile]                       DECIMAL(5, 4)             NULL;

GO


PRINT N'Altering [dbo].[PsStudentFinancialAid]...';


GO
ALTER TABLE [dbo].[PsStudentFinancialAid]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for FinancialNeed, data type has changed from DECIMAL(18, 0) to DECIMAL(9, 2)
	[FinancialNeed]                       DECIMAL(9, 2)             NULL;

GO

ALTER TABLE [dbo].[PsStudentFinancialAid]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for FinancialAidIncomeLevel, data type has changed from DECIMAL(18, 0) to DECIMAL(9, 2)
	[FinancialAidIncomeLevel]                       DECIMAL(9, 2)             NULL;

GO


PRINT N'Altering [dbo].[PsStudentSection]...';


GO
ALTER TABLE [dbo].[PsStudentSection]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for NumberOfCreditsEarned, data type has changed from DECIMAL(18, 0) to DECIMAL(9, 2)
	[NumberOfCreditsEarned]                       DECIMAL(9, 2)             NULL;

GO

ALTER TABLE [dbo].[PsStudentSection]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for QualityPointsEarned, data type has changed from DECIMAL(18, 0) to DECIMAL(9, 2)
	[QualityPointsEarned]                       DECIMAL(9, 2)             NULL;

GO


PRINT N'Altering [dbo].[RefCompetencyDefAssociationType]...';


GO
ALTER TABLE [dbo].[RefCompetencyDefAssociationType]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for SortOrder, data type has changed from DECIMAL(18, 0) to DECIMAL(6, 2)
	[SortOrder]                       DECIMAL(6, 2)             NULL;

GO


PRINT N'Altering [dbo].[RefCompetencyDefNodeAccessibilityProfile]...';


GO
ALTER TABLE [dbo].[RefCompetencyDefNodeAccessibilityProfile]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for SortOrder, data type has changed from DECIMAL(18, 0) to DECIMAL(6, 2)
	[SortOrder]                       DECIMAL(6, 2)             NULL;

GO


PRINT N'Altering [dbo].[RefCompetencyDefTestabilityType]...';


GO
ALTER TABLE [dbo].[RefCompetencyDefTestabilityType]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for SortOrder, data type has changed from DECIMAL(18, 0) to DECIMAL(6, 2)
	[SortOrder]                       DECIMAL(6, 2)             NULL;

GO


PRINT N'Altering [dbo].[RefCredentialDefAssessMethodType]...';


GO
ALTER TABLE [dbo].[RefCredentialDefAssessMethodType]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for SortOrder, data type has changed from DECIMAL(18, 0) to DECIMAL(6, 2)
	[SortOrder]                       DECIMAL(6, 2)             NULL;

GO


PRINT N'Altering [dbo].[RefCredentialDefIntendedPurposeType]...';


GO
ALTER TABLE [dbo].[RefCredentialDefIntendedPurposeType]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for SortOrder, data type has changed from DECIMAL(18, 0) to DECIMAL(6, 2)
	[SortOrder]                       DECIMAL(6, 2)             NULL;

GO


PRINT N'Altering [dbo].[RefCredentialDefStatusType]...';


GO
ALTER TABLE [dbo].[RefCredentialDefStatusType]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for SortOrder, data type has changed from DECIMAL(18, 0) to DECIMAL(6, 2)
	[SortOrder]                       DECIMAL(6, 2)             NULL;

GO


PRINT N'Altering [dbo].[RefCredentialDefVerificationType]...';


GO
ALTER TABLE [dbo].[RefCredentialDefVerificationType]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for SortOrder, data type has changed from DECIMAL(18, 0) to DECIMAL(6, 2)
	[SortOrder]                       DECIMAL(6, 2)             NULL;

GO


PRINT N'Altering [dbo].[StaffExperience]...';


GO
ALTER TABLE [dbo].[StaffExperience]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for YearsOfPriorTeachingExperience, data type has changed from DECIMAL(18, 0) to DECIMAL(9, 2)
	[YearsOfPriorTeachingExperience]                       DECIMAL(9, 2)             NULL;

GO

ALTER TABLE [dbo].[StaffExperience]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for YearsOfPriorAETeachingExperience, data type has changed from DECIMAL(18, 0) to DECIMAL(9, 2)
	[YearsOfPriorAETeachingExperience]                       DECIMAL(9, 2)             NULL;

GO


PRINT N'Altering [dbo].[WorkforceEmploymentQuarterlyData]...';


GO
ALTER TABLE [dbo].[WorkforceEmploymentQuarterlyData]
    ALTER COLUMN 
		--WARNING!!!! - check data compatibility for EmployedInMultipleJobsCount, data type has changed from DECIMAL(18, 0) to DECIMAL(2, 0)
	[EmployedInMultipleJobsCount]                       DECIMAL(2, 0)             NULL;

GO


PRINT N'Creating [dbo].[AssessmentRegistration].[IX_AssReg_PersonId]...';


GO
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AssessmentRegistration]') AND name = N'IX_AssReg_PersonId')
DROP INDEX [IX_AssReg_PersonId] ON [dbo].[AssessmentRegistration]
GO

CREATE  NONCLUSTERED INDEX [IX_AssReg_PersonId]
	ON [dbo].[AssessmentRegistration]([PersonId] ASC)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY];


GO


PRINT N'Creating [dbo].[FK_CourseSection_Organization]...';


GO
ALTER TABLE [dbo].[CourseSection] WITH NOCHECK
	ADD CONSTRAINT [FK_CourseSection_Organization] FOREIGN KEY ([OrganizationId]) REFERENCES [dbo].[Organization] ([OrganizationId]) 
	ON UPDATE CASCADE
	ON DELETE CASCADE;


GO

PRINT N'Creating [dbo].[FK_EcProgramEnrollment_OrganizationPerson]...';


GO
ALTER TABLE [dbo].[ELEnrollment] WITH NOCHECK
	ADD CONSTRAINT [FK_EcProgramEnrollment_OrganizationPerson] FOREIGN KEY ([OrganizationPersonRoleId]) REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]) 
	ON UPDATE CASCADE
	ON DELETE CASCADE;


GO

PRINT N'Creating [dbo].[FK_K12Lea_Organization]...';


GO
ALTER TABLE [dbo].[K12Lea] WITH NOCHECK
	ADD CONSTRAINT [FK_K12Lea_Organization] FOREIGN KEY ([OrganizationId]) REFERENCES [dbo].[Organization] ([OrganizationId]) 
	ON UPDATE CASCADE
	ON DELETE CASCADE;


GO

PRINT N'Creating [dbo].[FK_K12LeaFederalFunds_OrganizationCalendarSession]...';


GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_K12LEAFederalFunds_OrganizationCalendarSession]') AND parent_object_id = OBJECT_ID(N'[dbo].[K12LeaFederalFunds]'))
ALTER TABLE [dbo].[K12LeaFederalFunds] DROP CONSTRAINT [FK_K12LEAFederalFunds_OrganizationCalendarSession]
GO

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_K12LeaFederalFunds_OrganizationCalendarSession]') AND parent_object_id = OBJECT_ID(N'[dbo].[K12LeaFederalFunds]'))
ALTER TABLE [dbo].[K12LeaFederalFunds] DROP CONSTRAINT [FK_K12LeaFederalFunds_OrganizationCalendarSession]
GO

ALTER TABLE [dbo].[K12LeaFederalFunds] WITH NOCHECK
	ADD CONSTRAINT [FK_K12LeaFederalFunds_OrganizationCalendarSession] FOREIGN KEY ([OrganizationCalendarSessionId]) REFERENCES [dbo].[OrganizationCalendarSession] ([OrganizationCalendarSessionId]) ;


GO

PRINT N'Creating [dbo].[FK_K12LeaFederalFunds_RefRlisProgramUse]...';


GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_K12LEAFederalFunds_RefRLISProgramUse]') AND parent_object_id = OBJECT_ID(N'[dbo].[K12LeaFederalFunds]'))
ALTER TABLE [dbo].[K12LeaFederalFunds] DROP CONSTRAINT [FK_K12LEAFederalFunds_RefRLISProgramUse]
GO

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_K12LeaFederalFunds_RefRlisProgramUse]') AND parent_object_id = OBJECT_ID(N'[dbo].[K12LeaFederalFunds]'))
ALTER TABLE [dbo].[K12LeaFederalFunds] DROP CONSTRAINT [FK_K12LeaFederalFunds_RefRlisProgramUse]
GO

ALTER TABLE [dbo].[K12LeaFederalFunds] WITH NOCHECK
	ADD CONSTRAINT [FK_K12LeaFederalFunds_RefRlisProgramUse] FOREIGN KEY ([RefRlisProgramUseId]) REFERENCES [dbo].[RefRlisProgramUse] ([RefRlisProgramUseId]) ;


GO

PRINT N'Creating [dbo].[FK_K12Sea_Organization]...';


GO
ALTER TABLE [dbo].[K12Sea] WITH NOCHECK
	ADD CONSTRAINT [FK_K12Sea_Organization] FOREIGN KEY ([OrganizationId]) REFERENCES [dbo].[Organization] ([OrganizationId]) 
	ON UPDATE CASCADE
	ON DELETE CASCADE;


GO

PRINT N'Creating [dbo].[FK_K12StudentAcademicRecord_OrganizationPerson]...';


GO
ALTER TABLE [dbo].[K12StudentAcademicRecord] WITH NOCHECK
	ADD CONSTRAINT [FK_K12StudentAcademicRecord_OrganizationPerson] FOREIGN KEY ([OrganizationPersonRoleId]) REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]) 
	ON UPDATE CASCADE
	ON DELETE CASCADE;


GO

PRINT N'Creating [dbo].[FK_K12StudentCourseSection_OrganizationPerson]...';


GO
ALTER TABLE [dbo].[K12StudentCourseSection] WITH NOCHECK
	ADD CONSTRAINT [FK_K12StudentCourseSection_OrganizationPerson] FOREIGN KEY ([OrganizationPersonRoleId]) REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]) 
	ON UPDATE CASCADE
	ON DELETE CASCADE;


GO

PRINT N'Creating [dbo].[FK_LocationAddress_Location]...';


GO
ALTER TABLE [dbo].[LocationAddress] WITH NOCHECK
	ADD CONSTRAINT [FK_LocationAddress_Location] FOREIGN KEY ([LocationId]) REFERENCES [dbo].[Location] ([LocationId]) 
	ON UPDATE CASCADE
	ON DELETE CASCADE;


GO

PRINT N'Creating [dbo].[FK_PsInstitution_Organization]...';


GO
ALTER TABLE [dbo].[PsInstitution] WITH NOCHECK
	ADD CONSTRAINT [FK_PsInstitution_Organization] FOREIGN KEY ([OrganizationId]) REFERENCES [dbo].[Organization] ([OrganizationId]) 
	ON UPDATE CASCADE
	ON DELETE CASCADE;


GO

PRINT N'Creating [dbo].[FK_RefCredentialDefAgentRoleType_Organization]...';


GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RefCredentialDefAgentRoleType_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[RefCredentialDefAgentRoleType]'))
ALTER TABLE [dbo].[RefCredentialDefAgentRoleType] DROP CONSTRAINT [FK_RefCredentialDefAgentRoleType_Organization]
GO

ALTER TABLE [dbo].[RefCredentialDefAgentRoleType] WITH NOCHECK
	ADD CONSTRAINT [FK_RefCredentialDefAgentRoleType_Organization] FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId]) ;


GO

PRINT N'Creating [dbo].[FK_RefCTDLAudienceLevelType_Organization]...';


GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RefCTDLAudienceLevelType_Organization]') AND parent_object_id = OBJECT_ID(N'[dbo].[RefCTDLAudienceLevelType]'))
ALTER TABLE [dbo].[RefCTDLAudienceLevelType] DROP CONSTRAINT [FK_RefCTDLAudienceLevelType_Organization]
GO

ALTER TABLE [dbo].[RefCTDLAudienceLevelType] WITH NOCHECK
	ADD CONSTRAINT [FK_RefCTDLAudienceLevelType_Organization] FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId]) ;


GO

PRINT N'Check existing data against newly created constraints';

GO
ALTER TABLE [dbo].[CourseSection] WITH CHECK CHECK CONSTRAINT [FK_CourseSection_Organization];


ALTER TABLE [dbo].[ELEnrollment] WITH CHECK CHECK CONSTRAINT [FK_EcProgramEnrollment_OrganizationPerson];


ALTER TABLE [dbo].[K12Lea] WITH CHECK CHECK CONSTRAINT [FK_K12Lea_Organization];


ALTER TABLE [dbo].[K12LeaFederalFunds] WITH CHECK CHECK CONSTRAINT [FK_K12LeaFederalFunds_OrganizationCalendarSession];


ALTER TABLE [dbo].[K12LeaFederalFunds] WITH CHECK CHECK CONSTRAINT [FK_K12LeaFederalFunds_RefRlisProgramUse];


ALTER TABLE [dbo].[K12Sea] WITH CHECK CHECK CONSTRAINT [FK_K12Sea_Organization];


ALTER TABLE [dbo].[K12StudentAcademicRecord] WITH CHECK CHECK CONSTRAINT [FK_K12StudentAcademicRecord_OrganizationPerson];


ALTER TABLE [dbo].[K12StudentCourseSection] WITH CHECK CHECK CONSTRAINT [FK_K12StudentCourseSection_OrganizationPerson];


ALTER TABLE [dbo].[LocationAddress] WITH CHECK CHECK CONSTRAINT [FK_LocationAddress_Location];


ALTER TABLE [dbo].[PsInstitution] WITH CHECK CHECK CONSTRAINT [FK_PsInstitution_Organization];


ALTER TABLE [dbo].[RefCredentialDefAgentRoleType] WITH CHECK CHECK CONSTRAINT [FK_RefCredentialDefAgentRoleType_Organization];


ALTER TABLE [dbo].[RefCTDLAudienceLevelType] WITH CHECK CHECK CONSTRAINT [FK_RefCTDLAudienceLevelType_Organization];

GO


PRINT N'Update complete.';


GO

