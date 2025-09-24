CREATE TABLE [dbo].[RefBoardMembershipType] (
    [RefBoardMembershipTypeId] INT             IDENTITY (1, 1) NOT NULL,
    [Description]              NVARCHAR (150)  NOT NULL,
    [Code]                     NVARCHAR (50)   NULL,
    [Definition]               NVARCHAR (4000) NULL,
    [RefJurisdictionId]        INT             NULL,
    [SortOrder]                DECIMAL (5, 2)  NULL,
    [RecordStartDateTime]      DATETIME        NULL,
    [RecordEndDateTime]        DATETIME        NULL,
    CONSTRAINT [PK_RefBoardMembershipType] PRIMARY KEY CLUSTERED ([RefBoardMembershipTypeId] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The type of membership for the board member.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefBoardMembershipType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RefBoardMembershipType';

