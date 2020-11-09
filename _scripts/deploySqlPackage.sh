#!/usr/bin/env bash

DYLD_PRINT_LIBRARIES=1

sqlpackage /a:$DeploymentAction /su:$SqlUsername /ssn:$ServerName /sdn:$DatabaseName  /sp:$SqlPassword /tf:backup.dacpac
