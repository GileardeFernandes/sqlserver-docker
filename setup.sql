
USE [master]

IF (NOT EXISTS (select name from sys.databases where name ='smartqa'  ))
BEGIN

RESTORE DATABASE [SmartQA] FROM  DISK = N'/var/opt/smartqa.bak' WITH  FILE = 1, 
MOVE N'SmartModelo2' TO N'/var/opt/mssql/data/SmartQA.mdf',
MOVE N'SmartModelo2_log' TO N'/var/opt/mssql/data/SmartQA_1.ldf',
NOUNLOAD, STATS = 5

END

