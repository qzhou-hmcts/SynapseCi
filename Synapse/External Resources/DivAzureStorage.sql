CREATE EXTERNAL DATA SOURCE [DivAzureStorage]
    WITH (
    TYPE = HADOOP,
    LOCATION = N'wasbs://ccd-divorce@mipersistentsbox.blob.core.windows.net',
    CREDENTIAL = [AzureStorageCredential]
    );

