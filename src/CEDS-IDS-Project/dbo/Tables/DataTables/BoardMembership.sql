CREATE TABLE [dbo].[BoardMembership] (
    [BoardMembershipId]            INT      IDENTITY (1, 1) NOT NULL,
    [OrganizationPersonRoleId]     INT      NOT NULL,
    [RefBoardMemberPositionTypeId] INT      NULL,
    [RefBoardMembershipTypeId]     INT      NULL,
    [BoardMemberTermStartDate]     DATETIME NULL,
    [BoardMemberTermEndDate]       DATETIME NULL,
    [RecordStartDateTime]          DATETIME NULL,
    [RecordEndDateTime]            DATETIME NULL,
    [RecordStatusId]               INT      NULL,
    [DataCollectionId]             INT      NULL,
    CONSTRAINT [PK_BoardMembership] PRIMARY KEY CLUSTERED ([BoardMembershipId] ASC),
    CONSTRAINT [FK_BoardMembership_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_BoardMembership_OrganizationPersonRole] FOREIGN KEY ([OrganizationPersonRoleId]) REFERENCES [dbo].[OrganizationPersonRole] ([OrganizationPersonRoleId]),
    CONSTRAINT [FK_BoardMembership_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId]),
    CONSTRAINT [FK_BoardMembership_RefBoardMemberPositionType] FOREIGN KEY ([RefBoardMemberPositionTypeId]) REFERENCES [dbo].[RefBoardMemberPositionType] ([RefBoardMemberPositionTypeId]),
    CONSTRAINT [FK_BoardMembership_RefBoardMembershipType] FOREIGN KEY ([RefBoardMembershipTypeId]) REFERENCES [dbo].[RefBoardMembershipType] ([RefBoardMembershipTypeId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'Information related to persons as board members within an organization.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BoardMembership';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BoardMembership';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The position or role the person performs on the board.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BoardMembership', @level2type = N'COLUMN', @level2name = N'RefBoardMemberPositionTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Board Member Position Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BoardMembership', @level2type = N'COLUMN', @level2name = N'RefBoardMemberPositionTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002104', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BoardMembership', @level2type = N'COLUMN', @level2name = N'RefBoardMemberPositionTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25004', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BoardMembership', @level2type = N'COLUMN', @level2name = N'RefBoardMemberPositionTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BoardMembership', @level2type = N'COLUMN', @level2name = N'RefBoardMemberPositionTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of membership for the board member.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BoardMembership', @level2type = N'COLUMN', @level2name = N'RefBoardMembershipTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Board Membership Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BoardMembership', @level2type = N'COLUMN', @level2name = N'RefBoardMembershipTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002105', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BoardMembership', @level2type = N'COLUMN', @level2name = N'RefBoardMembershipTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25007', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BoardMembership', @level2type = N'COLUMN', @level2name = N'RefBoardMembershipTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BoardMembership', @level2type = N'COLUMN', @level2name = N'RefBoardMembershipTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date on which the board member''s term begins.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BoardMembership', @level2type = N'COLUMN', @level2name = N'BoardMemberTermStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Board Member Term Start Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BoardMembership', @level2type = N'COLUMN', @level2name = N'BoardMemberTermStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002102', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BoardMembership', @level2type = N'COLUMN', @level2name = N'BoardMemberTermStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25006', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BoardMembership', @level2type = N'COLUMN', @level2name = N'BoardMemberTermStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BoardMembership', @level2type = N'COLUMN', @level2name = N'BoardMemberTermStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The date on which the board member''s term ends.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BoardMembership', @level2type = N'COLUMN', @level2name = N'BoardMemberTermEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Board Member Term End Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BoardMembership', @level2type = N'COLUMN', @level2name = N'BoardMemberTermEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'002103', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BoardMembership', @level2type = N'COLUMN', @level2name = N'BoardMemberTermEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=25005', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BoardMembership', @level2type = N'COLUMN', @level2name = N'BoardMemberTermEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BoardMembership', @level2type = N'COLUMN', @level2name = N'BoardMemberTermEndDate';

