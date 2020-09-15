CREATE EXTERNAL DATA SOURCE [NotifyDivorceSecure]
    WITH (
    TYPE = HADOOP,
    LOCATION = N'wasbs://notify-divorce@mipersistentsbox.blob.core.windows.net',
    CREDENTIAL = [persistent]
    );

