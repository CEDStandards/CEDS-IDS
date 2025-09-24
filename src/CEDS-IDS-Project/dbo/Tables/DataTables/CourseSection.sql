CREATE TABLE [dbo].[CourseSection] (
    [CourseSectionId]                  INT            IDENTITY (1, 1) NOT NULL,
    [OrganizationId]                   INT            NOT NULL,
    [CourseId]                         INT            NOT NULL,
    [AvailableCarnegieUnitCredit]      DECIMAL (9, 2) NULL,
    [TimeRequiredForCompletion]        DECIMAL (9)    NULL,
    [VirtualIndicator]                 BIT            NULL,
    [OrganizationCalendarSessionId]    INT            NULL,
    [MaximumCapacity]                  INT            NULL,
    [RelatedCompetencyDefinitions]     NVARCHAR (60)  NULL,
    [RefCourseSectionDeliveryModeId]   INT            NULL,
    [RefSingleSexClassStatusId]        INT            NULL,
    [RefAdditionalCreditTypeId]        INT            NULL,
    [RefInstructionLanguageId]         INT            NULL,
    [RefCreditTypeEarnedId]            INT            NULL,
    [RefAdvancedPlacementCourseCodeId] INT            NULL,
    [RecordStartDateTime]              DATETIME       NULL,
    [RecordEndDateTime]                DATETIME       NULL,
    [RecordStatusId]                   INT            NULL,
    [DataCollectionId]                 INT            NULL,
    CONSTRAINT [PK_CourseSection] PRIMARY KEY CLUSTERED ([CourseSectionId] ASC),
    CONSTRAINT [FK_CourseSection_Course] FOREIGN KEY ([CourseId]) REFERENCES [dbo].[Course] ([CourseId]),
    CONSTRAINT [FK_CourseSection_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_CourseSection_Organization] FOREIGN KEY ([OrganizationId]) REFERENCES [dbo].[Organization] ([OrganizationId]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_CourseSection_OrganizationCalendarSession] FOREIGN KEY ([OrganizationCalendarSessionId]) REFERENCES [dbo].[OrganizationCalendarSession] ([OrganizationCalendarSessionId]),
    CONSTRAINT [FK_CourseSection_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_CourseSection_RefAdvancedPlacementCourseCodeId] FOREIGN KEY ([RefAdvancedPlacementCourseCodeId]) REFERENCES [dbo].[RefAdvancedPlacementCourseCode] ([RefAdvancedPlacementCourseCodeId]),
    CONSTRAINT [FK_CourseSection_RefCourseSectionDeliveryMode] FOREIGN KEY ([RefCourseSectionDeliveryModeId]) REFERENCES [dbo].[RefCourseSectionDeliveryMode] ([RefCourseSectionDeliveryModeId]),
    CONSTRAINT [FK_CourseSection_RefCourseSectionSingleSexClassStatus] FOREIGN KEY ([RefSingleSexClassStatusId]) REFERENCES [dbo].[RefSingleSexClassStatus] ([RefSingleSexClassStatusId]),
    CONSTRAINT [FK_CourseSection_RefCreditTypeEarned] FOREIGN KEY ([RefCreditTypeEarnedId]) REFERENCES [dbo].[RefCreditTypeEarned] ([RefCreditTypeEarnedId]),
    CONSTRAINT [FK_CourseSection_RefLanguage] FOREIGN KEY ([RefInstructionLanguageId]) REFERENCES [dbo].[RefLanguage] ([RefLanguageId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'CourseSection represents an instance of a course offered/delivered in a specific timeframe and/or place or through specific media or mode of study or to a specific section of students. (In the CEDS IDS, CourseSection is a subclass of organization that can be linked to persons and roles using OrganizationPersonRole. Subclasses include K12 Course, PsCourse, CteCoure, AeCourse)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key from Organization', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'OrganizationId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - Course.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'CourseId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Measured in Carnegie units, the amount of credit available to a student who successfully meets the objectives of the course. A course meeting every day for one period of the school day over the span of a school year offers one Carnegie unit. A Carnegie unit is thus a measure of "seat time" rather than a measure of attainment of the course objectives.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'AvailableCarnegieUnitCredit';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Available Carnegie Unit Credit', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'AvailableCarnegieUnitCredit';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000030', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'AvailableCarnegieUnitCredit';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19030', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'AvailableCarnegieUnitCredit';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'AvailableCarnegieUnitCredit';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The actual or estimated number of clock minutes required for course completion. This number is especially important for career and technical education course and may represent (in minutes) the clock hour requirement of the course, the number of minutes (or clock hours) of class time per week, times the number of equivalent weeks the class typically meets.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'TimeRequiredForCompletion';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Course Section Time Required For Completion', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'TimeRequiredForCompletion';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000101', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'TimeRequiredForCompletion';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19101', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'TimeRequiredForCompletion';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'TimeRequiredForCompletion';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Indicates a school, institution, program, or course section focuses primarily on instruction in which students and teachers are separated by time and/or location and interact through the use of computers and/or telecommunications technologies.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'VirtualIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Virtual Indicator', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'VirtualIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001160', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'VirtualIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20167', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'VirtualIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'VirtualIndicator';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The session during which the Class/Section is held.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'OrganizationCalendarSessionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Course Begin Date, Course End Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'OrganizationCalendarSessionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000054, 000059', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'OrganizationCalendarSessionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19054, https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19059', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'OrganizationCalendarSessionId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'OrganizationCalendarSessionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The maximum number of students the Course Section can maintain.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'MaximumCapacity';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Course Section Maximum Capacity', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'MaximumCapacity';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001655', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'MaximumCapacity';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20636', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'MaximumCapacity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'MaximumCapacity';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of the competency definition(s) addressed in the Course Section.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'RelatedCompetencyDefinitions';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Related Competency Definitions', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'RelatedCompetencyDefinitions';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000231', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'RelatedCompetencyDefinitions';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19231', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'RelatedCompetencyDefinitions';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'RelatedCompetencyDefinitions';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The primary setting or medium of delivery for the course.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'RefCourseSectionDeliveryModeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Course Section Instructional Delivery Mode', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'RefCourseSectionDeliveryModeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001161', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'RefCourseSectionDeliveryModeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20168', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'RefCourseSectionDeliveryModeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'RefCourseSectionDeliveryModeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Section in a co-educational school where only male or only female students are permitted to take the course.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'RefSingleSexClassStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Course Section Single Sex Class Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'RefSingleSexClassStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000258', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'RefSingleSexClassStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19258', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'RefSingleSexClassStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'RefSingleSexClassStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of credits or units of value available for the completion of a course in addition to Carnegie Units.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'RefAdditionalCreditTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Additional Credit Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'RefAdditionalCreditTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000596', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'RefAdditionalCreditTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19589', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'RefAdditionalCreditTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'RefAdditionalCreditTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The language of instruction, other than English, used in the program or course.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'RefInstructionLanguageId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Instruction Language', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'RefInstructionLanguageId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000448', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'RefInstructionLanguageId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19438', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'RefInstructionLanguageId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'RefInstructionLanguageId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - RefCreditTypeEarned', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'RefCreditTypeEarnedId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Course areas for advanced placement or credit.  For a list of codes see http://apcentral.collegeboard.com/apc/public/courses/teachers_corner/index.html .', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'RefAdvancedPlacementCourseCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Advanced Placement Course Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'RefAdvancedPlacementCourseCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001278', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'RefAdvancedPlacementCourseCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20244', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'RefAdvancedPlacementCourseCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'RefAdvancedPlacementCourseCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CourseSection', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

