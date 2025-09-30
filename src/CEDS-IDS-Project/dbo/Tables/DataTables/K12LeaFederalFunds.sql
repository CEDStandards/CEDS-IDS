CREATE TABLE [dbo].[K12LeaFederalFunds] (
    [K12LeaFederalFundsId]                        INT             IDENTITY (1, 1) NOT NULL,
    [OrganizationCalendarSessionId]               INT             NOT NULL,
    [InnovativeProgramsFundsReceived]             NUMERIC (12, 2) NULL,
    [InnovativeDollarsSpent]                      NUMERIC (12, 2) NULL,
    [InnovativeDollarsSpentOnStrategicPriorities] NUMERIC (12, 2) NULL,
    [PublicSchoolChoiceFundsSpent]                NUMERIC (12, 2) NULL,
    [SesFundsSpent]                               NUMERIC (12, 2) NULL,
    [SesSchoolChoice20PercentObligation]          NUMERIC (12, 2) NULL,
    [ParentalInvolvementReservationFunds]         NUMERIC (12, 2) NULL,
    [RefRlisProgramUseId]                         INT             NULL,
    [RecordStartDateTime]                         DATETIME        NULL,
    [RecordEndDateTime]                           DATETIME        NULL,
    [RecordStatusId]                              INT             NULL,
    [DataCollectionId]                            INT             NULL,
    CONSTRAINT [PK_K12LEAFederalFunds] PRIMARY KEY CLUSTERED ([K12LeaFederalFundsId] ASC),
    CONSTRAINT [FK_K12LeaFederalFunds_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_K12LeaFederalFunds_OrganizationCalendarSession] FOREIGN KEY ([OrganizationCalendarSessionId]) REFERENCES [dbo].[OrganizationCalendarSession] ([OrganizationCalendarSessionId]),
    CONSTRAINT [FK_K12LeaFederalFunds_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_K12LeaFederalFunds_RefRlisProgramUse] FOREIGN KEY ([RefRlisProgramUseId]) REFERENCES [dbo].[RefRlisProgramUse] ([RefRlisProgramUseId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information on the federal funds received and distributed by the LEA under various programs.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The total Title V, Part A funds received by LEAs.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds', @level2type = N'COLUMN', @level2name = N'InnovativeProgramsFundsReceived';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Innovative Programs Funds Received', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds', @level2type = N'COLUMN', @level2name = N'InnovativeProgramsFundsReceived';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000464', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds', @level2type = N'COLUMN', @level2name = N'InnovativeProgramsFundsReceived';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19454', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds', @level2type = N'COLUMN', @level2name = N'InnovativeProgramsFundsReceived';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The total Title V, Part A funds expended by LEAs.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds', @level2type = N'COLUMN', @level2name = N'InnovativeDollarsSpent';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Innovative Dollars Spent', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds', @level2type = N'COLUMN', @level2name = N'InnovativeDollarsSpent';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000461', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds', @level2type = N'COLUMN', @level2name = N'InnovativeDollarsSpent';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19451', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds', @level2type = N'COLUMN', @level2name = N'InnovativeDollarsSpent';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The total amount of Title V, Part A funds expended by LEAs for the four strategic priorities.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds', @level2type = N'COLUMN', @level2name = N'InnovativeDollarsSpentOnStrategicPriorities';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Innovative Dollars Spent on Strategic Priorities', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds', @level2type = N'COLUMN', @level2name = N'InnovativeDollarsSpentOnStrategicPriorities';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000462', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds', @level2type = N'COLUMN', @level2name = N'InnovativeDollarsSpentOnStrategicPriorities';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19452', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds', @level2type = N'COLUMN', @level2name = N'InnovativeDollarsSpentOnStrategicPriorities';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The dollar amount spent on transportation for public school choice during the school year under Title I of ESEA as amended, Part A, Section 1116.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds', @level2type = N'COLUMN', @level2name = N'PublicSchoolChoiceFundsSpent';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Public School Choice Funds Spent', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds', @level2type = N'COLUMN', @level2name = N'PublicSchoolChoiceFundsSpent';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000568', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds', @level2type = N'COLUMN', @level2name = N'PublicSchoolChoiceFundsSpent';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19560', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds', @level2type = N'COLUMN', @level2name = N'PublicSchoolChoiceFundsSpent';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The dollar amount spent on supplemental educational services during the school year under Title I, Part A, Section 1116 of ESEA as amended.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds', @level2type = N'COLUMN', @level2name = N'SesFundsSpent';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Supplemental Educational Services Funds Spent', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds', @level2type = N'COLUMN', @level2name = N'SesFundsSpent';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000567', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds', @level2type = N'COLUMN', @level2name = N'SesFundsSpent';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19559', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds', @level2type = N'COLUMN', @level2name = N'SesFundsSpent';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The dollar amount of the 20 percent reservation for supplemental educational services and choice-related transportation.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds', @level2type = N'COLUMN', @level2name = N'SesSchoolChoice20PercentObligation';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Supplemental Education Services Public School Choice Twenty Percent Obligation', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds', @level2type = N'COLUMN', @level2name = N'SesSchoolChoice20PercentObligation';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000574', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds', @level2type = N'COLUMN', @level2name = N'SesSchoolChoice20PercentObligation';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19566', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds', @level2type = N'COLUMN', @level2name = N'SesSchoolChoice20PercentObligation';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of use of the Rural Low-Income Schools Program (RLIS) (Title VI, Part B, Subpart 2) Grant Funds.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds', @level2type = N'COLUMN', @level2name = N'RefRlisProgramUseId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Type of Use of the Rural Low-Income Schools Program', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds', @level2type = N'COLUMN', @level2name = N'RefRlisProgramUseId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000486', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds', @level2type = N'COLUMN', @level2name = N'RefRlisProgramUseId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19477', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds', @level2type = N'COLUMN', @level2name = N'RefRlisProgramUseId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'K12LeaFederalFunds', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

