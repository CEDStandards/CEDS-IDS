/*
================================================================================
  Common Education Data Standards (CEDS)
  Integration Data Store (IDS)
  UPGRADE SCRIPT: Version 13.0.0.0 --> Version 14.0.0.0

  Copyright 2026 Common Education Data Standards
  Licensed under the Apache License, Version 2.0

  Summary of all V13->V14 changes applied:

  SECTION 1  -- 21 new Ref tables (CREATE TABLE + PK + FK to Organization)
  SECTION 2  -- 4 new non-Ref tables:
                  CredentialAwardIdentifier, CredentialAwardStatus,
                  JobEvaluation, ProgramFinancialCharacteristic
  SECTION 3  -- New nullable columns + FK constraints on existing tables:
                  CredentialAwardRelationship, DataCollection,
                  ELOrganizationAvailability, Incident, K12School,
                  K12StaffAssignment, K12StudentCohort, LocationAddress,
                  OrganizationFederalAccountability, PersonDetail,
                  PersonDigitalAccess, ProgramParticipationNeglected,
                  ProgramParticipationTitleIIILep, StaffEvaluation
  SECTION 4  -- Column rename: AssessmentResult (sp_rename, in-place)
  SECTION 5  -- Table + column rename: RefCredentialAwardRelationship
                  -> RefCredentialAwardRelationshipType (sp_rename, in-place)
  SECTION 6  -- Nullability change: IncidentPerson.PersonId NOT NULL -> NULL
  SECTION 7  -- PK constraint rename: RefBrailleAccessType typo fix
  SECTION 8  -- Post-upgrade validation

  IMPORTANT: Run against a verified BACKUP before applying to production.
             All steps are guarded with IF EXISTS / IF NOT EXISTS and are
             safe to re-run.

  Target database : CEDS-IDS-V13-0-0-0
  Questions       : ceds@ed.gov
  Repository      : https://github.com/CEDStandards/CEDS-IDS
================================================================================
*/

USE [CEDS-IDS-V13-0-0-0];
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
   SECTION 1 -- NEW REF TABLES (21 tables)
   Each table: CREATE TABLE, PRIMARY KEY, FK to Organization.
   Constraint names match the V14 SSDT project exactly.
   ============================================================ */

PRINT '';
PRINT '-- SECTION 1: Creating new Ref tables --';
GO

-- RefCRDCJusticeFacilityType ------------------------------------------
IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'RefCRDCJusticeFacilityType' AND schema_id = SCHEMA_ID('dbo'))
BEGIN
    PRINT 'Creating [dbo].[RefCRDCJusticeFacilityType]...';
    CREATE TABLE [dbo].[RefCRDCJusticeFacilityType] (
        [RefCRDCJusticeFacilityTypeId] INT             IDENTITY (1, 1) NOT NULL,
        [Description]                  NVARCHAR (150)  NOT NULL,
        [Code]                         NVARCHAR (50)   NULL,
        [Definition]                   NVARCHAR (4000) NULL,
        [RefJurisdictionId]            INT             NULL,
        [SortOrder]                    DECIMAL (5, 2)  NULL,
        [RecordStartDateTime]          DATETIME        NULL,
        [RecordEndDateTime]            DATETIME        NULL,
        CONSTRAINT [PK_RefCRDCJusticeFacilityType]
            PRIMARY KEY CLUSTERED ([RefCRDCJusticeFacilityTypeId] ASC)
    );
END
ELSE PRINT '[dbo].[RefCRDCJusticeFacilityType] already exists, skipping.';
GO
IF NOT EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_RefCRDCJusticeFacilityType_Organization')
BEGIN
    PRINT 'Adding FK_RefCRDCJusticeFacilityType_Organization...';
    ALTER TABLE [dbo].[RefCRDCJusticeFacilityType]
        ADD CONSTRAINT [FK_RefCRDCJusticeFacilityType_Organization]
            FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId]);
END
GO

-- RefCanadianProvinceAbbreviation -------------------------------------
IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'RefCanadianProvinceAbbreviation' AND schema_id = SCHEMA_ID('dbo'))
BEGIN
    PRINT 'Creating [dbo].[RefCanadianProvinceAbbreviation]...';
    CREATE TABLE [dbo].[RefCanadianProvinceAbbreviation] (
        [RefCanadianProvinceAbbreviationId] INT             IDENTITY (1, 1) NOT NULL,
        [Description]                       NVARCHAR (150)  NOT NULL,
        [Code]                              NVARCHAR (50)   NULL,
        [Definition]                        NVARCHAR (4000) NULL,
        [RefJurisdictionId]                 INT             NULL,
        [SortOrder]                         DECIMAL (5, 2)  NULL,
        [RecordStartDateTime]               DATETIME        NULL,
        [RecordEndDateTime]                 DATETIME        NULL,
        CONSTRAINT [PK_RefCanadianProvinceAbbreviation]
            PRIMARY KEY CLUSTERED ([RefCanadianProvinceAbbreviationId] ASC)
    );
END
ELSE PRINT '[dbo].[RefCanadianProvinceAbbreviation] already exists, skipping.';
GO
IF NOT EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_RefCanadianProvinceAbbreviation_Organization')
BEGIN
    PRINT 'Adding FK_RefCanadianProvinceAbbreviation_Organization...';
    ALTER TABLE [dbo].[RefCanadianProvinceAbbreviation]
        ADD CONSTRAINT [FK_RefCanadianProvinceAbbreviation_Organization]
            FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId]);
END
GO

-- RefComprehensiveSupportAndImprovementIdentificationType -------------
IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'RefComprehensiveSupportAndImprovementIdentificationType' AND schema_id = SCHEMA_ID('dbo'))
BEGIN
    PRINT 'Creating [dbo].[RefComprehensiveSupportAndImprovementIdentificationType]...';
    CREATE TABLE [dbo].[RefComprehensiveSupportAndImprovementIdentificationType] (
        [RefComprehensiveSupportAndImprovementIdentificationTypeId] INT             IDENTITY (1, 1) NOT NULL,
        [Description]                                               NVARCHAR (150)  NOT NULL,
        [Code]                                                      NVARCHAR (50)   NULL,
        [Definition]                                                NVARCHAR (4000) NULL,
        [RefJurisdictionId]                                         INT             NULL,
        [SortOrder]                                                 DECIMAL (5, 2)  NULL,
        [RecordStartDateTime]                                       DATETIME        NULL,
        [RecordEndDateTime]                                         DATETIME        NULL,
        CONSTRAINT [PK_RefComprehensiveSupportAndImprovementIdentificationType]
            PRIMARY KEY CLUSTERED ([RefComprehensiveSupportAndImprovementIdentificationTypeId] ASC)
    );
END
ELSE PRINT '[dbo].[RefComprehensiveSupportAndImprovementIdentificationType] already exists, skipping.';
GO
IF NOT EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_RefComprehensiveSupportAndImprovementIdentificationType_Organization')
BEGIN
    PRINT 'Adding FK_RefComprehensiveSupportAndImprovementIdentificationType_Organization...';
    ALTER TABLE [dbo].[RefComprehensiveSupportAndImprovementIdentificationType]
        ADD CONSTRAINT [FK_RefComprehensiveSupportAndImprovementIdentificationType_Organization]
            FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId]);
END
GO

-- RefCredentialAwardIdentificationSystem ------------------------------
IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'RefCredentialAwardIdentificationSystem' AND schema_id = SCHEMA_ID('dbo'))
BEGIN
    PRINT 'Creating [dbo].[RefCredentialAwardIdentificationSystem]...';
    CREATE TABLE [dbo].[RefCredentialAwardIdentificationSystem] (
        [RefCredentialAwardIdentificationSystemId] INT             IDENTITY (1, 1) NOT NULL,
        [Description]                              NVARCHAR (150)  NOT NULL,
        [Code]                                     NVARCHAR (50)   NULL,
        [Definition]                               NVARCHAR (4000) NULL,
        [RefJurisdictionId]                        INT             NULL,
        [SortOrder]                                DECIMAL (5, 2)  NULL,
        [RecordStartDateTime]                      DATETIME        NULL,
        [RecordEndDateTime]                        DATETIME        NULL,
        CONSTRAINT [PK_RefCredentialAwardIdentificationSystem]
            PRIMARY KEY CLUSTERED ([RefCredentialAwardIdentificationSystemId] ASC)
    );
END
ELSE PRINT '[dbo].[RefCredentialAwardIdentificationSystem] already exists, skipping.';
GO
IF NOT EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_RefCredentialAwardIdentificationSystem_Organization')
BEGIN
    PRINT 'Adding FK_RefCredentialAwardIdentificationSystem_Organization...';
    ALTER TABLE [dbo].[RefCredentialAwardIdentificationSystem]
        ADD CONSTRAINT [FK_RefCredentialAwardIdentificationSystem_Organization]
            FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId]);
END
GO

-- RefCredentialAwardStatusType ----------------------------------------
-- NOTE: RefCredentialAwardRelationshipType is created in Section 5 via
-- sp_rename of the existing RefCredentialAwardRelationship table.
IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'RefCredentialAwardStatusType' AND schema_id = SCHEMA_ID('dbo'))
BEGIN
    PRINT 'Creating [dbo].[RefCredentialAwardStatusType]...';
    CREATE TABLE [dbo].[RefCredentialAwardStatusType] (
        [RefCredentialAwardStatusTypeId] INT             IDENTITY (1, 1) NOT NULL,
        [Description]                    NVARCHAR (150)  NOT NULL,
        [Code]                           NVARCHAR (50)   NULL,
        [Definition]                     NVARCHAR (4000) NULL,
        [RefJurisdictionId]              INT             NULL,
        [SortOrder]                      DECIMAL (5, 2)  NULL,
        [RecordStartDateTime]            DATETIME        NULL,
        [RecordEndDateTime]              DATETIME        NULL,
        CONSTRAINT [PK_RefCredentialAwardStatusType]
            PRIMARY KEY CLUSTERED ([RefCredentialAwardStatusTypeId] ASC)
    );
END
ELSE PRINT '[dbo].[RefCredentialAwardStatusType] already exists, skipping.';
GO
IF NOT EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_RefCredentialAwardStatusType_Organization')
BEGIN
    PRINT 'Adding FK_RefCredentialAwardStatusType_Organization...';
    ALTER TABLE [dbo].[RefCredentialAwardStatusType]
        ADD CONSTRAINT [FK_RefCredentialAwardStatusType_Organization]
            FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId]);
