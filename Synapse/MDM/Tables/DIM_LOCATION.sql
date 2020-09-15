CREATE TABLE [MDM].[DIM_LOCATION] (
    [LOCATION_KEY]                   DECIMAL (10, 6) NULL,
    [LOCATION_TYPE]                  VARCHAR (4)     NULL,
    [LOCATION_NAME]                  VARCHAR (255)   NULL,
    [HMCTS_CLUSTER_NAME]             VARCHAR (255)   NULL,
    [LOCAL_CRIM_JUSTICE_AREA_NAME]   VARCHAR (255)   NULL,
    [LOCAL_FAM_JUSTICE_AREA_NAME]    VARCHAR (255)   NULL,
    [DESIGNATED_CIV_JUDGE_AREA_NAME] VARCHAR (255)   NULL,
    [DESIGNATED_FAM_JUDGE_AREA_NAME] VARCHAR (255)   NULL,
    [REGION_NAME]                    VARCHAR (255)   NULL,
    [LOC_TYPE_ID]                    SMALLINT        NULL,
    [LOC_ID]                         BIGINT          NULL,
    [LJA_CODE]                       INT             NULL,
    [LJA_NAME]                       VARCHAR (255)   NULL,
    [EPIMS_CODE]                     VARCHAR (30)    NULL,
    [MIS_DATA_SOURCE_CODE]           SMALLINT        NULL,
    [LOCATION_NAME_ABBR]             VARCHAR (100)   NULL,
    [IS_BUSINESS_CENTRE]             SMALLINT        DEFAULT ((0)) NULL,
    [SSCS_ITS_CNTR_NAME]             VARCHAR (50)    NULL,
    [SSCS_DISTRICT_NAME]             VARCHAR (50)    NULL,
    [SSCS_VENUE_ID]                  INT             NULL,
    [SSCS_VENUE_NAME]                VARCHAR (255)   NULL
)
WITH (CLUSTERED COLUMNSTORE INDEX, DISTRIBUTION = ROUND_ROBIN);


GO
CREATE NONCLUSTERED INDEX [DIM_LOCATION_IDX1]
    ON [MDM].[DIM_LOCATION]([LOCATION_KEY] ASC);

