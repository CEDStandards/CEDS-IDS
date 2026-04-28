/*
================================================================================
  Common Education Data Standards (CEDS)
  Integration Data Store (IDS)
  UPGRADE SCRIPT: Version 13.0.0.0 --> Version 14.0.0.0

  Copyright 2026 Common Education Data Standards
  Licensed under the Apache License, Version 2.0

  Description:
    This script upgrades an existing CEDS-IDS-V13-0-0-0 database to the
    V14.0.0.0 schema while preserving all existing data.

    Changes addressed:
      1. New Ref tables (21 new tables)
      2. New columns added to existing tables
      3. Column rename in AssessmentResult (data-preserving)
      4. Column rename / FK swap in CredentialAwardRelationship
      5. Nullability change in IncidentPerson.PersonId
      6. New FK constraint for CredentialAwardRelationship

    IMPORTANT: Run this script against a BACKUP of your production database
    before applying to production. Review all steps before executing.

    Target database: CEDS-IDS-V13-0-0-0
    Resulting database version: CEDS-IDS V14.0.0.0

  Questions: ceds@ed.gov
  Repository: https://github.com/CEDStandards/CEDS-IDS
================================================================================
*/

USE [CEDS-IDS-V13-0-0-0]
GO

SET NOCOUNT ON;
SET XACT_ABORT ON;
GO

PRINT '===============================================================';
PRINT 'CEDS IDS Upgrade: V13.0.0.0 --> V14.0.0.0';
PRINT 'Started: ' + CONVERT(VARCHAR, GETDATE(), 120);
PRINT '===============================================================';
GO

/* ============================================================
   SECTION 1 – NEW REF TABLES
   21 new reference tables added in V14.
   These are empty scaffolds; populate with CEDS option set
   data using the standard Ref table seed scripts from the OSC.
   ============================================================ */

PRINT '';
PRINT '-- SECTION 1: Creating new Ref tables --';
GO

-- ------------------------------------------------------------
IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'RefCRDCJusticeFacilityType' AND schema_id = SCHEMA_ID('dbo'))
BEGIN
    PRINT 'Creating Table [dbo].[RefCRDCJusticeFacilityType]...';
    CREATE TABLE [dbo].[RefCRDCJusticeFacilityType] (
        [RefCRDCJusticeFacilityTypeId] INT             IDENTITY (1, 1) NOT NULL,
        [Description]                  NVARCHAR (150)  NOT NULL,
        [Code]                         NVARCHAR (50)   NULL,
        [Definition]                   NVARCHAR (4000) NULL,
        [RefJurisdictionId]            INT             NULL,
        [SortOrder]                    DECIMAL (5, 2)  NULL,
        [RecordStartDateTime]          DATETIME        NULL,
        [RecordEndDateTime]            DATETIME        NULL,
        CONSTRAINT [PK_RefCRDCJusticeFacilityType] PRIMARY KEY CLUSTERED ([RefCRDCJusticeFacilityTypeId] ASC)
    );
END
ELSE
    PRINT 'Table [dbo].[RefCRDCJusticeFacilityType] already exists, skipping.';
GO

-- ------------------------------------------------------------
IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'RefCanadianProvinceAbbreviation' AND schema_id = SCHEMA_ID('dbo'))
BEGIN
    PRINT 'Creating Table [dbo].[RefCanadianProvinceAbbreviation]...';
    CREATE TABLE [dbo].[RefCanadianProvinceAbbreviation] (
        [RefCanadianProvinceAbbreviationId] INT             IDENTITY (1, 1) NOT NULL,
        [Description]                       NVARCHAR (150)  NOT NULL,
        [Code]                              NVARCHAR (50)   NULL,
        [Definition]                        NVARCHAR (4000) NULL,
        [RefJurisdictionId]                 INT             NULL,
        [SortOrder]                         DECIMAL (5, 2)  NULL,
        [RecordStartDateTime]               DATETIME        NULL,
        [RecordEndDateTime]                 DATETIME        NULL,
        CONSTRAINT [PK_RefCanadianProvinceAbbreviation] PRIMARY KEY CLUSTERED ([RefCanadianProvinceAbbreviationId] ASC)
    );
END
ELSE
    PRINT 'Table [dbo].[RefCanadianProvinceAbbreviation] already exists, skipping.';
GO

-- ------------------------------------------------------------
IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'RefComprehensiveSupportAndImprovementIdentificationType' AND schema_id = SCHEMA_ID('dbo'))
BEGIN
    PRINT 'Creating Table [dbo].[RefComprehensiveSupportAndImprovementIdentificationType]...';
    CREATE TABLE [dbo].[RefComprehensiveSupportAndImprovementIdentificationType] (
        [RefComprehensiveSupportAndImprovementIdentificationTypeId] INT             IDENTITY (1, 1) NOT NULL,
        [Description]                                               NVARCHAR (150)  NOT NULL,
        [Code]                                                      NVARCHAR (50)   NULL,
        [Definition]                                                NVARCHAR (4000) NULL,
        [RefJurisdictionId]                                         INT             NULL,
        [SortOrder]                                                 DECIMAL (5, 2)  NULL,
        [RecordStartDateTime]                                       DATETIME        NULL,
        [RecordEndDateTime]                                         DATETIME        NULL,
        CONSTRAINT [PK_RefComprehensiveSupportAndImprovementIdentificationType] PRIMARY KEY CLUSTERED ([RefComprehensiveSupportAndImprovementIdentificationTypeId] ASC)
    );
END
ELSE
    PRINT 'Table [dbo].[RefComprehensiveSupportAndImprovementIdentificationType] already exists, skipping.';
GO