END
GO

-- RefEdFactsCohortGraduationStatus ------------------------------------
IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'RefEdFactsCohortGraduationStatus' AND schema_id = SCHEMA_ID('dbo'))
BEGIN
    PRINT 'Creating [dbo].[RefEdFactsCohortGraduationStatus]...';
    CREATE TABLE [dbo].[RefEdFactsCohortGraduationStatus] (
        [RefEdFactsCohortGraduationStatusId] INT             IDENTITY (1, 1) NOT NULL,
        [Description]                        NVARCHAR (150)  NOT NULL,
        [Code]                               NVARCHAR (50)   NULL,
        [Definition]                         NVARCHAR (4000) NULL,
        [RefJurisdictionId]                  INT             NULL,
        [SortOrder]                          DECIMAL (5, 2)  NULL,
        [RecordStartDateTime]                DATETIME        NULL,
        [RecordEndDateTime]                  DATETIME        NULL,
        CONSTRAINT [PK_RefEdFactsCohortGraduationStatus]
            PRIMARY KEY CLUSTERED ([RefEdFactsCohortGraduationStatusId] ASC)
    );
END
ELSE PRINT '[dbo].[RefEdFactsCohortGraduationStatus] already exists, skipping.';
GO
IF NOT EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_RefEdFactsCohortGraduationStatus_Organization')
BEGIN
    PRINT 'Adding FK_RefEdFactsCohortGraduationStatus_Organization...';
    ALTER TABLE [dbo].[RefEdFactsCohortGraduationStatus]
        ADD CONSTRAINT [FK_RefEdFactsCohortGraduationStatus_Organization]
            FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId]);
END
GO

-- RefEnglishLearnerExitedStatus ---------------------------------------
IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'RefEnglishLearnerExitedStatus' AND schema_id = SCHEMA_ID('dbo'))
BEGIN
    PRINT 'Creating [dbo].[RefEnglishLearnerExitedStatus]...';
    CREATE TABLE [dbo].[RefEnglishLearnerExitedStatus] (
        [RefEnglishLearnerExitedStatusId] INT             IDENTITY (1, 1) NOT NULL,
        [Description]                     NVARCHAR (150)  NOT NULL,
        [Code]                            NVARCHAR (50)   NULL,
        [Definition]                      NVARCHAR (4000) NULL,
        [RefJurisdictionId]               INT             NULL,
        [SortOrder]                       DECIMAL (5, 2)  NULL,
        [RecordStartDateTime]             DATETIME        NULL,
        [RecordEndDateTime]               DATETIME        NULL,
        CONSTRAINT [PK_RefEnglishLearnerExitedStatus]
            PRIMARY KEY CLUSTERED ([RefEnglishLearnerExitedStatusId] ASC)
    );
END
ELSE PRINT '[dbo].[RefEnglishLearnerExitedStatus] already exists, skipping.';
GO
IF NOT EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_RefEnglishLearnerExitedStatus_Organization')
BEGIN
    PRINT 'Adding FK_RefEnglishLearnerExitedStatus_Organization...';
    ALTER TABLE [dbo].[RefEnglishLearnerExitedStatus]
        ADD CONSTRAINT [FK_RefEnglishLearnerExitedStatus_Organization]
            FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId]);
END
GO

-- RefEvaluationRequiredIndicator --------------------------------------
IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'RefEvaluationRequiredIndicator' AND schema_id = SCHEMA_ID('dbo'))
BEGIN
    PRINT 'Creating [dbo].[RefEvaluationRequiredIndicator]...';
    CREATE TABLE [dbo].[RefEvaluationRequiredIndicator] (
        [RefEvaluationRequiredIndicatorId] INT             IDENTITY (1, 1) NOT NULL,
        [Description]                      NVARCHAR (150)  NOT NULL,
        [Code]                             NVARCHAR (50)   NULL,
        [Definition]                       NVARCHAR (4000) NULL,
        [RefJurisdictionId]                INT             NULL,
        [SortOrder]                        DECIMAL (5, 2)  NULL,
        [RecordStartDateTime]              DATETIME        NULL,
        [RecordEndDateTime]                DATETIME        NULL,
        CONSTRAINT [PK_RefEvaluationRequiredIndicator]
            PRIMARY KEY CLUSTERED ([RefEvaluationRequiredIndicatorId] ASC)
    );
END
ELSE PRINT '[dbo].[RefEvaluationRequiredIndicator] already exists, skipping.';
GO
IF NOT EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_RefEvaluationRequiredIndicator_Organization')
BEGIN
    PRINT 'Adding FK_RefEvaluationRequiredIndicator_Organization...';
    ALTER TABLE [dbo].[RefEvaluationRequiredIndicator]
        ADD CONSTRAINT [FK_RefEvaluationRequiredIndicator_Organization]
            FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId]);
END
GO

-- RefHarassmentOrBullyingReligionType ---------------------------------
IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'RefHarassmentOrBullyingReligionType' AND schema_id = SCHEMA_ID('dbo'))
BEGIN
    PRINT 'Creating [dbo].[RefHarassmentOrBullyingReligionType]...';
    CREATE TABLE [dbo].[RefHarassmentOrBullyingReligionType] (
        [RefHarassmentOrBullyingReligionTypeId] INT             IDENTITY (1, 1) NOT NULL,
        [Description]                           NVARCHAR (150)  NOT NULL,
        [Code]                                  NVARCHAR (50)   NULL,
        [Definition]                            NVARCHAR (4000) NULL,
        [RefJurisdictionId]                     INT             NULL,
        [SortOrder]                             DECIMAL (5, 2)  NULL,
        [RecordStartDateTime]                   DATETIME        NULL,
        [RecordEndDateTime]                     DATETIME        NULL,
        CONSTRAINT [PK_RefHarassmentOrBullyingReligionType]
            PRIMARY KEY CLUSTERED ([RefHarassmentOrBullyingReligionTypeId] ASC)
    );
END
ELSE PRINT '[dbo].[RefHarassmentOrBullyingReligionType] already exists, skipping.';
GO
IF NOT EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_RefHarassmentOrBullyingReligionType_Organization')
BEGIN
    PRINT 'Adding FK_RefHarassmentOrBullyingReligionType_Organization...';
    ALTER TABLE [dbo].[RefHarassmentOrBullyingReligionType]
        ADD CONSTRAINT [FK_RefHarassmentOrBullyingReligionType_Organization]
            FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId]);
END
GO

-- RefHotspotNeedIndicator ---------------------------------------------
IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'RefHotspotNeedIndicator' AND schema_id = SCHEMA_ID('dbo'))
BEGIN
    PRINT 'Creating [dbo].[RefHotspotNeedIndicator]...';
    CREATE TABLE [dbo].[RefHotspotNeedIndicator] (
        [RefHotspotNeedIndicatorId] INT             IDENTITY (1, 1) NOT NULL,
        [Description]               NVARCHAR (150)  NOT NULL,
        [Code]                      NVARCHAR (50)   NULL,
        [Definition]                NVARCHAR (4000) NULL,
        [RefJurisdictionId]         INT             NULL,
        [SortOrder]                 DECIMAL (5, 2)  NULL,
        [RecordStartDateTime]       DATETIME        NULL,
        [RecordEndDateTime]         DATETIME        NULL,
        CONSTRAINT [PK_RefHotspotNeedIndicator]
            PRIMARY KEY CLUSTERED ([RefHotspotNeedIndicatorId] ASC)
    );
END
ELSE PRINT '[dbo].[RefHotspotNeedIndicator] already exists, skipping.';
GO
IF NOT EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_RefHotspotNeedIndicator_Organization')
BEGIN
    PRINT 'Adding FK_RefHotspotNeedIndicator_Organization...';
    ALTER TABLE [dbo].[RefHotspotNeedIndicator]
        ADD CONSTRAINT [FK_RefHotspotNeedIndicator_Organization]
            FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId]);
END
GO

-- RefHotspotReceivedIndicator -----------------------------------------
IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'RefHotspotReceivedIndicator' AND schema_id = SCHEMA_ID('dbo'))
BEGIN
    PRINT 'Creating [dbo].[RefHotspotReceivedIndicator]...';
    CREATE TABLE [dbo].[RefHotspotReceivedIndicator] (
        [RefHotspotReceivedIndicatorId] INT             IDENTITY (1, 1) NOT NULL,
        [Description]                   NVARCHAR (150)  NOT NULL,
        [Code]                          NVARCHAR (50)   NULL,
        [Definition]                    NVARCHAR (4000) NULL,
        [RefJurisdictionId]             INT             NULL,
        [SortOrder]                     DECIMAL (5, 2)  NULL,
        [RecordStartDateTime]           DATETIME        NULL,
        [RecordEndDateTime]             DATETIME        NULL,
        CONSTRAINT [PK_RefHotspotReceivedIndicator]
            PRIMARY KEY CLUSTERED ([RefHotspotReceivedIndicatorId] ASC)
    );
END
ELSE PRINT '[dbo].[RefHotspotReceivedIndicator] already exists, skipping.';
GO
IF NOT EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_RefHotspotReceivedIndicator_Organization')
BEGIN
    PRINT 'Adding FK_RefHotspotReceivedIndicator_Organization...';
    ALTER TABLE [dbo].[RefHotspotReceivedIndicator]
        ADD CONSTRAINT [FK_RefHotspotReceivedIndicator_Organization]
            FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId]);
END
GO

-- RefMagnetOrSpecialProgramEmphasisType -------------------------------
IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'RefMagnetOrSpecialProgramEmphasisType' AND schema_id = SCHEMA_ID('dbo'))
BEGIN
    PRINT 'Creating [dbo].[RefMagnetOrSpecialProgramEmphasisType]...';
    CREATE TABLE [dbo].[RefMagnetOrSpecialProgramEmphasisType] (
        [RefMagnetOrSpecialProgramEmphasisTypeId] INT             IDENTITY (1, 1) NOT NULL,
        [Description]                             NVARCHAR (150)  NOT NULL,
        [Code]                                    NVARCHAR (50)   NULL,
        [Definition]                              NVARCHAR (4000) NULL,
        [RefJurisdictionId]                       INT             NULL,
        [SortOrder]                               DECIMAL (5, 2)  NULL,
        [RecordStartDateTime]                     DATETIME        NULL,
        [RecordEndDateTime]                       DATETIME        NULL,
        CONSTRAINT [PK_RefMagnetOrSpecialProgramEmphasisType]
            PRIMARY KEY CLUSTERED ([RefMagnetOrSpecialProgramEmphasisTypeId] ASC)
    );
