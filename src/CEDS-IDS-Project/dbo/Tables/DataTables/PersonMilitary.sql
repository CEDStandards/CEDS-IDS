CREATE TABLE [dbo].[PersonMilitary] (
    [PersonMilitaryId]                       INT           IDENTITY (1, 1) NOT NULL,
    [PersonId]                               INT           NOT NULL,
    [RefActiveMilitaryStatusIndicatorId]     INT           NULL,
    [RefMilitaryConnectedStudentIndicatorId] INT           NULL,
    [RefMilitaryVeteranStatusIndicatorId]    INT           NULL,
    [RefMilitaryBranchId]                    INT           NULL,
    [RecordStartDateTime]                    DATETIME      NULL,
    [RecordEndDateTime]                      DATETIME      NULL,
    [RecordStatusId]                         INT           NULL,
    [DataCollectionId]                       INT           NULL,
    [MilitaryServiceNumber]                  NVARCHAR (40) NULL,
    [MilitaryInductionDate]                  DATETIME      NULL,
    [MilitaryDischargeDate]                  DATETIME      NULL,
    [MilitaryReleaseDate]                    DATETIME      NULL,
    [RefMilitaryDischargeCategoryId]         INT           NULL,
    [MilitaryInductionRank]                  NVARCHAR (40) NULL,
    [MilitaryDischargeRank]                  NVARCHAR (40) NULL,
    [MilitaryHighestRank]                    NVARCHAR (40) NULL,
    [MilitaryCurrentRank]                    NVARCHAR (40) NULL,
    [RefNationalGuardIndicatorId]            INT           NULL,
    CONSTRAINT [PK_PersonMilitary] PRIMARY KEY CLUSTERED ([PersonMilitaryId] ASC),
    CONSTRAINT [FK_PersonMilitary_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_PersonMilitary_Person] FOREIGN KEY ([PersonId]) REFERENCES [dbo].[Person] ([PersonId]),
    CONSTRAINT [FK_PersonMilitary_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_PersonMilitary_RefMilitaryBranch] FOREIGN KEY ([RefMilitaryBranchId]) REFERENCES [dbo].[RefMilitaryBranch] ([RefMilitaryBranchId]),
    CONSTRAINT [FK_PersonMilitary_RefMilitaryConnectedStudentIndicator] FOREIGN KEY ([RefMilitaryConnectedStudentIndicatorId]) REFERENCES [dbo].[RefMilitaryConnectedStudentIndicator] ([RefMilitaryConnectedStudentIndicatorId]),
    CONSTRAINT [FK_PersonMilitary_RefMilitaryDischargeCategory] FOREIGN KEY ([RefMilitaryDischargeCategoryId]) REFERENCES [dbo].[RefMilitaryDischargeCategory] ([RefMilitaryDischargeCategoryId]),
    CONSTRAINT [FK_PersonMilitary_RefNationalGuardIndicator] FOREIGN KEY ([RefNationalGuardIndicatorId]) REFERENCES [dbo].[RefNationalGuardIndicator] ([RefNationalGuardIndicatorId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information about a person''s connections to the military.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key from Person.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'PersonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication that the student is currently serving on Active Duty, in the National Guard, or in the Reserve components of the United States military services', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'RefActiveMilitaryStatusIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Military Active Student Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'RefActiveMilitaryStatusIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001577', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'RefActiveMilitaryStatusIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20556', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'RefActiveMilitaryStatusIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'RefActiveMilitaryStatusIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication that the student’s parent or guardian is on Active Duty, in the National Guard, or in the Reserve components of the United States military services', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'RefMilitaryConnectedStudentIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Military Connected Student Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'RefMilitaryConnectedStudentIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001576', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'RefMilitaryConnectedStudentIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20555', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'RefMilitaryConnectedStudentIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'RefMilitaryConnectedStudentIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication that the student is a veteran who served on Active Duty, in the National Guard, or in the Reserve components of the United States military services', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'RefMilitaryVeteranStatusIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Military Veteran Student Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'RefMilitaryVeteranStatusIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001578', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'RefMilitaryVeteranStatusIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20557', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'RefMilitaryVeteranStatusIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'RefMilitaryVeteranStatusIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A branch of the U.S. Military applicable for specifying more details when using Military Connected Student Indicator, Military Active Student Indicator,  Military Veteran Student Indicator, and Military Enlistment After Exit elements.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'RefMilitaryBranchId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Military Branch', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'RefMilitaryBranchId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001640', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'RefMilitaryBranchId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20621', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'RefMilitaryBranchId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'RefMilitaryBranchId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The total number of a specific related learning resource for each distinct learning resource status.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'MilitaryServiceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Learning Resource Status Quantity', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'MilitaryServiceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'MilitaryServiceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25042', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'MilitaryServiceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'MilitaryServiceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date when a person was inducted into active military service.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'MilitaryInductionDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Military Induction Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'MilitaryInductionDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002039', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'MilitaryInductionDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25065', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'MilitaryInductionDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'MilitaryInductionDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date when a person was released from further military obligations.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'MilitaryDischargeDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Military Discharge Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'MilitaryDischargeDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002040', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'MilitaryDischargeDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25059', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'MilitaryDischargeDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'MilitaryDischargeDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date a person was released from active military service.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'MilitaryReleaseDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Military Release Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'MilitaryReleaseDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002041', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'MilitaryReleaseDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25068', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'MilitaryReleaseDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'MilitaryReleaseDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A kind of discharge a person received from military services.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'RefMilitaryDischargeCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Military Discharge Category', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'RefMilitaryDischargeCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002044', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'RefMilitaryDischargeCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25058', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'RefMilitaryDischargeCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'RefMilitaryDischargeCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A rank at the time a person started their military experience.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'MilitaryInductionRank';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Military Induction Rank', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'MilitaryInductionRank';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002045', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'MilitaryInductionRank';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25066', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'MilitaryInductionRank';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'MilitaryInductionRank';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A rank at time a person was discharged from military service.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'MilitaryDischargeRank';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Military Discharge Rank', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'MilitaryDischargeRank';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002046', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'MilitaryDischargeRank';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25060', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'MilitaryDischargeRank';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'MilitaryDischargeRank';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The highest rank achieved by a person in military service.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'MilitaryHighestRank';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Military Highest Rank', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'MilitaryHighestRank';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002047', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'MilitaryHighestRank';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25063', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'MilitaryHighestRank';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'MilitaryHighestRank';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The rank a person currently holds as part of active service. Do not use this indicator if the person is no longer holding this rank.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'MilitaryCurrentRank';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Military Current Rank', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'MilitaryCurrentRank';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002048', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'MilitaryCurrentRank';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25049', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'MilitaryCurrentRank';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'MilitaryCurrentRank';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A person''s current membership status in the United States National Guard. ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'RefNationalGuardIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'National Guard Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'RefNationalGuardIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002057', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'RefNationalGuardIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25072', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'RefNationalGuardIndicatorId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PersonMilitary', @level2type = N'COLUMN', @level2name = N'RefNationalGuardIndicatorId';