-- ------------------------------------------------------------
IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'RefCredentialAwardIdentificationSystem' AND schema_id = SCHEMA_ID('dbo'))
BEGIN
    PRINT 'Creating Table [dbo].[RefCredentialAwardIdentificationSystem]...';
    CREATE TABLE [dbo].[RefCredentialAwardIdentificationSystem] (
        [RefCredentialAwardIdentificationSystemId] INT             IDENTITY (1, 1) NOT NULL,
        [Description]                              NVARCHAR (150)  NOT NULL,
        [Code]                                     NVARCHAR (50)   NULL,
        [Definition]                               NVARCHAR (4000) NULL,
        [RefJurisdictionId]                        INT             NULL,
        [SortOrder]                                DECIMAL (5, 2)  NULL,
        [RecordStartDateTime]                      DATETIME        NULL,
        [RecordEndDateTime]                        DATETIME        NULL,
        CONSTRAINT [PK_RefCredentialAwardIdentificationSystem] PRIMARY KEY CLUSTERED ([RefCredentialAwardIdentificationSystemId] ASC)
    );
END
ELSE
    PRINT 'Table [dbo].[RefCredentialAwardIdentificationSystem] already exists, skipping.';
GO

-- ------------------------------------------------------------
-- NOTE: RefCredentialAwardRelationshipType is a RENAME of the V13
-- table RefCredentialAwardRelationship. It is handled in Section 4
-- and should NOT be created here as a new table.
GO

-- ------------------------------------------------------------
IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'RefCredentialAwardStatusType' AND schema_id = SCHEMA_ID('dbo'))
BEGIN
    PRINT 'Creating Table [dbo].[RefCredentialAwardStatusType]...';
    CREATE TABLE [dbo].[RefCredentialAwardStatusType] (
        [RefCredentialAwardStatusTypeId] INT             IDENTITY (1, 1) NOT NULL,
        [Description]                    NVARCHAR (150)  NOT NULL,
        [Code]                           NVARCHAR (50)   NULL,
        [Definition]                     NVARCHAR (4000) NULL,
        [RefJurisdictionId]              INT             NULL,
        [SortOrder]                      DECIMAL (5, 2)  NULL,
        [RecordStartDateTime]            DATETIME        NULL,
        [RecordEndDateTime]              DATETIME        NULL,
        CONSTRAINT [PK_RefCredentialAwardStatusType] PRIMARY KEY CLUSTERED ([RefCredentialAwardStatusTypeId] ASC)
    );
END
ELSE
    PRINT 'Table [dbo].[RefCredentialAwardStatusType] already exists, skipping.';
GO

-- ------------------------------------------------------------
IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'RefEdFactsCohortGraduationStatus' AND schema_id = SCHEMA_ID('dbo'))
BEGIN
    PRINT 'Creating Table [dbo].[RefEdFactsCohortGraduationStatus]...';
    CREATE TABLE [dbo].[RefEdFactsCohortGraduationStatus] (
        [RefEdFactsCohortGraduationStatusId] INT             IDENTITY (1, 1) NOT NULL,
        [Description]                        NVARCHAR (150)  NOT NULL,
        [Code]                               NVARCHAR (50)   NULL,
        [Definition]                         NVARCHAR (4000) NULL,
        [RefJurisdictionId]                  INT             NULL,
        [SortOrder]                          DECIMAL (5, 2)  NULL,
        [RecordStartDateTime]                DATETIME        NULL,
        [RecordEndDateTime]                  DATETIME        NULL,
        CONSTRAINT [PK_RefEdFactsCohortGraduationStatus] PRIMARY KEY CLUSTERED ([RefEdFactsCohortGraduationStatusId] ASC)
    );
END
ELSE
    PRINT 'Table [dbo].[RefEdFactsCohortGraduationStatus] already exists, skipping.';
GO

-- ------------------------------------------------------------
IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'RefEnglishLearnerExitedStatus' AND schema_id = SCHEMA_ID('dbo'))
BEGIN
    PRINT 'Creating Table [dbo].[RefEnglishLearnerExitedStatus]...';
    CREATE TABLE [dbo].[RefEnglishLearnerExitedStatus] (
        [RefEnglishLearnerExitedStatusId] INT             IDENTITY (1, 1) NOT NULL,
        [Description]                     NVARCHAR (150)  NOT NULL,
        [Code]                            NVARCHAR (50)   NULL,
        [Definition]                      NVARCHAR (4000) NULL,
        [RefJurisdictionId]               INT             NULL,
        [SortOrder]                       DECIMAL (5, 2)  NULL,
        [RecordStartDateTime]             DATETIME        NULL,
        [RecordEndDateTime]               DATETIME        NULL,
        CONSTRAINT [PK_RefEnglishLearnerExitedStatus] PRIMARY KEY CLUSTERED ([RefEnglishLearnerExitedStatusId] ASC)
    );
END
ELSE
    PRINT 'Table [dbo].[RefEnglishLearnerExitedStatus] already exists, skipping.';
GO

-- ------------------------------------------------------------
IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'RefEvaluationRequiredIndicator' AND schema_id = SCHEMA_ID('dbo'))
BEGIN
    PRINT 'Creating Table [dbo].[RefEvaluationRequiredIndicator]...';
    CREATE TABLE [dbo].[RefEvaluationRequiredIndicator] (
        [RefEvaluationRequiredIndicatorId] INT             IDENTITY (1, 1) NOT NULL,
        [Description]                      NVARCHAR (150)  NOT NULL,
        [Code]                             NVARCHAR (50)   NULL,
        [Definition]                       NVARCHAR (4000) NULL,
        [RefJurisdictionId]                INT             NULL,
        [SortOrder]                        DECIMAL (5, 2)  NULL,
        [RecordStartDateTime]              DATETIME        NULL,
        [RecordEndDateTime]                DATETIME        NULL,
        CONSTRAINT [PK_RefEvaluationRequiredIndicator] PRIMARY KEY CLUSTERED ([RefEvaluationRequiredIndicatorId] ASC)
    );
END
ELSE
    PRINT 'Table [dbo].[RefEvaluationRequiredIndicator] already exists, skipping.';
