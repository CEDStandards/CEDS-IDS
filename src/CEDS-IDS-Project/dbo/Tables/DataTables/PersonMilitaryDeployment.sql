CREATE TABLE [dbo].[PersonMilitaryDeployment] (
    [PersonMilitaryDeploymentId]         INT            IDENTITY (1, 1) NOT NULL,
    [PersonMilitaryId]                   INT            NOT NULL,
    [RefMilitaryDeploymentStatusCodeId]  INT            NULL,
    [MilitaryDeploymentActivityCode]     NVARCHAR (200) NULL,
    [MilitaryDeploymentActivityName]     NVARCHAR (400) NULL,
    [MilitaryDeploymentDescription]      NVARCHAR (200) NULL,
    [MilitaryDeploymentOrderDescription] NVARCHAR (200) NULL,
    [MilitaryDeploymentRequestedBy]      NVARCHAR (100) NULL,
    [MilitaryDeploymentStartDate]        DATETIME       NULL,
    [MilitaryDeploymentEndDate]          DATETIME       NULL,
    [RecordStartDateTime]                DATETIME       NULL,
    [RecordEndDateTime]                  DATETIME       NULL,
    [RecordStatusId]                     INT            NULL,
    [DataCollectionId]                   INT            NULL,
    CONSTRAINT [PK_PersonMilitaryDeployment] PRIMARY KEY CLUSTERED ([PersonMilitaryDeploymentId] ASC),
    CONSTRAINT [FK_PersonMilitaryDeployment_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_PersonMilitaryDeployment_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_PersonMilitaryDeployment_RefMilitaryDeploymentStatusCode] FOREIGN KEY ([RefMilitaryDeploymentStatusCodeId]) REFERENCES [dbo].[RefMilitaryDeploymentStatusCode] ([RefMilitaryDeploymentStatusCodeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information related to military deployment for a person.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryDeployment';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryDeployment';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Deployment status code issued to military personnel by the U.S. military.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryDeployment', @level2type = N'COLUMN', @level2name = N'RefMilitaryDeploymentStatusCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Military Deployment Status Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryDeployment', @level2type = N'COLUMN', @level2name = N'RefMilitaryDeploymentStatusCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002051', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryDeployment', @level2type = N'COLUMN', @level2name = N'RefMilitaryDeploymentStatusCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25057', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryDeployment', @level2type = N'COLUMN', @level2name = N'RefMilitaryDeploymentStatusCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryDeployment', @level2type = N'COLUMN', @level2name = N'RefMilitaryDeploymentStatusCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The codes of any activities performed by the person while deployed in the military.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryDeployment', @level2type = N'COLUMN', @level2name = N'MilitaryDeploymentActivityCode';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Military Deployment Activity Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryDeployment', @level2type = N'COLUMN', @level2name = N'MilitaryDeploymentActivityCode';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002055', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryDeployment', @level2type = N'COLUMN', @level2name = N'MilitaryDeploymentActivityCode';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25050', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryDeployment', @level2type = N'COLUMN', @level2name = N'MilitaryDeploymentActivityCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryDeployment', @level2type = N'COLUMN', @level2name = N'MilitaryDeploymentActivityCode';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The names of any activities performed by the person while deployed in the military.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryDeployment', @level2type = N'COLUMN', @level2name = N'MilitaryDeploymentActivityName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Military Deployment Activity Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryDeployment', @level2type = N'COLUMN', @level2name = N'MilitaryDeploymentActivityName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002056', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryDeployment', @level2type = N'COLUMN', @level2name = N'MilitaryDeploymentActivityName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25051', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryDeployment', @level2type = N'COLUMN', @level2name = N'MilitaryDeploymentActivityName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryDeployment', @level2type = N'COLUMN', @level2name = N'MilitaryDeploymentActivityName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A textual description of the person''s military deployment.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryDeployment', @level2type = N'COLUMN', @level2name = N'MilitaryDeploymentDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Military Deployment Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryDeployment', @level2type = N'COLUMN', @level2name = N'MilitaryDeploymentDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002052', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryDeployment', @level2type = N'COLUMN', @level2name = N'MilitaryDeploymentDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25052', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryDeployment', @level2type = N'COLUMN', @level2name = N'MilitaryDeploymentDescription';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryDeployment', @level2type = N'COLUMN', @level2name = N'MilitaryDeploymentDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A textual description of the person''s military deployment order.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryDeployment', @level2type = N'COLUMN', @level2name = N'MilitaryDeploymentOrderDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Military Deployment Order Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryDeployment', @level2type = N'COLUMN', @level2name = N'MilitaryDeploymentOrderDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002053', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryDeployment', @level2type = N'COLUMN', @level2name = N'MilitaryDeploymentOrderDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25054', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryDeployment', @level2type = N'COLUMN', @level2name = N'MilitaryDeploymentOrderDescription';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryDeployment', @level2type = N'COLUMN', @level2name = N'MilitaryDeploymentOrderDescription';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A textual description of an entity that requested the person''s military deployment.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryDeployment', @level2type = N'COLUMN', @level2name = N'MilitaryDeploymentRequestedBy';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Military Deployment Requested By', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryDeployment', @level2type = N'COLUMN', @level2name = N'MilitaryDeploymentRequestedBy';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002054', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryDeployment', @level2type = N'COLUMN', @level2name = N'MilitaryDeploymentRequestedBy';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25055', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryDeployment', @level2type = N'COLUMN', @level2name = N'MilitaryDeploymentRequestedBy';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryDeployment', @level2type = N'COLUMN', @level2name = N'MilitaryDeploymentRequestedBy';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date when a person''s military deployment started.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryDeployment', @level2type = N'COLUMN', @level2name = N'MilitaryDeploymentStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Military Deployment Start Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryDeployment', @level2type = N'COLUMN', @level2name = N'MilitaryDeploymentStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002042', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryDeployment', @level2type = N'COLUMN', @level2name = N'MilitaryDeploymentStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25056', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryDeployment', @level2type = N'COLUMN', @level2name = N'MilitaryDeploymentStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryDeployment', @level2type = N'COLUMN', @level2name = N'MilitaryDeploymentStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date when a person''s military deployment ended.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryDeployment', @level2type = N'COLUMN', @level2name = N'MilitaryDeploymentEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Military Deployment End Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryDeployment', @level2type = N'COLUMN', @level2name = N'MilitaryDeploymentEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002043', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryDeployment', @level2type = N'COLUMN', @level2name = N'MilitaryDeploymentEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25053', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryDeployment', @level2type = N'COLUMN', @level2name = N'MilitaryDeploymentEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitaryDeployment', @level2type = N'COLUMN', @level2name = N'MilitaryDeploymentEndDate';

