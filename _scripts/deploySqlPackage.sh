#!/usr/bin/env bash

DYLD_PRINT_LIBRARIES=1

sqlPath=~/test/sqlpackage-osx-x64-en-US-15.0.4897.1
$sqlPath/sqlpackage /a:$DeploymentAction /su:$SqlUsername /ssn:$ServerName /sdn:$DatabaseName  /sp:$SqlPassword /tf:backup.dacpac
