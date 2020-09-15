CREATE TABLE [PROBATE].[STG_CCD_PROBATEGRANT] (
    [MD_INSERT_TIME]               DATETIMEOFFSET (6) NULL,
    [CASE_METADATA_EVENT_ID]       DECIMAL (38)       NULL,
    [CE_APP_TYPE]                  VARCHAR (255)      NULL,
    [CE_APP_SUB_DATE]              DATETIME           NULL,
    [CE_REG_LOCATION]              VARCHAR (255)      NULL,
    [CE_WILL_EXISTS]               VARCHAR (3)        NULL,
    [CE_IHT_NET_VALUE]             DECIMAL (38)       NULL,
    [CE_IHT_GROSS_VALUE]           DECIMAL (38)       NULL,
    [CE_DECEASED_DOD]              DATETIME           NULL,
    [CE_DECEASED_OTHER_NAMES]      VARCHAR (3)        NULL,
    [CE_CASE_STOP_REASON]          VARCHAR (4000)     NULL,
    [LOADED_DATETIME]              DATETIME           NULL,
    [CE_GOR_CASE_TYPE]             VARCHAR (30)       NULL,
    [CE_PAPERFORM_IND]             VARCHAR (3)        NULL,
    [CE_GRANTISSUED_DATE]          DATETIME           NULL,
    [CE_LEG_RECORD_ID]             DECIMAL (38)       NULL,
    [CE_LATEST_GRANT_REISSUE_DATE] DATETIME           NULL,
    [CE_REISSUE_REASON]            VARCHAR (2000)     NULL,
    [CE_WELSH_LANG_PREF]           VARCHAR (5)        NULL,
    [CE_PRIMARY_APPLICANT_ADDRESS] VARCHAR (8000)     NULL
)
WITH (CLUSTERED COLUMNSTORE INDEX, DISTRIBUTION = ROUND_ROBIN);

