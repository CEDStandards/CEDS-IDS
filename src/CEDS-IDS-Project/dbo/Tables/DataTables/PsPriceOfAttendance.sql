CREATE TABLE [dbo].[PsPriceOfAttendance] (
    [PSPriceOfAttendanceId]         INT            IDENTITY (1, 1) NOT NULL,
    [PsInstitutionId]               INT            NOT NULL,
    [SessionDesignator]             NCHAR (7)      NULL,
    [TuitionPublished]              DECIMAL (9, 2) NULL,
    [BoardCharges]                  DECIMAL (9, 2) NULL,
    [RoomCharges]                   DECIMAL (9, 2) NULL,
    [BooksAndSuppliesCosts]         DECIMAL (9, 2) NULL,
    [RequiredStudentFees]           DECIMAL (9, 2) NULL,
    [ComprehensiveFee]              DECIMAL (9, 2) NULL,
    [OtherStudentExpenses]          DECIMAL (9, 2) NULL,
    [PriceOfAttendance]             DECIMAL (9, 2) NULL,
    [IPEDSCollectionYearDesignator] NCHAR (9)      NULL,
    [RefTuitionUnitId]              INT            NULL,
    [RecordStartDateTime]           DATETIME       NULL,
    [RecordEndDateTime]             DATETIME       NULL,
    [RecordStatusId]                INT            NULL,
    [DataCollectionId]              INT            NULL,
    CONSTRAINT [PK_PSPriceOfAttendance] PRIMARY KEY CLUSTERED ([PSPriceOfAttendanceId] ASC),
    CONSTRAINT [FK_PsPriceOfAttendance_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_PsPriceOfAttendance_PsInstitution] FOREIGN KEY ([PsInstitutionId]) REFERENCES [dbo].[PsInstitution] ([PsInstitutionId]),
    CONSTRAINT [FK_PsPriceOfAttendance_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_PsPriceOfAttendance_RefTuitionUnit] FOREIGN KEY ([RefTuitionUnitId]) REFERENCES [dbo].[RefTuitionUnit] ([RefTuitionUnitId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The price of attendance data for a postsecondary institution and a given session.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'PSPriceOfAttendanceId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The academic session for which the data are recorded and applicable.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'SessionDesignator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Session Designator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'SessionDesignator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000252', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'SessionDesignator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19252', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'SessionDesignator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'SessionDesignator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The published tuition for first time, full-time undergraduate students (lower of in-district or in-state for public institutions).  Tuition may be charged per term, per course, per credit or per program.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'TuitionPublished';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Tuition - Published', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'TuitionPublished';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000745', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'TuitionPublished';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19723', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'TuitionPublished';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'TuitionPublished';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The charges assessed students for an academic year for the maximum meal plan available.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'BoardCharges';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Board Charges', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'BoardCharges';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000750', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'BoardCharges';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19729', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'BoardCharges';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'BoardCharges';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The charges for an academic year for rooming accommodations for a typical student sharing a room with one other student.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'RoomCharges';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Room Charges', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'RoomCharges';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000749', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'RoomCharges';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19728', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'RoomCharges';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'RoomCharges';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The average cost for books and supplies for a typical student for an entire academic year (or program). Does not include unusual costs for special groups of students (e.g., engineering or art majors) unless they constitute the majority of students at an institution.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'BooksAndSuppliesCosts';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Books and Supplies Costs', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'BooksAndSuppliesCosts';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000751', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'BooksAndSuppliesCosts';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19730', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'BooksAndSuppliesCosts';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'BooksAndSuppliesCosts';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Fixed sum charged to persons for items not covered by tuition and required of such a large proportion of all students that the student who does not pay the charge is the exception.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'RequiredStudentFees';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Required Student Fees', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'RequiredStudentFees';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000747', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'RequiredStudentFees';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19726', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'RequiredStudentFees';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'RequiredStudentFees';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A single fixed amount of money charged by an institution that covers tuition, required fees, room, and board. For some institutions, this amount may also cover books and supplies.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'ComprehensiveFee';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Comprehensive Fee', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'ComprehensiveFee';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000754', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'ComprehensiveFee';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19733', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'ComprehensiveFee';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'ComprehensiveFee';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The amount of money (estimated by the financial aid office) needed by a person to cover expenses such as laundry, transportation, and entertainment.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'OtherStudentExpenses';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Other Student Expenses', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'OtherStudentExpenses';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000752', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'OtherStudentExpenses';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19731', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'OtherStudentExpenses';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'OtherStudentExpenses';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The total amount institutions estimate that undergraduate-level full-time, first-time degree-seeking students will pay to attend before financial aid is considered. This price includes tuition and fees, books and supplies, room and board, and certain other designated expenses such as transportation. These estimates are the average amounts used by the financial aid office to determine a student’s financial aid.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'PriceOfAttendance';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Price of Attendance', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'PriceOfAttendance';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000753', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'PriceOfAttendance';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19732', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'PriceOfAttendance';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'PriceOfAttendance';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The academic year, generally extending from September to June, in which IPEDS data is collected.  Most Institutional Characteristics, Salaries, Fall Staff, Fall Enrollment, and Employees by Assigned Position data are collected for the current year; Completions, 12-Month Enrollment, Student Financial Aid, and Finance data collections cover the prior year.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'IPEDSCollectionYearDesignator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'IPEDS Collection Year Designator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'IPEDSCollectionYearDesignator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001613', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'IPEDSCollectionYearDesignator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20592', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'IPEDSCollectionYearDesignator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'IPEDSCollectionYearDesignator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The component for which tuition is being charged.  It might be a time period (term, quarter, year, etc.) or it might be an entity of education (course, credit hour, etc.).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'RefTuitionUnitId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Tuition Unit', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'RefTuitionUnitId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000746', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'RefTuitionUnitId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19725', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'RefTuitionUnitId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'RefTuitionUnitId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsPriceOfAttendance', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

