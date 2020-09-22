﻿CREATE EXTERNAL FILE FORMAT [csvwithheader]
    WITH (
    FORMAT_TYPE = DELIMITEDTEXT,
    FORMAT_OPTIONS (FIELD_TERMINATOR = N',', STRING_DELIMITER = N'"', FIRST_ROW = 2, ENCODING = N'UTF8')
    );

