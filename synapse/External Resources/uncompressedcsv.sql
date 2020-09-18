﻿CREATE EXTERNAL FILE FORMAT [uncompressedcsv]
    WITH (
    FORMAT_TYPE = DELIMITEDTEXT,
    FORMAT_OPTIONS (FIELD_TERMINATOR = N',', FIRST_ROW = 1, ENCODING = N'UTF8')
    );

