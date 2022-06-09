#!../../bin/linux-x86_64/helloWorld

#- You may have to change helloWorld to something else
#- everywhere it appears in this file

< envPaths

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/helloWorld.dbd"
helloWorld_registerRecordDeviceDriver pdbbase

## Load record instances
#dbLoadRecords("db/xxx.db","user=kartik")
dbLoadRecords("db/testProc.db")

cd "${TOP}/iocBoot/${IOC}"
iocInit

## Start any sequence programs
#seq sncxxx,"user=kartik"
