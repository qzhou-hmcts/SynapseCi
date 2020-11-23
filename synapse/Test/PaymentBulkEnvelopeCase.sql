CREATE SCHEMA payment
    AUTHORIZATION [dbo];

GO

CREATE TABLE [payment].[BulkEnvelopCase]
(
    id NUMERIC(38) NOT NULL,
    ccd_reference VARCHAR(255) NULL,
    date_created DATE NULL,
    exception_record_reference VARCHAR(255) NULL, 
    data_updated DATE NULL,
    envelpe_id  NUMERIC(38) NULL,
    extraction_date DATE NULL
)
WITH
(
    DISTRIBUTION = HASH (ccd_reference),
    CLUSTERED COLUMNSTORE INDEX
)
GO
