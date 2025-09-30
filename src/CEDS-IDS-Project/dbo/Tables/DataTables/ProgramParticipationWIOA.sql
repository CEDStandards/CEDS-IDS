CREATE TABLE [dbo].[ProgramParticipationWIOA] (
    [ProgramParticipationWIOAId]   INT      IDENTITY (1, 1) NOT NULL,
    [PersonProgramParticipationId] INT      NOT NULL,
    [WIOACareerServices]           BIT      NULL,
    [WIOATrainingServices]         BIT      NULL,
    [RecordStartDateTime]          DATETIME NULL,
    [RecordEndDateTime]            DATETIME NULL,
    [RecordStatusId]               INT      NULL,
    [DataCollectionId]             INT      NULL,
    CONSTRAINT [PK_ProgramParticipationWIOA] PRIMARY KEY CLUSTERED ([ProgramParticipationWIOAId] ASC),
    CONSTRAINT [FK_ProgramParticipationWIOA_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_ProgramParticipationWIOA_PersonProgramParticipation] FOREIGN KEY ([PersonProgramParticipationId]) REFERENCES [dbo].[PersonProgramParticipation] ([PersonProgramParticipationId]),
    CONSTRAINT [FK_ProgramParticipationWIOA_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information related to participation in workforce programs through the Workforce Innovation and Opportunity Act (WIOA).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationWIOA';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationWIOA';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether or not the individual has received services as identified in sec. 134(c)(2) of the Workforce Innovation and Opportunity Act (WIOA) consisting of (a) basic career services, (b) individualized career services, or (c) follow-up services.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationWIOA', @level2type = N'COLUMN', @level2name = N'WIOACareerServices';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'WIOA Career Services', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationWIOA', @level2type = N'COLUMN', @level2name = N'WIOACareerServices';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001941', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationWIOA', @level2type = N'COLUMN', @level2name = N'WIOACareerServices';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20970', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationWIOA', @level2type = N'COLUMN', @level2name = N'WIOACareerServices';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationWIOA', @level2type = N'COLUMN', @level2name = N'WIOACareerServices';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether or not the individual has received services as defined by the Workforce Innovation and Opportunity Act (WIOA), one or more courses or classes, or a structured regimen that provides the services in 20 CFR part 680.200 and leads to: (a) An industry-recognized certificate or certification, a certificate of completion of a registered apprenticeship, a license recognized by the State involved or the Federal Government, an associate or baccalaureate degree, or community college certificate of completion; (b) Consistent with § 680.350, a secondary school diploma or its equivalent; (c) Employment; or (d) Measurable skill gains toward a credential described in paragraph (a) or (b) of this section or employment.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationWIOA', @level2type = N'COLUMN', @level2name = N'WIOATrainingServices';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'WIOA Training Services', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationWIOA', @level2type = N'COLUMN', @level2name = N'WIOATrainingServices';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001942', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationWIOA', @level2type = N'COLUMN', @level2name = N'WIOATrainingServices';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20971', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationWIOA', @level2type = N'COLUMN', @level2name = N'WIOATrainingServices';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationWIOA', @level2type = N'COLUMN', @level2name = N'WIOATrainingServices';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationWIOA', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationWIOA', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationWIOA', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationWIOA', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationWIOA', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationWIOA', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationWIOA', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationWIOA', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationWIOA', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationWIOA', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

