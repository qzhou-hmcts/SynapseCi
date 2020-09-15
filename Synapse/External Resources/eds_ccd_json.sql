CREATE EXTERNAL DATA SOURCE [eds_ccd_json]
    WITH (
    TYPE = HADOOP,
    LOCATION = N'wasbs://ccdmetadata@mipersistentsbox.blob.core.windows.net',
    CREDENTIAL = [dsc_ccd]
    );

