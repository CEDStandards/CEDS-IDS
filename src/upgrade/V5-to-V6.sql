/*    Common Education Data Standards (CEDS)
      Version 6
      Normalized Data Schema (NDS)
      
	  Model database update script
	  
      This script updates a NDS version 5 model database to version 6.  
      
      WARNING!!!!
      This script is intended for use on a model database and should not 
      be used on a database that contains data.
      
      The script was generated from a model database 
      hosted on a Microsoft SQL Server 2008 R2 platform.  
      
      Questions on this script can be sent to ceds@ed.gov
      
      More information on the data model is available at the CEDS website:  
      http://ceds.ed.gov
      	  
*/ 

-- Uncomment next two lines to update a database named CEDS-NDS-V6 or specify appropriate DB name for your server.
--USE [CEDS-NDS-V6];
--GO


 
PRINT N'Drop columns and Ref tables for removed elements'
GO
 
DROP TABLE [dbo].[DisciplineMethodFirearm]
GO
 
DROP TABLE [dbo].[DisciplineMethodOfCwd]
GO
 
DROP TABLE [dbo].[IDEADisciplineMethodFirearm] 
GO
 

PRINT N'Create Ref tables for elements with option sets'
GO

PRINT N'	Assessment Early Learning Developmental Domain (001000)'
GO

