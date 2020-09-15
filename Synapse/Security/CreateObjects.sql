CREATE ROLE [CreateObjects]
    AUTHORIZATION [dbo];


GO
EXECUTE sp_addrolemember @rolename = N'CreateObjects', @membername = N'qen61q';

