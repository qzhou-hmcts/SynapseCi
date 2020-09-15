CREATE TABLE [MDM].[DIM_DATE] (
    [DATE_KEY]                     DATETIME     NULL,
    [DAY_OF_WEEK]                  SMALLINT     NULL,
    [DAY_NUM_IN_MONTH]             SMALLINT     NULL,
    [DAY_NUM_OVERALL]              BIGINT       NULL,
    [DAY_NAME]                     VARCHAR (9)  NULL,
    [DAY_ABBREV]                   VARCHAR (3)  NULL,
    [WEEKDAY_FLAG]                 VARCHAR (1)  NULL,
    [WEEK_NUM_IN_YEAR]             SMALLINT     NULL,
    [WEEK_NUM_OVERALL]             BIGINT       NULL,
    [WEEK_BEGIN_DATE]              DATETIME     NULL,
    [WEEK_BEGIN_DATE_KEY]          BIGINT       NULL,
    [MONTH]                        SMALLINT     NULL,
    [MONTH_NUM_OVERALL]            BIGINT       NULL,
    [MONTH_NAME]                   VARCHAR (9)  NULL,
    [MONTH_ABBREV]                 VARCHAR (3)  NULL,
    [MONTH_YEAR]                   VARCHAR (30) NULL,
    [QUARTER]                      SMALLINT     NULL,
    [YEAR]                         SMALLINT     NULL,
    [YEARMO]                       INT          NULL,
    [FISCAL_MONTH]                 SMALLINT     NULL,
    [FISCAL_QUARTER]               SMALLINT     NULL,
    [FISCAL_YEAR]                  SMALLINT     NULL,
    [LAST_DAY_IN_MONTH_FLAG]       VARCHAR (1)  NULL,
    [SAME_DAY_YEAR_AGO]            DATETIME     NULL,
    [WORKING_DAY_FLAG]             VARCHAR (1)  NULL,
    [DDMMYY_DATE]                  VARCHAR (8)  NULL,
    [MONYY_DATE]                   VARCHAR (6)  NULL,
    [YEAR_QUARTER]                 VARCHAR (7)  NULL,
    [FISCAL_YEAR_QUARTER]          VARCHAR (7)  NULL,
    [LAST_DAY_IN_WEEK_FLAG]        CHAR (1)     NULL,
    [LAST_DAY_IN_QUARTER_FLAG]     CHAR (1)     NULL,
    [LAST_DAY_IN_FISCAL_YEAR_FLAG] CHAR (1)     NULL
)
WITH (CLUSTERED COLUMNSTORE INDEX, DISTRIBUTION = ROUND_ROBIN);


GO
CREATE NONCLUSTERED INDEX [DIM_DATE_IDX1]
    ON [MDM].[DIM_DATE]([DATE_KEY] ASC);

