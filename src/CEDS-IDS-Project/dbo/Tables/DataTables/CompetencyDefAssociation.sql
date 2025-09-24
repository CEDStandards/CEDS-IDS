CREATE TABLE [dbo].[CompetencyDefAssociation] (
    [CompetencyDefAssociationId]                   INT            IDENTITY (1, 1) NOT NULL,
    [CompetencyDefinitionId]                       INT            NOT NULL,
    [AssociatedEntityId]                           INT            NOT NULL,
    [CompetencyDefAssociationIdentifierURI]        NVARCHAR (512) NULL,
    [ConnectionCitation]                           NVARCHAR (300) NULL,
    [OriginNodeName]                               NVARCHAR (30)  NULL,
    [OriginNodeURI]                                NVARCHAR (512) NULL,
    [DestinationNodeName]                          NVARCHAR (30)  NULL,
    [DestinationNodeURI]                           NVARCHAR (512) NULL,
    [Weight]                                       DECIMAL (9, 3) NULL,
    [RefEntityTypeId]                              INT            NOT NULL,
    [RefCompetencyDefAssociationTypeId]            INT            NULL,
    [RefLearningResourceCompetencyAlignmentTypeId] INT            NULL,
    [RecordStartDateTime]                          DATETIME       NULL,
    [RecordEndDateTime]                            DATETIME       NULL,
    [RecordStatusId]                               INT            NULL,
    [DataCollectionId]                             INT            NULL,
    CONSTRAINT [PK_CompetencyDefAssociation] PRIMARY KEY CLUSTERED ([CompetencyDefAssociationId] ASC),
    CONSTRAINT [FK_CFItemAssociation_RefCompetencyDefAssociation] FOREIGN KEY ([RefCompetencyDefAssociationTypeId]) REFERENCES [dbo].[RefCompetencyDefAssociationType] ([RefCompetencyDefAssociationTypeId]),
    CONSTRAINT [FK_CompetencyDefAssociation_CompetencyDefinition] FOREIGN KEY ([CompetencyDefinitionId]) REFERENCES [dbo].[CompetencyDefinition] ([CompetencyDefinitionId]),
    CONSTRAINT [FK_CompetencyDefAssociation_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_CompetencyDefAssociation_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_CompetencyDefAssociation_RefAssociatedEntityType] FOREIGN KEY ([RefEntityTypeId]) REFERENCES [dbo].[RefEntityType] ([RefEntityTypeId]),
    CONSTRAINT [FK_CompetencyDefAssociation_RefLearningResourceCompetencyAlignmentType] FOREIGN KEY ([RefLearningResourceCompetencyAlignmentTypeId]) REFERENCES [dbo].[RefLearningResourceCompetencyAlignmentType] ([RefLearningResourceCompetencyAlignmentTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The relation of competency definitions to other competency definitions and/or competency frameworks to competency frameworks to support competency maps or competency sub frameworks or linked controlled vocabulary terms as metadata to further define a competency definition. (In CEDS IDS CompetencyDefAssociation also provides a mechanism to link any other object in the model to a CompetencyDefinition, e.g. to RubricCriterion, LearningResource, Course, or AssessmentItem.)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefAssociation';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefAssociation';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The unique identifier of an immediate prerequisite Competency Definition, a competency needed prior to learning this one. (Some items may have no prerequisites while others may have one or more prerequisites. This should only be used to represent the immediate predecessors in a competency-based pathway, i.e. not prerequisites of prerequisites.)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefAssociation', @level2type = N'COLUMN', @level2name = N'AssociatedEntityId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Competency Definition Prerequisite Identifier', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefAssociation', @level2type = N'COLUMN', @level2name = N'AssociatedEntityId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000715', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefAssociation', @level2type = N'COLUMN', @level2name = N'AssociatedEntityId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19691', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefAssociation', @level2type = N'COLUMN', @level2name = N'AssociatedEntityId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefAssociation', @level2type = N'COLUMN', @level2name = N'AssociatedEntityId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A URI that establishes uniqueness of an association between a competency definition and another competency item or other objects such as learning resources.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefAssociation', @level2type = N'COLUMN', @level2name = N'CompetencyDefAssociationIdentifierURI';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Competency Association Identifier URI', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefAssociation', @level2type = N'COLUMN', @level2name = N'CompetencyDefAssociationIdentifierURI';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000871', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefAssociation', @level2type = N'COLUMN', @level2name = N'CompetencyDefAssociationIdentifierURI';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19871', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefAssociation', @level2type = N'COLUMN', @level2name = N'CompetencyDefAssociationIdentifierURI';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefAssociation', @level2type = N'COLUMN', @level2name = N'CompetencyDefAssociationIdentifierURI';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Any citation appropriate to evidence the connection between nodes', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefAssociation', @level2type = N'COLUMN', @level2name = N'ConnectionCitation';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Competency Association Connection Citation', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefAssociation', @level2type = N'COLUMN', @level2name = N'ConnectionCitation';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001402', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefAssociation', @level2type = N'COLUMN', @level2name = N'ConnectionCitation';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20371', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefAssociation', @level2type = N'COLUMN', @level2name = N'ConnectionCitation';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefAssociation', @level2type = N'COLUMN', @level2name = N'ConnectionCitation';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Name of the origin node when the Competency Association is used as a connector in a learning map.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefAssociation', @level2type = N'COLUMN', @level2name = N'OriginNodeName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Competency Association Origin Node Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefAssociation', @level2type = N'COLUMN', @level2name = N'OriginNodeName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001405', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefAssociation', @level2type = N'COLUMN', @level2name = N'OriginNodeName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20374', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefAssociation', @level2type = N'COLUMN', @level2name = N'OriginNodeName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefAssociation', @level2type = N'COLUMN', @level2name = N'OriginNodeName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'URI of the origin node when the Competency Association is used as a connector in a learning map.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefAssociation', @level2type = N'COLUMN', @level2name = N'OriginNodeURI';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Competency Association Origin Node URI', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefAssociation', @level2type = N'COLUMN', @level2name = N'OriginNodeURI';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001406', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefAssociation', @level2type = N'COLUMN', @level2name = N'OriginNodeURI';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20375', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefAssociation', @level2type = N'COLUMN', @level2name = N'OriginNodeURI';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefAssociation', @level2type = N'COLUMN', @level2name = N'OriginNodeURI';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Name of the destination node when the Competency Association is used as a connector in a learning map.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefAssociation', @level2type = N'COLUMN', @level2name = N'DestinationNodeName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Competency Association Destination Node Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefAssociation', @level2type = N'COLUMN', @level2name = N'DestinationNodeName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001403', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefAssociation', @level2type = N'COLUMN', @level2name = N'DestinationNodeName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20372', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefAssociation', @level2type = N'COLUMN', @level2name = N'DestinationNodeName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefAssociation', @level2type = N'COLUMN', @level2name = N'DestinationNodeName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'URI of the destination node when the Competency Association is used as a connector in a learning map.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefAssociation', @level2type = N'COLUMN', @level2name = N'DestinationNodeURI';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Competency Association Destination Node URI', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefAssociation', @level2type = N'COLUMN', @level2name = N'DestinationNodeURI';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001404', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefAssociation', @level2type = N'COLUMN', @level2name = N'DestinationNodeURI';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20373', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefAssociation', @level2type = N'COLUMN', @level2name = N'DestinationNodeURI';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefAssociation', @level2type = N'COLUMN', @level2name = N'DestinationNodeURI';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Indicates the relative significance this connection has for the destination node in a learning map.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefAssociation', @level2type = N'COLUMN', @level2name = N'Weight';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Competency Association Weight', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefAssociation', @level2type = N'COLUMN', @level2name = N'Weight';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001407', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefAssociation', @level2type = N'COLUMN', @level2name = N'Weight';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20376', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefAssociation', @level2type = N'COLUMN', @level2name = N'Weight';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefAssociation', @level2type = N'COLUMN', @level2name = N'Weight';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Defines the nature of the association between a Competency Definition and an associated data object such as a Learning Resource, an Assessment Item, or even another Competency Definition.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefAssociation', @level2type = N'COLUMN', @level2name = N'RefCompetencyDefAssociationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Competency Association Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefAssociation', @level2type = N'COLUMN', @level2name = N'RefCompetencyDefAssociationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000869', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefAssociation', @level2type = N'COLUMN', @level2name = N'RefCompetencyDefAssociationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19869', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefAssociation', @level2type = N'COLUMN', @level2name = N'RefCompetencyDefAssociationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefAssociation', @level2type = N'COLUMN', @level2name = N'RefCompetencyDefAssociationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The alignment relationship between the resource and a competency definition object.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefAssociation', @level2type = N'COLUMN', @level2name = N'RefLearningResourceCompetencyAlignmentTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Learning Resource Competency Alignment Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefAssociation', @level2type = N'COLUMN', @level2name = N'RefLearningResourceCompetencyAlignmentTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000879', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefAssociation', @level2type = N'COLUMN', @level2name = N'RefLearningResourceCompetencyAlignmentTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19879', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefAssociation', @level2type = N'COLUMN', @level2name = N'RefLearningResourceCompetencyAlignmentTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefAssociation', @level2type = N'COLUMN', @level2name = N'RefLearningResourceCompetencyAlignmentTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefAssociation', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefAssociation', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefAssociation', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefAssociation', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefAssociation', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefAssociation', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefAssociation', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefAssociation', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefAssociation', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CompetencyDefAssociation', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