END
ELSE PRINT '[dbo].[RefMagnetOrSpecialProgramEmphasisType] already exists, skipping.';
GO
IF NOT EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_RefMagnetOrSpecialProgramEmphasisType_Organization')
BEGIN
    PRINT 'Adding FK_RefMagnetOrSpecialProgramEmphasisType_Organization...';
    ALTER TABLE [dbo].[RefMagnetOrSpecialProgramEmphasisType]
        ADD CONSTRAINT [FK_RefMagnetOrSpecialProgramEmphasisType_Organization]
            FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId]);
END
GO

-- RefNeglectedOrDelinquentLongTermStatus ------------------------------
IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'RefNeglectedOrDelinquentLongTermStatus' AND schema_id = SCHEMA_ID('dbo'))
BEGIN
    PRINT 'Creating [dbo].[RefNeglectedOrDelinquentLongTermStatus]...';
    CREATE TABLE [dbo].[RefNeglectedOrDelinquentLongTermStatus] (
        [RefNeglectedOrDelinquentLongTermStatusId] INT             IDENTITY (1, 1) NOT NULL,
        [Description]                              NVARCHAR (150)  NOT NULL,
        [Code]                                     NVARCHAR (50)   NULL,
        [Definition]                               NVARCHAR (4000) NULL,
        [RefJurisdictionId]                        INT             NULL,
        [SortOrder]                                DECIMAL (5, 2)  NULL,
        [RecordStartDateTime]                      DATETIME        NULL,
        [RecordEndDateTime]                        DATETIME        NULL,
        CONSTRAINT [PK_RefNeglectedOrDelinquentLongTermStatus]
            PRIMARY KEY CLUSTERED ([RefNeglectedOrDelinquentLongTermStatusId] ASC)
    );
END
ELSE PRINT '[dbo].[RefNeglectedOrDelinquentLongTermStatus] already exists, skipping.';
GO
IF NOT EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_RefNeglectedOrDelinquentLongTermStatus_Organization')
BEGIN
    PRINT 'Adding FK_RefNeglectedOrDelinquentLongTermStatus_Organization...';
    ALTER TABLE [dbo].[RefNeglectedOrDelinquentLongTermStatus]
        ADD CONSTRAINT [FK_RefNeglectedOrDelinquentLongTermStatus_Organization]
            FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId]);
END
GO

-- RefNeglectedOrDelinquentProgramEnrollmentSubpart --------------------
IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'RefNeglectedOrDelinquentProgramEnrollmentSubpart' AND schema_id = SCHEMA_ID('dbo'))
BEGIN
    PRINT 'Creating [dbo].[RefNeglectedOrDelinquentProgramEnrollmentSubpart]...';
    CREATE TABLE [dbo].[RefNeglectedOrDelinquentProgramEnrollmentSubpart] (
        [RefNeglectedOrDelinquentProgramEnrollmentSubpartId] INT             IDENTITY (1, 1) NOT NULL,
        [Description]                                        NVARCHAR (150)  NOT NULL,
        [Code]                                               NVARCHAR (50)   NULL,
        [Definition]                                         NVARCHAR (4000) NULL,
        [RefJurisdictionId]                                  INT             NULL,
        [SortOrder]                                          DECIMAL (5, 2)  NULL,
        [RecordStartDateTime]                                DATETIME        NULL,
        [RecordEndDateTime]                                  DATETIME        NULL,
        CONSTRAINT [PK_RefNeglectedOrDelinquentProgramEnrollmentSubpart]
            PRIMARY KEY CLUSTERED ([RefNeglectedOrDelinquentProgramEnrollmentSubpartId] ASC)
    );
END
ELSE PRINT '[dbo].[RefNeglectedOrDelinquentProgramEnrollmentSubpart] already exists, skipping.';
GO
IF NOT EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_RefNeglectedOrDelinquentProgramEnrollmentSubpart_Organization')
BEGIN
    PRINT 'Adding FK_RefNeglectedOrDelinquentProgramEnrollmentSubpart_Organization...';
    ALTER TABLE [dbo].[RefNeglectedOrDelinquentProgramEnrollmentSubpart]
        ADD CONSTRAINT [FK_RefNeglectedOrDelinquentProgramEnrollmentSubpart_Organization]
            FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId]);
END
GO

-- RefPreschoolDailyLength ---------------------------------------------
IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'RefPreschoolDailyLength' AND schema_id = SCHEMA_ID('dbo'))
BEGIN
    PRINT 'Creating [dbo].[RefPreschoolDailyLength]...';
    CREATE TABLE [dbo].[RefPreschoolDailyLength] (
        [RefPreschoolDailyLengthId] INT             IDENTITY (1, 1) NOT NULL,
        [Description]               NVARCHAR (150)  NOT NULL,
        [Code]                      NVARCHAR (50)   NULL,
        [Definition]                NVARCHAR (4000) NULL,
        [RefJurisdictionId]         INT             NULL,
        [SortOrder]                 DECIMAL (5, 2)  NULL,
        [RecordStartDateTime]       DATETIME        NULL,
        [RecordEndDateTime]         DATETIME        NULL,
        CONSTRAINT [PK_RefPreschoolDailyLength]
            PRIMARY KEY CLUSTERED ([RefPreschoolDailyLengthId] ASC)
    );
END
ELSE PRINT '[dbo].[RefPreschoolDailyLength] already exists, skipping.';
GO
IF NOT EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_RefPreschoolDailyLength_Organization')
BEGIN
    PRINT 'Adding FK_RefPreschoolDailyLength_Organization...';
    ALTER TABLE [dbo].[RefPreschoolDailyLength]
        ADD CONSTRAINT [FK_RefPreschoolDailyLength_Organization]
            FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId]);
END
GO

-- RefServiceChargeIndicator -------------------------------------------
IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'RefServiceChargeIndicator' AND schema_id = SCHEMA_ID('dbo'))
BEGIN
    PRINT 'Creating [dbo].[RefServiceChargeIndicator]...';
    CREATE TABLE [dbo].[RefServiceChargeIndicator] (
        [RefServiceChargeIndicatorId] INT             IDENTITY (1, 1) NOT NULL,
        [Description]                 NVARCHAR (150)  NOT NULL,
        [Code]                        NVARCHAR (50)   NULL,
        [Definition]                  NVARCHAR (4000) NULL,
        [RefJurisdictionId]           INT             NULL,
        [SortOrder]                   DECIMAL (5, 2)  NULL,
        [RecordStartDateTime]         DATETIME        NULL,
        [RecordEndDateTime]           DATETIME        NULL,
        CONSTRAINT [PK_RefServiceChargeIndicator]
            PRIMARY KEY CLUSTERED ([RefServiceChargeIndicatorId] ASC)
    );
END
ELSE PRINT '[dbo].[RefServiceChargeIndicator] already exists, skipping.';
GO
IF NOT EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_RefServiceChargeIndicator_Organization')
BEGIN
    PRINT 'Adding FK_RefServiceChargeIndicator_Organization...';
    ALTER TABLE [dbo].[RefServiceChargeIndicator]
        ADD CONSTRAINT [FK_RefServiceChargeIndicator_Organization]
            FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId]);
END
GO

-- RefStaffEvaluationScale ---------------------------------------------
IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'RefStaffEvaluationScale' AND schema_id = SCHEMA_ID('dbo'))
BEGIN
    PRINT 'Creating [dbo].[RefStaffEvaluationScale]...';
    CREATE TABLE [dbo].[RefStaffEvaluationScale] (
        [RefStaffEvaluationScaleId] INT             IDENTITY (1, 1) NOT NULL,
        [Description]               NVARCHAR (150)  NOT NULL,
        [Code]                      NVARCHAR (50)   NULL,
        [Definition]                NVARCHAR (4000) NULL,
        [RefJurisdictionId]         INT             NULL,
        [SortOrder]                 DECIMAL (5, 2)  NULL,
        [RecordStartDateTime]       DATETIME        NULL,
        [RecordEndDateTime]         DATETIME        NULL,
        CONSTRAINT [PK_RefStaffEvaluationScale]
            PRIMARY KEY CLUSTERED ([RefStaffEvaluationScaleId] ASC)
    );
END
ELSE PRINT '[dbo].[RefStaffEvaluationScale] already exists, skipping.';
GO
IF NOT EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_RefStaffEvaluationScale_Organization')
BEGIN
    PRINT 'Adding FK_RefStaffEvaluationScale_Organization...';
    ALTER TABLE [dbo].[RefStaffEvaluationScale]
        ADD CONSTRAINT [FK_RefStaffEvaluationScale_Organization]
            FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId]);
END
GO

-- RefTitleIIILanguageInstructionIndicator -----------------------------
IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'RefTitleIIILanguageInstructionIndicator' AND schema_id = SCHEMA_ID('dbo'))
BEGIN
    PRINT 'Creating [dbo].[RefTitleIIILanguageInstructionIndicator]...';
    CREATE TABLE [dbo].[RefTitleIIILanguageInstructionIndicator] (
        [RefTitleIIILanguageInstructionIndicatorId] INT             IDENTITY (1, 1) NOT NULL,
        [Description]                               NVARCHAR (150)  NOT NULL,
        [Code]                                      NVARCHAR (50)   NULL,
        [Definition]                                NVARCHAR (4000) NULL,
        [RefJurisdictionId]                         INT             NULL,
        [SortOrder]                                 DECIMAL (5, 2)  NULL,
        [RecordStartDateTime]                       DATETIME        NULL,
        [RecordEndDateTime]                         DATETIME        NULL,
        CONSTRAINT [PK_RefTitleIIILanguageInstructionIndicator]
            PRIMARY KEY CLUSTERED ([RefTitleIIILanguageInstructionIndicatorId] ASC)
    );
END
ELSE PRINT '[dbo].[RefTitleIIILanguageInstructionIndicator] already exists, skipping.';
GO
IF NOT EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_RefTitleIIILanguageInstructionIndicator_Organization')
BEGIN
    PRINT 'Adding FK_RefTitleIIILanguageInstructionIndicator_Organization...';
    ALTER TABLE [dbo].[RefTitleIIILanguageInstructionIndicator]
        ADD CONSTRAINT [FK_RefTitleIIILanguageInstructionIndicator_Organization]
            FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId]);
END
GO

