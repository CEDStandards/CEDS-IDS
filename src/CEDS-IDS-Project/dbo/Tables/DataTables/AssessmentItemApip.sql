CREATE TABLE [dbo].[AssessmentItemApip] (
    [AssessmentItemApipId]          INT            IDENTITY (1, 1) NOT NULL,
    [AssessmentItemId]              INT            NOT NULL,
    [AdaptiveIndicator]             BIT            NULL,
    [ResponseProcessingTemplateUrl] NVARCHAR (512) NULL,
    [ResponseProcessingXml]         NVARCHAR (MAX) NULL,
    [ResponseDeclarationXml]        NVARCHAR (MAX) NULL,
    [OutcomeDeclarationXml]         NVARCHAR (MAX) NULL,
    [TemplateDeclarationXml]        NVARCHAR (MAX) NULL,
    [TemplateProcessingXml]         NVARCHAR (MAX) NULL,
    [ModalFeedbackXml]              NVARCHAR (MAX) NULL,
    [ItemBodyXml]                   NVARCHAR (MAX) NULL,
    [RecordStartDateTime]           DATETIME       NULL,
    [RecordEndDateTime]             DATETIME       NULL,
    [RecordStatusId]                INT            NULL,
    [DataCollectionId]              INT            NULL,
    CONSTRAINT [PK_AssessmentItemBody] PRIMARY KEY CLUSTERED ([AssessmentItemApipId] ASC),
    CONSTRAINT [FK_AssessmentItemApip_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_AssessmentItemApip_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_AssessmentItemBody_AssessmentItem1] FOREIGN KEY ([AssessmentItemId]) REFERENCES [dbo].[AssessmentItem] ([AssessmentItemId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Accessible Portable Item Protocol information for an assessment item that may use the IMS Global APIP(R) standards.  ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApip', @level2type = N'COLUMN', @level2name = N'AssessmentItemId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'This indicator determines whether an assessment item is an adaptive item.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApip', @level2type = N'COLUMN', @level2name = N'AdaptiveIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Item Adaptive Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApip', @level2type = N'COLUMN', @level2name = N'AdaptiveIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001139', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApip', @level2type = N'COLUMN', @level2name = N'AdaptiveIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20111', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApip', @level2type = N'COLUMN', @level2name = N'AdaptiveIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApip', @level2type = N'COLUMN', @level2name = N'AdaptiveIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'These templates are described using the processing language defined in IMS Global APIP specification and are distributed (in XML form) along with it. Delivery engines that support generalized response processing do not need to implement special mechanisms to support them as a template file can be parsed directly while processing the assessment item that refers to it. This element provides the URL for the template.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApip', @level2type = N'COLUMN', @level2name = N'ResponseProcessingTemplateUrl';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Item APIP Response Processing Template URL', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApip', @level2type = N'COLUMN', @level2name = N'ResponseProcessingTemplateUrl';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001131', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApip', @level2type = N'COLUMN', @level2name = N'ResponseProcessingTemplateUrl';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20103', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApip', @level2type = N'COLUMN', @level2name = N'ResponseProcessingTemplateUrl';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApip', @level2type = N'COLUMN', @level2name = N'ResponseProcessingTemplateUrl';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Response processing is the process by which the Delivery Engine assigns outcomes based on the learner''s responses. The outcomes may be used to provide feedback to the learner Feedback is either provided immediately following the end of the learner''s attempt or it is provided at some later time, perhaps as part of a summary report on the item session. The XML from the IMS Global APIP Specification would be included.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApip', @level2type = N'COLUMN', @level2name = N'ResponseProcessingXml';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Item APIP Response Processing XML', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApip', @level2type = N'COLUMN', @level2name = N'ResponseProcessingXml';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001132', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApip', @level2type = N'COLUMN', @level2name = N'ResponseProcessingXml';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20104', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApip', @level2type = N'COLUMN', @level2name = N'ResponseProcessingXml';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApip', @level2type = N'COLUMN', @level2name = N'ResponseProcessingXml';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Response declarations state what the response variables include.  The response declaration may assign an optional correct response. The XML from the IMS Global APIP Specification would be included.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApip', @level2type = N'COLUMN', @level2name = N'ResponseDeclarationXml';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Item APIP Response Declaration XML', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApip', @level2type = N'COLUMN', @level2name = N'ResponseDeclarationXml';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001133', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApip', @level2type = N'COLUMN', @level2name = N'ResponseDeclarationXml';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20105', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApip', @level2type = N'COLUMN', @level2name = N'ResponseDeclarationXml';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApip', @level2type = N'COLUMN', @level2name = N'ResponseDeclarationXml';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Outcome variables are declared by outcome declarations. Their value is set either from a default given in the declaration itself or by a responseRule during response processing.  The XML from the IMS Global APIP Specification would be included.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApip', @level2type = N'COLUMN', @level2name = N'OutcomeDeclarationXml';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Item APIP Outcome Declaration XML', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApip', @level2type = N'COLUMN', @level2name = N'OutcomeDeclarationXml';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001134', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApip', @level2type = N'COLUMN', @level2name = N'OutcomeDeclarationXml';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20106', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApip', @level2type = N'COLUMN', @level2name = N'OutcomeDeclarationXml';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApip', @level2type = N'COLUMN', @level2name = N'OutcomeDeclarationXml';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Template declarations declare item variables that are to be used specifically for the purposes of cloning items. They can have their value set only during template processing. They are referred to within the item body in order to individualize the clone and possibly also within the response Processing rules if the cloning process affects the way the item is scored.  The XML from the IMS Global APIP Specification would be included.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApip', @level2type = N'COLUMN', @level2name = N'TemplateDeclarationXml';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Item APIP Template Declaration XML', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApip', @level2type = N'COLUMN', @level2name = N'TemplateDeclarationXml';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001135', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApip', @level2type = N'COLUMN', @level2name = N'TemplateDeclarationXml';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20107', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApip', @level2type = N'COLUMN', @level2name = N'TemplateDeclarationXml';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApip', @level2type = N'COLUMN', @level2name = N'TemplateDeclarationXml';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Template processing consists of one or more template rules that are followed by the cloning engine or delivery system in order to assign values to the template variables. Template processing is identical in form to responseProcessing except that the purpose is to assign values to template variables, not outcome variables. The XML from the IMS Global APIP Specification would be included.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApip', @level2type = N'COLUMN', @level2name = N'TemplateProcessingXml';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Item APIP Template Processing XML', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApip', @level2type = N'COLUMN', @level2name = N'TemplateProcessingXml';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001136', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApip', @level2type = N'COLUMN', @level2name = N'TemplateProcessingXml';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20108', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApip', @level2type = N'COLUMN', @level2name = N'TemplateProcessingXml';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApip', @level2type = N'COLUMN', @level2name = N'TemplateProcessingXml';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Modal feedback is shown to the candidate directly following response processing. The value of an outcome variable is used in conjunction with the showHide and identifier attributes to determine whether or not the feedback is shown in a similar way to feedbackElement. The XML from the IMS Global APIP Specification would be included.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApip', @level2type = N'COLUMN', @level2name = N'ModalFeedbackXml';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Item APIP Modal Feedback XML', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApip', @level2type = N'COLUMN', @level2name = N'ModalFeedbackXml';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001137', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApip', @level2type = N'COLUMN', @level2name = N'ModalFeedbackXml';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApip', @level2type = N'COLUMN', @level2name = N'ModalFeedbackXml';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApip', @level2type = N'COLUMN', @level2name = N'ModalFeedbackXml';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The item body contains the text, graphics, media objects, and interactions that describe the item''s content and information about how it is structured. The body is presented by combining it with stylesheet information, either explicitly or implicitly using the default style rules of the delivery or authoring system. This element contains the appropriate XML from the IMS Global APIP Specification defining the various item body interactions.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApip', @level2type = N'COLUMN', @level2name = N'ItemBodyXml';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Item APIP Item Body XML', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApip', @level2type = N'COLUMN', @level2name = N'ItemBodyXml';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001138', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApip', @level2type = N'COLUMN', @level2name = N'ItemBodyXml';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20110', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApip', @level2type = N'COLUMN', @level2name = N'ItemBodyXml';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApip', @level2type = N'COLUMN', @level2name = N'ItemBodyXml';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApip', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApip', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApip', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApip', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApip', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApip', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApip', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApip', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AssessmentItemApip', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