GO

-- ------------------------------------------------------------
IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'RefHarassmentOrBullyingReligionType' AND schema_id = SCHEMA_ID('dbo'))
BEGIN
    PRINT 'Creating Table [dbo].[RefHarassmentOrBullyingReligionType]...';
    CREATE TABLE [dbo].[RefHarassmentOrBullyingReligionType] (
        [RefHarassmentOrBullyingReligionTypeId] INT             IDENTITY (1, 1) NOT NULL,
        [Description]                           NVARCHAR (150)  NOT NULL,
        [Code]                                  NVARCHAR (50)   NULL,
        [Definition]                            NVARCHAR (4000) NULL,
        [RefJurisdictionId]                     INT             NULL,
        [SortOrder]                             DECIMAL (5, 2)  NULL,
        [RecordStartDateTime]                   DATETIME        NULL,
        [RecordEndDateTime]                     DATETIME        NULL,
        CONSTRAINT [PK_RefHarassmentOrBullyingReligionType] PRIMARY KEY CLUSTERED ([RefHarassmentOrBullyingReligionTypeId] ASC)
    );
END
ELSE
    PRINT 'Table [dbo].[RefHarassmentOrBullyingReligionType] already exists, skipping.';
GO

-- ------------------------------------------------------------
IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'RefHotspotNeedIndicator' AND schema_id = SCHEMA_ID('dbo'))
BEGIN
    PRINT 'Creating Table [dbo].[RefHotspotNeedIndicator]...';
    CREATE TABLE [dbo].[RefHotspotNeedIndicator] (
        [RefHotspotNeedIndicatorId] INT             IDENTITY (1, 1) NOT NULL,
        [Description]               NVARCHAR (150)  NOT NULL,
        [Code]                      NVARCHAR (50)   NULL,
        [Definition]                NVARCHAR (4000) NULL,
        [RefJurisdictionId]         INT             NULL,
        [SortOrder]                 DECIMAL (5, 2)  NULL,
        [RecordStartDateTime]       DATETIME        NULL,
        [RecordEndDateTime]         DATETIME        NULL,
        CONSTRAINT [PK_RefHotspotNeedIndicator] PRIMARY KEY CLUSTERED ([RefHotspotNeedIndicatorId] ASC)
    );
END
ELSE
    PRINT 'Table [dbo].[RefHotspotNeedIndicator] already exists, skipping.';
GO

-- ------------------------------------------------------------
IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'RefHotspotReceivedIndicator' AND schema_id = SCHEMA_ID('dbo'))
BEGIN
    PRINT 'Creating Table [dbo].[RefHotspotReceivedIndicator]...';
    CREATE TABLE [dbo].[RefHotspotReceivedIndicator] (
        [RefHotspotReceivedIndicatorId] INT             IDENTITY (1, 1) NOT NULL,
        [Description]                   NVARCHAR (150)  NOT NULL,
        [Code]                          NVARCHAR (50)   NULL,
        [Definition]                    NVARCHAR (4000) NULL,
        [RefJurisdictionId]             INT             NULL,
        [SortOrder]                     DECIMAL (5, 2)  NULL,
        [RecordStartDateTime]           DATETIME        NULL,
        [RecordEndDateTime]             DATETIME        NULL,
        CONSTRAINT [PK_RefHotspotReceivedIndicator] PRIMARY KEY CLUSTERED ([RefHotspotReceivedIndicatorId] ASC)
    );
END
ELSE
    PRINT 'Table [dbo].[RefHotspotReceivedIndicator] already exists, skipping.';
GO

-- ------------------------------------------------------------
IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'RefMagnetOrSpecialProgramEmphasisType' AND schema_id = SCHEMA_ID('dbo'))
BEGIN
    PRINT 'Creating Table [dbo].[RefMagnetOrSpecialProgramEmphasisType]...';
    CREATE TABLE [dbo].[RefMagnetOrSpecialProgramEmphasisType] (
        [RefMagnetOrSpecialProgramEmphasisTypeId] INT             IDENTITY (1, 1) NOT NULL,
        [Description]                             NVARCHAR (150)  NOT NULL,
        [Code]                                    NVARCHAR (50)   NULL,
        [Definition]                              NVARCHAR (4000) NULL,
        [RefJurisdictionId]                       INT             NULL,
        [SortOrder]                               DECIMAL (5, 2)  NULL,
        [RecordStartDateTime]                     DATETIME        NULL,
        [RecordEndDateTime]                       DATETIME        NULL,
        CONSTRAINT [PK_RefMagnetOrSpecialProgramEmphasisType] PRIMARY KEY CLUSTERED ([RefMagnetOrSpecialProgramEmphasisTypeId] ASC)
    );
END
ELSE
    PRINT 'Table [dbo].[RefMagnetOrSpecialProgramEmphasisType] already exists, skipping.';
GO

-- ------------------------------------------------------------
IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'RefNeglectedOrDelinquentLongTermStatus' AND schema_id = SCHEMA_ID('dbo'))
BEGIN
    PRINT 'Creating Table [dbo].[RefNeglectedOrDelinquentLongTermStatus]...';
    CREATE TABLE [dbo].[RefNeglectedOrDelinquentLongTermStatus] (
        [RefNeglectedOrDelinquentLongTermStatusId] INT             IDENTITY (1, 1) NOT NULL,
        [Description]                              NVARCHAR (150)  NOT NULL,
        [Code]                                     NVARCHAR (50)   NULL,
        [Definition]                               NVARCHAR (4000) NULL,
        [RefJurisdictionId]                        INT             NULL,
        [SortOrder]                                DECIMAL (5, 2)  NULL,
        [RecordStartDateTime]                      DATETIME        NULL,
        [RecordEndDateTime]                        DATETIME        NULL,
        CONSTRAINT [PK_RefNeglectedOrDelinquentLongTermStatus] PRIMARY KEY CLUSTERED ([RefNeglectedOrDelinquentLongTermStatusId] ASC)
    );