-- RefWiFiEnabledDeviceNeedIndicator -----------------------------------
IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'RefWiFiEnabledDeviceNeedIndicator' AND schema_id = SCHEMA_ID('dbo'))
BEGIN
    PRINT 'Creating [dbo].[RefWiFiEnabledDeviceNeedIndicator]...';
    CREATE TABLE [dbo].[RefWiFiEnabledDeviceNeedIndicator] (
        [RefWiFiEnabledDeviceNeedIndicatorId] INT             IDENTITY (1, 1) NOT NULL,
        [Description]                         NVARCHAR (150)  NOT NULL,
        [Code]                                NVARCHAR (50)   NULL,
        [Definition]                          NVARCHAR (4000) NULL,
        [RefJurisdictionId]                   INT             NULL,
        [SortOrder]                           DECIMAL (5, 2)  NULL,
        [RecordStartDateTime]                 DATETIME        NULL,
        [RecordEndDateTime]                   DATETIME        NULL,
        CONSTRAINT [PK_RefWiFiEnabledDeviceNeedIndicator]
            PRIMARY KEY CLUSTERED ([RefWiFiEnabledDeviceNeedIndicatorId] ASC)
    );
END
ELSE PRINT '[dbo].[RefWiFiEnabledDeviceNeedIndicator] already exists, skipping.';
GO
IF NOT EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_RefWiFiEnabledDeviceNeedIndicator_Organization')
BEGIN
    PRINT 'Adding FK_RefWiFiEnabledDeviceNeedIndicator_Organization...';
    ALTER TABLE [dbo].[RefWiFiEnabledDeviceNeedIndicator]
        ADD CONSTRAINT [FK_RefWiFiEnabledDeviceNeedIndicator_Organization]
            FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId]);
END
GO

-- RefWiFiEnabledDeviceReceivedIndicator -------------------------------
IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'RefWiFiEnabledDeviceReceivedIndicator' AND schema_id = SCHEMA_ID('dbo'))
BEGIN
    PRINT 'Creating [dbo].[RefWiFiEnabledDeviceReceivedIndicator]...';
    CREATE TABLE [dbo].[RefWiFiEnabledDeviceReceivedIndicator] (
        [RefWiFiEnabledDeviceReceivedIndicatorId] INT             IDENTITY (1, 1) NOT NULL,
        [Description]                             NVARCHAR (150)  NOT NULL,
        [Code]                                    NVARCHAR (50)   NULL,
        [Definition]                              NVARCHAR (4000) NULL,
        [RefJurisdictionId]                       INT             NULL,
        [SortOrder]                               DECIMAL (5, 2)  NULL,
        [RecordStartDateTime]                     DATETIME        NULL,
        [RecordEndDateTime]                       DATETIME        NULL,
        CONSTRAINT [PK_RefWiFiEnabledDeviceReceivedIndicator]
            PRIMARY KEY CLUSTERED ([RefWiFiEnabledDeviceReceivedIndicatorId] ASC)
    );
END
ELSE PRINT '[dbo].[RefWiFiEnabledDeviceReceivedIndicator] already exists, skipping.';
GO
IF NOT EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_RefWiFiEnabledDeviceReceivedIndicator_Organization')
BEGIN
    PRINT 'Adding FK_RefWiFiEnabledDeviceReceivedIndicator_Organization...';
    ALTER TABLE [dbo].[RefWiFiEnabledDeviceReceivedIndicator]
        ADD CONSTRAINT [FK_RefWiFiEnabledDeviceReceivedIndicator_Organization]
            FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId]);
END
GO

PRINT '-- SECTION 1 complete. --';
GO


/* ============================================================
   SECTION 2 -- NEW NON-REF TABLES (4 tables)
   CredentialAwardIdentifier, CredentialAwardStatus,
   JobEvaluation, ProgramFinancialCharacteristic.

   Dependency order: Ref tables from Section 1 must exist first.
   RefCredentialAwardRelationshipType (renamed in Section 5) is
   NOT referenced here -- CredentialAwardStatus uses
   RefCredentialAwardStatusType (created in Section 1).
   ============================================================ */

PRINT '';
PRINT '-- SECTION 2: Creating new non-Ref tables --';
GO

-- CredentialAwardIdentifier -------------------------------------------
IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'CredentialAwardIdentifier' AND schema_id = SCHEMA_ID('dbo'))
BEGIN
    PRINT 'Creating [dbo].[CredentialAwardIdentifier]...';
    CREATE TABLE [dbo].[CredentialAwardIdentifier] (
        [CredentialAwardIdentifierId]              INT            IDENTITY (1, 1) NOT NULL,
        [CredentialAwardId]                        INT            NOT NULL,
        [CredentialAwardIdentifier]                NVARCHAR (512) NULL,
        [RefCredentialAwardIdentificationSystemId] INT            NULL,
        [RecordStartDateTime]                      DATETIME       NULL,
        [RecordEndDateTime]                        DATETIME       NULL,
        [RecordStatusId]                           INT            NULL,
        [DataCollectionId]                         INT            NULL,
        CONSTRAINT [PK_CredentialAwardIdentifier]
            PRIMARY KEY CLUSTERED ([CredentialAwardIdentifierId] ASC)
    );
END
ELSE PRINT '[dbo].[CredentialAwardIdentifier] already exists, skipping.';
GO
IF NOT EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_CredentialAwardIdentifier_CredentialAward')
BEGIN
    ALTER TABLE [dbo].[CredentialAwardIdentifier]
        ADD CONSTRAINT [FK_CredentialAwardIdentifier_CredentialAward]
            FOREIGN KEY ([CredentialAwardId]) REFERENCES [dbo].[CredentialAward] ([CredentialAwardId]);
END
GO
IF NOT EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_CredentialAwardIdentifier_RefCredentialAwardIdentificationSystem')
BEGIN
    ALTER TABLE [dbo].[CredentialAwardIdentifier]
        ADD CONSTRAINT [FK_CredentialAwardIdentifier_RefCredentialAwardIdentificationSystem]
            FOREIGN KEY ([RefCredentialAwardIdentificationSystemId])
            REFERENCES [dbo].[RefCredentialAwardIdentificationSystem] ([RefCredentialAwardIdentificationSystemId]);
END
GO
IF NOT EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_CredentialAwardIdentifier_DataCollection')
BEGIN
    ALTER TABLE [dbo].[CredentialAwardIdentifier]
        ADD CONSTRAINT [FK_CredentialAwardIdentifier_DataCollection]
            FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]);
END
GO
IF NOT EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_CredentialAwardIdentifier_RecordStatus')
BEGIN
    ALTER TABLE [dbo].[CredentialAwardIdentifier]
        ADD CONSTRAINT [FK_CredentialAwardIdentifier_RecordStatus]
            FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]);
END
GO

-- CredentialAwardStatus -----------------------------------------------
IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'CredentialAwardStatus' AND schema_id = SCHEMA_ID('dbo'))
BEGIN
    PRINT 'Creating [dbo].[CredentialAwardStatus]...';
    CREATE TABLE [dbo].[CredentialAwardStatus] (
        [CredentialAwardStatusId]        INT      IDENTITY (1, 1) NOT NULL,
        [CredentialAwardId]              INT      NOT NULL,
        [CredentialAwardStatusDate]      DATE     NULL,
        [RefCredentialAwardStatusTypeId] INT      NULL,
        [RecordStartDateTime]            DATETIME NULL,
        [RecordEndDateTime]              DATETIME NULL,
        [RecordStatusId]                 INT      NULL,
        [DataCollectionId]               INT      NULL,
        CONSTRAINT [PK_CredentialAwardStatus]
            PRIMARY KEY CLUSTERED ([CredentialAwardStatusId] ASC)
    );
END
ELSE PRINT '[dbo].[CredentialAwardStatus] already exists, skipping.';
GO
IF NOT EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_CredentialAwardStatus_CredentialAward')
BEGIN
    ALTER TABLE [dbo].[CredentialAwardStatus]
        ADD CONSTRAINT [FK_CredentialAwardStatus_CredentialAward]
            FOREIGN KEY ([CredentialAwardId]) REFERENCES [dbo].[CredentialAward] ([CredentialAwardId]);
END
GO
IF NOT EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_CredentialAwardStatus_RefCredentialAwardStatusType')
BEGIN
    ALTER TABLE [dbo].[CredentialAwardStatus]
        ADD CONSTRAINT [FK_CredentialAwardStatus_RefCredentialAwardStatusType]
            FOREIGN KEY ([RefCredentialAwardStatusTypeId])
            REFERENCES [dbo].[RefCredentialAwardStatusType] ([RefCredentialAwardStatusTypeId]);
END
GO
IF NOT EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_CredentialAwardStatus_RecordStatus')
BEGIN
    ALTER TABLE [dbo].[CredentialAwardStatus]
        ADD CONSTRAINT [FK_CredentialAwardStatus_RecordStatus]
            FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]);
END
GO
IF NOT EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_CredentialAwardStatus_DataCollection')
BEGIN
    ALTER TABLE [dbo].[CredentialAwardStatus]
        ADD CONSTRAINT [FK_CredentialAwardStatus_DataCollection]
            FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]);
END
GO

-- JobEvaluation -------------------------------------------------------
IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'JobEvaluation' AND schema_id = SCHEMA_ID('dbo'))
BEGIN
    PRINT 'Creating [dbo].[JobEvaluation]...';
    CREATE TABLE [dbo].[JobEvaluation] (
        [JobEvaluationId]                  INT      IDENTITY (1, 1) NOT NULL,
        [JobId]                            INT      NOT NULL,
        [RefEvaluationRequiredIndicatorId] INT      NULL,
        [RecordStartDateTime]              DATETIME NULL,
        [RecordEndDateTime]                DATETIME NULL,
        [RecordStatusId]                   INT      NULL,
        [DataCollectionId]                 INT      NULL,
        CONSTRAINT [PK_JobEvaluation]
            PRIMARY KEY CLUSTERED ([JobEvaluationId] ASC)
    );
END
ELSE PRINT '[dbo].[JobEvaluation] already exists, skipping.';
GO
IF NOT EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_JobEvaluation_Job')
BEGIN
    ALTER TABLE [dbo].[JobEvaluation]
        ADD CONSTRAINT [FK_JobEvaluation_Job]
            FOREIGN KEY ([JobId]) REFERENCES [dbo].[Job] ([JobId]);