CREATE TABLE [dbo].[RefAssessmentELDevelopmentalDomain](
   [RefAssessmentELDevelopmentalDomainId] [int] IDENTITY(1,1) NOT NULL,
   [Description] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](60) NULL,
   [Definition] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   [SortOrder] [decimal](6,2) NULL,
   CONSTRAINT [PK_RefAssessmentELDevelopmentalDomain] PRIMARY KEY CLUSTERED ([RefAssessmentELDevelopmentalDomainId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefAssessmentELDevelopmentalDomain]  WITH CHECK ADD CONSTRAINT [FK_RefAssessmentELDevelopmentalDomain_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefAssessmentELDevelopmentalDomain] CHECK CONSTRAINT [FK_RefAssessmentELDevelopmentalDomain_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAssessmentELDevelopmentalDomain', @level2type=N'COLUMN',@level2name=N'RefAssessmentELDevelopmentalDomainId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Developmental domains related to early learning and used for assessing a child''s kindergarten readiness. [CEDS Element: Assessment Early Learning Developmental Domain, ID:001000]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAssessmentELDevelopmentalDomain', @level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAssessmentELDevelopmentalDomain', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAssessmentELDevelopmentalDomain', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Developmental domains related to early learning and used for assessing a child''s kindergarten readiness.[CEDS Element: Assessment Early Learning Developmental Domain, ID:001000]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefAssessmentELDevelopmentalDomain'
GO

PRINT N'	Charter School Management Organization Type (001650)'
GO

CREATE TABLE [dbo].[RefCharterSchoolManagementOrganizationType](
   [RefCharterSchoolManagementOrganizationTypeId] [int] IDENTITY(1,1) NOT NULL,
   [Description] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](60) NULL,
   [Definition] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   [SortOrder] [decimal](6,2) NULL,
   CONSTRAINT [PK_RefCharterSchoolManagementOrganizationType] PRIMARY KEY CLUSTERED ([RefCharterSchoolManagementOrganizationTypeId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefCharterSchoolManagementOrganizationType]  WITH CHECK ADD CONSTRAINT [FK_RefCharterSchoolManagementOrganizationType_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefCharterSchoolManagementOrganizationType] CHECK CONSTRAINT [FK_RefCharterSchoolManagementOrganizationType_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCharterSchoolManagementOrganizationType', @level2type=N'COLUMN',@level2name=N'RefCharterSchoolManagementOrganizationTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of organization that is a separate legal entity that 1) contracts with one or more charter schools to manage, operate, and oversee the charter schools; or 2) holds a charter, or charters, to operate multiple charter schools. [CEDS Element: Charter School Management Organization Type, ID:001650]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCharterSchoolManagementOrganizationType', @level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCharterSchoolManagementOrganizationType', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCharterSchoolManagementOrganizationType', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of organization that is a separate legal entity that 1) contracts with one or more charter schools to manage, operate, and oversee the charter schools; or 2) holds a charter, or charters, to operate multiple charter schools.[CEDS Element: Charter School Management Organization Type, ID:001650]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefCharterSchoolManagementOrganizationType'
GO

PRINT N'	DQP Categories of Learning (001641)'
GO

CREATE TABLE [dbo].[RefDQPCategoriesOfLearning](
   [RefDQPCategoriesOfLearningId] [int] IDENTITY(1,1) NOT NULL,
   [Description] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](60) NULL,
   [Definition] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   [SortOrder] [decimal](6,2) NULL,
   CONSTRAINT [PK_RefDQPCategoriesOfLearning] PRIMARY KEY CLUSTERED ([RefDQPCategoriesOfLearningId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefDQPCategoriesOfLearning]  WITH CHECK ADD CONSTRAINT [FK_RefDQPCategoriesOfLearning_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefDQPCategoriesOfLearning] CHECK CONSTRAINT [FK_RefDQPCategoriesOfLearning_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefDQPCategoriesOfLearning', @level2type=N'COLUMN',@level2name=N'RefDQPCategoriesOfLearningId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Lumina Foundation''s Degree Qualifications Profile offers reference points for what students should know and be able to do upon completion of associate, bachelor''s and master''s degrees – in any field of study. The DQP Categories of Learning provide a profile of what degrees mean within which specific proficiencies may be defined. [CEDS Element: DQP Categories of Learning, ID:001641]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefDQPCategoriesOfLearning', @level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefDQPCategoriesOfLearning', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefDQPCategoriesOfLearning', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Lumina Foundation''s Degree Qualifications Profile offers reference points for what students should know and be able to do upon completion of associate, bachelor''s and master''s degrees – in any field of study. The DQP Categories of Learning provide a profile of what degrees mean within which specific proficiencies may be defined.[CEDS Element: DQP Categories of Learning, ID:001641]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefDQPCategoriesOfLearning'
GO

PRINT N'	IDEA Part C Eligibility Category (001656)'
GO

CREATE TABLE [dbo].[RefIDEAPartCEligibilityCategory](
   [RefIDEAPartCEligibilityCategoryId] [int] IDENTITY(1,1) NOT NULL,
   [Description] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](60) NULL,
   [Definition] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   [SortOrder] [decimal](6,2) NULL,
   CONSTRAINT [PK_RefIDEAPartCEligibilityCategory] PRIMARY KEY CLUSTERED ([RefIDEAPartCEligibilityCategoryId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefIDEAPartCEligibilityCategory]  WITH CHECK ADD CONSTRAINT [FK_RefIDEAPartCEligibilityCategory_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefIDEAPartCEligibilityCategory] CHECK CONSTRAINT [FK_RefIDEAPartCEligibilityCategory_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefIDEAPartCEligibilityCategory', @level2type=N'COLUMN',@level2name=N'RefIDEAPartCEligibilityCategoryId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The category under which a person under 3 years of age is eligible for early intervention services under IDEA Part C. [CEDS Element: IDEA Part C Eligibility Category, ID:001656]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefIDEAPartCEligibilityCategory', @level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefIDEAPartCEligibilityCategory', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefIDEAPartCEligibilityCategory', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The category under which a person under 3 years of age is eligible for early intervention services under IDEA Part C.[CEDS Element: IDEA Part C Eligibility Category, ID:001656]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefIDEAPartCEligibilityCategory'
GO

PRINT N'	ISO 639-2 Language Code (000317)'
GO

CREATE TABLE [dbo].[RefISO6392Language](
   [RefISO6392LanguageId] [int] IDENTITY(1,1) NOT NULL,
   [Description] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](60) NULL,
   [Definition] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   [SortOrder] [decimal](6,2) NULL,
   CONSTRAINT [PK_RefISO6392Language] PRIMARY KEY CLUSTERED ([RefISO6392LanguageId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefISO6392Language]  WITH CHECK ADD CONSTRAINT [FK_RefISO6392Language_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefISO6392Language] CHECK CONSTRAINT [FK_RefISO6392Language_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefISO6392Language', @level2type=N'COLUMN',@level2name=N'RefISO6392LanguageId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The code for the specific language or dialect that a person uses to communicate. [CEDS Element: ISO 639-2 Language Code, ID:000317]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefISO6392Language', @level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefISO6392Language', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefISO6392Language', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The code for the specific language or dialect that a person uses to communicate.[CEDS Element: ISO 639-2 Language Code, ID:000317]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefISO6392Language'
GO

PRINT N'	ISO 639-3 Language Code (001637)'
GO

CREATE TABLE [dbo].[RefISO6393Language](
   [RefISO6393LanguageId] [int] IDENTITY(1,1) NOT NULL,
   [Description] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](60) NULL,
   [Definition] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   [SortOrder] [decimal](6,2) NULL,
   CONSTRAINT [PK_RefISO6393Language] PRIMARY KEY CLUSTERED ([RefISO6393LanguageId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefISO6393Language]  WITH CHECK ADD CONSTRAINT [FK_RefISO6393Language_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefISO6393Language] CHECK CONSTRAINT [FK_RefISO6393Language_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefISO6393Language', @level2type=N'COLUMN',@level2name=N'RefISO6393LanguageId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The code for the specific language or dialect that a person uses to communicate. [CEDS Element: ISO 639-3 Language Code, ID:001637]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefISO6393Language', @level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefISO6393Language', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefISO6393Language', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The code for the specific language or dialect that a person uses to communicate.[CEDS Element: ISO 639-3 Language Code, ID:001637]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefISO6393Language'
GO

PRINT N'	ISO 639-5 Language Family (001638)'
GO

CREATE TABLE [dbo].[RefISO6395LanguageFamily](
   [RefISO6395LanguageFamilyId] [int] IDENTITY(1,1) NOT NULL,
   [Description] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](60) NULL,
   [Definition] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   [SortOrder] [decimal](6,2) NULL,
   CONSTRAINT [PK_RefISO6395LanguageFamily] PRIMARY KEY CLUSTERED ([RefISO6395LanguageFamilyId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefISO6395LanguageFamily]  WITH CHECK ADD CONSTRAINT [FK_RefISO6395LanguageFamily_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefISO6395LanguageFamily] CHECK CONSTRAINT [FK_RefISO6395LanguageFamily_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefISO6395LanguageFamily', @level2type=N'COLUMN',@level2name=N'RefISO6395LanguageFamilyId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code for a specific language family, which supplements the language groups and families in the ISO 639-2 Language Code. [CEDS Element: ISO 639-5 Language Family, ID:001638]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefISO6395LanguageFamily', @level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefISO6395LanguageFamily', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefISO6395LanguageFamily', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code for a specific language family, which supplements the language groups and families in the ISO 639-2 Language Code.[CEDS Element: ISO 639-5 Language Family, ID:001638]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefISO6395LanguageFamily'
GO

PRINT N'	Military Branch (001640)'
GO

CREATE TABLE [dbo].[RefMilitaryBranch](
   [RefMilitaryBranchId] [int] IDENTITY(1,1) NOT NULL,
   [Description] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](60) NULL,
   [Definition] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   [SortOrder] [decimal](6,2) NULL,
   CONSTRAINT [PK_RefMilitaryBranch] PRIMARY KEY CLUSTERED ([RefMilitaryBranchId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefMilitaryBranch]  WITH CHECK ADD CONSTRAINT [FK_RefMilitaryBranch_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefMilitaryBranch] CHECK CONSTRAINT [FK_RefMilitaryBranch_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefMilitaryBranch', @level2type=N'COLUMN',@level2name=N'RefMilitaryBranchId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A branch of the U.S. Military applicable for specifying more details when using Military Connected Student Indicator, Military Active Student Indicator,  Military Veteran Student Indicator, and Military Enlistment After Exit elements. [CEDS Element: Military Branch, ID:001640]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefMilitaryBranch', @level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefMilitaryBranch', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefMilitaryBranch', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A branch of the U.S. Military applicable for specifying more details when using Military Connected Student Indicator, Military Active Student Indicator,  Military Veteran Student Indicator, and Military Enlistment After Exit elements.[CEDS Element: Military Branch, ID:001640]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefMilitaryBranch'
GO

PRINT N'	Tribal Affiliation (001657)'
GO

CREATE TABLE [dbo].[RefTribalAffiliation](
   [RefTribalAffiliationId] [int] IDENTITY(1,1) NOT NULL,
   [Description] [nvarchar](100) NOT NULL,
   [Code] [nvarchar](60) NULL,
   [Definition] [nvarchar](4000) NULL,
   [RefJurisdictionId] [int] NULL,
   [SortOrder] [decimal](6,2) NULL,
   CONSTRAINT [PK_RefTribalAffiliation] PRIMARY KEY CLUSTERED ([RefTribalAffiliationId] ASC )
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefTribalAffiliation]  WITH CHECK ADD CONSTRAINT [FK_RefTribalAffiliation_Organization]
  FOREIGN KEY([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefTribalAffiliation] CHECK CONSTRAINT [FK_RefTribalAffiliation_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key', @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefTribalAffiliation', @level2type=N'COLUMN',@level2name=N'RefTribalAffiliationId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Native American tribal entity recognized and eligible to receive services from the United States Bureau of Indian Affairs to which a person is affiliated. [CEDS Element: Tribal Affiliation, ID:001657]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefTribalAffiliation', @level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefTribalAffiliation', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefTribalAffiliation', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Native American tribal entity recognized and eligible to receive services from the United States Bureau of Indian Affairs to which a person is affiliated.[CEDS Element: Tribal Affiliation, ID:001657]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefTribalAffiliation'
GO


PRINT N'Create new tables'
GO

PRINT N'	Assessment Early Learning Developmental Domain (001000)'
GO

CREATE TABLE [dbo].[AssessmentELDevelopmentalDomain](
	[AssessmentELDevelopmentalDomainId] [int] IDENTITY(1,1) NOT NULL,
	[AssessmentId] [int] NOT NULL,
	[RefAssessmentELDevelopmentalDomainId] [int] NOT NULL,
 CONSTRAINT [PK_AssessmentELDevelopmentalDomain] PRIMARY KEY CLUSTERED 
(
	[AssessmentELDevelopmentalDomainId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_AssessmentELDevelopmentalDomain] UNIQUE NONCLUSTERED 
(
	[AssessmentId] ASC,
	[RefAssessmentELDevelopmentalDomainId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[AssessmentELDevelopmentalDomain]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_AssessmentELDevelopmentalDomain_Assessment] FOREIGN KEY([AssessmentId])
REFERENCES [dbo].[Assessment] ([AssessmentId])
GO

ALTER TABLE [dbo].[AssessmentELDevelopmentalDomain] CHECK CONSTRAINT [FK_Assessment_AssessmentELDevelopmentalDomain_Assessment]
GO

ALTER TABLE [dbo].[AssessmentELDevelopmentalDomain]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_AssessmentELDevelopmentalDomain_RefAssessmentELDevelopmentalDomain] FOREIGN KEY([RefAssessmentELDevelopmentalDomainId])
REFERENCES [dbo].[RefAssessmentELDevelopmentalDomain] ([RefAssessmentELDevelopmentalDomainId])
GO

ALTER TABLE [dbo].[AssessmentELDevelopmentalDomain] CHECK CONSTRAINT [FK_Assessment_AssessmentELDevelopmentalDomain_RefAssessmentELDevelopmentalDomain]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AssessmentELDevelopmentalDomain', @level2type=N'COLUMN',@level2name=N'AssessmentELDevelopmentalDomainId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign key - Assessment' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AssessmentELDevelopmentalDomain', @level2type=N'COLUMN',@level2name=N'AssessmentId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign key - RefAssessmentELDevelopmentalDomain' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AssessmentELDevelopmentalDomain', @level2type=N'COLUMN',@level2name=N'RefAssessmentELDevelopmentalDomainId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Developmental domains related to early learning and used for assessing a child''s kindergarten readiness. [CEDS Element: Assessment Early Learning Developmental Domain, ID:001000]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'AssessmentELDevelopmentalDomain'
GO

CREATE TABLE [dbo].[AssessmentSubtestELDevelopmentalDomain](
	[AssessmentSubtestELDevelopmentalDomainId] [int] IDENTITY(1,1) NOT NULL,
	[AssessmentSubtestId] [int] NOT NULL,
	[RefAssessmentELDevelopmentalDomainId] [int] NOT NULL,
 CONSTRAINT [PK_AssessmentSubtestELDevelopmentalDomain] PRIMARY KEY CLUSTERED 
(
	[AssessmentSubtestELDevelopmentalDomainId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_AssessmentSubtestELDevelopmentalDomain] UNIQUE NONCLUSTERED 
(
	[AssessmentSubtestId] ASC,
	[RefAssessmentELDevelopmentalDomainId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[AssessmentSubtestELDevelopmentalDomain]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentSubtest_AssessmentELDevelopmentalDomain_AssessmentSubtest] FOREIGN KEY([AssessmentSubtestId])
REFERENCES [dbo].[AssessmentSubtest] ([AssessmentSubtestId])
GO

ALTER TABLE [dbo].[AssessmentSubtestELDevelopmentalDomain] CHECK CONSTRAINT [FK_AssessmentSubtest_AssessmentELDevelopmentalDomain_AssessmentSubtest]
GO

ALTER TABLE [dbo].[AssessmentSubtestELDevelopmentalDomain]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentSubtest_AssessmentELDevelopmentalDomain_RefAssessmentELDevelopmentalDomain] FOREIGN KEY([RefAssessmentELDevelopmentalDomainId])
REFERENCES [dbo].[RefAssessmentELDevelopmentalDomain] ([RefAssessmentELDevelopmentalDomainId])
GO

ALTER TABLE [dbo].[AssessmentSubtestELDevelopmentalDomain] CHECK CONSTRAINT [FK_AssessmentSubtest_AssessmentELDevelopmentalDomain_RefAssessmentELDevelopmentalDomain]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AssessmentSubtestELDevelopmentalDomain', @level2type=N'COLUMN',@level2name=N'AssessmentSubtestELDevelopmentalDomainId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign key - Assessment' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AssessmentSubtestELDevelopmentalDomain', @level2type=N'COLUMN',@level2name=N'AssessmentSubtestId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign key - RefAssessmentELDevelopmentalDomain' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AssessmentSubtestELDevelopmentalDomain', @level2type=N'COLUMN',@level2name=N'RefAssessmentELDevelopmentalDomainId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Developmental domains related to early learning and used for assessing a child''s kindergarten readiness. [CEDS Element: Assessment Early Learning Developmental Domain, ID:001000]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'AssessmentSubtestELDevelopmentalDomain'
GO


PRINT N'	Financial Account Program Name (001645) and Financial Account Program Number (001646)'
GO

CREATE TABLE [dbo].[FinancialAccountProgram](
	[FinancialAccountProgramId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[ProgramNumber] [nvarchar](30) NULL,
 CONSTRAINT [PK_FinancialAccountProgram] PRIMARY KEY CLUSTERED 
(
	[FinancialAccountProgramId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FinancialAccountProgram', @level2type=N'COLUMN',@level2name=N'FinancialAccountProgramId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name given to the program area in an educational institution''s accounting system. [CEDS Element: Financial Account Program Name, ID:001645]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'FinancialAccountProgram', 
	@level2type=N'COLUMN',@level2name=N'Name'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A number given to a program area within an educational institution''s accounting system. [CEDS Element: Financial Account Program Number, ID:001646]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'FinancialAccountProgram', 
	@level2type=N'COLUMN',@level2name=N'ProgramNumber'
GO


PRINT N'Create Ref tables for multiple element types'
GO

PRINT N'	Role Status Type'
GO

CREATE TABLE [dbo].[RefRoleStatusType](
	[RefRoleStatusTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefRoleStatusType] PRIMARY KEY CLUSTERED 
(
	[RefRoleStatusTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[RefRoleStatusType]  WITH CHECK ADD  CONSTRAINT [FK_RefRoleStatusType_Organization] FOREIGN KEY([RefJurisdictionId])
REFERENCES [dbo].[Organization] ([OrganizationId])
GO

ALTER TABLE [dbo].[RefRoleStatusType] CHECK CONSTRAINT [FK_RefRoleStatusType_Organization]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate Key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefRoleStatusType', @level2type=N'COLUMN',@level2name=N'RefRoleStatusTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'List of role status types.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefRoleStatusType', @level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation for the type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefRoleStatusType', @level2type=N'COLUMN',@level2name=N'Code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Surrogate key from Organization identifying the publisher of the reference value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefRoleStatusType', @level2type=N'COLUMN',@level2name=N'RefJurisdictionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'List of role status types.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefRoleStatusType'
GO


PRINT N'Add new columns without foreign keys to Ref table'
GO

PRINT N'	Charter School Contract Approval Date (001652)'
GO

ALTER TABLE [K12School] ADD [CharterSchoolContractApprovalDate] [date] NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The effective date of the contract (or charter) that an approved charter school authorizer authorized the charter school to operate in the state under the state''s charter school legislation. [CEDS Element: Charter School Contract Approval Date, ID:001652]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'K12School', 
	@level2type=N'COLUMN',@level2name=N'CharterSchoolContractApprovalDate'
GO

PRINT N'	Charter School Contract Id Number (001651)'
GO

ALTER TABLE [K12School] ADD [CharterSchoolContractIdNumber] [nvarchar](30) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique number the SEA assigns to the contract (or charter) that authorizes the charter school to operate in the state under the state''s charter school legislation. [CEDS Element: Charter School Contract Id Number, ID:001651]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'K12School', 
	@level2type=N'COLUMN',@level2name=N'CharterSchoolContractIdNumber'
GO

PRINT N'	Charter School Contract Renewal Date (001653)'
GO

ALTER TABLE [K12School] ADD [CharterSchoolContractRenewalDate] [date] NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date by which the charter school must renew its contract (or charter) with an approved charter school authorizer in order to continue to operate in the state under the state''s charter school legislation. [CEDS Element: Charter School Contract Renewal Date, ID:001653]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'K12School', 
	@level2type=N'COLUMN',@level2name=N'CharterSchoolContractRenewalDate'
GO

PRINT N'	Course Section Maximum Capacity (001655)'
GO

ALTER TABLE [CourseSection] ADD [MaximumCapacity] [int] NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The maximum number of students the Course Section can maintain. [CEDS Element: Course Section Maximum Capacity, ID:001655]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'CourseSection', 
	@level2type=N'COLUMN',@level2name=N'MaximumCapacity'
GO

PRINT N'	Financial Accounting Date (001648)'
GO

ALTER TABLE [OrganizationFinancial] ADD [Date] [date] NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date of a financial transaction or when an account balance is reported. [CEDS Element: Financial Accounting Date, ID:001648]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'OrganizationFinancial', 
	@level2type=N'COLUMN',@level2name=N'Date'
GO

PRINT N'	Financial Accounting Period Encumbered Value (001644)'
GO

ALTER TABLE [OrganizationFinancial] ADD [EncumberedValue] [decimal](9,2) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The planned or obligated expense value of a financial account for the specified accounting period or fiscal year. [CEDS Element: Financial Accounting Period Encumbered Value, ID:001644]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'OrganizationFinancial', 
	@level2type=N'COLUMN',@level2name=N'EncumberedValue'
GO

PRINT N'	Financial Accounting Value (001647)'
GO

ALTER TABLE [OrganizationFinancial] ADD [Value] [decimal](9,2) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of a financial account balance or transaction. [CEDS Element: Financial Accounting Value, ID:001647]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'OrganizationFinancial', 
	@level2type=N'COLUMN',@level2name=N'Value'
GO

PRINT N'	Fiscal Period Begin Date (001642)'
GO

ALTER TABLE [OrganizationFinancial] ADD [FiscalPeriodBeginDate] [date] NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The year, month and day on which an accounting period begins. [CEDS Element: Fiscal Period Begin Date, ID:001642]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'OrganizationFinancial', 
	@level2type=N'COLUMN',@level2name=N'FiscalPeriodBeginDate'
GO

PRINT N'	Fiscal Period End Date (001643)'
GO

ALTER TABLE [OrganizationFinancial] ADD [FiscalPeriodEndDate] [date] NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The year, month and day on which an accounting period ends. [CEDS Element: Fiscal Period End Date, ID:001643]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'OrganizationFinancial', 
	@level2type=N'COLUMN',@level2name=N'FiscalPeriodEndDate'
GO

PRINT N'	Fiscal Year (001639)'
GO

ALTER TABLE [OrganizationFinancial] ADD [FiscalYear] [nchar](4) NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The year a school uses for budgeting, accounting, and reporting financials. [CEDS Element: Fiscal Year, ID:001639]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'OrganizationFinancial', 
	@level2type=N'COLUMN',@level2name=N'FiscalYear'
GO

PRINT N'	National School Lunch Program Direct Certification Indicator (001654)'
GO

ALTER TABLE [K12StudentEnrollment] ADD [NSLPDirectCertificationIndicator] [bit] NULL
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates that the student''s National School Lunch Program (NSLP) eligibility has been determined through direct certification. [CEDS Element: National School Lunch Program Direct Certification Indicator, ID:001654]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'K12StudentEnrollment', 
	@level2type=N'COLUMN',@level2name=N'NSLPDirectCertificationIndicator'
GO


PRINT N'Add new columns with foreign keys'
GO

PRINT N'	Charter School Management Organization Type (001650)'
GO

ALTER TABLE [K12School] ADD [RefCharterSchoolManagementOrganizationTypeId] [int] NULL
GO

ALTER TABLE [dbo].[K12School]  WITH CHECK 
  ADD CONSTRAINT [FK_K12School_RefCharterSchoolManagementOrganizationType]
  FOREIGN KEY([RefCharterSchoolManagementOrganizationTypeId]) REFERENCES [dbo].[RefCharterSchoolManagementOrganizationType] ([RefCharterSchoolManagementOrganizationTypeId])
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of organization that is a separate legal entity that 1) contracts with one or more charter schools to manage, operate, and oversee the charter schools; or 2) holds a charter, or charters, to operate multiple charter schools. [CEDS Element: Charter School Management Organization Type, ID:001650]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'K12School', 
	@level2type=N'COLUMN',@level2name=N'RefCharterSchoolManagementOrganizationTypeId'
GO

PRINT N'	Discipline Method for Firearms Incidents (000555)'
GO

ALTER TABLE [K12StudentDiscipline] ADD [RefDisciplineMethodFirearmsId] [int] NULL
GO

ALTER TABLE [dbo].[K12StudentDiscipline]  WITH CHECK 
  ADD CONSTRAINT [FK_K12StudentDiscipline_RefDisciplineMethodFirearms]
  FOREIGN KEY([RefDisciplineMethodFirearmsId]) REFERENCES [dbo].[RefDisciplineMethodFirearms] ([RefDisciplineMethodFirearmsId])
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The method used to discipline students who are not children with disabilities (IDEA) involved in firearms and other outcomes of firearms incidents. [CEDS Element: Discipline Method for Firearms Incidents, ID:000555]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'K12StudentDiscipline', 
	@level2type=N'COLUMN',@level2name=N'RefDisciplineMethodFirearmsId'
GO

PRINT N'	Discipline Method of Children with Disabilities (000538)'
GO

ALTER TABLE [K12StudentDiscipline] ADD [RefDisciplineMethodOfCwdId] [int] NULL
GO

ALTER TABLE [dbo].[K12StudentDiscipline]  WITH CHECK 
  ADD CONSTRAINT [FK_K12StudentDiscipline_RefDisciplineMethodOfCwd]
  FOREIGN KEY([RefDisciplineMethodOfCwdId]) REFERENCES [dbo].[RefDisciplineMethodOfCwd] ([RefDisciplineMethodOfCwdId])
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of suspension or expulsion used for the discipline of children with disabilities. [CEDS Element: Discipline Method of Children with Disabilities, ID:000538]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'K12StudentDiscipline', 
	@level2type=N'COLUMN',@level2name=N'RefDisciplineMethodOfCwdId'
GO

PRINT N'	DQP Categories of Learning (001641)'
GO

ALTER TABLE [PsProgram] ADD [RefDQPCategoriesOfLearningId] [int] NULL
GO

ALTER TABLE [dbo].[PsProgram]  WITH CHECK 
  ADD CONSTRAINT [FK_PsProgram_RefDQPCategoriesOfLearning]
  FOREIGN KEY([RefDQPCategoriesOfLearningId]) REFERENCES [dbo].[RefDQPCategoriesOfLearning] ([RefDQPCategoriesOfLearningId])
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Lumina Foundation''s Degree Qualifications Profile offers reference points for what students should know and be able to do upon completion of associate, bachelor''s and master''s degrees – in any field of study. The DQP Categories of Learning provide a profile of what degrees mean within which specific proficiencies may be defined. [CEDS Element: DQP Categories of Learning, ID:001641]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PsProgram', 
	@level2type=N'COLUMN',@level2name=N'RefDQPCategoriesOfLearningId'
GO

PRINT N'	IDEA Discipline Method for Firearms Incidents (000556)'
GO

ALTER TABLE [K12StudentDiscipline] ADD [RefIDEADisciplineMethodFirearmId] [int] NULL
GO

ALTER TABLE [dbo].[K12StudentDiscipline]  WITH CHECK 
  ADD CONSTRAINT [FK_K12StudentDiscipline_RefIDEADisciplineMethodFirearm]
  FOREIGN KEY([RefIDEADisciplineMethodFirearmId]) REFERENCES [dbo].[RefIDEADisciplineMethodFirearm] ([RefIDEADisciplineMethodFirearmId])
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The methods used to discipline students who are children with disabilities (IDEA) involved in firearms and other outcomes of firearms incidents. [CEDS Element: IDEA Discipline Method for Firearms Incidents, ID:000556]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'K12StudentDiscipline', 
	@level2type=N'COLUMN',@level2name=N'RefIDEADisciplineMethodFirearmId'
GO

PRINT N'	IDEA Part C Eligibility Category (001656)'
GO

ALTER TABLE [ELChildIndividualizedProgram] ADD [RefIDEAPartCEligibilityCategoryId] [int] NULL
GO

ALTER TABLE [dbo].[ELChildIndividualizedProgram]  WITH CHECK 
  ADD CONSTRAINT [FK_ELChildIndividualizedProgram_RefIDEAPartCEligibilityCategory]
  FOREIGN KEY([RefIDEAPartCEligibilityCategoryId]) REFERENCES [dbo].[RefIDEAPartCEligibilityCategory] ([RefIDEAPartCEligibilityCategoryId])
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The category under which a person under 3 years of age is eligible for early intervention services under IDEA Part C. [CEDS Element: IDEA Part C Eligibility Category, ID:001656]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ELChildIndividualizedProgram', 
	@level2type=N'COLUMN',@level2name=N'RefIDEAPartCEligibilityCategoryId'
GO

PRINT N'	Military Branch (001640)'
GO

ALTER TABLE [PersonMilitary] ADD [RefMilitaryBranchId] [int] NULL
GO

ALTER TABLE [dbo].[PersonMilitary]  WITH CHECK 
  ADD CONSTRAINT [FK_PersonMilitary_RefMilitaryBranch]
  FOREIGN KEY([RefMilitaryBranchId]) REFERENCES [dbo].[RefMilitaryBranch] ([RefMilitaryBranchId])
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A branch of the U.S. Military applicable for specifying more details when using Military Connected Student Indicator, Military Active Student Indicator,  Military Veteran Student Indicator, and Military Enlistment After Exit elements. [CEDS Element: Military Branch, ID:001640]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PersonMilitary', 
	@level2type=N'COLUMN',@level2name=N'RefMilitaryBranchId'
GO

PRINT N'	Tribal Affiliation (001657)'
GO

ALTER TABLE [Person] ADD [RefTribalAffiliationId] [int] NULL
GO

ALTER TABLE [dbo].[Person]  WITH CHECK 
  ADD CONSTRAINT [FK_Person_RefTribalAffiliation]
  FOREIGN KEY([RefTribalAffiliationId]) REFERENCES [dbo].[RefTribalAffiliation] ([RefTribalAffiliationId])
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Native American tribal entity recognized and eligible to receive services from the United States Bureau of Indian Affairs to which a person is affiliated. [CEDS Element: Tribal Affiliation, ID:001657]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'Person', 
	@level2type=N'COLUMN',@level2name=N'RefTribalAffiliationId'
GO

PRINT N'	Financial Account Program Name (001645) and Financial Account Program Number (001646)'
GO

ALTER TABLE [OrganizationFinancial] ADD [FinancialAccountProgramId] [int] NULL
GO

ALTER TABLE [dbo].[OrganizationFinancial]  WITH CHECK 
  ADD CONSTRAINT [FK_OrganizationFinancial_FinancialAccountProgram]
  FOREIGN KEY([FinancialAccountProgramId]) REFERENCES [dbo].[FinancialAccountProgram] ([FinancialAccountProgramId])
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A name and number given to a program area within an educational institution''s accounting system. [CEDS Elements: Financial Account Program Name (001645), Financial Account Program Number (001646)]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'OrganizationFinancial', 
	@level2type=N'COLUMN',@level2name=N'FinancialAccountProgramId'
GO

PRINT N'	Role Status Type'
GO

ALTER TABLE [RefRoleStatus] ADD [RefRoleStatusTypeId] [int] NULL
GO

ALTER TABLE [dbo].[RefRoleStatus]  WITH CHECK 
  ADD CONSTRAINT [FK_RefRoleStatus_RefRoleStatusType]
  FOREIGN KEY([RefRoleStatusTypeId]) REFERENCES [dbo].[RefRoleStatusType] ([RefRoleStatusTypeId])
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'List of role status types.' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefRoleStatus', 
	@level2type=N'COLUMN',@level2name=N'RefRoleStatusTypeId'
GO


PRINT N'Element name changes'
GO

PRINT N'	ISO 639-2 Language Code (000317)'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The code for the specific language or dialect that a person uses to communicate. [CEDS Element: ISO 639-2 Language Code, ID:000317]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PersonLanguage', 
	@level2type=N'COLUMN',@level2name=N'RefLanguageId'
GO

PRINT N'	Maternal Guardian Education (001229)'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The highest level of education attained by a person''s mother or maternal guardian [CEDS Element: Maternal Guardian Education, ID:001229]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PsStudentDemographic', 
	@level2type=N'COLUMN',@level2name=N'RefMaternalEducationLevelId'
GO

PRINT N'	Paternal Guardian Education (001230)'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The highest level of education attained by a person''s father or paternal guardian [CEDS Element: Paternal Guardian Education, ID:001230]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PsStudentDemographic', 
	@level2type=N'COLUMN',@level2name=N'RefPaternalEducationLevelId'
GO

PRINT N'	Postsecondary Program Level (001616)'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The level describing the concentration of study for a postsecondary program. [CEDS Element: Postsecondary Program Level, ID:001616]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PsProgram', 
	@level2type=N'COLUMN',@level2name=N'RefPSProgramLevelId'
GO

PRINT N'	Postsecondary Program Level (001616)'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The level describing the concentration of study for a postsecondary program. [CEDS Element: Postsecondary Program Level, ID:001616]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefPSProgramLevel', 
	@level2type=N'COLUMN',@level2name=N'Description'
GO

PRINT N'	State ANSI Code (000424)'
GO

EXEC sys.sp_rename @objname = N'dbo.RefStateANSICode.RefStateANSICode', @newname = 'Code', @objtype = 'COLUMN'
GO

PRINT N'	Role column Role changed to Name'
GO

EXEC sys.sp_rename @objname = N'dbo.Role.Role', @newname = 'Name', @objtype = 'COLUMN'
GO

PRINT N'	Assessment Subtest'
GO

EXEC sys.sp_rename @objname = N'dbo.AssessmentPerformanceLevel.AssessmentFormSubtestId', @newname = 'AssessmentSubtestId', @objtype = 'COLUMN'
GO

EXEC sys.sp_rename '[FK_PerformanceLevel_FormSubTest]', 'FK_PerformanceLevel_AssessmentSubTest'
GO

EXEC sys.sp_rename @objname = N'dbo.AssessmentResult.AssessmentFormSubtestId', @newname = 'AssessmentSubtestId', @objtype = 'COLUMN'
GO

EXEC sys.sp_rename '[FK_AssessmentResult_FormSubTest]', 'FK_AssessmentResult_AssessmentSubTest'
GO

EXEC sys.sp_rename @objname = N'dbo.AssessmentSubtest.ChildOf_AssessmentFormSubTestId', @newname = 'ChildOf_AssessmentSubtestId', @objtype = 'COLUMN'
GO

EXEC sys.sp_rename '[FK_FormSubTest_FormSubTest]', 'FK_AssessmentSubtest_AssessmentSubTest'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'Foreign key - AssessmentSubtest' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'AssessmentPerformanceLevel', 
	@level2type=N'COLUMN',@level2name=N'AssessmentSubtestId'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'Foreign key - AssessmentSubtest' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'AssessmentResult', 
	@level2type=N'COLUMN',@level2name=N'AssessmentSubtestId'
GO


PRINT N'Rename columns to correct spelling errors'
GO

PRINT N'	Assessment Language'
GO

EXEC sys.sp_rename @objname = N'dbo.AssessmentAsset.ReAssessmentfLanguageId', @newname = 'RefAssessmentLanguageId', @objtype = 'COLUMN'
GO

PRINT N'	ApplicationId'
GO

EXEC sys.sp_rename @objname = N'dbo.Application.AplicationId', @newname = 'ApplicationId', @objtype = 'COLUMN'
GO

PRINT N'	Assessment Asset Identifier Type'
GO

EXEC sys.sp_rename @objname = N'dbo.AssessmentAsset.RefAssesmentAssestIdentifierType', @newname = 'RefAssessmentAssestIdentifierType', @objtype = 'COLUMN'
GO

PRINT N'	Assessment Item Response Theory Parameter B'
GO

EXEC sys.sp_rename @objname = N'dbo.AssessmentItemResponseTheory.ParemeterB', @newname = 'ParameterB', @objtype = 'COLUMN'
GO

PRINT N'	Assessment Item Response Theory Parameter D4'
GO

EXEC sys.sp_rename @objname = N'dbo.AssessmentItemResponseTheory.ParamaterD4', @newname = 'ParameterD4', @objtype = 'COLUMN'
GO

PRINT N'	Assessment Item Response Theory Parameter Difficulty Category'
GO

EXEC sys.sp_rename @objname = N'dbo.RefItemResponsseTheoryDifficultyCategory.RefItemResponsseTheoryDifficultyCategoryId', @newname = 'RefItemResponseTheoryDifficultyCategoryId', @objtype = 'COLUMN'
GO

EXEC sys.sp_rename @objname = N'dbo.RefItemResponsseTheoryDifficultyCategory', @newname = 'RefItemResponseTheoryDifficultyCategory'
GO

EXEC sys.sp_rename @objname = N'dbo.AssessmentItemResponseTheory.RefItemResponsseTheoryDifficultyCategoryId', @newname = 'RefItemResponseTheoryDifficultyCategoryId', @objtype = 'COLUMN'
GO

PRINT N'	Assessment Need Number of Braille Cells'
GO

EXEC sys.sp_rename @objname = N'dbo.AssessmentNeedBraille.NumberOfBraileCells', @newname = 'NumberOfBrailleCells', @objtype = 'COLUMN'
GO

PRINT N'	Receiving Location of Instruction'
GO

EXEC sys.sp_rename @objname = N'dbo.RefInstructionLocationType.RefInstuctionLocationTypeId', @newname = 'RefInstructionLocationTypeId', @objtype = 'COLUMN'
GO

EXEC sys.sp_rename @objname = N'dbo.CourseSectionLocation.RefInstuctionLocationTypeId', @newname = 'RefInstructionLocationTypeId', @objtype = 'COLUMN'
GO

PRINT N'	State Licensed Facility Capacity'
GO

EXEC sys.sp_rename @objname = N'dbo.ELFacilityLicensing.StateLicensedFacillityCapacity', @newname = 'StateLicensedFacilityCapacity', @objtype = 'COLUMN'
GO

PRINT N'	ELProgramLicensingId'
GO

EXEC sys.sp_rename @objname = N'dbo.ELProgramLicensing.ELProgamLicensingId', @newname = 'ELProgramLicensingId', @objtype = 'COLUMN'
GO

PRINT N'	Early Learning Program Licensing Status'
GO

EXEC sys.sp_rename @objname = N'dbo.ELProgramLicensing.RefELProgamLicenseStatusId', @newname = 'RefELProgramLicenseStatusId', @objtype = 'COLUMN'
GO

PRINT N'	FinancialAidAward OrganizationPersonRoleId'
GO

EXEC sys.sp_rename @objname = N'dbo.FinancialAidAward.OrganzationPersonRoleId', @newname = 'OrganizationPersonRoleId', @objtype = 'COLUMN'
GO

PRINT N'	Incident Time Description Code'
GO

EXEC sys.sp_rename @objname = N'dbo.RefIncidentTimeDescriptionCode.RefIncidentTimeDesciptionCodeId', @newname = 'RefIncidentTimeDescriptionCodeId', @objtype = 'COLUMN'
GO

EXEC sys.sp_rename @objname = N'dbo.Incident.RefIncidentTimeDesciptionCodeId', @newname = 'RefIncidentTimeDescriptionCodeId', @objtype = 'COLUMN'
GO

PRINT N'	Individualized Program Date'
GO

EXEC sys.sp_rename @objname = N'dbo.IndividualizedProgram.IndivualizedProgramDate', @newname = 'IndividualizedProgramDate', @objtype = 'COLUMN'
GO

PRINT N'	LearnerActivityId'
GO

EXEC sys.sp_rename @objname = N'dbo.LearnerActivity.LearnerActivitytId', @newname = 'LearnerActivityId', @objtype = 'COLUMN'
GO

PRINT N'	Distance Education Course Enrollment'
GO

EXEC sys.sp_rename @objname = N'dbo.PsStudentEnrollment.RefDistanceEducationCourseEnollmentId', @newname = 'RefDistanceEducationCourseEnrollmentId', @objtype = 'COLUMN'
GO

PRINT N'	RefInstructionalStaffContractLength RefJurisdictionId'
GO

EXEC sys.sp_rename @objname = N'dbo.RefInstructionalStaffContractLength.RefJurisdictoinId', @newname = 'RefJurisdictionId', @objtype = 'COLUMN'
GO

PRINT N'	Learning Resource Interactivity Type'
GO

EXEC sys.sp_rename @objname = N'dbo.RefLearningResourceInteractivityType.RefLearningResouirceInteractivityTypeId', @newname = 'RefLearningResourceInteractivityTypeId', @objtype = 'COLUMN'
GO

PRINT N'	RefQrisParticipation RefJurisdictionId'
GO

EXEC sys.sp_rename @objname = N'dbo.RefQrisParticipation.RefJusridictionId', @newname = 'RefJurisdictionId', @objtype = 'COLUMN'
GO


PRINT N'Update metadata'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'CEDS entities. Used when the relationship of Learning Standards data requires the associated entity to be specified.' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'LearningStandardItemAssociation', 
	@level2type=N'COLUMN',@level2name=N'RefEntityTypeId'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'List of operational status types.' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefOperationalStatusType'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The scaling system used to specify the text complexity of an assessment item. [CEDS Element: Assessment Item Text Complexity System, ID:000907]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'AssessmentItem', 
	@level2type=N'COLUMN',@level2name=N'RefTextComplexitySystemId'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The description for the financial account in an educational institution''s accounting system. [CEDS Element: Financial Account Description, ID: 001346]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'FinancialAccount', 
	@level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'An indication of the category of a legal document giving authorization to perform teaching assignment services. [CEDS Element: Teaching Credential Type, ID:000278]  (Foreign key -RefTeachingCredentialType)' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ProgramParticipationTeacherPrep', 
	@level2type=N'COLUMN',@level2name=N'RefTeachingCredentialTypeId'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The date associated with the termination/exit/end of a role for a person at an organization.  [CEDS Elements: Activity Involvement End Date (000008), Course End Date (000059), Enrollment Exit Date (000107), Service Exit Date (000327), Assignment End Date (000527), Program Participation Exit Date (000591), Teaching Assignment End Date (000646), Employment End Date (000795), Workforce Program Participation End Date (000999), Course Drop Date (001305)]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'OrganizationPersonRole', 
	@level2type=N'COLUMN',@level2name=N'ExitDate'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The date associated with the commencement/entry/start of a role for a person at an organization.  [CEDS Elements: Activity Involvement Begin Date (000007), Enrollment Entry Date (000097), Service Entry Date (000326), Employment Start Date (000346), Program Participation Start Date (000590), Teaching Assignment Start Date (000645), Staff Education Entry Date (000793), Course Section Enrollment Status Start Date (000974), Workforce Program Participation Start Date (000998), Course Add Date (001300)]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'OrganizationPersonRole', 
	@level2type=N'COLUMN',@level2name=N'EntryDate'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'Status types for a person where the possible condition is either Yes (True) or No (False). [CEDS Elements: Economic Disadvantage Status (000086), Homeless Unaccompanied Youth Status (000148), IDEA Indicator (000151), Limited English Proficiency Status (000180), Migrant Status (000189), School Choice Applied for Transfer Status (000235), School Choice Eligible for Transfer Status (000236), School Choice Transfer Status (000237), Title I School Supplemental Services Applied Status (000286), Title I School Supplemental Services Eligible Status (000287), Title I School Supplemental Services Received Status (000288), Title III Immigrant Status (000291), Truant Status (000569), Single Parent Or Single Pregnant Woman Status (000580), Perkins Limited English Proficiency Status (000581), Low-income Status (000775), Dislocated Worker Status (000776), Public Assistance Status (000777), Rural Residency Status (000778), Professional Association Membership Status (000807), State Approved Trainer Status (000814), State Approved Technical Assistance Provider Status (000815), Program Heath Safety Checklist Use Status (000851)]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PersonStatus', 
	@level2type=N'COLUMN',@level2name=N'RefPersonStatusTypeId'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'Status types for a person where the possible condition is either Yes (True) or No (False). [CEDS Elements: Economic Disadvantage Status (000086), Homeless Unaccompanied Youth Status (000148), IDEA Indicator (000151), Limited English Proficiency Status (000180), Migrant Status (000189), School Choice Applied for Transfer Status (000235), School Choice Eligible for Transfer Status (000236), School Choice Transfer Status (000237), Title I School Supplemental Services Applied Status (000286), Title I School Supplemental Services Eligible Status (000287), Title I School Supplemental Services Received Status (000288), Title III Immigrant Status (000291), Truant Status (000569), Single Parent Or Single Pregnant Woman Status (000580), Perkins Limited English Proficiency Status (000581), Low-income Status (000775), Dislocated Worker Status (000776), Public Assistance Status (000777), Rural Residency Status (000778), Professional Association Membership Status (000807), State Approved Trainer Status (000814), State Approved Technical Assistance Provider Status (000815), Program Heath Safety Checklist Use Status (000851)]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefPersonStatusType', 
	@level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'Status types for a person where the possible condition is either Yes (True) or No (False). [CEDS Elements: Economic Disadvantage Status (000086), Homeless Unaccompanied Youth Status (000148), IDEA Indicator (000151), Limited English Proficiency Status (000180), Migrant Status (000189), School Choice Applied for Transfer Status (000235), School Choice Eligible for Transfer Status (000236), School Choice Transfer Status (000237), Title I School Supplemental Services Applied Status (000286), Title I School Supplemental Services Eligible Status (000287), Title I School Supplemental Services Received Status (000288), Title III Immigrant Status (000291), Truant Status (000569), Single Parent Or Single Pregnant Woman Status (000580), Perkins Limited English Proficiency Status (000581), Low-income Status (000775), Dislocated Worker Status (000776), Public Assistance Status (000777), Rural Residency Status (000778), Professional Association Membership Status (000807), State Approved Trainer Status (000814), State Approved Technical Assistance Provider Status (000815), Program Heath Safety Checklist Use Status (000851)]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefPersonStatusType'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'Status types for a person''s participation in the program where the possible condition is either Yes (True) or No (False). [CEDS Elements: GED Preparation Program Participation Status (000120), Homeless Serviced Indicator (000147), Migrant Education Program Participation Status (000185), Section 504 Status (000249), Title III Immigrant Participation Status (000290), Title I Schoolwide Program Participation (000550), Title I Targeted Assistance Participation (000551), Title III Limited English Proficient Participation Status (000565), Kindergarten Program Participation Type (000714), Career Pathways Program Participation Indicator (001291), Correctional Education Reentry Services Participation Indicator (001297)]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PersonProgramParticipation', 
	@level2type=N'COLUMN',@level2name=N'RefParticipationTypeId'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'Status types for a person''s participation in the program where the possible condition is either Yes (True) or No (False). [CEDS Elements: GED Preparation Program Participation Status (000120), Homeless Serviced Indicator (000147), Migrant Education Program Participation Status (000185), Section 504 Status (000249), Title III Immigrant Participation Status (000290), Title I Schoolwide Program Participation (000550), Title I Targeted Assistance Participation (000551), Title III Limited English Proficient Participation Status (000565), Kindergarten Program Participation Type (000714), Career Pathways Program Participation Indicator (001291), Correctional Education Reentry Services Participation Indicator (001297)]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefParticipationType', 
	@level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'Status types for a person''s participation in the program where the possible condition is either Yes (True) or No (False). [CEDS Elements: GED Preparation Program Participation Status (000120), Homeless Serviced Indicator (000147), Migrant Education Program Participation Status (000185), Section 504 Status (000249), Title III Immigrant Participation Status (000290), Title I Schoolwide Program Participation (000550), Title I Targeted Assistance Participation (000551), Title III Limited English Proficient Participation Status (000565), Kindergarten Program Participation Type (000714), Career Pathways Program Participation Indicator (001291), Correctional Education Reentry Services Participation Indicator (001297)]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefParticipationType'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The date associated with the termination/exit/end of a role for a person at an organization.  [CEDS Elements: Activity Involvement End Date (000008), Course End Date (000059), Enrollment Exit Date (000107), Service Exit Date (000327), Assignment End Date (000527), Program Participation Exit Date (000591), Teaching Assignment End Date (000646), Employment End Date (000795), Workforce Program Participation End Date (000999), Course Drop Date (001305)]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'OrganizationPersonRole', 
	@level2type=N'COLUMN',@level2name=N'ExitDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of whether a person is enrolled in an alternative teacher preparation program as defined by Title II. [CEDS Element: Alternative Route to Certification or Licensure, ID:000769]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'ProgramParticipationTeacherPrep', 
	@level2type=N'COLUMN',@level2name=N'RefAltRouteToCertificationOrLicensureId'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to an organization by a school, school system, a state, or other agency or entity. [CEDS Elements: Organization Identifier (000826), Course Section Identifier (000978), Course Identifier (000055), Adult Education Service Provider Identifier (001076), Program Identifier (000625), Local Education Agency Identifier (001068), School Identifier (001069), Classroom Identifier (000364), State Agency Identifier (001490), Responsible Organization Identifier (001466), Course Section Number (001315)]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'OrganizationIdentifier', 
	@level2type=N'COLUMN',@level2name=N'Identifier'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The type of organizational policy.  Examples would include Immunization Policy, Referral Policy, Language Translation Policy, Employee Policy, etc. [CEDS Elements: Administrative Policy Type (000983), Personnel Policy Type (000842)' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'OrganizationPolicy', 
	@level2type=N'COLUMN',@level2name=N'PolicyType'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The year, month, and day of the last day of the employment record reference period. [CEDS Element: Employment Record Reference Period End Date, ID:000993]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'QuarterlyEmploymentRecord', 
	@level2type=N'COLUMN',@level2name=N'ReferencePeriodEndDate'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'An individual''s enrollment in a program for which all the required coursework for program completion is able to be completed via distance education courses. Distance education is education that uses one or more technologies to deliver instruction to individuals who are separated from the instructor and to support regular and substantive interaction between the individuals and the instructor synchronously or asynchronously. [CEDS Element: Distance Education Program Enrollment Indicator, ID:001323]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'PsStudentEnrollment', 
	@level2type=N'COLUMN',@level2name=N'DistanceEducationProgramEnrollmentInd'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A textual label for category by which Rubric Criterion may be grouped. [CEDS Element: Rubric Criterion Category, ID:001469]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RubricCriterion', 
	@level2type=N'COLUMN',@level2name=N'Category'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'Text describing a criterion that must be met to demonstrate quality for a product, process, or performance task. [CEDS Element: Rubric Criterion Description, ID:001470]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RubricCriterion', 
	@level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'Text describing one or more benchmarks that must be met to achieve a degree of achievement on a product, process, or performance task. [CEDS Element: Rubric Criterion Level Description, ID:001471]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RubricCriterionLevel', 
	@level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The types of person identifiers. [CEDS Elements: Child Identification System (ID:000785), Social Security Number (ID:000259),  Staff Member Identification System (ID:001074), Student Identification System (ID:001075), Person Identification System (ID:001571)]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefPersonIdentificationSystem', 
	@level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The extent of formal instruction a person has received (e.g., the highest grade in school completed or its equivalent or the highest degree received). [CEDS Elements: Highest Level of Education Completed (000141),  Learning Resource Education Level (001246), Learning Standard Item Education Level (000725), Paternal Guardian Education (001230), Maternal Guardian Education (001229)]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefEducationLevel', 
	@level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'A coding scheme that is used for identification and record-keeping purposes by an organization.  [Organization Identification System (000827), Adult Education Service Provider Identification System (000781), Agency Course Identifier (001280), Course Code System (000056), Federal School Code (000111), Institution IPEDS UnitID (000166), Local Education Agency Identification System (001072), Local Education Agency Supervisory Union Identification Number (000175), Office of Postsecondary Education Identifier (000203), School Identification System (001073), State Agency Identification System (001491), Course Section Number (001315), Activity Identifier (000006), Course Identifier (000055), Program Identifier (000625), Course Section Identifier (000978)]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefOrganizationIdentificationSystem', 
	@level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'A coding scheme that is used for identification and record-keeping purposes by an organization.  [Organization Identification System (000827), Adult Education Service Provider Identification System (000781), Agency Course Identifier (001280), Course Code System (000056), Federal School Code (000111), Institution IPEDS UnitID (000166), Local Education Agency Identification System (001072), Local Education Agency Supervisory Union Identification Number (000175), Office of Postsecondary Education Identifier (000203), School Identification System (001073), State Agency Identification System (001491), Course Section Number (001315), Activity Identifier (000006), Course Identifier (000055), Program Identifier (000625), Course Section Identifier (000978)]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'OrganizationIdentifier', 
	@level2type=N'COLUMN',@level2name=N'RefOrganizationIdentificationSystemId'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'Grade levels offered by educational institutions. [CEDS Elements: Assessment Registration Grade Level When Assessed (001057), Entry Grade Level (000100), Exit Grade Level (001210), Grade Level When Assessed (000126), Grade Level When Course Taken (000125), Assessment Level for Which Designed (000177), Grades Offered (000131)]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefGradeLevel', 
	@level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'The status for the person''s association to the role.  [CEDS Elements: Class Section Enrollment Status Type (000976), Employment Status (000347), Enrollment Status (000094), Postsecondary Enrollment Status (000096), Teacher Preparation Program Enrollment Status (000767)]' , 
	@level0type=N'SCHEMA',@level0name=N'dbo', 
	@level1type=N'TABLE',@level1name=N'RefRoleStatus', 
	@level2type=N'COLUMN',@level2name=N'Description'
GO
