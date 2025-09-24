CREATE TABLE [dbo].[RefLEAGFSAPolicyAssuranceIndicator] (
    [RefLEAGFSAPolicyAssuranceIndicatorId] INT             IDENTITY (1, 1) NOT NULL,
    [Description]                          NVARCHAR (150)  NOT NULL,
    [Code]                                 NVARCHAR (50)   NULL,
    [Definition]                           NVARCHAR (4000) NULL,
    [RefJurisdictionId]                    INT             NULL,
    [SortOrder]                            DECIMAL (5, 2)  NULL,
    [RecordStartDateTime]                  DATETIME        NULL,
    [RecordEndDateTime]                    DATETIME        NULL,
    CONSTRAINT [PK_RefLEAGFSAPolicyAssuranceIndicator] PRIMARY KEY CLUSTERED ([RefLEAGFSAPolicyAssuranceIndicatorId] ASC),
    CONSTRAINT [FK_RefLEAGFSAPolicyAssuranceIndicator_Organization] FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Indicates if a Local Education Agency has provided an assurance that it is in compliance with the requirement in Section 4141(h) that an LEA receiving ESEA funds have in place a policy requiring referral to the criminal justice or juvenile delinquency system of any student who brings a firearm to a school or possesses a firearm at school. ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefLEAGFSAPolicyAssuranceIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefLEAGFSAPolicyAssuranceIndicator';

