CREATE TABLE [dbo].[ProfessionalDevelopmentActivity] (
    [ProfessionalDevelopmentActivityId]                  INT             IDENTITY (1, 1) NOT NULL,
    [ProfessionalDevelopmentRequirementId]               INT             NOT NULL,
    [CourseId]                                           INT             NULL,
    [Title]                                              NVARCHAR (60)   NULL,
    [ActivityIdentifier]                                 NVARCHAR (40)   NULL,
    [Description]                                        NVARCHAR (2000) NULL,
    [Objective]                                          NVARCHAR (2000) NULL,
    [ActivityCode]                                       NVARCHAR (30)   NULL,
    [ApprovalCode]                                       NVARCHAR (30)   NULL,
    [Cost]                                               DECIMAL (6, 2)  NULL,
    [Credits]                                            DECIMAL (6, 2)  NULL,
    [ScholarshipStatus]                                  BIT             NULL,
    [PublishIndicator]                                   BIT             NULL,
    [ProfessionalDevelopmentActivityStateApprovedStatus] BIT             NULL,
    [RefCourseCreditUnitId]                              INT             NULL,
    [RefProfessionalDevelopmentFinancialSupportId]       INT             NULL,
    [RefPDAudienceTypeId]                                INT             NULL,
    [RefPDActivityApprovedPurposeId]                     INT             NULL,
    [RefPDActivityCreditTypeId]                          INT             NULL,
    [RefPDActivityLevelId]                               INT             NULL,
    [RefPDActivityTypeId]                                INT             NULL,
    [RecordStartDateTime]                                DATETIME        NULL,
    [RecordEndDateTime]                                  DATETIME        NULL,
    [RecordStatusId]                                     INT             NULL,
    [DataCollectionId]                                   INT             NULL,
    CONSTRAINT [PK_ProfessionalDevelopmentActivity] PRIMARY KEY CLUSTERED ([ProfessionalDevelopmentActivityId] ASC),
    CONSTRAINT [FK_PDSession_Course] FOREIGN KEY ([CourseId]) REFERENCES [dbo].[Course] ([CourseId]),
    CONSTRAINT [FK_PDSession_PDRequirement] FOREIGN KEY ([ProfessionalDevelopmentRequirementId]) REFERENCES [dbo].[ProfessionalDevelopmentRequirement] ([ProfessionalDevelopmentRequirementId]),
    CONSTRAINT [FK_PDSession_RefCourseCreditUnit] FOREIGN KEY ([RefCourseCreditUnitId]) REFERENCES [dbo].[RefCourseCreditUnit] ([RefCourseCreditUnitId]),
    CONSTRAINT [FK_PDSession_RefProfDevFinancialSupport] FOREIGN KEY ([RefProfessionalDevelopmentFinancialSupportId]) REFERENCES [dbo].[RefProfessionalDevelopmentFinancialSupport] ([RefProfessionalDevelopmentFinancialSupportId]),
    CONSTRAINT [FK_ProfessionalDevelopmentActivity_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_ProfessionalDevelopmentActivity_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_ProfessionalDevelopmentActivity_RefPDActivityApprovedFor] FOREIGN KEY ([RefPDActivityApprovedPurposeId]) REFERENCES [dbo].[RefPDActivityApprovedPurpose] ([RefPDActivityApprovedPurposeId]),
    CONSTRAINT [FK_ProfessionalDevelopmentActivity_RefPDActivityCreditType] FOREIGN KEY ([RefPDActivityCreditTypeId]) REFERENCES [dbo].[RefPDActivityCreditType] ([RefPDActivityCreditTypeId]),
    CONSTRAINT [FK_ProfessionalDevelopmentActivity_RefPDActivityLevel] FOREIGN KEY ([RefPDActivityLevelId]) REFERENCES [dbo].[RefPDActivityLevel] ([RefPDActivityLevelId]),
    CONSTRAINT [FK_ProfessionalDevelopmentActivity_RefPDActivityType] FOREIGN KEY ([RefPDActivityTypeId]) REFERENCES [dbo].[RefPDActivityType] ([RefPDActivityTypeId]),
    CONSTRAINT [FK_ProfessionalDevelopmentActivity_RefPDAudienceType] FOREIGN KEY ([RefPDAudienceTypeId]) REFERENCES [dbo].[RefPDAudienceType] ([RefPDAudienceTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An activity designed for the purpose of developing someone professionally. ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'ProfessionalDevelopmentActivityId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - ProfessionaDevelopmentRequirement.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'ProfessionalDevelopmentRequirementId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - Course.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'CourseId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The title of an activity designed for the purpose of developing someone professionally.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'Title';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Professional Development Activity Title', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'Title';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000810', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'Title';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19809', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'Title';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'Title';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A unique number or alphanumeric code assigned to the Professional Development Activity as assigned by the organization offering the training.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'ActivityIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Professional Development Activity Identifier', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'ActivityIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000809', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'ActivityIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19808', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'ActivityIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'ActivityIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A description of the content covered in the professional development activity.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Professional Development Activity Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001438', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20408', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The expected outcomes of a participant in an activity.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'Objective';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Professional Development Activity Objective', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'Objective';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001440', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'Objective';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20410', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'Objective';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'Objective';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A code assigned to an professional development activity by the organization offering the activity that is unique to the non-variable activity details.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'ActivityCode';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Professional Development Activity Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'ActivityCode';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001434', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'ActivityCode';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20404', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'ActivityCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'ActivityCode';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A code given to an activity by an approval organization to designate it as an approved activity.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'ApprovalCode';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Professional Development Activity Approval Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'ApprovalCode';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001432', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'ApprovalCode';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20402', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'ApprovalCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'ApprovalCode';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The cost for an attendee to participate in a professional development activity.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'Cost';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Professional Development Activity Cost', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'Cost';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001435', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'Cost';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20405', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'Cost';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'Cost';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The number of credits a professional development activity provides.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'Credits';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Professional Development Activity Credits', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'Credits';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001437', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'Credits';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20407', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'Credits';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'Credits';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether a scholarship was received for the person to participate in the professional development.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'ScholarshipStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Professional Development Scholarship Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'ScholarshipStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000811', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'ScholarshipStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19810', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'ScholarshipStatus';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'ScholarshipStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indicator of whether the professional development activity should be published.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'PublishIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Professional Development Publish Activity Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'PublishIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001445', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'PublishIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20415', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'PublishIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'PublishIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether a training activity has been approved through a state process.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'ProfessionalDevelopmentActivityStateApprovedStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Professional Development Activity State Approved Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'ProfessionalDevelopmentActivityStateApprovedStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001619', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'ProfessionalDevelopmentActivityStateApprovedStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20598', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'ProfessionalDevelopmentActivityStateApprovedStatus';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'ProfessionalDevelopmentActivityStateApprovedStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of credit (unit, semester, or quarter) associated with the credit hours earned for the course. ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'RefCourseCreditUnitId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Course Credit Units', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'RefCourseCreditUnitId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000057', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'RefCourseCreditUnitId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19057', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'RefCourseCreditUnitId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'RefCourseCreditUnitId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of financial assistance received in support of non-credit professional development activities.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'RefProfessionalDevelopmentFinancialSupportId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Professional Development Financial Support Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'RefProfessionalDevelopmentFinancialSupportId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000812', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'RefProfessionalDevelopmentFinancialSupportId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19811', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'RefProfessionalDevelopmentFinancialSupportId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'RefProfessionalDevelopmentFinancialSupportId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of audience for the professional development activity.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'RefPDAudienceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Professional Development Audience Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'RefPDAudienceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001430', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'RefPDAudienceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20399', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'RefPDAudienceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'RefPDAudienceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The purposes for which an activity is approved.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'RefPDActivityApprovedPurposeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Professional Development Activity Approved Purpose', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'RefPDActivityApprovedPurposeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001433', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'RefPDActivityApprovedPurposeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20403', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'RefPDActivityApprovedPurposeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'RefPDActivityApprovedPurposeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of credit awarded.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'RefPDActivityCreditTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Professional Development Activity Credit Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'RefPDActivityCreditTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001436', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'RefPDActivityCreditTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20406', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'RefPDActivityCreditTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'RefPDActivityCreditTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indicator of the level of a professional development activity on the beginner to advanced continuum.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'RefPDActivityLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Professional Development Activity Level', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'RefPDActivityLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001439', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'RefPDActivityLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20409', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'RefPDActivityLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'RefPDActivityLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The indication of the type of professional development activity.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'RefPDActivityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Professional Development Activity Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'RefPDActivityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001442', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'RefPDActivityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20412', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'RefPDActivityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'RefPDActivityTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProfessionalDevelopmentActivity', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

