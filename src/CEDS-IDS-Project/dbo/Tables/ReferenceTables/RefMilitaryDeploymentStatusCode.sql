CREATE TABLE [dbo].[RefMilitaryDeploymentStatusCode] (
    [RefMilitaryDeploymentStatusCodeId] INT             IDENTITY (1, 1) NOT NULL,
    [Description]                       NVARCHAR (150)  NOT NULL,
    [Code]                              NVARCHAR (50)   NULL,
    [Definition]                        NVARCHAR (4000) NULL,
    [RefJurisdictionId]                 INT             NULL,
    [SortOrder]                         DECIMAL (5, 2)  NULL,
    [RecordStartDateTime]               DATETIME        NULL,
    [RecordEndDateTime]                 DATETIME        NULL,
    CONSTRAINT [PK_RefMilitaryDeploymentStatusCode] PRIMARY KEY CLUSTERED ([RefMilitaryDeploymentStatusCodeId] ASC),
    CONSTRAINT [FK_RefMilitaryDeploymentStatusCode_Organization] FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Deployment status code issued to military personnel by the U.S. military.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefMilitaryDeploymentStatusCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefMilitaryDeploymentStatusCode';

