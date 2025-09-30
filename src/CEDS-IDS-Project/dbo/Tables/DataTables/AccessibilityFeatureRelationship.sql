CREATE TABLE [dbo].[AccessibilityFeatureRelationship] (
    [AccessibilityFeatureRelationshipId]    INT      IDENTITY (1, 1) NOT NULL,
    [Object_AccessibilityFeatureRelationshipId]         INT      NOT NULL,
    [Subject_AccessibilityFeatureRelationshipId]                INT      NOT NULL,
    [RefAccessibilityFeatureRelationshipTypeId] INT      NULL,
    [RecordStartDateTime]           DATETIME NULL,
    [RecordEndDateTime]             DATETIME NULL,
    [RecordStatusId]                INT      NULL,
    [DataCollectionId]              INT      NULL,
    CONSTRAINT [PK_AccessibilityFeatureRelationship] PRIMARY KEY CLUSTERED ([AccessibilityFeatureRelationshipId] ASC),
    CONSTRAINT [FK_AccessibilityFeatureRelationship_AccessibilityFeature_Object] FOREIGN KEY ([Object_AccessibilityFeatureRelationshipId]) REFERENCES [dbo].[AccessibilityFeature] ([AccessibilityFeatureId]),
    CONSTRAINT [FK_AccessibilityFeatureRelationship_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_AccessibilityFeatureRelationship_AccessibilityFeature_Subject] FOREIGN KEY ([Subject_AccessibilityFeatureRelationshipId]) REFERENCES [dbo].[AccessibilityFeature] ([AccessibilityFeatureId]),
    CONSTRAINT [FK_AccessibilityFeatureRelationship_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_AccessibilityFeatureRelationship_RefAccessibilityFeatureRelationshipType] FOREIGN KEY ([RefAccessibilityFeatureRelationshipTypeId]) REFERENCES [dbo].[RefAccessibilityFeatureRelationshipType] ([RefAccessibilityFeatureRelationshipTypeId])
);


GO