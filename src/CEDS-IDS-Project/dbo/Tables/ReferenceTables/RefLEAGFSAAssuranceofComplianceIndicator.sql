CREATE TABLE [dbo].[RefLEAGFSAAssuranceofComplianceIndicator] (
    [RefLEAGFSAAssuranceofComplianceIndicatorId] INT             IDENTITY (1, 1) NOT NULL,
    [Description]                                NVARCHAR (150)  NOT NULL,
    [Code]                                       NVARCHAR (50)   NULL,
    [Definition]                                 NVARCHAR (4000) NULL,
    [RefJurisdictionId]                          INT             NULL,
    [SortOrder]                                  DECIMAL (5, 2)  NULL,
    [RecordStartDateTime]                        DATETIME        NULL,
    [RecordEndDateTime]                          DATETIME        NULL,
    CONSTRAINT [PK_RefLEAGFSAAssuranceofComplianceIndicator] PRIMARY KEY CLUSTERED ([RefLEAGFSAAssuranceofComplianceIndicatorId] ASC),
    CONSTRAINT [FK_RefLEAGFSAAssuranceofComplianceIndicator_Organization] FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Indicates if a Local Education Agency (LEA) has provided an assurance that it is in compliance with the State law requiring that a student who brings a firearm to school, or possesses a firearm at school, be expelled for one year, except that such State law shall allow the chief administering officer of a local educational agency to modify such expulsion requirement for a student on a case-by-case basis if such modification is in writing.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefLEAGFSAAssuranceofComplianceIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefLEAGFSAAssuranceofComplianceIndicator';

