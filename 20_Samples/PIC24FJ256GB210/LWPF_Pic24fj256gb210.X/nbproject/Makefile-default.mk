#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/LWPF_Pic24fj256gb210.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/LWPF_Pic24fj256gb210.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS
SUB_IMAGE_ADDRESS_COMMAND=--image-address $(SUB_IMAGE_ADDRESS)
else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=user/app/app.c mcc_generated_files/clock.c mcc_generated_files/tmr2.c mcc_generated_files/pin_manager.c mcc_generated_files/system.c mcc_generated_files/interrupt_manager.c mcc_generated_files/traps.c mcc_generated_files/mcc.c user/os/os.c user/os/os_alarms.c user/os/os_ipc.c user/os/os_sched_tbl.c user/os/os_timers.c main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/user/app/app.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/tmr2.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/traps.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/user/os/os.o ${OBJECTDIR}/user/os/os_alarms.o ${OBJECTDIR}/user/os/os_ipc.o ${OBJECTDIR}/user/os/os_sched_tbl.o ${OBJECTDIR}/user/os/os_timers.o ${OBJECTDIR}/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/user/app/app.o.d ${OBJECTDIR}/mcc_generated_files/clock.o.d ${OBJECTDIR}/mcc_generated_files/tmr2.o.d ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d ${OBJECTDIR}/mcc_generated_files/system.o.d ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d ${OBJECTDIR}/mcc_generated_files/traps.o.d ${OBJECTDIR}/mcc_generated_files/mcc.o.d ${OBJECTDIR}/user/os/os.o.d ${OBJECTDIR}/user/os/os_alarms.o.d ${OBJECTDIR}/user/os/os_ipc.o.d ${OBJECTDIR}/user/os/os_sched_tbl.o.d ${OBJECTDIR}/user/os/os_timers.o.d ${OBJECTDIR}/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/user/app/app.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/tmr2.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/traps.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/user/os/os.o ${OBJECTDIR}/user/os/os_alarms.o ${OBJECTDIR}/user/os/os_ipc.o ${OBJECTDIR}/user/os/os_sched_tbl.o ${OBJECTDIR}/user/os/os_timers.o ${OBJECTDIR}/main.o

