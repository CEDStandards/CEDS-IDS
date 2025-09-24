CREATE TABLE [dbo].[PeerRatingSystem] (
    [PeerRatingSystemId]  INT             IDENTITY (1, 1) NOT NULL,
    [Name]                NVARCHAR (60)   NOT NULL,
    [MaximumValue]        NUMERIC (18, 4) NULL,
    [MinimumValue]        NUMERIC (18, 4) NOT NULL,
    [OptimumValue]        NUMERIC (18, 4) NULL,
    [RecordStartDateTime] DATETIME        NULL,
    [RecordEndDateTime]   DATETIME        NULL,
    [RecordStatusId]      INT             NULL,
    [DataCollectionId]    INT             NULL,
    CONSTRAINT [PK_PeerRatingSystem] PRIMARY KEY CLUSTERED ([PeerRatingSystemId] ASC),
    CONSTRAINT [FK_PeerRatingSystem_DataCollection] FOREIGN KEY ([DataCollectionId]) REFERENCES [dbo].[DataCollection] ([DataCollectionId]),
    CONSTRAINT [FK_PeerRatingSystem_RecordStatus] FOREIGN KEY ([RecordStatusId]) REFERENCES [dbo].[RecordStatus] ([RecordStatusId])
);


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The peer rating / scaling system used to rate a Learning Resource.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PeerRatingSystem';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_Def_Desc extended property.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PeerRatingSystem';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surrogate Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PeerRatingSystem', @level2type = N'COLUMN', @level2name = N'PeerRatingSystemId';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The name of the scaling system used to specify the Peer Rating.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PeerRatingSystem', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Peer Rating System Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PeerRatingSystem', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001147', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PeerRatingSystem', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20160', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PeerRatingSystem', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PeerRatingSystem', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N' The maximum value allowed by the Peer Rating System.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PeerRatingSystem', @level2type = N'COLUMN', @level2name = N'MaximumValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Peer Rating System Maximum Value', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PeerRatingSystem', @level2type = N'COLUMN', @level2name = N'MaximumValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001149', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PeerRatingSystem', @level2type = N'COLUMN', @level2name = N'MaximumValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20162', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PeerRatingSystem', @level2type = N'COLUMN', @level2name = N'MaximumValue';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PeerRatingSystem', @level2type = N'COLUMN', @level2name = N'MaximumValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The minimum value allowed by the Peer Rating System.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PeerRatingSystem', @level2type = N'COLUMN', @level2name = N'MinimumValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Peer Rating System Minimum Value', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PeerRatingSystem', @level2type = N'COLUMN', @level2name = N'MinimumValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001150', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PeerRatingSystem', @level2type = N'COLUMN', @level2name = N'MinimumValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20163', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PeerRatingSystem', @level2type = N'COLUMN', @level2name = N'MinimumValue';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PeerRatingSystem', @level2type = N'COLUMN', @level2name = N'MinimumValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The optimum value allowed by the Peer Rating System.  The optimum or best rating may be the maximum value, the minimum value, or something in between.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PeerRatingSystem', @level2type = N'COLUMN', @level2name = N'OptimumValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Peer Rating System Optimum Value', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PeerRatingSystem', @level2type = N'COLUMN', @level2name = N'OptimumValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001151', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PeerRatingSystem', @level2type = N'COLUMN', @level2name = N'OptimumValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20164', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PeerRatingSystem', @level2type = N'COLUMN', @level2name = N'OptimumValue';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PeerRatingSystem', @level2type = N'COLUMN', @level2name = N'OptimumValue';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The start date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PeerRatingSystem', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record Start Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PeerRatingSystem', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001917', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PeerRatingSystem', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20898', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PeerRatingSystem', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PeerRatingSystem', @level2type = N'COLUMN', @level2name = N'RecordStartDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Def_Desc', @value = N'The end date and, optionally, time that a record is active as used to support version control.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PeerRatingSystem', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_Element', @value = N'Record End Date Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PeerRatingSystem', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_GlobalId', @value = N'001918', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PeerRatingSystem', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'CEDS_URL', @value = N'https://ceds.ed.gov/CEDSElementDetails.aspx?TermId=20899', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PeerRatingSystem', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PeerRatingSystem', @level2type = N'COLUMN', @level2name = N'RecordEndDateTime';

