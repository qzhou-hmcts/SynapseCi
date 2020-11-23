#!/usr/bin/env bash
set -x
DYLD_PRINT_LIBRARIES=1

arguments=''
function getProperty() {
    if [ -z "$2" ]
    then
        echo ""
    else
        echo "$1$2" 
    fi
}  

arguments="$arguments $(getProperty /a: $DeploymentAction)"
arguments="$arguments $(getProperty /su: $SqlUsername)"
arguments="$arguments $(getProperty /ssn: $ServerName)"
arguments="$arguments $(getProperty /sdn: $DatabaseName)"
arguments="$arguments $(getProperty /sp: $SqlPassword)"
arguments="$arguments $(getProperty /tf: $TargetFile)"
arguments="$arguments $(getProperty /sf: $DacpacFile)"
arguments="$arguments $(getProperty /tdn: $TargetDatabaseName)"
arguments="$arguments $(getProperty /tsn: $TargetServerName)"
arguments="$arguments $(getProperty /tp: $TargetPassword)"
arguments="$arguments $(getProperty /tu: $TargetUser)"

if [ -z "$arguments" ]
then
    echo "empty arguments"
else
    echo $AdditionalArguments
    arguments="$arguments $AdditionalArguments"
fi

sqlpackage $arguments
