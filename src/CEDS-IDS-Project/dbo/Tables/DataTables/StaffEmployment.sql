CREATE TABLE [dbo].[StaffEmployment] (
    [StaffEmploymentId]                       INT            IDENTITY (1, 1) NOT NULL,
    [OrganizationPersonRoleId]                INT            NOT NULL,
    [HireDate]                                DATE           NULL,
    [PositionTitle]                           NVARCHAR (45)  NULL,
    [UnionMembershipName]                     NVARCHAR (200) NULL,
    [WeeksEmployedPerYear]                    INT            NULL,
    [StandardOccupationalClassification]      NCHAR (7)      NULL,
    [RefEmploymentSeparationTypeId]           INT            NULL,
    [RefEmploymentSeparationReasonId]         INT            NULL,
    [RecordStartDateTime]                     DATETIME       NULL,
    [RecordEndDateTime]                       DATETIME       NULL,
    [FullTimeEquivalency]                     DECIMAL (5, 4) NULL,
    [RecordStatusId]                          INT            NULL,
    [DataCollectionId]                        INT            NULL,
    [RefStandardOccupationalClassificationId] INT            NULL,
    CONSTRAINT [PK_StaffEmployment] PRIMARY KEY CLUSTERED ([StaffEmploymentId] ASC),
    CONSTRAINT [FK_StaffEmployment_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_StaffEmployment_OrganizationPersonRole] FOREIGN KEY ([OrganizationPersonRoleId]) REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]),
    CONSTRAINT [FK_StaffEmployment_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_StaffEmployment_RefEmploymentSeparationReason] FOREIGN KEY ([RefEmploymentSeparationReasonId]) REFERENCES [dbo].[RefEmploymentSeparationReason] ([RefEmploymentSeparationReasonId]),
    CONSTRAINT [FK_StaffEmployment_RefEmploymentSeparationType] FOREIGN KEY ([RefEmploymentSeparationTypeId]) REFERENCES [dbo].[RefEmploymentSeparationType] ([RefEmploymentSeparationTypeId]),
    CONSTRAINT [FK_StaffEmployment_RefStandardOccupationalClassification] FOREIGN KEY ([RefStandardOccupationalClassificationId]) REFERENCES [dbo].[RefStandardOccupationalClassification] ([RefStandardOccupationalClassificationId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information on employment of a person by an organization.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEmployment';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEmployment';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate key.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEmployment', @level2type = N'COLUMN', @level2name = N'StaffEmploymentId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key - OrganizationPersonRole.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEmployment', @level2type = N'COLUMN', @level2name = N'OrganizationPersonRoleId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The year, month and day on which a person was hired for a position, or consecutive positions within the same organization and job classification.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEmployment', @level2type = N'COLUMN', @level2name = N'HireDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Hire Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEmployment', @level2type = N'COLUMN', @level2name = N'HireDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000143', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEmployment', @level2type = N'COLUMN', @level2name = N'HireDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19143', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEmployment', @level2type = N'COLUMN', @level2name = N'HireDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEmployment', @level2type = N'COLUMN', @level2name = N'HireDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The descriptive name of a person''s position.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEmployment', @level2type = N'COLUMN', @level2name = N'PositionTitle';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Position Title', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEmployment', @level2type = N'COLUMN', @level2name = N'PositionTitle';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000213', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEmployment', @level2type = N'COLUMN', @level2name = N'PositionTitle';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19213', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEmployment', @level2type = N'COLUMN', @level2name = N'PositionTitle';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEmployment', @level2type = N'COLUMN', @level2name = N'PositionTitle';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The name of the labor organization of which the person is a member.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEmployment', @level2type = N'COLUMN', @level2name = N'UnionMembershipName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Union Membership Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEmployment', @level2type = N'COLUMN', @level2name = N'UnionMembershipName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001497', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEmployment', @level2type = N'COLUMN', @level2name = N'UnionMembershipName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20469', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEmployment', @level2type = N'COLUMN', @level2name = N'UnionMembershipName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEmployment', @level2type = N'COLUMN', @level2name = N'UnionMembershipName';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The number of weeks employed by year.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEmployment', @level2type = N'COLUMN', @level2name = N'WeeksEmployedPerYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Weeks Employed Per Year', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEmployment', @level2type = N'COLUMN', @level2name = N'WeeksEmployedPerYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001498', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEmployment', @level2type = N'COLUMN', @level2name = N'WeeksEmployedPerYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20470', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEmployment', @level2type = N'COLUMN', @level2name = N'WeeksEmployedPerYear';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEmployment', @level2type = N'COLUMN', @level2name = N'WeeksEmployedPerYear';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A Bureau of Labor Statistics coding system for classifying occupations by work performed and, in some cases, on the skills, education and training needed to perform the work at a competent level.  See http://www.bls.gov/soc/soc_structure_2010.pdf.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEmployment', @level2type = N'COLUMN', @level2name = N'StandardOccupationalClassification';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Standard Occupational Classification', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEmployment', @level2type = N'COLUMN', @level2name = N'StandardOccupationalClassification';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000730', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEmployment', @level2type = N'COLUMN', @level2name = N'StandardOccupationalClassification';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19707', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEmployment', @level2type = N'COLUMN', @level2name = N'StandardOccupationalClassification';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEmployment', @level2type = N'COLUMN', @level2name = N'StandardOccupationalClassification';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'A designation of the type of separation occurring between a person and the organization.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEmployment', @level2type = N'COLUMN', @level2name = N'RefEmploymentSeparationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Employment Separation Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEmployment', @level2type = N'COLUMN', @level2name = N'RefEmploymentSeparationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000621', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEmployment', @level2type = N'COLUMN', @level2name = N'RefEmploymentSeparationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19614', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEmployment', @level2type = N'COLUMN', @level2name = N'RefEmploymentSeparationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEmployment', @level2type = N'COLUMN', @level2name = N'RefEmploymentSeparationTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The primary reason for the termination of the employment relationship.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEmployment', @level2type = N'COLUMN', @level2name = N'RefEmploymentSeparationReasonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Employment Separation Reason', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEmployment', @level2type = N'COLUMN', @level2name = N'RefEmploymentSeparationReasonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000620', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEmployment', @level2type = N'COLUMN', @level2name = N'RefEmploymentSeparationReasonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19613', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEmployment', @level2type = N'COLUMN', @level2name = N'RefEmploymentSeparationReasonId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEmployment', @level2type = N'COLUMN', @level2name = N'RefEmploymentSeparationReasonId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEmployment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEmployment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEmployment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEmployment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEmployment', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEmployment', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEmployment', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEmployment', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEmployment', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEmployment', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The ratio between the hours of work expected in a position and the hours of work normally expected in a full-time position in the same setting.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEmployment', @level2type = N'COLUMN', @level2name = N'FullTimeEquivalency';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Staff Full Time Equivalency', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEmployment', @level2type = N'COLUMN', @level2name = N'FullTimeEquivalency';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'000118', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEmployment', @level2type = N'COLUMN', @level2name = N'FullTimeEquivalency';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=19118', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEmployment', @level2type = N'COLUMN', @level2name = N'FullTimeEquivalency';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StaffEmployment', @level2type = N'COLUMN', @level2name = N'FullTimeEquivalency';