END
ELSE
    PRINT 'Table [dbo].[RefNeglectedOrDelinquentLongTermStatus] already exists, skipping.';
GO

-- ------------------------------------------------------------
IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'RefNeglectedOrDelinquentProgramEnrollmentSubpart' AND schema_id = SCHEMA_ID('dbo'))
BEGIN
    PRINT 'Creating Table [dbo].[RefNeglectedOrDelinquentProgramEnrollmentSubpart]...';
    CREATE TABLE [dbo].[RefNeglectedOrDelinquentProgramEnrollmentSubpart] (
        [RefNeglectedOrDelinquentProgramEnrollmentSubpartId] INT             IDENTITY (1, 1) NOT NULL,
        [Description]                                        NVARCHAR (150)  NOT NULL,
        [Code]                                               NVARCHAR (50)   NULL,
        [Definition]                                         NVARCHAR (4000) NULL,
        [RefJurisdictionId]                                  INT             NULL,
        [SortOrder]                                          DECIMAL (5, 2)  NULL,
        [RecordStartDateTime]                                DATETIME        NULL,
        [RecordEndDateTime]                                  DATETIME        NULL,
        CONSTRAINT [PK_RefNeglectedOrDelinquentProgramEnrollmentSubpart] PRIMARY KEY CLUSTERED ([RefNeglectedOrDelinquentProgramEnrollmentSubpartId] ASC)
    );
END
ELSE
    PRINT 'Table [dbo].[RefNeglectedOrDelinquentProgramEnrollmentSubpart] already exists, skipping.';
GO

-- ------------------------------------------------------------
IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'RefPreschoolDailyLength' AND schema_id = SCHEMA_ID('dbo'))
BEGIN
    PRINT 'Creating Table [dbo].[RefPreschoolDailyLength]...';
    CREATE TABLE [dbo].[RefPreschoolDailyLength] (
        [RefPreschoolDailyLengthId] INT             IDENTITY (1, 1) NOT NULL,
        [Description]               NVARCHAR (150)  NOT NULL,
        [Code]                      NVARCHAR (50)   NULL,
        [Definition]                NVARCHAR (4000) NULL,
        [RefJurisdictionId]         INT             NULL,
        [SortOrder]                 DECIMAL (5, 2)  NULL,
        [RecordStartDateTime]       DATETIME        NULL,
        [RecordEndDateTime]         DATETIME        NULL,
        CONSTRAINT [PK_RefPreschoolDailyLength] PRIMARY KEY CLUSTERED ([RefPreschoolDailyLengthId] ASC)
    );
END
ELSE
    PRINT 'Table [dbo].[RefPreschoolDailyLength] already exists, skipping.';
GO

-- ------------------------------------------------------------
IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'RefServiceChargeIndicator' AND schema_id = SCHEMA_ID('dbo'))
BEGIN
    PRINT 'Creating Table [dbo].[RefServiceChargeIndicator]...';
    CREATE TABLE [dbo].[RefServiceChargeIndicator] (
        [RefServiceChargeIndicatorId] INT             IDENTITY (1, 1) NOT NULL,
        [Description]                 NVARCHAR (150)  NOT NULL,
        [Code]                        NVARCHAR (50)   NULL,
        [Definition]                  NVARCHAR (4000) NULL,
        [RefJurisdictionId]           INT             NULL,
        [SortOrder]                   DECIMAL (5, 2)  NULL,
        [RecordStartDateTime]         DATETIME        NULL,
        [RecordEndDateTime]           DATETIME        NULL,
        CONSTRAINT [PK_RefServiceChargeIndicator] PRIMARY KEY CLUSTERED ([RefServiceChargeIndicatorId] ASC)
    );
END
ELSE
    PRINT 'Table [dbo].[RefServiceChargeIndicator] already exists, skipping.';
GO

-- ------------------------------------------------------------
IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'RefStaffEvaluationScale' AND schema_id = SCHEMA_ID('dbo'))
BEGIN
    PRINT 'Creating Table [dbo].[RefStaffEvaluationScale]...';
    CREATE TABLE [dbo].[RefStaffEvaluationScale] (
        [RefStaffEvaluationScaleId] INT             IDENTITY (1, 1) NOT NULL,
        [Description]               NVARCHAR (150)  NOT NULL,
        [Code]                      NVARCHAR (50)   NULL,
        [Definition]                NVARCHAR (4000) NULL,
        [RefJurisdictionId]         INT             NULL,
        [SortOrder]                 DECIMAL (5, 2)  NULL,
        [RecordStartDateTime]       DATETIME        NULL,
        [RecordEndDateTime]         DATETIME        NULL,
        CONSTRAINT [PK_RefStaffEvaluationScale] PRIMARY KEY CLUSTERED ([RefStaffEvaluationScaleId] ASC)
    );
END
ELSE
    PRINT 'Table [dbo].[RefStaffEvaluationScale] already exists, skipping.';
GO

-- ------------------------------------------------------------
IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'RefTitleIIILanguageInstructionIndicator' AND schema_id = SCHEMA_ID('dbo'))
BEGIN
    PRINT 'Creating Table [dbo].[RefTitleIIILanguageInstructionIndicator]...';
    CREATE TABLE [dbo].[RefTitleIIILanguageInstructionIndicator] (
        [RefTitleIIILanguageInstructionIndicatorId] INT             IDENTITY (1, 1) NOT NULL,
        [Description]                               NVARCHAR (150)  NOT NULL,
        [Code]                                      NVARCHAR (50)   NULL,
        [Definition]                                NVARCHAR (4000) NULL,
        [RefJurisdictionId]                         INT             NULL,
        [SortOrder]                                 DECIMAL (5, 2)  NULL,
        [RecordStartDateTime]                       DATETIME        NULL,
        [RecordEndDateTime]                         DATETIME        NULL,
        CONSTRAINT [PK_RefTitleIIILanguageInstructionIndicator] PRIMARY KEY CLUSTERED ([RefTitleIIILanguageInstructionIndicatorId] ASC)
    );
