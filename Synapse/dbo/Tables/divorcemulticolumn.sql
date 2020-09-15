CREATE TABLE [dbo].[divorcemulticolumn] (
    [EventId]                                      VARCHAR (100) NULL,
    [D8DivorceWho]                                 VARCHAR (10)  NULL,
    [D8DocumentsUploadedId]                        VARCHAR (100) NULL,
    [D8DocumentsUploadedValueDocumentLinkUrl]      VARCHAR (255) NULL,
    [D8DocumentsUploadedValueDocumentLinkFileName] VARCHAR (255) NULL,
    [D8DocumentsUploadedValueDocumentLinkBinary]   VARCHAR (255) NULL,
    [D8DocumentsUploadedValueDocumentType]         VARCHAR (255) NULL,
    [D8DoucmentsUploadedValueDocumentFileName]     VARCHAR (255) NULL
)
WITH (CLUSTERED COLUMNSTORE INDEX, DISTRIBUTION = ROUND_ROBIN);