END
GO
IF NOT EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_JobEvaluation_RefEvaluationRequiredIndicator')
BEGIN
    ALTER TABLE [dbo].[JobEvaluation]
        ADD CONSTRAINT [FK_JobEvaluation_RefEvaluationRequiredIndicator]
            FOREIGN KEY ([RefEvaluationRequiredIndicatorId])
            REFERENCES [dbo].[RefEvaluationRequiredIndicator] ([RefEvaluationRequiredIndicatorId]);
END
GO
IF NOT EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_JobEvaluation_RecordStatus')
BEGIN
    ALTER TABLE [dbo].[JobEvaluation]
        ADD CONSTRAINT [FK_JobEvaluation_RecordStatus]
            FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]);
END
GO
IF NOT EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_JobEvaluation_DataCollection')
BEGIN
    ALTER TABLE [dbo].[JobEvaluation]
        ADD CONSTRAINT [FK_JobEvaluation_DataCollection]
            FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]);
END
GO

-- ProgramFinancialCharacteristic --------------------------------------
IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'ProgramFinancialCharacteristic' AND schema_id = SCHEMA_ID('dbo'))
BEGIN
    PRINT 'Creating [dbo].[ProgramFinancialCharacteristic]...';
    CREATE TABLE [dbo].[ProgramFinancialCharacteristic] (
        [ProgramFinancialCharacteristicId] INT      IDENTITY (1, 1) NOT NULL,
        [ProgramId]                        INT      NOT NULL,
        [RefServiceChargeIndicatorId]      INT      NULL,
        [RecordStartDateTime]              DATETIME NULL,
        [RecordEndDateTime]                DATETIME NULL,
        [RecordStatusId]                   INT      NULL,
        [DataCollectionId]                 INT      NULL,
        CONSTRAINT [PK_ProgramFinancialCharacteristic]
            PRIMARY KEY CLUSTERED ([ProgramFinancialCharacteristicId] ASC)
    );
END
ELSE PRINT '[dbo].[ProgramFinancialCharacteristic] already exists, skipping.';
GO
IF NOT EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_ProgramFinancialCharacteristic_Program')
BEGIN
    ALTER TABLE [dbo].[ProgramFinancialCharacteristic]
        ADD CONSTRAINT [FK_ProgramFinancialCharacteristic_Program]
            FOREIGN KEY ([ProgramId]) REFERENCES [dbo].[Program] ([ProgramId]);
END
GO
IF NOT EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_ProgramFinancialCharacteristic_RefServiceChargeIndicator')
BEGIN
    ALTER TABLE [dbo].[ProgramFinancialCharacteristic]
        ADD CONSTRAINT [FK_ProgramFinancialCharacteristic_RefServiceChargeIndicator]
            FOREIGN KEY ([RefServiceChargeIndicatorId])
            REFERENCES [dbo].[RefServiceChargeIndicator] ([RefServiceChargeIndicatorId]);
END
GO
IF NOT EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_ProgramFinancialCharacteristic_RecordStatus')
BEGIN
    ALTER TABLE [dbo].[ProgramFinancialCharacteristic]
        ADD CONSTRAINT [FK_ProgramFinancialCharacteristic_RecordStatus]
            FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]);
END
GO
IF NOT EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_ProgramFinancialCharacteristic_DataCollection')
BEGIN
    ALTER TABLE [dbo].[ProgramFinancialCharacteristic]
        ADD CONSTRAINT [FK_ProgramFinancialCharacteristic_DataCollection]
            FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]);
END
GO

PRINT '-- SECTION 2 complete. --';
GO


/* ============================================================
   SECTION 3 -- NEW COLUMNS AND FK CONSTRAINTS ON EXISTING TABLES
   All new columns are nullable so existing rows are unaffected.
   FK constraint names match the V14 SSDT project exactly.
   ============================================================ */

PRINT '';
PRINT '-- SECTION 3: Adding new columns and FK constraints to existing tables --';
GO

-- CredentialAwardRelationship -----------------------------------------
-- Column rename handled in Section 5. Only FK is added here once
-- the column has been renamed and the referenced table exists.
-- (See Section 5 for full rename sequence.)

-- DataCollection ------------------------------------------------------
IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.DataCollection') AND name = 'RecordStartDateTime')
BEGIN
    PRINT 'DataCollection: adding RecordStartDateTime...';
    ALTER TABLE [dbo].[DataCollection] ADD [RecordStartDateTime] DATETIME NULL;
END
GO
IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.DataCollection') AND name = 'RecordEndDateTime')
BEGIN
    PRINT 'DataCollection: adding RecordEndDateTime...';
    ALTER TABLE [dbo].[DataCollection] ADD [RecordEndDateTime] DATETIME NULL;
END
GO

-- ELOrganizationAvailability ------------------------------------------
IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.ELOrganizationAvailability') AND name = 'RefPreschoolDailyLengthId')
BEGIN
    PRINT 'ELOrganizationAvailability: adding RefPreschoolDailyLengthId...';
    ALTER TABLE [dbo].[ELOrganizationAvailability] ADD [RefPreschoolDailyLengthId] INT NULL;
END
GO
IF NOT EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_ELOrganizationAvailability_RefPreschoolDailyLength')
BEGIN
    PRINT 'ELOrganizationAvailability: adding FK_ELOrganizationAvailability_RefPreschoolDailyLength...';
    ALTER TABLE [dbo].[ELOrganizationAvailability]
        ADD CONSTRAINT [FK_ELOrganizationAvailability_RefPreschoolDailyLength]
            FOREIGN KEY ([RefPreschoolDailyLengthId])
            REFERENCES [dbo].[RefPreschoolDailyLength] ([RefPreschoolDailyLengthId]);
END
GO

-- Incident ------------------------------------------------------------
IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Incident') AND name = 'RefHarassmentOrBullyingReligionTypeId')
BEGIN
    PRINT 'Incident: adding RefHarassmentOrBullyingReligionTypeId...';
    ALTER TABLE [dbo].[Incident] ADD [RefHarassmentOrBullyingReligionTypeId] INT NULL;
END
GO
IF NOT EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_Incident_RefHarassmentOrBullyingReligionType')
BEGIN
    PRINT 'Incident: adding FK_Incident_RefHarassmentOrBullyingReligionType...';
    ALTER TABLE [dbo].[Incident]
        ADD CONSTRAINT [FK_Incident_RefHarassmentOrBullyingReligionType]
            FOREIGN KEY ([RefHarassmentOrBullyingReligionTypeId])
            REFERENCES [dbo].[RefHarassmentOrBullyingReligionType] ([RefHarassmentOrBullyingReligionTypeId]);
END
GO
IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Incident') AND name = 'IncidentResponsibilityStaffIndicator')
BEGIN
    PRINT 'Incident: adding IncidentResponsibilityStaffIndicator...';
    ALTER TABLE [dbo].[Incident] ADD [IncidentResponsibilityStaffIndicator] BIT NULL;
END
GO
IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Incident') AND name = 'ShootingIncidentIndicator')
BEGIN
    PRINT 'Incident: adding ShootingIncidentIndicator...';
    ALTER TABLE [dbo].[Incident] ADD [ShootingIncidentIndicator] BIT NULL;
END
GO

-- K12School -----------------------------------------------------------
IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.K12School') AND name = 'RefMagnetOrSpecialProgramEmphasisTypeId')
BEGIN
    PRINT 'K12School: adding RefMagnetOrSpecialProgramEmphasisTypeId...';
    ALTER TABLE [dbo].[K12School] ADD [RefMagnetOrSpecialProgramEmphasisTypeId] INT NULL;
END
GO
IF NOT EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_K12School_RefMagnetOrSpecialProgramEmphasisType')
BEGIN
    PRINT 'K12School: adding FK_K12School_RefMagnetOrSpecialProgramEmphasisType...';
    ALTER TABLE [dbo].[K12School]
        ADD CONSTRAINT [FK_K12School_RefMagnetOrSpecialProgramEmphasisType]
            FOREIGN KEY ([RefMagnetOrSpecialProgramEmphasisTypeId])
            REFERENCES [dbo].[RefMagnetOrSpecialProgramEmphasisType] ([RefMagnetOrSpecialProgramEmphasisTypeId]);
END
GO

-- K12StaffAssignment --------------------------------------------------
IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.K12StaffAssignment') AND name = 'RefMepSessionTypeId')
BEGIN
    PRINT 'K12StaffAssignment: adding RefMepSessionTypeId...';
    ALTER TABLE [dbo].[K12StaffAssignment] ADD [RefMepSessionTypeId] INT NULL;
END
GO
IF NOT EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_K12StaffAssignment_RefMepSessionType')
BEGIN
    PRINT 'K12StaffAssignment: adding FK_K12StaffAssignment_RefMepSessionType...';
    ALTER TABLE [dbo].[K12StaffAssignment]
        ADD CONSTRAINT [FK_K12StaffAssignment_RefMepSessionType]
            FOREIGN KEY ([RefMepSessionTypeId]) REFERENCES [dbo].[RefMepSessionType] ([RefMepSessionTypeId]);
END
GO
IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.K12StaffAssignment') AND name = 'RefTitleIIILanguageInstructionIndicatorId')
BEGIN
    PRINT 'K12StaffAssignment: adding RefTitleIIILanguageInstructionIndicatorId...';
    ALTER TABLE [dbo].[K12StaffAssignment] ADD [RefTitleIIILanguageInstructionIndicatorId] INT NULL;
END
GO
IF NOT EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_K12StaffAssignment_RefTitleIIILanguageInstructionIndicator')
BEGIN
    PRINT 'K12StaffAssignment: adding FK_K12StaffAssignment_RefTitleIIILanguageInstructionIndicator...';
    ALTER TABLE [dbo].[K12StaffAssignment]
        ADD CONSTRAINT [FK_K12StaffAssignment_RefTitleIIILanguageInstructionIndicator]
            FOREIGN KEY ([RefTitleIIILanguageInstructionIndicatorId])
            REFERENCES [dbo].[RefTitleIIILanguageInstructionIndicator] ([RefTitleIIILanguageInstructionIndicatorId]);
END
GO

-- K12StudentCohort ----------------------------------------------------
IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.K12StudentCohort') AND name = 'RefEdFactsCohortGraduationStatusId')
BEGIN
    PRINT 'K12StudentCohort: adding RefEdFactsCohortGraduationStatusId...';
    ALTER TABLE [dbo].[K12StudentCohort] ADD [RefEdFactsCohortGraduationStatusId] INT NULL;
