CREATE TABLE [dbo].[AuthorizationDocument] (
    [AuthorizationDocumentId]  INT            IDENTITY (1, 1) NOT NULL,
    [OrganizationPersonRoleId] INT            NOT NULL,
    [AcceptanceIndicator]      BIT            NULL,
    [AuthorizationDate]        DATE           NULL,
    [DecisionExplanation]      NVARCHAR (MAX) NULL,
    [RefAuthorizerTypeId]      INT            NULL,
    [RecordStartDateTime]      DATETIME       NULL,
    [RecordEndDateTime]        DATETIME       NULL,
    [RecordStatusId]           INT            NULL,
    [DataCollectionId]         INT            NULL,
    CONSTRAINT [PK_AuthorizationDocument] PRIMARY KEY CLUSTERED ([AuthorizationDocumentId] ASC),
    CONSTRAINT [FK_AuthorizationDocument_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_AuthorizationDocument_OrganizationPersonRole] FOREIGN KEY ([OrganizationPersonRoleId]) REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]),
    CONSTRAINT [FK_AuthorizationDocument_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_AuthorizationDocument_RefAuthorizerType] FOREIGN KEY ([RefAuthorizerTypeId]) REFERENCES [dbo].[RefAuthorizerType] ([RefAuthorizerTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information about a document that authorizes a deision or plan such as a document authorizing an IEP.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AuthorizationDocument';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AuthorizationDocument';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Indicates authorizer agreement to a document or plan, such as plan for delivery of student services, program, or improvement plan.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AuthorizationDocument', @level2type = N'COLUMN', @level2name = N'AcceptanceIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Authorization Acceptance Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AuthorizationDocument', @level2type = N'COLUMN', @level2name = N'AcceptanceIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001721', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AuthorizationDocument', @level2type = N'COLUMN', @level2name = N'AcceptanceIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20702', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AuthorizationDocument', @level2type = N'COLUMN', @level2name = N'AcceptanceIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date the authorization occurred.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AuthorizationDocument', @level2type = N'COLUMN', @level2name = N'AuthorizationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Authorization Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AuthorizationDocument', @level2type = N'COLUMN', @level2name = N'AuthorizationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001725', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AuthorizationDocument', @level2type = N'COLUMN', @level2name = N'AuthorizationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20706', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AuthorizationDocument', @level2type = N'COLUMN', @level2name = N'AuthorizationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Authorizer''s explanation regarding the authorization decision.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AuthorizationDocument', @level2type = N'COLUMN', @level2name = N'DecisionExplanation';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Authorization Decision Explanation', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AuthorizationDocument', @level2type = N'COLUMN', @level2name = N'DecisionExplanation';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001722', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AuthorizationDocument', @level2type = N'COLUMN', @level2name = N'DecisionExplanation';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20703', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AuthorizationDocument', @level2type = N'COLUMN', @level2name = N'DecisionExplanation';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Type of person who authorized the decision or document.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AuthorizationDocument', @level2type = N'COLUMN', @level2name = N'RefAuthorizerTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Authorizer Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AuthorizationDocument', @level2type = N'COLUMN', @level2name = N'RefAuthorizerTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001720', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AuthorizationDocument', @level2type = N'COLUMN', @level2name = N'RefAuthorizerTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20701', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AuthorizationDocument', @level2type = N'COLUMN', @level2name = N'RefAuthorizerTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AuthorizationDocument', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AuthorizationDocument', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AuthorizationDocument', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AuthorizationDocument', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AuthorizationDocument', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AuthorizationDocument', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AuthorizationDocument', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AuthorizationDocument', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AuthorizationDocument', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AuthorizationDocument', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

