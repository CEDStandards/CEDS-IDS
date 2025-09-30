CREATE TABLE [dbo].[Job] (
    [JobId] INT IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_Job] PRIMARY KEY CLUSTERED ([JobId] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'An entity that represent any type of job.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Job';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Job';

