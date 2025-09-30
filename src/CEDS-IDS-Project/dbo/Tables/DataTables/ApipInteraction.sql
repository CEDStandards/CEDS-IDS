CREATE TABLE [dbo].[ApipInteraction] (
    [ApipInteractionId]             INT            IDENTITY (1, 1) NOT NULL,
    [AssessmentItemApipId]          INT            NOT NULL,
    [Xml]                           NVARCHAR (MAX) NULL,
    [SequenceNumber]                INT            NULL,
    [APIPInteractionSequenceNumber] DECIMAL (9, 2) NULL,
    [RefApipInteractionTypeId]      INT            NULL,
    [RecordStartDateTime]           DATETIME       NULL,
    [RecordEndDateTime]             DATETIME       NULL,
    [RecordStatusId]                INT            NULL,
    [DataCollectionId]              INT            NULL,
    CONSTRAINT [PK_ApipInteraction] PRIMARY KEY CLUSTERED ([ApipInteractionId] ASC),
    CONSTRAINT [FK_ApipInteraction_AssessmentItemApip] FOREIGN KEY ([AssessmentItemApipId]) REFERENCES [dbo].[AssessmentItemApip] ([AssessmentItemApipId]),
    CONSTRAINT [FK_ApipInteraction_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_ApipInteraction_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_ApipInteraction_RefApipInteractionType] FOREIGN KEY ([RefApipInteractionTypeId]) REFERENCES [dbo].[RefApipInteractionType] ([RefAPIPInteractionTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information defining an assessment item interaction that may be specified using the IMS Global Accessible Portable Item Protocol APIP(R) standards.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ApipInteraction';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ApipInteraction';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ApipInteraction', @level2type = N'COLUMN', @level2name = N'ApipInteractionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The custom or associate interaction provides an opportunity for extensibility of this specification to include support for interactions not currently documented.  The XML from the IMS Global APIP Specification would be included.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ApipInteraction', @level2type = N'COLUMN', @level2name = N'Xml';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Item Body Custom Interaction XML, Assessment Item Body Drawing Interaction XML, Assessment Item Body Gap Match Interaction XML, Assessment Item Body Match Interaction XML, Assessment Item Body Graphic Gap Match Interaction XML, Assessment Item Body Hot Spot Interaction XML, Assessment Item Body Graphic Order Interaction XML, Assessment Item Body Select Point Interaction XML, Assessment Item Body Select Point Interaction, Assessment Item Body Slider Interaction XML, Assessment Item Body Choice Interaction XML, Assessment Item Body Inline Choice Interaction XML, Assessment Item Body Media Interaction XML, Assessment Item Body Hottext Interaction XML, Assessment Item Body Order Interaction XML, Assessment Item Body Position Object Interaction XML, Assessment Item Body Text Entry Interaction XML, Assessment Item Body Extended Text Interaction XML, Assessment Item Body End Attempt Interaction XML, Assessment Item Body Upload Interaction XML, Assessment Item Body Associate Interac', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ApipInteraction', @level2type = N'COLUMN', @level2name = N'Xml';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001102, 001103, 001104, 001105, 001106, 001107, 001108, 001109, 001110, 001111, 001112, 001114, 001115, 001116, 001117, 001118, 001119, 001120, 001121, 001222, 001123', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ApipInteraction', @level2type = N'COLUMN', @level2name = N'Xml';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20079, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20080, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20081, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20082, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20083, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20084, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20085, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20087, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20088, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20089, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20090, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20091, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20092, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20093, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20094, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20095, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20096, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20097, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20098, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20099, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20100', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ApipInteraction', @level2type = N'COLUMN', @level2name = N'Xml';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ApipInteraction', @level2type = N'COLUMN', @level2name = N'Xml';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The position of this APIP Interaction in a sequence of interactions.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ApipInteraction', @level2type = N'COLUMN', @level2name = N'APIPInteractionSequenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'APIP Interaction Sequence Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ApipInteraction', @level2type = N'COLUMN', @level2name = N'APIPInteractionSequenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001529', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ApipInteraction', @level2type = N'COLUMN', @level2name = N'APIPInteractionSequenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20504', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ApipInteraction', @level2type = N'COLUMN', @level2name = N'APIPInteractionSequenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ApipInteraction', @level2type = N'COLUMN', @level2name = N'APIPInteractionSequenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The assessment item body interaction type as defined by IMS Global specifications.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ApipInteraction', @level2type = N'COLUMN', @level2name = N'RefApipInteractionTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Assessment Item Body Drawing Interaction XML, Assessment Item Body Gap Match Interaction XML, Assessment Item Body Match Interaction XML, Assessment Item Body Graphic Gap Match Interaction XML, Assessment Item Body Hot Spot Interaction XML, Assessment Item Body Graphic Order Interaction XML, Assessment Item Body Select Point Interaction XML, Assessment Item Body Select Point Interaction, Assessment Item Body Slider Interaction XML, Assessment Item Body Choice Interaction XML, Assessment Item Body Inline Choice Interaction XML, Assessment Item Body Media Interaction XML, Assessment Item Body Hottext Interaction XML, Assessment Item Body Order Interaction XML, Assessment Item Body Position Object Interaction XML, Assessment Item Body Text Entry Interaction XML, Assessment Item Body Extended Text Interaction XML, Assessment Item Body End Attempt Interaction XML, Assessment Item Body Upload Interaction XML, Assessment Item Interaction Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ApipInteraction', @level2type = N'COLUMN', @level2name = N'RefApipInteractionTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001103, 001104, 001105, 001106, 001107, 001108, 001109, 001110, 001111, 001112, 001114, 001115, 001116, 001117, 001118, 001119, 001120, 001121, 001222, 001158', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ApipInteraction', @level2type = N'COLUMN', @level2name = N'RefApipInteractionTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20080, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20081, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20082, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20083, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20084, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20085, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20087, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20088, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20089, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20090, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20091, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20092, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20093, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20094, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20095, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20096, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20097, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20098, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20099, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20117', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ApipInteraction', @level2type = N'COLUMN', @level2name = N'RefApipInteractionTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ApipInteraction', @level2type = N'COLUMN', @level2name = N'RefApipInteractionTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ApipInteraction', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ApipInteraction', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ApipInteraction', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ApipInteraction', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ApipInteraction', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ApipInteraction', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ApipInteraction', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ApipInteraction', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ApipInteraction', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ApipInteraction', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