END
ELSE
    PRINT 'Table [dbo].[RefTitleIIILanguageInstructionIndicator] already exists, skipping.';
GO

-- ------------------------------------------------------------
IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'RefWiFiEnabledDeviceNeedIndicator' AND schema_id = SCHEMA_ID('dbo'))
BEGIN
    PRINT 'Creating Table [dbo].[RefWiFiEnabledDeviceNeedIndicator]...';
    CREATE TABLE [dbo].[RefWiFiEnabledDeviceNeedIndicator] (
        [RefWiFiEnabledDeviceNeedIndicatorId] INT             IDENTITY (1, 1) NOT NULL,
        [Description]                         NVARCHAR (150)  NOT NULL,
        [Code]                                NVARCHAR (50)   NULL,
        [Definition]                          NVARCHAR (4000) NULL,
        [RefJurisdictionId]                   INT             NULL,
        [SortOrder]                           DECIMAL (5, 2)  NULL,
        [RecordStartDateTime]                 DATETIME        NULL,
        [RecordEndDateTime]                   DATETIME        NULL,
        CONSTRAINT [PK_RefWiFiEnabledDeviceNeedIndicator] PRIMARY KEY CLUSTERED ([RefWiFiEnabledDeviceNeedIndicatorId] ASC)
    );
END
ELSE
    PRINT 'Table [dbo].[RefWiFiEnabledDeviceNeedIndicator] already exists, skipping.';
GO

-- ------------------------------------------------------------
IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'RefWiFiEnabledDeviceReceivedIndicator' AND schema_id = SCHEMA_ID('dbo'))
BEGIN
    PRINT 'Creating Table [dbo].[RefWiFiEnabledDeviceReceivedIndicator]...';
    CREATE TABLE [dbo].[RefWiFiEnabledDeviceReceivedIndicator] (
        [RefWiFiEnabledDeviceReceivedIndicatorId] INT             IDENTITY (1, 1) NOT NULL,
        [Description]                             NVARCHAR (150)  NOT NULL,
        [Code]                                    NVARCHAR (50)   NULL,
        [Definition]                              NVARCHAR (4000) NULL,
        [RefJurisdictionId]                       INT             NULL,
        [SortOrder]                               DECIMAL (5, 2)  NULL,
        [RecordStartDateTime]                     DATETIME        NULL,
        [RecordEndDateTime]                       DATETIME        NULL,
        CONSTRAINT [PK_RefWiFiEnabledDeviceReceivedIndicator] PRIMARY KEY CLUSTERED ([RefWiFiEnabledDeviceReceivedIndicatorId] ASC)
    );
END
ELSE
    PRINT 'Table [dbo].[RefWiFiEnabledDeviceReceivedIndicator] already exists, skipping.';
GO

PRINT '-- SECTION 1 complete: New Ref tables created. --';
GO


/* ============================================================
   SECTION 2 – NEW COLUMNS ON EXISTING TABLES
   All new columns are nullable so existing rows are unaffected.
   ============================================================ */

PRINT '';
PRINT '-- SECTION 2: Adding new columns to existing tables --';
GO

-- NOTE: AssessmentResult.AssessmentResultScoreValueStandardError is a RENAME
-- of AssessmentResultScoreStandardError. It is handled in Section 3 using
-- sp_rename and does NOT need to be added as a new column here.
GO

-- ------------------------------------------------------------
-- DataCollection: new record lifecycle columns
-- ------------------------------------------------------------
IF NOT EXISTS (
    SELECT 1 FROM sys.columns
    WHERE object_id = OBJECT_ID('dbo.DataCollection')
      AND name = 'RecordStartDateTime'
)
BEGIN
    PRINT 'DataCollection: adding RecordStartDateTime...';
    ALTER TABLE [dbo].[DataCollection]
        ADD [RecordStartDateTime] DATETIME NULL;
END
ELSE
    PRINT 'DataCollection.RecordStartDateTime already exists, skipping.';
GO

IF NOT EXISTS (
    SELECT 1 FROM sys.columns
    WHERE object_id = OBJECT_ID('dbo.DataCollection')
      AND name = 'RecordEndDateTime'
)
BEGIN
    PRINT 'DataCollection: adding RecordEndDateTime...';
    ALTER TABLE [dbo].[DataCollection]
        ADD [RecordEndDateTime] DATETIME NULL;
END
ELSE
    PRINT 'DataCollection.RecordEndDateTime already exists, skipping.';
GO

-- ------------------------------------------------------------
-- K12StaffAssignment: new FK column to RefMepSessionType
-- ------------------------------------------------------------
IF NOT EXISTS (
    SELECT 1 FROM sys.columns
    WHERE object_id = OBJECT_ID('dbo.K12StaffAssignment')
      AND name = 'RefMepSessionTypeId'
)
BEGIN
    PRINT 'K12StaffAssignment: adding RefMepSessionTypeId...';
    ALTER TABLE [dbo].[K12StaffAssignment]
        ADD [RefMepSessionTypeId] INT NULL;
END
ELSE
    PRINT 'K12StaffAssignment.RefMepSessionTypeId already exists, skipping.';
GO

-- Add FK for K12StaffAssignment.RefMepSessionTypeId if not present
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys
    WHERE name = 'FK_K12StaffAssignment_RefMepSessionType'
      AND parent_object_id = OBJECT_ID('dbo.K12StaffAssignment')
)
BEGIN
    PRINT 'K12StaffAssignment: adding FK_K12StaffAssignment_RefMepSessionType...';
    ALTER TABLE [dbo].[K12StaffAssignment]
        ADD CONSTRAINT [FK_K12StaffAssignment_RefMepSessionType]
            FOREIGN KEY ([RefMepSessionTypeId])
            REFERENCES [dbo].[RefMepSessionType] ([RefMepSessionTypeId]);
