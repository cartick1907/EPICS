#include <stdio.h>
#include <subRecord.h>
#include <registryFunction.h>
#include <epicsExport.h>
static int testProc(subRecord *precord) {
precord->val++ ;
return 0;
}
epicsRegisterFunction(testProc);