# Source Files
SOURCEFILES=user/app/app.c mcc_generated_files/clock.c mcc_generated_files/tmr2.c mcc_generated_files/pin_manager.c mcc_generated_files/system.c mcc_generated_files/interrupt_manager.c mcc_generated_files/traps.c mcc_generated_files/mcc.c user/os/os.c user/os/os_alarms.c user/os/os_ipc.c user/os/os_sched_tbl.c user/os/os_timers.c main.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/LWPF_Pic24fj256gb210.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ256GB210
MP_LINKER_FILE_OPTION=,--script=p24FJ256GB210.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/user/app/app.o: user/app/app.c  .generated_files/flags/default/dcfcfb74e96ce2c624e13e1434bf96f8cd2e9045 .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/user/app" 
	@${RM} ${OBJECTDIR}/user/app/app.o.d 
	@${RM} ${OBJECTDIR}/user/app/app.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  user/app/app.c  -o ${OBJECTDIR}/user/app/app.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/user/app/app.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"user/app" -I"user/os" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/default/9810375ebfc70f4efcff55501ec106ff1fd5d586 .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/clock.c  -o ${OBJECTDIR}/mcc_generated_files/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"user/app" -I"user/os" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/tmr2.o: mcc_generated_files/tmr2.c  .generated_files/flags/default/db8e75b95ba0e3e48083d29b90069619ced8836f .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/tmr2.c  -o ${OBJECTDIR}/mcc_generated_files/tmr2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr2.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"user/app" -I"user/os" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/default/20c4d69e147bcde323e747036afc9cc5e63470c1 .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"user/app" -I"user/os" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/default/e9658cb8b5708143c3d1c0084b721a33dc4583be .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system.c  -o ${OBJECTDIR}/mcc_generated_files/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"user/app" -I"user/os" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/default/cf325681f29aeef4cbab6c35af614c0032dbf000 .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"user/app" -I"user/os" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/traps.o: mcc_generated_files/traps.c  .generated_files/flags/default/69169549d750d893b73a1df517c18ac200c54894 .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/traps.c  -o ${OBJECTDIR}/mcc_generated_files/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/traps.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"user/app" -I"user/os" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/37ea9e331c448ab101e1bf70e3b9ec93387376cd .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"user/app" -I"user/os" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/user/os/os.o: user/os/os.c  .generated_files/flags/default/ff70359f393bac6e906aaeae2aa4f1f7b55e1f62 .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/user/os" 
	@${RM} ${OBJECTDIR}/user/os/os.o.d 
	@${RM} ${OBJECTDIR}/user/os/os.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  user/os/os.c  -o ${OBJECTDIR}/user/os/os.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/user/os/os.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"user/app" -I"user/os" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/user/os/os_alarms.o: user/os/os_alarms.c  .generated_files/flags/default/44718922d11c302637900f97ab6e147380443c60 .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/user/os" 
	@${RM} ${OBJECTDIR}/user/os/os_alarms.o.d 
	@${RM} ${OBJECTDIR}/user/os/os_alarms.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  user/os/os_alarms.c  -o ${OBJECTDIR}/user/os/os_alarms.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/user/os/os_alarms.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"user/app" -I"user/os" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/user/os/os_ipc.o: user/os/os_ipc.c  .generated_files/flags/default/7806f2ee3049f1c1886ca48e99aafce29396080b .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/user/os" 
	@${RM} ${OBJECTDIR}/user/os/os_ipc.o.d 
	@${RM} ${OBJECTDIR}/user/os/os_ipc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  user/os/os_ipc.c  -o ${OBJECTDIR}/user/os/os_ipc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/user/os/os_ipc.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"user/app" -I"user/os" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/user/os/os_sched_tbl.o: user/os/os_sched_tbl.c  .generated_files/flags/default/7107adfbea26f73da48a1baef7c81bc5cf0f39bc .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/user/os" 
	@${RM} ${OBJECTDIR}/user/os/os_sched_tbl.o.d 
	@${RM} ${OBJECTDIR}/user/os/os_sched_tbl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  user/os/os_sched_tbl.c  -o ${OBJECTDIR}/user/os/os_sched_tbl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/user/os/os_sched_tbl.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"user/app" -I"user/os" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/user/os/os_timers.o: user/os/os_timers.c  .generated_files/flags/default/7e2eb60eee41f1eeec7eb491ffea4ad39be397d3 .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/user/os" 
	@${RM} ${OBJECTDIR}/user/os/os_timers.o.d 
	@${RM} ${OBJECTDIR}/user/os/os_timers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  user/os/os_timers.c  -o ${OBJECTDIR}/user/os/os_timers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/user/os/os_timers.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"user/app" -I"user/os" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/f78b73c14572186ae572ecfc8a0595d472ad111c .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"user/app" -I"user/os" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/user/app/app.o: user/app/app.c  .generated_files/flags/default/2d3d8122637ed50f43cf1f0946daf650cd5d02a2 .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/user/app" 
	@${RM} ${OBJECTDIR}/user/app/app.o.d 
	@${RM} ${OBJECTDIR}/user/app/app.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  user/app/app.c  -o ${OBJECTDIR}/user/app/app.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/user/app/app.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"user/app" -I"user/os" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/default/d4827f1c81817fefea12a7adb587325d0312434f .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/clock.c  -o ${OBJECTDIR}/mcc_generated_files/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"user/app" -I"user/os" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/tmr2.o: mcc_generated_files/tmr2.c  .generated_files/flags/default/448eadeba925a7fd31c439fe93477d6b95168365 .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/tmr2.c  -o ${OBJECTDIR}/mcc_generated_files/tmr2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr2.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"user/app" -I"user/os" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/default/9b16ffbc439d8a76097c555e536dbcd58478044 .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"user/app" -I"user/os" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/default/ad520eba319cc6597714b75d2419b761585ec14d .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system.c  -o ${OBJECTDIR}/mcc_generated_files/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"user/app" -I"user/os" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/default/33eef74ccb1910053b496ae016c6de54c775bc3 .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"user/app" -I"user/os" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/traps.o: mcc_generated_files/traps.c  .generated_files/flags/default/f1d62ffeefa5ae5c1b471c40d58e962ff3729eb2 .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/traps.c  -o ${OBJECTDIR}/mcc_generated_files/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/traps.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"user/app" -I"user/os" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/454a74dc88f68efaab333ccd45d773f7e1c2384b .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"user/app" -I"user/os" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/user/os/os.o: user/os/os.c  .generated_files/flags/default/8eadd99a5324f60ee8f6ed4b22a0e41d9d0fd17e .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/user/os" 
	@${RM} ${OBJECTDIR}/user/os/os.o.d 
	@${RM} ${OBJECTDIR}/user/os/os.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  user/os/os.c  -o ${OBJECTDIR}/user/os/os.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/user/os/os.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"user/app" -I"user/os" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/user/os/os_alarms.o: user/os/os_alarms.c  .generated_files/flags/default/35bfbbd33511ff82c8f2b5503a14ff09a2d1e611 .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/user/os" 
	@${RM} ${OBJECTDIR}/user/os/os_alarms.o.d 
	@${RM} ${OBJECTDIR}/user/os/os_alarms.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  user/os/os_alarms.c  -o ${OBJECTDIR}/user/os/os_alarms.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/user/os/os_alarms.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"user/app" -I"user/os" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/user/os/os_ipc.o: user/os/os_ipc.c  .generated_files/flags/default/c6b775937df037d0699ae9ad1b4216d444315427 .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/user/os" 
	@${RM} ${OBJECTDIR}/user/os/os_ipc.o.d 
	@${RM} ${OBJECTDIR}/user/os/os_ipc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  user/os/os_ipc.c  -o ${OBJECTDIR}/user/os/os_ipc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/user/os/os_ipc.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"user/app" -I"user/os" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/user/os/os_sched_tbl.o: user/os/os_sched_tbl.c  .generated_files/flags/default/53dd4b9d91a01bbb20199076023020b4946acfe4 .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/user/os" 
	@${RM} ${OBJECTDIR}/user/os/os_sched_tbl.o.d 
	@${RM} ${OBJECTDIR}/user/os/os_sched_tbl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  user/os/os_sched_tbl.c  -o ${OBJECTDIR}/user/os/os_sched_tbl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/user/os/os_sched_tbl.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"user/app" -I"user/os" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/user/os/os_timers.o: user/os/os_timers.c  .generated_files/flags/default/815fe4cda7f7f27ade2b581090eae9c4462b80e0 .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/user/os" 
	@${RM} ${OBJECTDIR}/user/os/os_timers.o.d 
	@${RM} ${OBJECTDIR}/user/os/os_timers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  user/os/os_timers.c  -o ${OBJECTDIR}/user/os/os_timers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/user/os/os_timers.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"user/app" -I"user/os" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/6b08c4941336191b8930a93ba7cb0e6cb714a380 .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"user/app" -I"user/os" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/LWPF_Pic24fj256gb210.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/LWPF_Pic24fj256gb210.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -mreserve=data@0x800:0x81B -mreserve=data@0x81C:0x81D -mreserve=data@0x81E:0x81F -mreserve=data@0x820:0x821 -mreserve=data@0x822:0x823 -mreserve=data@0x824:0x827 -mreserve=data@0x82A:0x84F   -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,--defsym=__MPLAB_DEBUGGER_ICD4=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
${DISTDIR}/LWPF_Pic24fj256gb210.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/LWPF_Pic24fj256gb210.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	${MP_CC_DIR}\\xc16-bin2hex ${DISTDIR}/LWPF_Pic24fj256gb210.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   -mdfp="${DFP_DIR}/xc16" 
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