END
GO
IF NOT EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_K12StudentCohort_RefEdFactsCohortGraduationStatus')
BEGIN
    PRINT 'K12StudentCohort: adding FK_K12StudentCohort_RefEdFactsCohortGraduationStatus...';
    ALTER TABLE [dbo].[K12StudentCohort]
        ADD CONSTRAINT [FK_K12StudentCohort_RefEdFactsCohortGraduationStatus]
            FOREIGN KEY ([RefEdFactsCohortGraduationStatusId])
            REFERENCES [dbo].[RefEdFactsCohortGraduationStatus] ([RefEdFactsCohortGraduationStatusId]);
END
GO

-- LocationAddress -----------------------------------------------------
IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.LocationAddress') AND name = 'RefCanadianProvinceAbbreviationId')
BEGIN
    PRINT 'LocationAddress: adding RefCanadianProvinceAbbreviationId...';
    ALTER TABLE [dbo].[LocationAddress] ADD [RefCanadianProvinceAbbreviationId] INT NULL;
END
GO
IF NOT EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_LocationAddress_RefCanadianProvinceAbbreviation')
BEGIN
    PRINT 'LocationAddress: adding FK_LocationAddress_RefCanadianProvinceAbbreviation...';
    ALTER TABLE [dbo].[LocationAddress]
        ADD CONSTRAINT [FK_LocationAddress_RefCanadianProvinceAbbreviation]
            FOREIGN KEY ([RefCanadianProvinceAbbreviationId])
            REFERENCES [dbo].[RefCanadianProvinceAbbreviation] ([RefCanadianProvinceAbbreviationId]);
END
GO

-- OrganizationFederalAccountability -----------------------------------
IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.OrganizationFederalAccountability') AND name = 'RefCRDCJusticeFacilityTypeId')
BEGIN
    PRINT 'OrganizationFederalAccountability: adding RefCRDCJusticeFacilityTypeId...';
    ALTER TABLE [dbo].[OrganizationFederalAccountability] ADD [RefCRDCJusticeFacilityTypeId] INT NULL;
END
GO
IF NOT EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_OrganizationFederalAccountability_RefCRDCJusticeFacilityType')
BEGIN
    PRINT 'OrganizationFederalAccountability: adding FK_OrganizationFederalAccountability_RefCRDCJusticeFacilityType...';
    ALTER TABLE [dbo].[OrganizationFederalAccountability]
        ADD CONSTRAINT [FK_OrganizationFederalAccountability_RefCRDCJusticeFacilityType]
            FOREIGN KEY ([RefCRDCJusticeFacilityTypeId])
            REFERENCES [dbo].[RefCRDCJusticeFacilityType] ([RefCRDCJusticeFacilityTypeId]);
END
GO
IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.OrganizationFederalAccountability') AND name = 'RefComprehensiveSupportAndImprovementIdentificationTypeId')
BEGIN
    PRINT 'OrganizationFederalAccountability: adding RefComprehensiveSupportAndImprovementIdentificationTypeId...';
    ALTER TABLE [dbo].[OrganizationFederalAccountability] ADD [RefComprehensiveSupportAndImprovementIdentificationTypeId] INT NULL;
END
GO
IF NOT EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_OrganizationFederalAccountability_RefComprehensiveSupportAndImprovementIdentificationType')
BEGIN
    PRINT 'OrganizationFederalAccountability: adding FK_OrganizationFederalAccountability_RefComprehensiveSupportAndImprovementIdentificationType...';
    ALTER TABLE [dbo].[OrganizationFederalAccountability]
        ADD CONSTRAINT [FK_OrganizationFederalAccountability_RefComprehensiveSupportAndImprovementIdentificationType]
            FOREIGN KEY ([RefComprehensiveSupportAndImprovementIdentificationTypeId])
            REFERENCES [dbo].[RefComprehensiveSupportAndImprovementIdentificationType] ([RefComprehensiveSupportAndImprovementIdentificationTypeId]);
END
GO

-- PersonDetail --------------------------------------------------------
IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.PersonDetail') AND name = 'DeathDate')
BEGIN
    PRINT 'PersonDetail: adding DeathDate...';
    ALTER TABLE [dbo].[PersonDetail] ADD [DeathDate] DATE NULL;
END
GO

-- PersonDigitalAccess -------------------------------------------------
IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.PersonDigitalAccess') AND name = 'RefHotspotNeedIndicatorId')
BEGIN
    PRINT 'PersonDigitalAccess: adding RefHotspotNeedIndicatorId...';
    ALTER TABLE [dbo].[PersonDigitalAccess] ADD [RefHotspotNeedIndicatorId] INT NULL;
END
GO
IF NOT EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_PersonDigitalAccess_RefHotspotNeedIndicator')
BEGIN
    PRINT 'PersonDigitalAccess: adding FK_PersonDigitalAccess_RefHotspotNeedIndicator...';
    ALTER TABLE [dbo].[PersonDigitalAccess]
        ADD CONSTRAINT [FK_PersonDigitalAccess_RefHotspotNeedIndicator]
            FOREIGN KEY ([RefHotspotNeedIndicatorId])
            REFERENCES [dbo].[RefHotspotNeedIndicator] ([RefHotspotNeedIndicatorId]);
END
GO
IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.PersonDigitalAccess') AND name = 'RefHotspotReceivedIndicatorId')
BEGIN
    PRINT 'PersonDigitalAccess: adding RefHotspotReceivedIndicatorId...';
    ALTER TABLE [dbo].[PersonDigitalAccess] ADD [RefHotspotReceivedIndicatorId] INT NULL;
END
GO
IF NOT EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_PersonDigitalAccess_RefHotspotReceivedIndicator')
BEGIN
    PRINT 'PersonDigitalAccess: adding FK_PersonDigitalAccess_RefHotspotReceivedIndicator...';
    ALTER TABLE [dbo].[PersonDigitalAccess]
        ADD CONSTRAINT [FK_PersonDigitalAccess_RefHotspotReceivedIndicator]
            FOREIGN KEY ([RefHotspotReceivedIndicatorId])
            REFERENCES [dbo].[RefHotspotReceivedIndicator] ([RefHotspotReceivedIndicatorId]);
END
GO
IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.PersonDigitalAccess') AND name = 'RefWiFiEnabledDeviceNeedIndicatorId')
BEGIN
    PRINT 'PersonDigitalAccess: adding RefWiFiEnabledDeviceNeedIndicatorId...';
    ALTER TABLE [dbo].[PersonDigitalAccess] ADD [RefWiFiEnabledDeviceNeedIndicatorId] INT NULL;
END
GO
IF NOT EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_PersonDigitalAccess_RefWiFiEnabledDeviceNeedIndicator')
BEGIN
    PRINT 'PersonDigitalAccess: adding FK_PersonDigitalAccess_RefWiFiEnabledDeviceNeedIndicator...';
    ALTER TABLE [dbo].[PersonDigitalAccess]
        ADD CONSTRAINT [FK_PersonDigitalAccess_RefWiFiEnabledDeviceNeedIndicator]
            FOREIGN KEY ([RefWiFiEnabledDeviceNeedIndicatorId])
            REFERENCES [dbo].[RefWiFiEnabledDeviceNeedIndicator] ([RefWiFiEnabledDeviceNeedIndicatorId]);
END
GO
IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.PersonDigitalAccess') AND name = 'RefWiFiEnabledDeviceReceivedIndicatorId')
BEGIN
    PRINT 'PersonDigitalAccess: adding RefWiFiEnabledDeviceReceivedIndicatorId...';
    ALTER TABLE [dbo].[PersonDigitalAccess] ADD [RefWiFiEnabledDeviceReceivedIndicatorId] INT NULL;
END
GO
IF NOT EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_PersonDigitalAccess_RefWiFiEnabledDeviceReceivedIndicator')
BEGIN
    PRINT 'PersonDigitalAccess: adding FK_PersonDigitalAccess_RefWiFiEnabledDeviceReceivedIndicator...';
    ALTER TABLE [dbo].[PersonDigitalAccess]
        ADD CONSTRAINT [FK_PersonDigitalAccess_RefWiFiEnabledDeviceReceivedIndicator]
            FOREIGN KEY ([RefWiFiEnabledDeviceReceivedIndicatorId])
            REFERENCES [dbo].[RefWiFiEnabledDeviceReceivedIndicator] ([RefWiFiEnabledDeviceReceivedIndicatorId]);
END
GO

-- ProgramParticipationNeglected ---------------------------------------
IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.ProgramParticipationNeglected') AND name = 'RefNeglectedOrDelinquentLongTermStatusId')
BEGIN
    PRINT 'ProgramParticipationNeglected: adding RefNeglectedOrDelinquentLongTermStatusId...';
    ALTER TABLE [dbo].[ProgramParticipationNeglected] ADD [RefNeglectedOrDelinquentLongTermStatusId] INT NULL;
END
GO
IF NOT EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_ProgramParticipationNeglected_RefNeglectedOrDelinquentLongTermStatus')
BEGIN
    PRINT 'ProgramParticipationNeglected: adding FK_ProgramParticipationNeglected_RefNeglectedOrDelinquentLongTermStatus...';
    ALTER TABLE [dbo].[ProgramParticipationNeglected]
        ADD CONSTRAINT [FK_ProgramParticipationNeglected_RefNeglectedOrDelinquentLongTermStatus]
            FOREIGN KEY ([RefNeglectedOrDelinquentLongTermStatusId])
            REFERENCES [dbo].[RefNeglectedOrDelinquentLongTermStatus] ([RefNeglectedOrDelinquentLongTermStatusId]);
END
GO
IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.ProgramParticipationNeglected') AND name = 'RefNeglectedOrDelinquentProgramEnrollmentSubpartId')
BEGIN
    PRINT 'ProgramParticipationNeglected: adding RefNeglectedOrDelinquentProgramEnrollmentSubpartId...';
    ALTER TABLE [dbo].[ProgramParticipationNeglected] ADD [RefNeglectedOrDelinquentProgramEnrollmentSubpartId] INT NULL;
END
GO
IF NOT EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_ProgramParticipationNeglected_RefNeglectedOrDelinquentProgramEnrollmentSubpart')
BEGIN
    PRINT 'ProgramParticipationNeglected: adding FK_ProgramParticipationNeglected_RefNeglectedOrDelinquentProgramEnrollmentSubpart...';
    ALTER TABLE [dbo].[ProgramParticipationNeglected]
        ADD CONSTRAINT [FK_ProgramParticipationNeglected_RefNeglectedOrDelinquentProgramEnrollmentSubpart]
            FOREIGN KEY ([RefNeglectedOrDelinquentProgramEnrollmentSubpartId])
            REFERENCES [dbo].[RefNeglectedOrDelinquentProgramEnrollmentSubpart] ([RefNeglectedOrDelinquentProgramEnrollmentSubpartId]);
