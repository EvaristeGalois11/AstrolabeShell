#!/bin/bash

### TOGGLE VARIABLE ###

#toggleFile=PATH TO TOGGLE FILE

stringToSearch=liquibase
commentCharacter=#

### CONTEXT VARIABLE ###

#contextDir=PATH TO CONTEXT DIRECTORY
#currentContext=NAME OF CURRENT CONTEXT

archivedSuffix=.archived
temporarySuffix=.temp
openComment="<!--"
closeComment="-->"
aliasProperty=ALIAS
fileProperty=FILE
propertySeparator=:

### SYSTEM VARIABLE ###

toggleRoutineArgument=toggle
contextRoutineArgument=context
enableArgument=enable
disableArgument=disable

function checkVariable {	
	if [[ -z "${1}" ]]; then
		echo "Variable \"${2}\" is not set"
		exit 1
	fi
}

checkVariable "${toggleFile}" "toggleFile"
checkVariable "${contextDir}" "contextDir"
checkVariable "${currentContext}" "currentContext"
