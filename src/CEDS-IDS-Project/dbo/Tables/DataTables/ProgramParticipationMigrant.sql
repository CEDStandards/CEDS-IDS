CREATE TABLE [dbo].[ProgramParticipationMigrant] (
    [PersonProgramParticipationId]        INT           NOT NULL,
    [RefMepEnrollmentTypeId]              INT           NULL,
    [RefMepProjectBasedId]                INT           NULL,
    [RefMepServiceTypeId]                 INT           NULL,
    [MepEligibilityExpirationDate]        DATE          NULL,
    [ContinuationOfServicesStatus]        BIT           NULL,
    [RefContinuationOfServicesReasonId]   INT           NULL,
    [BirthdateVerification]               NVARCHAR (60) NULL,
    [ImmunizationRecordFlag]              BIT           NULL,
    [MigrantStudentQualifyingArrivalDate] DATE          NULL,
    [LastQualifyingMoveDate]              DATE          NULL,
    [QualifyingMoveFromCity]              NVARCHAR (30) NULL,
    [RefQualifyingMoveFromStateId]        INT           NULL,
    [RefQualifyingMoveFromCountryId]      INT           NULL,
    [DesignatedGraduationSchoolId]        INT           NULL,
    [RecordStartDateTime]                 DATETIME      NULL,
    [RecordEndDateTime]                   DATETIME      NULL,
    [ProgramParticipationMigrantId]       INT           IDENTITY (1, 1) NOT NULL,
    [PrioritizedForServices]              BIT           NULL,
    [RecordStatusId]                      INT           NULL,
    [DataCollectionId]                    INT           NULL,
    CONSTRAINT [PK_ProgramParticipationMigrant] PRIMARY KEY CLUSTERED ([ProgramParticipationMigrantId] ASC),
    CONSTRAINT [FK_ProgramParticipationMigrant_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_ProgramParticipationMigrant_Organization] FOREIGN KEY ([DesignatedGraduationSchoolId]) REFERENCES [dbo].[Organization] ([OrganizationId]),
    CONSTRAINT [FK_ProgramParticipationMigrant_PersonProgramParticipation] FOREIGN KEY ([PersonProgramParticipationId]) REFERENCES [dbo].[PersonProgramParticipation] ([PersonProgramParticipationId]),
    CONSTRAINT [FK_ProgramParticipationMigrant_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_ProgramParticipationMigrant_RefContinuationOfServices] FOREIGN KEY ([RefContinuationOfServicesReasonId]) REFERENCES [dbo].[RefContinuationOfServices] ([RefContinuationOfServicesReasonId]),
    CONSTRAINT [FK_ProgramParticipationMigrant_RefCountry] FOREIGN KEY ([RefQualifyingMoveFromCountryId]) REFERENCES [dbo].[RefCountry] ([RefCountryId]),
    CONSTRAINT [FK_ProgramParticipationMigrant_RefMEPEnrollmentType] FOREIGN KEY ([RefMepEnrollmentTypeId]) REFERENCES [dbo].[RefMepEnrollmentType] ([RefMepEnrollmentTypeId]),
    CONSTRAINT [FK_ProgramParticipationMigrant_RefMEPProjectBased] FOREIGN KEY ([RefMepProjectBasedId]) REFERENCES [dbo].[RefMepProjectBased] ([RefMepProjectBasedId]),
    CONSTRAINT [FK_ProgramParticipationMigrant_RefMEPServiceType] FOREIGN KEY ([RefMepServiceTypeId]) REFERENCES [dbo].[RefMepServiceType] ([RefMepServiceTypeId]),
    CONSTRAINT [FK_ProgramParticipationMigrant_RefState] FOREIGN KEY ([RefQualifyingMoveFromStateId]) REFERENCES [dbo].[RefState] ([RefStateId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information on a person participating in a migrant student education program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of school/migrant education project in which instruction and/or support services are provided.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'RefMepEnrollmentTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Migrant Education Program Enrollment Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'RefMepEnrollmentTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000437', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'RefMepEnrollmentTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19427', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'RefMepEnrollmentTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Indicates the type of MEP project based on the location where the MEP services are held.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'RefMepProjectBasedId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Migrant Education Program Project Based', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'RefMepProjectBasedId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000440', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'RefMepProjectBasedId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19430', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'RefMepProjectBasedId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of services received by participating migrant students in the migrant education program (MEP).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'RefMepServiceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Migrant Education Program Services Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'RefMepServiceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000186', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'RefMepServiceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19186', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'RefMepServiceTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year, month, and day on which the child is no longer eligible for the Migrant Education Program. This date should initially be a date equal to 36 months from the Qualifying Arrival Date to indicate the end of MEP eligibility or the student reaches 22 years of age, whichever comes first.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'MepEligibilityExpirationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Migrant Education Program Eligibility Expiration Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'MepEligibilityExpirationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000430', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'MepEligibilityExpirationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19420', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'MepEligibilityExpirationDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication that migrant children are receiving instructional or support services under the continuation of services authority ESEA Title III Section 1304(e)(2)-(3).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'ContinuationOfServicesStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Migrant Education Program Continuation of Services Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'ContinuationOfServicesStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000563', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'ContinuationOfServicesStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19555', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'ContinuationOfServicesStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Reason why the student is being served under the continuation of services provision of the MEP.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'RefContinuationOfServicesReasonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Continuation of Services Reason', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'RefContinuationOfServicesReasonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000429', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'RefContinuationOfServicesReasonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19419', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'RefContinuationOfServicesReasonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The evidence by which a child''s date of birth is confirmed.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'BirthdateVerification';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Birthdate Verification', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'BirthdateVerification';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000428', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'BirthdateVerification';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19418', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'BirthdateVerification';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Indicates whether the school or MEP program has immunization records on file for the student.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'ImmunizationRecordFlag';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Immunization Record Flag', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'ImmunizationRecordFlag';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000438', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'ImmunizationRecordFlag';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19428', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'ImmunizationRecordFlag';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The qualifying arrival date (QAD) is the month, date, and year that the child completed a move with his or her parent to enable the parent to find qualifying employment. In some cases, the child and worker may not always move together, in which case the QAD would be the date that the child joins the worker who has  already moved, or the date the worker joins the child who has already moved. The QAD is the date the child''s eligibility for the Migrant Education Program begins.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'MigrantStudentQualifyingArrivalDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Migrant Student Qualifying Arrival Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'MigrantStudentQualifyingArrivalDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000432', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'MigrantStudentQualifyingArrivalDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19422', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'MigrantStudentQualifyingArrivalDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year, month and day of the last qualifying move of a migrant student.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'LastQualifyingMoveDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Last Qualifying Move Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'LastQualifyingMoveDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000171', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'LastQualifyingMoveDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19171', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'LastQualifyingMoveDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The name of the city in which the child resided prior to the qualifying move.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'QualifyingMoveFromCity';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Qualifying Move From City', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'QualifyingMoveFromCity';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000433', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'QualifyingMoveFromCity';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19423', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'QualifyingMoveFromCity';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The postal abbreviation code for a state (within the United States) or outlying area in which the child resided prior to the qualifying move.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'RefQualifyingMoveFromStateId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Qualifying Move From State', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'RefQualifyingMoveFromStateId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000435', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'RefQualifyingMoveFromStateId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19425', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'RefQualifyingMoveFromStateId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The abbreviation code for a country (other than the US) area in which the child resided prior to the qualifying move.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'RefQualifyingMoveFromCountryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Qualifying Move From Country', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'RefQualifyingMoveFromCountryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000434', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'RefQualifyingMoveFromCountryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19424', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'RefQualifyingMoveFromCountryId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'RefQualifyingMoveFromCountryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The NCES school identification number that identifies the school or facility from which a student expects to graduate.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'DesignatedGraduationSchoolId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Designated Graduation School Identifier', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'DesignatedGraduationSchoolId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000436', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'DesignatedGraduationSchoolId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19426', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'DesignatedGraduationSchoolId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication that a migratory child 1) is failing to meet, or most at risk of failing to meet, the state''s challenging academic content standards and student academic achievement standards; and 2) has experienced interruptions in their education during the regular school year.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'PrioritizedForServices';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Migrant Prioritized for Services', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'PrioritizedForServices';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000562', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'PrioritizedForServices';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19554', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProgramParticipationMigrant', @level2type = N'COLUMN', @level2name = N'PrioritizedForServices';