END
ELSE
    PRINT 'FK_K12StaffAssignment_RefMepSessionType already exists, skipping.';
GO

-- ------------------------------------------------------------
-- PersonDetail: new DeathDate column
-- ------------------------------------------------------------
IF NOT EXISTS (
    SELECT 1 FROM sys.columns
    WHERE object_id = OBJECT_ID('dbo.PersonDetail')
      AND name = 'DeathDate'
)
BEGIN
    PRINT 'PersonDetail: adding DeathDate...';
    ALTER TABLE [dbo].[PersonDetail]
        ADD [DeathDate] DATE NULL;
END
ELSE
    PRINT 'PersonDetail.DeathDate already exists, skipping.';
GO

PRINT '-- SECTION 2 complete: New columns added. --';
GO


/* ============================================================
   SECTION 3 – COLUMN RENAME: AssessmentResult
   V13: AssessmentResultScoreStandardError      DECIMAL(9,2) NULL
   V14: AssessmentResultScoreValueStandardError DECIMAL(9,2) NULL

   This is a pure rename — same data type, same data, new name.
   sp_rename is used so all existing data is preserved in-place
   with no copy or interim column required.

   Note: sp_rename will emit an informational warning:
   "Caution: Changing any part of an object name could break
   scripts and stored procedures." This is expected and safe
   in this context.
   ============================================================ */

PRINT '';
PRINT '-- SECTION 3: Renaming AssessmentResult.AssessmentResultScoreStandardError --';
GO

IF EXISTS (
    SELECT 1 FROM sys.columns
    WHERE object_id = OBJECT_ID('dbo.AssessmentResult')
      AND name = 'AssessmentResultScoreStandardError'
)
BEGIN
    PRINT 'AssessmentResult: renaming AssessmentResultScoreStandardError --> AssessmentResultScoreValueStandardError...';
    EXEC sp_rename
        'dbo.AssessmentResult.AssessmentResultScoreStandardError',
        'AssessmentResultScoreValueStandardError',
        'COLUMN';
    PRINT 'AssessmentResult: column rename complete.';
END
ELSE
    PRINT 'AssessmentResult.AssessmentResultScoreStandardError not found; rename already applied or not needed.';
GO

PRINT '-- SECTION 3 complete. --';
GO


/* ============================================================
   SECTION 4 – TABLE AND COLUMN RENAME: RefCredentialAwardRelationship
   V13 table: RefCredentialAwardRelationship
              PK column: RefCredentialAwardRelationshipId
   V14 table: RefCredentialAwardRelationshipType
              PK column: RefCredentialAwardRelationshipTypeId

   This is a pure rename — identical structure, all data is
   preserved in-place. The FK on CredentialAwardRelationship is
   dropped, the table and column are renamed via sp_rename, and
   the FK and PK constraints are recreated with the V14 names.

   Note: sp_rename will emit an informational warning about
   object name changes. This is expected and safe.
   ============================================================ */

PRINT '';
PRINT '-- SECTION 4: Renaming RefCredentialAwardRelationship table and column --';
GO

-- Step 4a: Drop the FK on CredentialAwardRelationship that points to the old table
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys
    WHERE name = 'FK_CredentialAwardRelationship_RefCredentialAwardRelationship'
      AND parent_object_id = OBJECT_ID('dbo.CredentialAwardRelationship')
)
BEGIN
    PRINT 'CredentialAwardRelationship: dropping FK_CredentialAwardRelationship_RefCredentialAwardRelationship...';
    ALTER TABLE [dbo].[CredentialAwardRelationship]
        DROP CONSTRAINT [FK_CredentialAwardRelationship_RefCredentialAwardRelationship];
END
ELSE
    PRINT 'FK_CredentialAwardRelationship_RefCredentialAwardRelationship not found, skipping.';
GO

-- Step 4b: Drop the old PK constraint (required before renaming the PK column)
IF EXISTS (
    SELECT 1 FROM sys.key_constraints
    WHERE name = 'PK_RefCredentialAwardRelationship'
      AND parent_object_id = OBJECT_ID('dbo.RefCredentialAwardRelationship')
)
BEGIN
    PRINT 'RefCredentialAwardRelationship: dropping PK_RefCredentialAwardRelationship...';
    ALTER TABLE [dbo].[RefCredentialAwardRelationship]
        DROP CONSTRAINT [PK_RefCredentialAwardRelationship];
END
ELSE
    PRINT 'PK_RefCredentialAwardRelationship not found, skipping.';
GO

-- Step 4c: Rename the PK column
IF EXISTS (
    SELECT 1 FROM sys.columns
    WHERE object_id = OBJECT_ID('dbo.RefCredentialAwardRelationship')
      AND name = 'RefCredentialAwardRelationshipId'
)
BEGIN
    PRINT 'RefCredentialAwardRelationship: renaming PK column RefCredentialAwardRelationshipId --> RefCredentialAwardRelationshipTypeId...';
    EXEC sp_rename
        'dbo.RefCredentialAwardRelationship.RefCredentialAwardRelationshipId',
        'RefCredentialAwardRelationshipTypeId',
        'COLUMN';
END
ELSE
    PRINT 'RefCredentialAwardRelationship.RefCredentialAwardRelationshipId not found; skipping column rename.';
GO

-- Step 4d: Rename the table itself
IF EXISTS (SELECT 1 FROM sys.tables WHERE name = 'RefCredentialAwardRelationship' AND schema_id = SCHEMA_ID('dbo'))
   AND NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'RefCredentialAwardRelationshipType' AND schema_id = SCHEMA_ID('dbo'))
