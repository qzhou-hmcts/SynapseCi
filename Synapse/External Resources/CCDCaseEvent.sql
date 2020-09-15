CREATE EXTERNAL DATA SOURCE [CCDCaseEvent]
    WITH (
    TYPE = HADOOP,
    LOCATION = N'wasbs://ccdmetadata@mipersistentsbox.blob.core.windows.net/'
    );