END
GO

-- ProgramParticipationTitleIIILep -------------------------------------
IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.ProgramParticipationTitleIIILep') AND name = 'RefEnglishLearnerExitedStatusId')
BEGIN
    PRINT 'ProgramParticipationTitleIIILep: adding RefEnglishLearnerExitedStatusId...';
    ALTER TABLE [dbo].[ProgramParticipationTitleIIILep] ADD [RefEnglishLearnerExitedStatusId] INT NULL;
END
GO
IF NOT EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_ProgramParticipationTitleIIILep_RefEnglishLearnerExitedStatus')
BEGIN
    PRINT 'ProgramParticipationTitleIIILep: adding FK_ProgramParticipationTitleIIILep_RefEnglishLearnerExitedStatus...';
    ALTER TABLE [dbo].[ProgramParticipationTitleIIILep]
        ADD CONSTRAINT [FK_ProgramParticipationTitleIIILep_RefEnglishLearnerExitedStatus]
            FOREIGN KEY ([RefEnglishLearnerExitedStatusId])
            REFERENCES [dbo].[RefEnglishLearnerExitedStatus] ([RefEnglishLearnerExitedStatusId]);
END
GO

-- StaffEvaluation -----------------------------------------------------
IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.StaffEvaluation') AND name = 'RefStaffEvaluationScaleId')
BEGIN
    PRINT 'StaffEvaluation: adding RefStaffEvaluationScaleId...';
    ALTER TABLE [dbo].[StaffEvaluation] ADD [RefStaffEvaluationScaleId] INT NULL;
END
GO
IF NOT EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_StaffEvaluation_RefStaffEvaluationScale')
BEGIN
    PRINT 'StaffEvaluation: adding FK_StaffEvaluation_RefStaffEvaluationScale...';
    ALTER TABLE [dbo].[StaffEvaluation]
        ADD CONSTRAINT [FK_StaffEvaluation_RefStaffEvaluationScale]
            FOREIGN KEY ([RefStaffEvaluationScaleId])
            REFERENCES [dbo].[RefStaffEvaluationScale] ([RefStaffEvaluationScaleId]);
END
GO

PRINT '-- SECTION 3 complete. --';
GO


/* ============================================================
   SECTION 4 -- COLUMN RENAME: AssessmentResult
   V13: AssessmentResultScoreStandardError      DECIMAL(9,2) NULL
   V14: AssessmentResultScoreValueStandardError DECIMAL(9,2) NULL

   Pure in-place rename via sp_rename. No data movement needed.
   sp_rename emits an informational caution message; this is
   expected and safe.
   ============================================================ */

PRINT '';
PRINT '-- SECTION 4: Renaming AssessmentResult.AssessmentResultScoreStandardError --';
GO

IF EXISTS (
    SELECT 1 FROM sys.columns
    WHERE object_id = OBJECT_ID('dbo.AssessmentResult')
      AND name = 'AssessmentResultScoreStandardError'
)
BEGIN
    PRINT 'AssessmentResult: renaming column...';
    EXEC sp_rename
        'dbo.AssessmentResult.AssessmentResultScoreStandardError',
        'AssessmentResultScoreValueStandardError',
        'COLUMN';
    PRINT 'AssessmentResult: column rename complete.';
END
ELSE
    PRINT 'AssessmentResult.AssessmentResultScoreStandardError not found; rename already applied or not needed.';
GO

PRINT '-- SECTION 4 complete. --';
GO


/* ============================================================
   SECTION 5 -- TABLE AND COLUMN RENAME:
   RefCredentialAwardRelationship -> RefCredentialAwardRelationshipType

   V13: table  RefCredentialAwardRelationship
        PK col  RefCredentialAwardRelationshipId
        FK col  CredentialAwardRelationship.RefCredentialAwardRelationshipId
        FK con  FK_CredentialAwardRelationship_RefCredentialAwardRelationship
   V14: table  RefCredentialAwardRelationshipType
        PK col  RefCredentialAwardRelationshipTypeId
        FK col  CredentialAwardRelationship.RefCredentialAwardRelationshipTypeId
        FK con  FK_CredentialAwardRelationship_RefCredentialAwardRelationshipType

   Pure rename -- identical structure, all data preserved in-place.
   Sequence: drop FK on fact table -> drop PK -> rename PK column ->
             rename table -> recreate PK -> add Organization FK ->
             rename FK column on fact table -> recreate FK.
   ============================================================ */

PRINT '';
PRINT '-- SECTION 5: Renaming RefCredentialAwardRelationship -> RefCredentialAwardRelationshipType --';
GO

-- Step 5a: Drop FK on CredentialAwardRelationship
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys
    WHERE name = 'FK_CredentialAwardRelationship_RefCredentialAwardRelationship'
      AND parent_object_id = OBJECT_ID('dbo.CredentialAwardRelationship')
)
BEGIN
    PRINT 'Dropping FK_CredentialAwardRelationship_RefCredentialAwardRelationship...';
    ALTER TABLE [dbo].[CredentialAwardRelationship]
        DROP CONSTRAINT [FK_CredentialAwardRelationship_RefCredentialAwardRelationship];
END
ELSE
    PRINT 'FK_CredentialAwardRelationship_RefCredentialAwardRelationship not found, skipping.';
GO

-- Step 5b: Drop old PK (required before renaming the PK column)
IF EXISTS (
    SELECT 1 FROM sys.key_constraints
    WHERE name = 'PK_RefCredentialAwardRelationship'
      AND parent_object_id = OBJECT_ID('dbo.RefCredentialAwardRelationship')
)
BEGIN
    PRINT 'Dropping PK_RefCredentialAwardRelationship...';
    ALTER TABLE [dbo].[RefCredentialAwardRelationship]
        DROP CONSTRAINT [PK_RefCredentialAwardRelationship];
END
ELSE
    PRINT 'PK_RefCredentialAwardRelationship not found, skipping.';
GO

-- Step 5c: Rename PK column
IF EXISTS (
    SELECT 1 FROM sys.columns
    WHERE object_id = OBJECT_ID('dbo.RefCredentialAwardRelationship')
      AND name = 'RefCredentialAwardRelationshipId'
)
BEGIN
    PRINT 'Renaming RefCredentialAwardRelationship.RefCredentialAwardRelationshipId -> RefCredentialAwardRelationshipTypeId...';
    EXEC sp_rename
        'dbo.RefCredentialAwardRelationship.RefCredentialAwardRelationshipId',
        'RefCredentialAwardRelationshipTypeId',
        'COLUMN';
END
ELSE
    PRINT 'Column RefCredentialAwardRelationshipId not found; skipping.';
GO

-- Step 5d: Rename table
IF EXISTS (SELECT 1 FROM sys.tables WHERE name = 'RefCredentialAwardRelationship' AND schema_id = SCHEMA_ID('dbo'))
   AND NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'RefCredentialAwardRelationshipType' AND schema_id = SCHEMA_ID('dbo'))
BEGIN
    PRINT 'Renaming table RefCredentialAwardRelationship -> RefCredentialAwardRelationshipType...';
    EXEC sp_rename 'dbo.RefCredentialAwardRelationship', 'RefCredentialAwardRelationshipType';
END
ELSE IF EXISTS (SELECT 1 FROM sys.tables WHERE name = 'RefCredentialAwardRelationshipType' AND schema_id = SCHEMA_ID('dbo'))
    PRINT 'Table RefCredentialAwardRelationshipType already exists; rename already applied.';
ELSE
    PRINT 'Table RefCredentialAwardRelationship not found; skipping.';
GO

-- Step 5e: Recreate PK with V14 name
IF NOT EXISTS (
    SELECT 1 FROM sys.key_constraints
    WHERE name = 'PK_RefCredentialAwardRelationshipType'
      AND parent_object_id = OBJECT_ID('dbo.RefCredentialAwardRelationshipType')
)
BEGIN
    PRINT 'Recreating PK_RefCredentialAwardRelationshipType...';
    ALTER TABLE [dbo].[RefCredentialAwardRelationshipType]
        ADD CONSTRAINT [PK_RefCredentialAwardRelationshipType]
            PRIMARY KEY CLUSTERED ([RefCredentialAwardRelationshipTypeId] ASC);
END
ELSE
    PRINT 'PK_RefCredentialAwardRelationshipType already exists, skipping.';
GO

-- Step 5f: Add FK to Organization (RefJurisdictionId)
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys
    WHERE name = 'FK_RefCredentialAwardRelationshipType_Organization'
      AND parent_object_id = OBJECT_ID('dbo.RefCredentialAwardRelationshipType')
)
BEGIN
    PRINT 'Adding FK_RefCredentialAwardRelationshipType_Organization...';
    ALTER TABLE [dbo].[RefCredentialAwardRelationshipType]
        ADD CONSTRAINT [FK_RefCredentialAwardRelationshipType_Organization]
            FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId]);
END
ELSE
    PRINT 'FK_RefCredentialAwardRelationshipType_Organization already exists, skipping.';
GO

-- Step 5g: Rename FK column on CredentialAwardRelationship
IF EXISTS (
    SELECT 1 FROM sys.columns
    WHERE object_id = OBJECT_ID('dbo.CredentialAwardRelationship')
      AND name = 'RefCredentialAwardRelationshipId'
)
BEGIN
    PRINT 'Renaming CredentialAwardRelationship.RefCredentialAwardRelationshipId -> RefCredentialAwardRelationshipTypeId...';
    EXEC sp_rename
        'dbo.CredentialAwardRelationship.RefCredentialAwardRelationshipId',
        'RefCredentialAwardRelationshipTypeId',
        'COLUMN';
END
ELSE
    PRINT 'CredentialAwardRelationship.RefCredentialAwardRelationshipId not found; skipping.';
GO

-- Step 5h: Recreate FK with V14 name
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys
    WHERE name = 'FK_CredentialAwardRelationship_RefCredentialAwardRelationshipType'
      AND parent_object_id = OBJECT_ID('dbo.CredentialAwardRelationship')
)
BEGIN
    PRINT 'Recreating FK_CredentialAwardRelationship_RefCredentialAwardRelationshipType...';
    ALTER TABLE [dbo].[CredentialAwardRelationship]
        ADD CONSTRAINT [FK_CredentialAwardRelationship_RefCredentialAwardRelationshipType]
            FOREIGN KEY ([RefCredentialAwardRelationshipTypeId])
            REFERENCES [dbo].[RefCredentialAwardRelationshipType] ([RefCredentialAwardRelationshipTypeId]);