BEGIN
    PRINT 'Renaming table RefCredentialAwardRelationship --> RefCredentialAwardRelationshipType...';
    EXEC sp_rename 'dbo.RefCredentialAwardRelationship', 'RefCredentialAwardRelationshipType';
END
ELSE IF EXISTS (SELECT 1 FROM sys.tables WHERE name = 'RefCredentialAwardRelationshipType' AND schema_id = SCHEMA_ID('dbo'))
    PRINT 'Table RefCredentialAwardRelationshipType already exists; table rename already applied or not needed.';
ELSE
    PRINT 'Table RefCredentialAwardRelationship not found; skipping table rename.';
GO

-- Step 4e: Recreate the PK constraint with the V14 name
IF NOT EXISTS (
    SELECT 1 FROM sys.key_constraints
    WHERE name = 'PK_RefCredentialAwardRelationshipType'
      AND parent_object_id = OBJECT_ID('dbo.RefCredentialAwardRelationshipType')
)
BEGIN
    PRINT 'RefCredentialAwardRelationshipType: recreating primary key as PK_RefCredentialAwardRelationshipType...';
    ALTER TABLE [dbo].[RefCredentialAwardRelationshipType]
        ADD CONSTRAINT [PK_RefCredentialAwardRelationshipType]
            PRIMARY KEY CLUSTERED ([RefCredentialAwardRelationshipTypeId] ASC);
END
ELSE
    PRINT 'PK_RefCredentialAwardRelationshipType already exists, skipping.';
GO

-- Step 4f: Rename the FK column on CredentialAwardRelationship
IF EXISTS (
    SELECT 1 FROM sys.columns
    WHERE object_id = OBJECT_ID('dbo.CredentialAwardRelationship')
      AND name = 'RefCredentialAwardRelationshipId'
)
BEGIN
    PRINT 'CredentialAwardRelationship: renaming FK column RefCredentialAwardRelationshipId --> RefCredentialAwardRelationshipTypeId...';
    EXEC sp_rename
        'dbo.CredentialAwardRelationship.RefCredentialAwardRelationshipId',
        'RefCredentialAwardRelationshipTypeId',
        'COLUMN';
END
ELSE
    PRINT 'CredentialAwardRelationship.RefCredentialAwardRelationshipId not found; skipping FK column rename.';
GO

-- Step 4g: Recreate the FK constraint with the V14 name
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys
    WHERE name = 'FK_CredentialAwardRelationship_RefCredentialAwardRelationshipType'
      AND parent_object_id = OBJECT_ID('dbo.CredentialAwardRelationship')
)
BEGIN
    IF EXISTS (SELECT 1 FROM sys.tables WHERE name = 'RefCredentialAwardRelationshipType' AND schema_id = SCHEMA_ID('dbo'))
    BEGIN
        PRINT 'CredentialAwardRelationship: recreating FK as FK_CredentialAwardRelationship_RefCredentialAwardRelationshipType...';
        ALTER TABLE [dbo].[CredentialAwardRelationship]
            ADD CONSTRAINT [FK_CredentialAwardRelationship_RefCredentialAwardRelationshipType]
                FOREIGN KEY ([RefCredentialAwardRelationshipTypeId])
                REFERENCES [dbo].[RefCredentialAwardRelationshipType] ([RefCredentialAwardRelationshipTypeId]);
    END
    ELSE
        PRINT 'WARNING: RefCredentialAwardRelationshipType not found; FK not recreated. Check Steps 4c-4d.';
END
ELSE
    PRINT 'FK_CredentialAwardRelationship_RefCredentialAwardRelationshipType already exists, skipping.';
GO

PRINT '-- SECTION 4 complete. --';
GO


/* ============================================================
   SECTION 5 – NULLABILITY CHANGE: IncidentPerson.PersonId
   V13: PersonId  INT  NOT NULL
   V14: PersonId  INT  NULL

   This change allows IncidentPerson records to exist without a
   resolved Person entity reference. Changing NOT NULL -> NULL
   is always safe for existing data (no rows are invalidated).
   ============================================================ */

PRINT '';
PRINT '-- SECTION 5: IncidentPerson.PersonId nullability change --';
GO

-- Check the current nullability via sys.columns (is_nullable = 0 means NOT NULL)
IF EXISTS (
    SELECT 1 FROM sys.columns
    WHERE object_id    = OBJECT_ID('dbo.IncidentPerson')
      AND name         = 'PersonId'
      AND is_nullable  = 0   -- currently NOT NULL
)
BEGIN
    PRINT 'IncidentPerson: altering PersonId from NOT NULL to NULL...';

    -- Drop the FK that references Person before altering the column, if present
    IF EXISTS (
        SELECT 1 FROM sys.foreign_keys
        WHERE name = 'FK_IncidentPerson_Person'
          AND parent_object_id = OBJECT_ID('dbo.IncidentPerson')
    )
    BEGIN
        PRINT 'IncidentPerson: temporarily dropping FK_IncidentPerson_Person...';
        ALTER TABLE [dbo].[IncidentPerson]
            DROP CONSTRAINT [FK_IncidentPerson_Person];
    END

    ALTER TABLE [dbo].[IncidentPerson]
        ALTER COLUMN [PersonId] INT NULL;

    -- Restore the FK
    IF NOT EXISTS (
        SELECT 1 FROM sys.foreign_keys
        WHERE name = 'FK_IncidentPerson_Person'
          AND parent_object_id = OBJECT_ID('dbo.IncidentPerson')
    )
    BEGIN
        PRINT 'IncidentPerson: restoring FK_IncidentPerson_Person...';
        ALTER TABLE [dbo].[IncidentPerson]
            ADD CONSTRAINT [FK_IncidentPerson_Person]
                FOREIGN KEY ([PersonId])
                REFERENCES [dbo].[Person] ([PersonId]);
    END

    PRINT 'IncidentPerson: PersonId is now nullable.';
