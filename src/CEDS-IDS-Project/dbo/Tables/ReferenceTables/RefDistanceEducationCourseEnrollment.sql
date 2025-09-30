CREATE TABLE [dbo].[RefDistanceEducationCourseEnrollment] (
    [RefDistanceEducationCourseEnrollmentId] INT             IDENTITY (1, 1) NOT NULL,
    [Description]                            NVARCHAR (150)  NOT NULL,
    [Code]                                   NVARCHAR (50)   NULL,
    [Definition]                             NVARCHAR (4000) NULL,
    [RefJurisdictionId]                      INT             NULL,
    [SortOrder]                              DECIMAL (5, 2)  NULL,
    [RecordStartDateTime]                    DATETIME        NULL,
    [RecordEndDateTime]                      DATETIME        NULL,
    CONSTRAINT [PK_RefDistanceEducationCourseEnr] PRIMARY KEY CLUSTERED ([RefDistanceEducationCourseEnrollmentId] ASC),
    CONSTRAINT [FK_RefDistanceEducationCourseEnr_Organization] FOREIGN KEY ([RefJurisdictionId]) REFERENCES [dbo].[Organization] ([OrganizationId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An individual''s enrollment in a course or courses in which the instructional content is delivered exclusively via distance education.  Distance education is education that uses one or more technologies to deliver instruction to students who are separated from the instructor and to support regular and substantive interaction between the students and the instructor synchronously or asynchronously.  Technologies used for instruction may include: Internet; one-way and two-way transmissions through open broadcasts, closed circuit, cable, microwave, broadband lines, fiber optics, satellite or wireless communication devices; audio conferencing; and video cassette, DVDs, and CD-ROMs, if the cassette, DVDs, and CD-ROMs are used in a course in conjunction with the technologies listed above.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefDistanceEducationCourseEnrollment';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Distance Education Course Enrollment', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefDistanceEducationCourseEnrollment';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000728', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefDistanceEducationCourseEnrollment';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19704', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefDistanceEducationCourseEnrollment';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefDistanceEducationCourseEnrollment';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefDistanceEducationCourseEnrollment', @level2type = N'COLUMN', @level2name = N'RefDistanceEducationCourseEnrollmentId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A description for the options in this option set.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefDistanceEducationCourseEnrollment', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefDistanceEducationCourseEnrollment', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A code or abbreviation for the options in this option set.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefDistanceEducationCourseEnrollment', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefDistanceEducationCourseEnrollment', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The defintion for the options in this option set.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefDistanceEducationCourseEnrollment', @level2type = N'COLUMN', @level2name = N'Definition';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key from Organization identifying the publisher of the reference value.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefDistanceEducationCourseEnrollment', @level2type = N'COLUMN', @level2name = N'RefJurisdictionId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The sequence the options in this option set should be ordered.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefDistanceEducationCourseEnrollment', @level2type = N'COLUMN', @level2name = N'SortOrder';

