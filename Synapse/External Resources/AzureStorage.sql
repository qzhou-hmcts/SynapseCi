CREATE EXTERNAL DATA SOURCE [AzureStorage]
    WITH (
    TYPE = HADOOP,
    LOCATION = N'wasbs://ccd-finredcontested@mipersistentsbox.blob.core.windows.net',
    CREDENTIAL = [AzureStorageCredential]
    );

