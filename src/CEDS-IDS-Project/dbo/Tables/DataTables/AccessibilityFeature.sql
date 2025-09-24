CREATE TABLE [dbo].[AccessibilityFeature](
	[AccessibilityFeatureId] [int] IDENTITY(1,1) NOT NULL,
	[RefAccessibilityFeatureTypeId] [int] NULL,
	[RefAccessibilityFeatureApplicationTypeId] [int] NULL,
	[RefAccessibilityFeatureCategoryId] [int] NULL,
	[RefAccessibilityFeatureDeliveryMethodId] [int] NULL,
	[RefAccessibilityFeatureEmbeddedIndicatorId] [int] NULL,
	[RefAccessibilityFeatureLanguageTypeId] [int] NULL,
	[RefAccessibilityFeaturePausesTheClockIndicatorId] [int] NULL,
	[AdaptiveAndSpecializedEquipmentorFurnitureDescription] [nvarchar](MAX) NULL,
	[RefAdaptiveCalculatorTypeId] [int] NULL,
	[RefAlternateResponseOptionTypeId] [int] NULL,
	[RefAssessmentComponentTypeId] [int] NULL,
	[AssessmentExtendedTimeDuration] [int] NULL,
	[RefAssessmentExtendedTimeTypeId] [int] NULL,
	[RefBrailleAcessTypeId]  [int] NULL,
	[RefBrailleApplicationTypeId] [int] NULL,
	[RefBrailleCodeTypeId] [int] NULL,
	[RefBrailleVersionTypeId] [int] NULL,
	[BreakDuration] [int] NULL,
	[RefBreakLocationTypeId] [int] NULL,
	[RefBreakTypeId] [int] NULL,
	[RefCalculatorTypeId] [int] NULL,
	[RefDisplayFormatAdjustmentTypeId] [int] NULL,
	[GroupSizeRangeMaximum] [int] NULL,
	[GroupSizeRangeMinimum] [int] NULL,
	[RefGroupSizeTypeId] [int] NULL,
	[RefMedicalSupportTypeId] [int] NULL,
	[RefReadAloudTypeId] [int] NULL,
	[RefReferenceSheetTypeId] [int] NULL,
	[RefSettingTypeId] [int] NULL,
	[RefSignedAdministrationDeliveryMethodId] [int] NULL,
	[RefSignedAdministrationTypeId] [int] NULL,
	[RefTactileMediumTypeId] [int] NULL,
	[RefTranslationPresentationTypeId] [int] NULL,
	[AccessibilityFeatureOtherDescription] [nvarchar](MAX) NULL,
	[RefAssessmentAccommodationCategoryId] [int] NULL,
	[RecordStartDateTime] [datetime] NULL,
	[RecordEndDateTime] [datetime] NULL,
	[RecordStatusId] [int] NULL,
	[DataCollectionId] [int] NULL,
 CONSTRAINT [PK_AccessibilityFeature] PRIMARY KEY CLUSTERED 
(
	[AccessibilityFeatureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[AccessibilityFeature]  WITH CHECK ADD  CONSTRAINT [FK_AccessibilityFeature_DataCollection] FOREIGN KEY([DataCollectionId])
REFERENCES [dbo].[DataCollection] ([DataCollectionId])
GO

ALTER TABLE [dbo].[AccessibilityFeature] CHECK CONSTRAINT [FK_AccessibilityFeature_DataCollection]
GO

ALTER TABLE [dbo].[AccessibilityFeature]  WITH CHECK ADD  CONSTRAINT [FK_AccessibilityFeature_RecordStatus] FOREIGN KEY([RecordStatusId])
REFERENCES [dbo].[RecordStatus] ([RecordStatusId])
GO

ALTER TABLE [dbo].[AccessibilityFeature] CHECK CONSTRAINT [FK_AccessibilityFeature_RecordStatus]
GO

ALTER TABLE [dbo].[AccessibilityFeature]  WITH CHECK ADD  CONSTRAINT [FK_AccessibilityFeature_RefAssessmentAccommodationCategory] FOREIGN KEY([RefAssessmentAccommodationCategoryId])
REFERENCES [dbo].[RefAssessmentAccommodationCategory] ([RefAssessmentAccommodationCategoryId])
GO

ALTER TABLE [dbo].[AccessibilityFeature] CHECK CONSTRAINT [FK_AccessibilityFeature_RefAssessmentAccommodationCategory]
GO

ALTER TABLE [dbo].[AccessibilityFeature]  WITH CHECK ADD  CONSTRAINT [FK_AccessibilityFeature_RefAccessibilityFeatureType] FOREIGN KEY([RefAccessibilityFeatureTypeId])
REFERENCES [dbo].[RefAccessibilityFeatureType] ([RefAccessibilityFeatureTypeId])
GO

ALTER TABLE [dbo].[AccessibilityFeature] CHECK CONSTRAINT [FK_AccessibilityFeature_RefAccessibilityFeatureType]
GO

ALTER TABLE [dbo].[AccessibilityFeature]  WITH CHECK ADD  CONSTRAINT [FK_AccessibilityFeature_RefAccessibilityFeatureApplicationType] FOREIGN KEY([RefAccessibilityFeatureApplicationTypeId])
REFERENCES [dbo].[RefAccessibilityFeatureApplicationType] ([RefAccessibilityFeatureApplicationTypeId])
GO

ALTER TABLE [dbo].[AccessibilityFeature] CHECK CONSTRAINT [FK_AccessibilityFeature_RefAccessibilityFeatureApplicationType]
GO

ALTER TABLE [dbo].[AccessibilityFeature]  WITH CHECK ADD  CONSTRAINT [FK_AccessibilityFeature_RefAccessibilityFeatureCategory] FOREIGN KEY([RefAccessibilityFeatureCategoryId])
REFERENCES [dbo].[RefAccessibilityFeatureCategory] ([RefAccessibilityFeatureCategoryId])
GO

ALTER TABLE [dbo].[AccessibilityFeature] CHECK CONSTRAINT [FK_AccessibilityFeature_RefAccessibilityFeatureCategory]
GO

ALTER TABLE [dbo].[AccessibilityFeature]  WITH CHECK ADD  CONSTRAINT [FK_AccessibilityFeature_RefAccessibilityFeatureDeliveryMethod] FOREIGN KEY([RefAccessibilityFeatureDeliveryMethodId])
REFERENCES [dbo].[RefAccessibilityFeatureDeliveryMethod] ([RefAccessibilityFeatureDeliveryMethodId])
GO

ALTER TABLE [dbo].[AccessibilityFeature] CHECK CONSTRAINT [FK_AccessibilityFeature_RefAccessibilityFeatureDeliveryMethod]
GO

ALTER TABLE [dbo].[AccessibilityFeature]  WITH CHECK ADD  CONSTRAINT [FK_AccessibilityFeature_RefAccessibilityFeatureEmbeddedIndicator] FOREIGN KEY([RefAccessibilityFeatureEmbeddedIndicatorId])
REFERENCES [dbo].[RefAccessibilityFeatureEmbeddedIndicator] ([RefAccessibilityFeatureEmbeddedIndicatorId])
GO

ALTER TABLE [dbo].[AccessibilityFeature] CHECK CONSTRAINT [FK_AccessibilityFeature_RefAccessibilityFeatureEmbeddedIndicator]
GO

ALTER TABLE [dbo].[AccessibilityFeature]  WITH CHECK ADD  CONSTRAINT [FK_AccessibilityFeature_RefAccessibilityFeatureLanguageType] FOREIGN KEY([RefAccessibilityFeatureLanguageTypeId])
REFERENCES [dbo].[RefAccessibilityFeatureLanguageType] ([RefAccessibilityFeatureLanguageTypeId])
GO

ALTER TABLE [dbo].[AccessibilityFeature] CHECK CONSTRAINT [FK_AccessibilityFeature_RefAccessibilityFeatureLanguageType]
GO

ALTER TABLE [dbo].[AccessibilityFeature]  WITH CHECK ADD  CONSTRAINT [FK_AccessibilityFeature_RefAccessibilityFeaturePausesTheClockIndicator] FOREIGN KEY([RefAccessibilityFeaturePausesTheClockIndicatorId])
REFERENCES [dbo].[RefAccessibilityFeaturePausesTheClockIndicator] ([RefAccessibilityFeaturePausesTheClockIndicatorId])
GO

ALTER TABLE [dbo].[AccessibilityFeature] CHECK CONSTRAINT [FK_AccessibilityFeature_RefAccessibilityFeaturePausesTheClockIndicator]
GO

ALTER TABLE [dbo].[AccessibilityFeature]  WITH CHECK ADD  CONSTRAINT [FK_AccessibilityFeature_RefAdaptiveCalculatorType] FOREIGN KEY([RefAdaptiveCalculatorTypeId])
REFERENCES [dbo].[RefAdaptiveCalculatorType] ([RefAdaptiveCalculatorTypeId])
GO

ALTER TABLE [dbo].[AccessibilityFeature] CHECK CONSTRAINT [FK_AccessibilityFeature_RefAdaptiveCalculatorType]
GO

ALTER TABLE [dbo].[AccessibilityFeature]  WITH CHECK ADD  CONSTRAINT [FK_AccessibilityFeature_RefAlternateResponseOptionType] FOREIGN KEY([RefAlternateResponseOptionTypeId])
REFERENCES [dbo].[RefAlternateResponseOptionType] ([RefAlternateResponseOptionTypeId])
GO

ALTER TABLE [dbo].[AccessibilityFeature] CHECK CONSTRAINT [FK_AccessibilityFeature_RefAlternateResponseOptionType]
GO

ALTER TABLE [dbo].[AccessibilityFeature]  WITH CHECK ADD  CONSTRAINT [FK_AccessibilityFeature_RefAssessmentComponentType] FOREIGN KEY([RefAssessmentComponentTypeId])
REFERENCES [dbo].[RefAssessmentComponentType] ([RefAssessmentComponentTypeId])
GO

ALTER TABLE [dbo].[AccessibilityFeature] CHECK CONSTRAINT [FK_AccessibilityFeature_RefAssessmentComponentType]
GO

ALTER TABLE [dbo].[AccessibilityFeature]  WITH CHECK ADD  CONSTRAINT [FK_AccessibilityFeature_RefAssessmentExtendedTimeType] FOREIGN KEY([RefAssessmentExtendedTimeTypeId])
REFERENCES [dbo].[RefAssessmentExtendedTimeType] ([RefAssessmentExtendedTimeTypeId])
GO

ALTER TABLE [dbo].[AccessibilityFeature] CHECK CONSTRAINT [FK_AccessibilityFeature_RefAssessmentExtendedTimeType]
GO

ALTER TABLE [dbo].[AccessibilityFeature]  WITH CHECK ADD CONSTRAINT [FK_AccessibilityFeature_RefBrailleAcessType] FOREIGN KEY([RefBrailleAcessTypeId])
REFERENCES [dbo].[RefBrailleAcessType] ([RefBrailleAcessTypeId])
GO

ALTER TABLE [dbo].[AccessibilityFeature] CHECK CONSTRAINT [FK_AccessibilityFeature_RefBrailleAcessType]
GO

ALTER TABLE [dbo].[AccessibilityFeature]  WITH CHECK ADD  CONSTRAINT [FK_AccessibilityFeature_RefBrailleApplicationType] FOREIGN KEY([RefBrailleApplicationTypeId])
REFERENCES [dbo].[RefBrailleApplicationType] ([RefBrailleApplicationTypeId])
GO

ALTER TABLE [dbo].[AccessibilityFeature] CHECK CONSTRAINT [FK_AccessibilityFeature_RefBrailleApplicationType]
GO

ALTER TABLE [dbo].[AccessibilityFeature] WITH CHECK ADD  CONSTRAINT [FK_AccessibilityFeature_RefBrailleCodeType] FOREIGN KEY([RefBrailleCodeTypeId])
REFERENCES [dbo].[RefBrailleCodeType] ([RefBrailleCodeTypeId])
GO

ALTER TABLE [dbo].[AccessibilityFeature] CHECK CONSTRAINT [FK_AccessibilityFeature_RefBrailleCodeType]
GO

ALTER TABLE [dbo].[AccessibilityFeature]  WITH CHECK ADD  CONSTRAINT [FK_AccessibilityFeature_RefBrailleVersionType] FOREIGN KEY([RefBrailleVersionTypeId])
REFERENCES [dbo].[RefBrailleVersionType] ([RefBrailleVersionTypeId])
GO

ALTER TABLE [dbo].[AccessibilityFeature] CHECK CONSTRAINT [FK_AccessibilityFeature_RefBrailleVersionType]
GO

ALTER TABLE [dbo].[AccessibilityFeature]  WITH CHECK ADD  CONSTRAINT [FK_AccessibilityFeature_RefBreakLocationType] FOREIGN KEY([RefBreakLocationTypeId])
REFERENCES [dbo].[RefBreakLocationType] ([RefBreakLocationTypeId])
GO

ALTER TABLE [dbo].[AccessibilityFeature] CHECK CONSTRAINT [FK_AccessibilityFeature_RefBreakLocationType]
GO

ALTER TABLE [dbo].[AccessibilityFeature]  WITH CHECK ADD  CONSTRAINT [FK_AccessibilityFeature_RefBreakType] FOREIGN KEY([RefBreakTypeId])
REFERENCES [dbo].[RefBreakType] ([RefBreakTypeId])
GO

ALTER TABLE [dbo].[AccessibilityFeature] CHECK CONSTRAINT [FK_AccessibilityFeature_RefBreakType]
GO

ALTER TABLE [dbo].[AccessibilityFeature]  WITH CHECK ADD  CONSTRAINT [FK_AccessibilityFeature_RefCalculatorType] FOREIGN KEY([RefCalculatorTypeId])
REFERENCES [dbo].[RefCalculatorType] ([RefCalculatorTypeId])
GO

ALTER TABLE [dbo].[AccessibilityFeature] CHECK CONSTRAINT [FK_AccessibilityFeature_RefCalculatorType]
GO

ALTER TABLE [dbo].[AccessibilityFeature]  WITH CHECK ADD  CONSTRAINT [FK_AccessibilityFeature_RefDisplayFormatAdjustmentType] FOREIGN KEY([RefDisplayFormatAdjustmentTypeId])
REFERENCES [dbo].[RefDisplayFormatAdjustmentType] ([RefDisplayFormatAdjustmentTypeId])
GO

ALTER TABLE [dbo].[AccessibilityFeature] CHECK CONSTRAINT [FK_AccessibilityFeature_RefDisplayFormatAdjustmentType]
GO

ALTER TABLE [dbo].[AccessibilityFeature]  WITH CHECK ADD  CONSTRAINT [FK_AccessibilityFeature_RefGroupSizeType] FOREIGN KEY([RefGroupSizeTypeId])
REFERENCES [dbo].[RefGroupSizeType] ([RefGroupSizeTypeId])
GO

ALTER TABLE [dbo].[AccessibilityFeature] CHECK CONSTRAINT [FK_AccessibilityFeature_RefGroupSizeType]
GO

ALTER TABLE [dbo].[AccessibilityFeature]  WITH CHECK ADD  CONSTRAINT [FK_AccessibilityFeature_RefMedicalSupportType] FOREIGN KEY([RefMedicalSupportTypeId])
REFERENCES [dbo].[RefMedicalSupportType] ([RefMedicalSupportTypeId])
GO

ALTER TABLE [dbo].[AccessibilityFeature] CHECK CONSTRAINT [FK_AccessibilityFeature_RefMedicalSupportType]
GO

ALTER TABLE [dbo].[AccessibilityFeature]  WITH CHECK ADD  CONSTRAINT [FK_AccessibilityFeature_RefReadAloudType] FOREIGN KEY([RefReadAloudTypeId])
REFERENCES [dbo].[RefReadAloudType] ([RefReadAloudTypeId])
GO

ALTER TABLE [dbo].[AccessibilityFeature] CHECK CONSTRAINT [FK_AccessibilityFeature_RefReadAloudType]
GO

ALTER TABLE [dbo].[AccessibilityFeature]  WITH CHECK ADD  CONSTRAINT [FK_AccessibilityFeature_RefReferenceSheetType] FOREIGN KEY([RefReferenceSheetTypeId])
REFERENCES [dbo].[RefReferenceSheetType] ([RefReferenceSheetTypeId])
GO

ALTER TABLE [dbo].[AccessibilityFeature] CHECK CONSTRAINT [FK_AccessibilityFeature_RefReferenceSheetType]
GO

ALTER TABLE [dbo].[AccessibilityFeature]  WITH CHECK ADD  CONSTRAINT [FK_AccessibilityFeature_RefSettingType] FOREIGN KEY([RefSettingTypeId])
REFERENCES [dbo].[RefSettingType] ([RefSettingTypeId])
GO

ALTER TABLE [dbo].[AccessibilityFeature] CHECK CONSTRAINT [FK_AccessibilityFeature_RefSettingType]
GO

ALTER TABLE [dbo].[AccessibilityFeature]  WITH CHECK ADD CONSTRAINT [FK_AccessibilityFeature_RefSignedAdministrationDeliveryMethod] FOREIGN KEY([RefSignedAdministrationDeliveryMethodId])
REFERENCES [dbo].[RefSignedAdministrationDeliveryMethod] ([RefSignedAdministrationDeliveryMethodId])
GO

ALTER TABLE [dbo].[AccessibilityFeature] CHECK CONSTRAINT [FK_AccessibilityFeature_RefSignedAdministrationDeliveryMethod]
GO

ALTER TABLE [dbo].[AccessibilityFeature]  WITH CHECK ADD  CONSTRAINT [FK_AccessibilityFeature_RefSignedAdministrationType] FOREIGN KEY([RefSignedAdministrationTypeId])
REFERENCES [dbo].[RefSignedAdministrationType] ([RefSignedAdministrationTypeId])
GO

ALTER TABLE [dbo].[AccessibilityFeature] CHECK CONSTRAINT [FK_AccessibilityFeature_RefSignedAdministrationType]
GO

ALTER TABLE [dbo].[AccessibilityFeature]  WITH CHECK ADD  CONSTRAINT [FK_AccessibilityFeature_RefTactileMediumType] FOREIGN KEY([RefTactileMediumTypeId])
REFERENCES [dbo].[RefTactileMediumType] ([RefTactileMediumTypeId])
GO

ALTER TABLE [dbo].[AccessibilityFeature] CHECK CONSTRAINT [FK_AccessibilityFeature_RefTactileMediumType]
GO

ALTER TABLE [dbo].[AccessibilityFeature]  WITH CHECK ADD  CONSTRAINT [FK_AccessibilityFeature_RefTranslationPresentationType] FOREIGN KEY([RefTranslationPresentationTypeId])
REFERENCES [dbo].[RefTranslationPresentationType] ([RefTranslationPresentationTypeId])
GO

ALTER TABLE [dbo].[AccessibilityFeature] CHECK CONSTRAINT [FK_AccessibilityFeature_RefTranslationPresentationType]
GO