END
ELSE
    PRINT 'IncidentPerson.PersonId is already nullable or not found; skipping.';
GO

PRINT '-- SECTION 5 complete. --';
GO


/* ============================================================
   SECTION 6 – VALIDATION CHECKS
   Post-upgrade sanity checks. Review any warnings before
   closing the connection.
   ============================================================ */

PRINT '';
PRINT '-- SECTION 6: Post-upgrade validation --';
GO

-- Check all 21 new Ref tables exist
DECLARE @missing_tables TABLE (TableName NVARCHAR(200));
INSERT INTO @missing_tables (TableName)
SELECT tbl FROM (VALUES
    ('RefCRDCJusticeFacilityType'),
    ('RefCanadianProvinceAbbreviation'),
    ('RefComprehensiveSupportAndImprovementIdentificationType'),
    ('RefCredentialAwardIdentificationSystem'),
    ('RefCredentialAwardRelationshipType'),
    ('RefCredentialAwardStatusType'),
    ('RefEdFactsCohortGraduationStatus'),
    ('RefEnglishLearnerExitedStatus'),
    ('RefEvaluationRequiredIndicator'),
    ('RefHarassmentOrBullyingReligionType'),
    ('RefHotspotNeedIndicator'),
    ('RefHotspotReceivedIndicator'),
    ('RefMagnetOrSpecialProgramEmphasisType'),
    ('RefNeglectedOrDelinquentLongTermStatus'),
    ('RefNeglectedOrDelinquentProgramEnrollmentSubpart'),
    ('RefPreschoolDailyLength'),
    ('RefServiceChargeIndicator'),
    ('RefStaffEvaluationScale'),
    ('RefTitleIIILanguageInstructionIndicator'),
    ('RefWiFiEnabledDeviceNeedIndicator'),
    ('RefWiFiEnabledDeviceReceivedIndicator')
) v(tbl)
WHERE NOT EXISTS (
    SELECT 1 FROM sys.tables
    WHERE name = v.tbl AND schema_id = SCHEMA_ID('dbo')
);

IF EXISTS (SELECT 1 FROM @missing_tables)
BEGIN
    PRINT 'WARNING: The following new Ref tables were NOT found after upgrade:';
    SELECT TableName FROM @missing_tables;
END
ELSE
    PRINT 'OK: All 21 new Ref tables present.';
GO

-- Check key new/changed columns
DECLARE @missing_cols TABLE (TableName NVARCHAR(200), ColumnName NVARCHAR(200));
INSERT INTO @missing_cols
SELECT t, c FROM (VALUES
    ('AssessmentResult',             'AssessmentResultScoreValueStandardError'),
    ('DataCollection',               'RecordStartDateTime'),
    ('DataCollection',               'RecordEndDateTime'),
    ('K12StaffAssignment',           'RefMepSessionTypeId'),
    ('PersonDetail',                 'DeathDate'),
    ('CredentialAwardRelationship',  'RefCredentialAwardRelationshipTypeId')
) v(t, c)
WHERE NOT EXISTS (
    SELECT 1 FROM sys.columns
    WHERE object_id = OBJECT_ID('dbo.' + v.t)
      AND name = v.c
);

IF EXISTS (SELECT 1 FROM @missing_cols)
BEGIN
    PRINT 'WARNING: The following expected columns were NOT found after upgrade:';
    SELECT TableName, ColumnName FROM @missing_cols;
END
ELSE
    PRINT 'OK: All expected new/renamed columns present.';
GO

-- Check old column name (AssessmentResult rename) is gone
IF EXISTS (
    SELECT 1 FROM sys.columns
    WHERE object_id = OBJECT_ID('dbo.AssessmentResult')
      AND name = 'AssessmentResultScoreStandardError'
)
    PRINT 'WARNING: Old column AssessmentResult.AssessmentResultScoreStandardError still exists. Check Section 3.';
ELSE
    PRINT 'OK: AssessmentResult.AssessmentResultScoreStandardError has been removed.';
GO

-- Check RefCredentialAwardRelationship table rename is complete
IF EXISTS (SELECT 1 FROM sys.tables WHERE name = 'RefCredentialAwardRelationship' AND schema_id = SCHEMA_ID('dbo'))
    PRINT 'WARNING: Old table RefCredentialAwardRelationship still exists. Check Section 4.';
ELSE
    PRINT 'OK: RefCredentialAwardRelationship has been renamed to RefCredentialAwardRelationshipType.';
GO

IF EXISTS (SELECT 1 FROM sys.tables WHERE name = 'RefCredentialAwardRelationshipType' AND schema_id = SCHEMA_ID('dbo'))
    PRINT 'OK: Table RefCredentialAwardRelationshipType present.';
ELSE
    PRINT 'WARNING: Table RefCredentialAwardRelationshipType NOT found. Check Section 4.';
GO

PRINT '';
PRINT '===============================================================';
PRINT 'CEDS IDS Upgrade V13 -> V14 complete.';
PRINT 'Completed: ' + CONVERT(VARCHAR, GETDATE(), 120);
PRINT '';
PRINT 'NEXT STEPS:';
PRINT '  1. Run the CEDS V14 Ref table seed scripts from the OSC to';
PRINT '     populate all new and existing Ref tables with option sets.';
PRINT '  2. Update any application layer, views, stored procedures, or';
PRINT '     ETL jobs that reference the renamed columns:';
PRINT '     AssessmentResult.AssessmentResultScoreStandardError';
PRINT '     --> AssessmentResultScoreValueStandardError';
PRINT '     RefCredentialAwardRelationship (table)';
PRINT '     --> RefCredentialAwardRelationshipType';
PRINT '     RefCredentialAwardRelationship.RefCredentialAwardRelationshipId (PK/FK column)';
PRINT '     --> RefCredentialAwardRelationshipTypeId';
PRINT '===============================================================';
GO
