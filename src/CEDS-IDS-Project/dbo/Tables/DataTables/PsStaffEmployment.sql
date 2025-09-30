CREATE TABLE [dbo].[PsStaffEmployment] (
    [PsStaffEmploymentId]                   INT            IDENTITY (1, 1) NOT NULL,
    [StaffEmploymentId]                     INT            NOT NULL,
    [FacultyStatus]                         BIT            NULL,
    [InstructionalStaffStatus]              BIT            NULL,
    [MedicalSchoolStaffStatus]              BIT            NULL,
    [GraduateAssistantStatus]               BIT            NULL,
    [AnnualBaseContractualSalary]           DECIMAL (9, 2) NULL,
    [RefFullTimeStatusId]                   INT            NULL,
    [RefEmploymentContractTypeId]           INT            NULL,
    [RefIpedsOccupationalCategoryId]        INT            NULL,
    [RefInstructionalStaffContractLengthId] INT            NULL,
    [RefInstructionalStaffFacultyTenureId]  INT            NULL,
    [RefAcademicRankId]                     INT            NULL,
    [RefInstructionCreditTypeId]            INT            NULL,
    [RefGraduateAssistantIpedsCategoryId]   INT            NULL,
    [RecordStartDateTime]                   DATETIME       NULL,
    [RecordEndDateTime]                     DATETIME       NULL,
    [RecordStatusId]                        INT            NULL,
    [DataCollectionId]                      INT            NULL,
    CONSTRAINT [PK_PsStaffEmployment] PRIMARY KEY CLUSTERED ([PsStaffEmploymentId] ASC),
    CONSTRAINT [FK_PsStaffEmployment_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_PsStaffEmployment_InstructionCreditType] FOREIGN KEY ([RefInstructionCreditTypeId]) REFERENCES [dbo].[RefInstructionCreditType] ([RefInstructionCreditTypeId]),
    CONSTRAINT [FK_PsStaffEmployment_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_PsStaffEmployment_RefAcademicRank] FOREIGN KEY ([RefAcademicRankId]) REFERENCES [dbo].[RefAcademicRank] ([RefAcademicRankId]),
    CONSTRAINT [FK_PsStaffEmployment_RefEmploymentContractType] FOREIGN KEY ([RefEmploymentContractTypeId]) REFERENCES [dbo].[RefEmploymentContractType] ([RefEmploymentContractTypeId]),
    CONSTRAINT [FK_PsStaffEmployment_RefFullTimeStatus] FOREIGN KEY ([RefFullTimeStatusId]) REFERENCES [dbo].[RefFullTimeStatus] ([RefFullTimeStatusId]),
    CONSTRAINT [FK_PsStaffEmployment_RefGraduateAssistIpedsCategory] FOREIGN KEY ([RefGraduateAssistantIpedsCategoryId]) REFERENCES [dbo].[RefGraduateAssistantIpedsCategory] ([RefGraduateAssistantIpedsCategoryId]),
    CONSTRAINT [FK_PsStaffEmployment_RefInstructStaffContractLength] FOREIGN KEY ([RefInstructionalStaffContractLengthId]) REFERENCES [dbo].[RefInstructionalStaffContractLength] ([RefInstructionalStaffContractLengthId]),
    CONSTRAINT [FK_PsStaffEmployment_RefInstructStaffFacultyTenure] FOREIGN KEY ([RefInstructionalStaffFacultyTenureId]) REFERENCES [dbo].[RefInstructionalStaffFacultyTenure] ([RefInstructionalStaffFacultyTenureId]),
    CONSTRAINT [FK_PsStaffEmployment_RefIpedsOccupationalCategory] FOREIGN KEY ([RefIpedsOccupationalCategoryId]) REFERENCES [dbo].[RefIpedsOccupationalCategory] ([RefIpedsOccupationalCategoryId]),
    CONSTRAINT [FK_PsStaffEmployment_StaffEmployment] FOREIGN KEY ([StaffEmploymentId]) REFERENCES [dbo].[StaffEmployment] ([StaffEmploymentId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Attributes for postsecondary staff employment. Extends from Staff.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DESCRIPTION', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'PK - Foreign key from StaffEmployment', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'StaffEmploymentId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Persons identified by the institution as such and typically those whose initial assignments are made for the purpose of conducting instruction, research or public service as a principal activity (or activities). They may hold academic rank titles of professor, associate professor, assistant professor, instructor, lecturer or the equivalent of any of those academic ranks. Faculty may also include the chancellor/president, provost, vice provosts, deans, directors or the equivalent, as well as associate deans, assistant deans and executive officers of academic departments (chairpersons, heads or the equivalent) if their principal activity is instruction combined with research and/or public service. The designation as "faculty" is separate from the activities to which they may be currently assigned. For example, a newly appointed president of an institution may also be appointed as a faculty member. Graduate, instruction, and research assistants are not included in this category.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'FacultyStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Faculty Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'FacultyStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000734', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'FacultyStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19711', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'FacultyStatus';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'FacultyStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Staff whose primary function/occupational activity is primarily instruction or instruction combined with research and/or public service.  Does not include medical school staff.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'InstructionalStaffStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Instructional Staff Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'InstructionalStaffStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000732', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'InstructionalStaffStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19709', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'InstructionalStaffStatus';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'InstructionalStaffStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Staff employed by or employees working in the medical school component of a postsecondary institution or in a free standing medical school.  Does not include staff employed by or employees working strictly in a hospital associated with a medical school or those who work in health or allied health schools or departments such as dentistry, veterinary medicine, nursing or dental hygiene.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'MedicalSchoolStaffStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Medical School Staff Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'MedicalSchoolStaffStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000733', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'MedicalSchoolStaffStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19710', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'MedicalSchoolStaffStatus';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'MedicalSchoolStaffStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Graduate-level students employed on a part-time basis, not limited to, but often employed for the primary purpose of assisting in classroom or laboratory instruction or in the conduct of research.  Graduate students having titles such as graduate assistant, teaching assistant, teaching associate, teaching fellow, or research assistant typically hold these positions.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'GraduateAssistantStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Graduate Assistant Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'GraduateAssistantStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000742', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'GraduateAssistantStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19720', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'GraduateAssistantStatus';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'GraduateAssistantStatus';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The total annual base contractual salary of a person.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'AnnualBaseContractualSalary';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Annual Base Contractual Salary', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'AnnualBaseContractualSalary';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000744', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'AnnualBaseContractualSalary';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19722', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'AnnualBaseContractualSalary';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'AnnualBaseContractualSalary';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indication of whether an individual is employed for a standard number of hours (as determined by civil or organizational policies) in a week, month, or other period of time.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefFullTimeStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Full-time Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefFullTimeStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000736', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefFullTimeStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19713', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefFullTimeStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefFullTimeStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of employment contract used by an institution.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefEmploymentContractTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Contract Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefEmploymentContractTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000737', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefEmploymentContractTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19714', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefEmploymentContractTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefEmploymentContractTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The Integrated Postsecondary Education Data System (IPEDS) occupational categories used to report employees.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefIpedsOccupationalCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'IPEDS Occupational Category', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefIpedsOccupationalCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000731', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefIpedsOccupationalCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19708', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefIpedsOccupationalCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefIpedsOccupationalCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The contracted teaching period for faculty.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefInstructionalStaffContractLengthId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Instructional Staff Contract Length', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefInstructionalStaffContractLengthId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000735', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefInstructionalStaffContractLengthId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19712', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefInstructionalStaffContractLengthId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefInstructionalStaffContractLengthId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An indicator of the type of faculty status a person has if, by institutional definition, a staff member has faculty status.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefInstructionalStaffFacultyTenureId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Instructional Staff Faculty Tenure Status', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefInstructionalStaffFacultyTenureId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000739', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefInstructionalStaffFacultyTenureId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19716', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefInstructionalStaffFacultyTenureId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefInstructionalStaffFacultyTenureId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The academic rank of staff whose primary responsibility is instruction, research, and/or public service.  Institutions without standard academic ranks should code staff whose primary responsibility is instruction, research, and/or public service as "No Academic Rank."', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefAcademicRankId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Academic Rank', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefAcademicRankId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000740', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefAcademicRankId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19717', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefAcademicRankId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefAcademicRankId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A designation of the type(s) of instruction being delivered by staff whose primary responsibility is instruction.  Instruction that is for "credit" can be applied toward the requirements for a postsecondary degree, diploma, certificate or other formal award.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefInstructionCreditTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Instruction Credit Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefInstructionCreditTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000741', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefInstructionCreditTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19719', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefInstructionCreditTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefInstructionCreditTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The Integrated Postsecondary Education Data System (IPEDS) occupational categories used to report graduate assistants.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefGraduateAssistantIpedsCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Graduate Assistant IPEDS Occupation Category', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefGraduateAssistantIpedsCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000743', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefGraduateAssistantIpedsCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19721', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefGraduateAssistantIpedsCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'RefGraduateAssistantIpedsCategoryId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PsStaffEmployment', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

