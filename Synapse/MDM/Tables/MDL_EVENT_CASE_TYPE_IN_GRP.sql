﻿CREATE TABLE [MDM].[MDL_EVENT_CASE_TYPE_IN_GRP] (
    [EVENT_TYPE_GRP_KEY]         DECIMAL (10, 6) NOT NULL,
    [EVENT_TYPE_KEY]             DECIMAL (10, 6) NOT NULL,
    [CASE_TYPE_KEY]              DECIMAL (10, 6) NOT NULL,
    [BIS_FIRST_CREATED_DATETIME] DATETIME        NULL,
    [BIS_LAST_MODIFIED_DATETIME] DATETIME        NULL,
    [MODIFIED_BY_PROCESS_NAME]   VARCHAR (50)    NULL,
    [INSERTED_BY_PROCESS_NAME]   VARCHAR (50)    NULL
)
WITH (CLUSTERED COLUMNSTORE INDEX, DISTRIBUTION = ROUND_ROBIN);