END
ELSE
    PRINT 'FK_CredentialAwardRelationship_RefCredentialAwardRelationshipType already exists, skipping.';
GO

PRINT '-- SECTION 5 complete. --';
GO


/* ============================================================
   SECTION 6 -- NULLABILITY CHANGE: IncidentPerson.PersonId
   V13: PersonId INT NOT NULL
   V14: PersonId INT NULL

   Relaxing NOT NULL to NULL is always safe for existing data.
   The FK to Person is dropped temporarily (SQL Server requires
   this before ALTER COLUMN) and then restored.
   ============================================================ */

PRINT '';
PRINT '-- SECTION 6: IncidentPerson.PersonId nullability change --';
GO

IF EXISTS (
    SELECT 1 FROM sys.columns
    WHERE object_id   = OBJECT_ID('dbo.IncidentPerson')
      AND name        = 'PersonId'
      AND is_nullable = 0
)
BEGIN
    IF EXISTS (
        SELECT 1 FROM sys.foreign_keys
        WHERE name = 'FK_IncidentPerson_Person'
          AND parent_object_id = OBJECT_ID('dbo.IncidentPerson')
    )
    BEGIN
        PRINT 'IncidentPerson: temporarily dropping FK_IncidentPerson_Person...';
        ALTER TABLE [dbo].[IncidentPerson] DROP CONSTRAINT [FK_IncidentPerson_Person];
    END

    PRINT 'IncidentPerson: altering PersonId to NULL...';
    ALTER TABLE [dbo].[IncidentPerson] ALTER COLUMN [PersonId] INT NULL;

    IF NOT EXISTS (
        SELECT 1 FROM sys.foreign_keys
        WHERE name = 'FK_IncidentPerson_Person'
          AND parent_object_id = OBJECT_ID('dbo.IncidentPerson')
    )
    BEGIN
        PRINT 'IncidentPerson: restoring FK_IncidentPerson_Person...';
        ALTER TABLE [dbo].[IncidentPerson]
            ADD CONSTRAINT [FK_IncidentPerson_Person]
                FOREIGN KEY ([PersonId]) REFERENCES [dbo].[Person] ([PersonId]);
    END

    PRINT 'IncidentPerson: PersonId is now nullable.';
END
ELSE
    PRINT 'IncidentPerson.PersonId is already nullable; skipping.';
GO

PRINT '-- SECTION 6 complete. --';
GO


/* ============================================================
   SECTION 7 -- PK CONSTRAINT RENAME: RefBrailleAccessType
   V13: PK_RefBrailleAccessType   (correct spelling)
   V14: PK_RefBrailleAcccessType  (triple-c, matches SSDT project)

   This is a deliberate change in the V14 SSDT project. We rename
   the constraint to match exactly.
   ============================================================ */

PRINT '';
PRINT '-- SECTION 7: RefBrailleAccessType PK constraint rename --';
GO

IF EXISTS (
    SELECT 1 FROM sys.key_constraints
    WHERE name = 'PK_RefBrailleAccessType'
      AND parent_object_id = OBJECT_ID('dbo.RefBrailleAccessType')
)
AND NOT EXISTS (
    SELECT 1 FROM sys.key_constraints
    WHERE name = 'PK_RefBrailleAcccessType'
      AND parent_object_id = OBJECT_ID('dbo.RefBrailleAccessType')
)
BEGIN
    PRINT 'RefBrailleAccessType: renaming PK_RefBrailleAccessType -> PK_RefBrailleAcccessType...';
    EXEC sp_rename 'dbo.RefBrailleAccessType.PK_RefBrailleAccessType', 'PK_RefBrailleAcccessType';
END
ELSE
    PRINT 'RefBrailleAccessType PK rename already applied or not needed; skipping.';
GO

PRINT '-- SECTION 7 complete. --';
GO


/* ============================================================
   SECTION 8 -- POST-UPGRADE VALIDATION
   ============================================================ */

PRINT '';
PRINT '-- SECTION 8: Post-upgrade validation --';
GO

-- New tables
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
    ('RefWiFiEnabledDeviceReceivedIndicator'),
    ('CredentialAwardIdentifier'),
    ('CredentialAwardStatus'),
    ('JobEvaluation'),
    ('ProgramFinancialCharacteristic')
) v(tbl)
WHERE NOT EXISTS (
    SELECT 1 FROM sys.tables WHERE name = v.tbl AND schema_id = SCHEMA_ID('dbo')
);
IF EXISTS (SELECT 1 FROM @missing_tables)
BEGIN
    PRINT 'WARNING: The following expected new tables were NOT found:';
    SELECT TableName FROM @missing_tables ORDER BY TableName;
END
ELSE
    PRINT 'OK: All 25 new tables present.';
GO

-- New/renamed columns
DECLARE @missing_cols TABLE (TableName NVARCHAR(200), ColumnName NVARCHAR(200));
INSERT INTO @missing_cols
SELECT t, c FROM (VALUES
    ('AssessmentResult',                  'AssessmentResultScoreValueStandardError'),
    ('CredentialAwardRelationship',       'RefCredentialAwardRelationshipTypeId'),
    ('DataCollection',                    'RecordStartDateTime'),
    ('DataCollection',                    'RecordEndDateTime'),
    ('ELOrganizationAvailability',        'RefPreschoolDailyLengthId'),
    ('Incident',                          'RefHarassmentOrBullyingReligionTypeId'),
    ('Incident',                          'IncidentResponsibilityStaffIndicator'),
    ('Incident',                          'ShootingIncidentIndicator'),
    ('K12School',                         'RefMagnetOrSpecialProgramEmphasisTypeId'),
    ('K12StaffAssignment',                'RefMepSessionTypeId'),
    ('K12StaffAssignment',                'RefTitleIIILanguageInstructionIndicatorId'),
    ('K12StudentCohort',                  'RefEdFactsCohortGraduationStatusId'),
    ('LocationAddress',                   'RefCanadianProvinceAbbreviationId'),
    ('OrganizationFederalAccountability', 'RefCRDCJusticeFacilityTypeId'),
    ('OrganizationFederalAccountability', 'RefComprehensiveSupportAndImprovementIdentificationTypeId'),
    ('PersonDetail',                      'DeathDate'),
    ('PersonDigitalAccess',               'RefHotspotNeedIndicatorId'),
    ('PersonDigitalAccess',               'RefHotspotReceivedIndicatorId'),
    ('PersonDigitalAccess',               'RefWiFiEnabledDeviceNeedIndicatorId'),
    ('PersonDigitalAccess',               'RefWiFiEnabledDeviceReceivedIndicatorId'),
    ('ProgramParticipationNeglected',     'RefNeglectedOrDelinquentLongTermStatusId'),
    ('ProgramParticipationNeglected',     'RefNeglectedOrDelinquentProgramEnrollmentSubpartId'),
    ('ProgramParticipationTitleIIILep',   'RefEnglishLearnerExitedStatusId'),
    ('StaffEvaluation',                   'RefStaffEvaluationScaleId')
) v(t, c)
WHERE NOT EXISTS (
    SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.' + v.t) AND name = v.c
);
IF EXISTS (SELECT 1 FROM @missing_cols)
BEGIN
    PRINT 'WARNING: The following expected columns were NOT found:';
    SELECT TableName, ColumnName FROM @missing_cols ORDER BY TableName, ColumnName;
END
ELSE
    PRINT 'OK: All expected new and renamed columns present.';
GO

-- Old names should be gone
IF EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.AssessmentResult') AND name = 'AssessmentResultScoreStandardError')
    PRINT 'WARNING: AssessmentResult.AssessmentResultScoreStandardError still exists. Check Section 4.';
ELSE
    PRINT 'OK: AssessmentResult.AssessmentResultScoreStandardError removed.';
GO
IF EXISTS (SELECT 1 FROM sys.tables WHERE name = 'RefCredentialAwardRelationship' AND schema_id = SCHEMA_ID('dbo'))
    PRINT 'WARNING: Table RefCredentialAwardRelationship still exists. Check Section 5.';
ELSE
    PRINT 'OK: RefCredentialAwardRelationship renamed.';
GO

-- IncidentPerson.PersonId should be nullable
IF EXISTS (
    SELECT 1 FROM sys.columns
    WHERE object_id   = OBJECT_ID('dbo.IncidentPerson')
      AND name        = 'PersonId'
      AND is_nullable = 1
)
    PRINT 'OK: IncidentPerson.PersonId is nullable.';
ELSE
    PRINT 'WARNING: IncidentPerson.PersonId is still NOT NULL. Check Section 6.';
GO

-- PK rename check
IF EXISTS (SELECT 1 FROM sys.key_constraints WHERE name = 'PK_RefBrailleAcccessType' AND parent_object_id = OBJECT_ID('dbo.RefBrailleAccessType'))
    PRINT 'OK: PK_RefBrailleAcccessType present.';
ELSE
    PRINT 'WARNING: PK_RefBrailleAcccessType not found. Check Section 7.';
GO

PRINT '';
PRINT '===============================================================';
PRINT 'CEDS IDS Upgrade V13 --> V14 complete.';
PRINT 'Completed: ' + CONVERT(VARCHAR, GETDATE(), 120);
PRINT '';
PRINT 'NEXT STEPS:';
PRINT '  1. Run the CEDS V14 Ref table seed scripts from the OSC to';
PRINT '     populate all new Ref tables with option set data.';
PRINT '  2. Update any application code, views, stored procedures,';
PRINT '     or ETL jobs referencing the renamed objects:';
PRINT '       AssessmentResult.AssessmentResultScoreStandardError';
PRINT '         --> AssessmentResultScoreValueStandardError';
PRINT '       Table RefCredentialAwardRelationship';
PRINT '         --> RefCredentialAwardRelationshipType';
PRINT '       Column RefCredentialAwardRelationship.RefCredentialAwardRelationshipId';
PRINT '         --> RefCredentialAwardRelationshipTypeId';
PRINT '       Column CredentialAwardRelationship.RefCredentialAwardRelationshipId';
PRINT '         --> RefCredentialAwardRelationshipTypeId';
PRINT '===============================================================';
GO
