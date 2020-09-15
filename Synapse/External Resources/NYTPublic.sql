CREATE EXTERNAL DATA SOURCE [NYTPublic]
    WITH (
    TYPE = HADOOP,
    LOCATION = N'wasbs://persistent@mipersistentsbox.blob.core.windows.net'
    );

