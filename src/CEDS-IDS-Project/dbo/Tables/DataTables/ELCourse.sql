CREATE TABLE [dbo].[ELCourse] (
    [ELCourseId]                    INT      IDENTITY (1, 1) NOT NULL,
    [CourseId]                      INT      NOT NULL,
    [RefBlendedLearningModelTypeId] INT      NULL,
    [RefSCEDCourseLevelId]          INT      NULL,
    [RefSCEDCourseSubjectAreaId]    INT      NULL,
    [RefSCEDCourseCodeId]           INT      NULL,
    [RecordStartDateTime]           DATETIME NULL,
    [RecordEndDateTime]             DATETIME NULL,
    [RecordStatusId]                INT      NULL,
    [DataCollectionId]              INT      NULL,
    CONSTRAINT [PK_ELCourse] PRIMARY KEY CLUSTERED ([ELCourseId] ASC),
    CONSTRAINT [FK_ELCourse_Course] FOREIGN KEY ([CourseId]) REFERENCES [dbo].[Course] ([CourseId]),
    CONSTRAINT [FK_ELCourse_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_ELCourse_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_ELCourse_RefBlendedLearningModelType] FOREIGN KEY ([RefBlendedLearningModelTypeId]) REFERENCES [dbo].[RefBlendedLearningModelType] ([RefBlendedLearningModelTypeId]),
    CONSTRAINT [FK_ELCourse_RefSCEDCourseCode] FOREIGN KEY ([RefSCEDCourseCodeId]) REFERENCES [dbo].[RefSCEDCourseCode] ([RefSCEDCourseCodeId]),
    CONSTRAINT [FK_ELCourse_RefSCEDCourseLevel] FOREIGN KEY ([RefSCEDCourseLevelId]) REFERENCES [dbo].[RefSCEDCourseLevel] ([RefSCEDCourseLevelId]),
    CONSTRAINT [FK_ELCourse_RefSCEDCourseSubjectArea] FOREIGN KEY ([RefSCEDCourseSubjectAreaId]) REFERENCES [dbo].[RefSCEDCourseSubjectArea] ([RefSCEDCourseSubjectAreaId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The organization of early learning subject matter and related learning experiences provided for the instruction of children on a regular or systematic basis, usually for a predetermined period of time (e.g., a semester or two-week workshop) to an individual or group of children (e.g., a class or group).  This further defines course at the domain level.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELCourse';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELCourse';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A type of formal education program in which a student learns at least in part through online learning, with some element of student control over time, place, path, and/or pace; at least in part in a supervised brick-and-mortar location away from home; and the modalities along each student’s learning path within a course or subject are connected to provide an integrated learning experience.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELCourse', @level2type = N'COLUMN', @level2name = N'RefBlendedLearningModelTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Blended Learning Model Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELCourse', @level2type = N'COLUMN', @level2name = N'RefBlendedLearningModelTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001287', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELCourse', @level2type = N'COLUMN', @level2name = N'RefBlendedLearningModelTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=22253', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELCourse', @level2type = N'COLUMN', @level2name = N'RefBlendedLearningModelTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELCourse', @level2type = N'COLUMN', @level2name = N'RefBlendedLearningModelTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N' The course''s level of rigor.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELCourse', @level2type = N'COLUMN', @level2name = N'RefSCEDCourseLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'School Courses for the Exchange of Data Course Level', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELCourse', @level2type = N'COLUMN', @level2name = N'RefSCEDCourseLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001516', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELCourse', @level2type = N'COLUMN', @level2name = N'RefSCEDCourseLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=22488', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELCourse', @level2type = N'COLUMN', @level2name = N'RefSCEDCourseLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELCourse', @level2type = N'COLUMN', @level2name = N'RefSCEDCourseLevelId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The intended major subject area of the education course.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELCourse', @level2type = N'COLUMN', @level2name = N'RefSCEDCourseSubjectAreaId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'School Courses for the Exchange of Data Course Subject Area', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELCourse', @level2type = N'COLUMN', @level2name = N'RefSCEDCourseSubjectAreaId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001518', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELCourse', @level2type = N'COLUMN', @level2name = N'RefSCEDCourseSubjectAreaId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=22491', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELCourse', @level2type = N'COLUMN', @level2name = N'RefSCEDCourseSubjectAreaId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELCourse', @level2type = N'COLUMN', @level2name = N'RefSCEDCourseSubjectAreaId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The five-digit SCED code. The first two-digits of the code represent the Course Subject Area and the next three digits identify the course number. These identifiers are fairly general but provide enough specificity to identify the course''s topic and to distinguish it from other courses in that subject area.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELCourse', @level2type = N'COLUMN', @level2name = N'RefSCEDCourseCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'School Courses for the Exchange of Data Course Code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELCourse', @level2type = N'COLUMN', @level2name = N'RefSCEDCourseCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001517', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELCourse', @level2type = N'COLUMN', @level2name = N'RefSCEDCourseCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=22490', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELCourse', @level2type = N'COLUMN', @level2name = N'RefSCEDCourseCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELCourse', @level2type = N'COLUMN', @level2name = N'RefSCEDCourseCodeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELCourse', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELCourse', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELCourse', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=22898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELCourse', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELCourse', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELCourse', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELCourse', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELCourse', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=22899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELCourse', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ELCourse', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

