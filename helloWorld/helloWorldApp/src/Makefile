TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = helloWorld
# helloWorld.dbd will be created and installed
DBD += helloWorld.dbd

# helloWorld.dbd will be made up from these files:
helloWorld_DBD += base.dbd
helloWorld_DBD += testProc.dbd
# Include dbd files from all support applications:
#helloWorld_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#helloWorld_LIBS += xxx

# helloWorld_registerRecordDeviceDriver.cpp derives from helloWorld.dbd
helloWorld_SRCS += helloWorld_registerRecordDeviceDriver.cpp
helloWorld_SRCS += testProc.cpp
# Build the main IOC entry point on workstation OSs.
helloWorld_SRCS_DEFAULT += helloWorldMain.cpp
helloWorld_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#helloWorld_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
helloWorld_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

