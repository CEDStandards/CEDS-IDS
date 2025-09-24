CREATE TABLE [dbo].[RefTransportationStateAidQualificationType] (
    [RefTransportationStateAidQualificationTypeId] INT             IDENTITY (1, 1) NOT NULL,
    [Description]                                  NVARCHAR (150)  NOT NULL,
    [Code]                                         NVARCHAR (50)   NULL,
    [Definition]                                   NVARCHAR (4000) NULL,
    [RefJurisdictionId]                            INT             NULL,
    [SortOrder]                                    DECIMAL (5, 2)  NULL,
    [RecordStartDateTime]                          DATETIME        NULL,
    [RecordEndDateTime]                            DATETIME        NULL,
    CONSTRAINT [PK_RefTransportationStateAidQualificationType] PRIMARY KEY CLUSTERED ([RefTransportationStateAidQualificationTypeId] ASC),
    CONSTRAINT [FK_RefTransportationStateAidQualificationType_Organization] FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The qualification status for the transportation of a person that entitles an organization to receive state transportation aid.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefTransportationStateAidQualificationType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefTransportationStateAidQualificationType';

