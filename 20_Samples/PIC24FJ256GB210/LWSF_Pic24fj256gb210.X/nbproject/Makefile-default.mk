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
FINAL_IMAGE=${DISTDIR}/LWSF_Pic24fj256gb210.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/LWSF_Pic24fj256gb210.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=mcc_generated_files/clock.c mcc_generated_files/tmr2.c mcc_generated_files/pin_manager.c mcc_generated_files/system.c mcc_generated_files/interrupt_manager.c mcc_generated_files/traps.c mcc_generated_files/mcc.c main.c fwk/app/app.c ../../../10_Resources/os/os.c ../../../10_Resources/os/os_alarms.c ../../../10_Resources/os/os_ipc.c ../../../10_Resources/os/os_sched_tbl.c ../../../10_Resources/os/os_timers.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/tmr2.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/traps.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/main.o ${OBJECTDIR}/fwk/app/app.o ${OBJECTDIR}/_ext/826229663/os.o ${OBJECTDIR}/_ext/826229663/os_alarms.o ${OBJECTDIR}/_ext/826229663/os_ipc.o ${OBJECTDIR}/_ext/826229663/os_sched_tbl.o ${OBJECTDIR}/_ext/826229663/os_timers.o
POSSIBLE_DEPFILES=${OBJECTDIR}/mcc_generated_files/clock.o.d ${OBJECTDIR}/mcc_generated_files/tmr2.o.d ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d ${OBJECTDIR}/mcc_generated_files/system.o.d ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d ${OBJECTDIR}/mcc_generated_files/traps.o.d ${OBJECTDIR}/mcc_generated_files/mcc.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/fwk/app/app.o.d ${OBJECTDIR}/_ext/826229663/os.o.d ${OBJECTDIR}/_ext/826229663/os_alarms.o.d ${OBJECTDIR}/_ext/826229663/os_ipc.o.d ${OBJECTDIR}/_ext/826229663/os_sched_tbl.o.d ${OBJECTDIR}/_ext/826229663/os_timers.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/tmr2.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/traps.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/main.o ${OBJECTDIR}/fwk/app/app.o ${OBJECTDIR}/_ext/826229663/os.o ${OBJECTDIR}/_ext/826229663/os_alarms.o ${OBJECTDIR}/_ext/826229663/os_ipc.o ${OBJECTDIR}/_ext/826229663/os_sched_tbl.o ${OBJECTDIR}/_ext/826229663/os_timers.o

# Source Files
SOURCEFILES=mcc_generated_files/clock.c mcc_generated_files/tmr2.c mcc_generated_files/pin_manager.c mcc_generated_files/system.c mcc_generated_files/interrupt_manager.c mcc_generated_files/traps.c mcc_generated_files/mcc.c main.c fwk/app/app.c ../../../10_Resources/os/os.c ../../../10_Resources/os/os_alarms.c ../../../10_Resources/os/os_ipc.c ../../../10_Resources/os/os_sched_tbl.c ../../../10_Resources/os/os_timers.c



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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/LWSF_Pic24fj256gb210.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ256GB210
MP_LINKER_FILE_OPTION=,--script=p24FJ256GB210.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/default/f06aa8d6b7e008735fcbf9da671c1d97fc682f3f .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/clock.c  -o ${OBJECTDIR}/mcc_generated_files/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"fwk/app" -I"fwk/os" -I"../../../10_Resources/os" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/tmr2.o: mcc_generated_files/tmr2.c  .generated_files/flags/default/b22ee0451732cc645fe410bc3c5802f5aa2aa1f6 .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/tmr2.c  -o ${OBJECTDIR}/mcc_generated_files/tmr2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr2.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"fwk/app" -I"fwk/os" -I"../../../10_Resources/os" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/default/30f7e09810681c172c517e8c7ec437ba484da0bb .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"fwk/app" -I"fwk/os" -I"../../../10_Resources/os" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/default/71d9270a559b39e895ebb052c9aec16217209291 .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system.c  -o ${OBJECTDIR}/mcc_generated_files/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"fwk/app" -I"fwk/os" -I"../../../10_Resources/os" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/default/b223b1429e408509e73d353b54620c2bfe4348df .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"fwk/app" -I"fwk/os" -I"../../../10_Resources/os" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/traps.o: mcc_generated_files/traps.c  .generated_files/flags/default/952f7ea3279a5c39d3af39cfdcdcd9baf400fd2 .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/traps.c  -o ${OBJECTDIR}/mcc_generated_files/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/traps.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"fwk/app" -I"fwk/os" -I"../../../10_Resources/os" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/b9d2af47fd283c7914b1aa939609f804645895c2 .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"fwk/app" -I"fwk/os" -I"../../../10_Resources/os" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/68f5bc0879833d637c568c33bc6ef97639c8793e .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"fwk/app" -I"fwk/os" -I"../../../10_Resources/os" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/fwk/app/app.o: fwk/app/app.c  .generated_files/flags/default/a76fae95208283809d85015b9c8a92415993d089 .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/fwk/app" 
	@${RM} ${OBJECTDIR}/fwk/app/app.o.d 
	@${RM} ${OBJECTDIR}/fwk/app/app.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  fwk/app/app.c  -o ${OBJECTDIR}/fwk/app/app.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/fwk/app/app.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"fwk/app" -I"fwk/os" -I"../../../10_Resources/os" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/826229663/os.o: ../../../10_Resources/os/os.c  .generated_files/flags/default/7f2602c47c8dad0cd6666d17a27d37d56bd293ca .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/_ext/826229663" 
	@${RM} ${OBJECTDIR}/_ext/826229663/os.o.d 
	@${RM} ${OBJECTDIR}/_ext/826229663/os.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../10_Resources/os/os.c  -o ${OBJECTDIR}/_ext/826229663/os.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/826229663/os.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"fwk/app" -I"fwk/os" -I"../../../10_Resources/os" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/826229663/os_alarms.o: ../../../10_Resources/os/os_alarms.c  .generated_files/flags/default/4862e352dc6cc9afa2af67d2b556870403d78e44 .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/_ext/826229663" 
	@${RM} ${OBJECTDIR}/_ext/826229663/os_alarms.o.d 
	@${RM} ${OBJECTDIR}/_ext/826229663/os_alarms.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../10_Resources/os/os_alarms.c  -o ${OBJECTDIR}/_ext/826229663/os_alarms.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/826229663/os_alarms.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"fwk/app" -I"fwk/os" -I"../../../10_Resources/os" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/826229663/os_ipc.o: ../../../10_Resources/os/os_ipc.c  .generated_files/flags/default/970baacdf81c3b96a315596bdb55a4b5b87a921e .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/_ext/826229663" 
	@${RM} ${OBJECTDIR}/_ext/826229663/os_ipc.o.d 
	@${RM} ${OBJECTDIR}/_ext/826229663/os_ipc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../10_Resources/os/os_ipc.c  -o ${OBJECTDIR}/_ext/826229663/os_ipc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/826229663/os_ipc.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"fwk/app" -I"fwk/os" -I"../../../10_Resources/os" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/826229663/os_sched_tbl.o: ../../../10_Resources/os/os_sched_tbl.c  .generated_files/flags/default/2105a4727d1ab1963666b3644c54208d1abfc277 .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/_ext/826229663" 
	@${RM} ${OBJECTDIR}/_ext/826229663/os_sched_tbl.o.d 
	@${RM} ${OBJECTDIR}/_ext/826229663/os_sched_tbl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../10_Resources/os/os_sched_tbl.c  -o ${OBJECTDIR}/_ext/826229663/os_sched_tbl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/826229663/os_sched_tbl.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"fwk/app" -I"fwk/os" -I"../../../10_Resources/os" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/826229663/os_timers.o: ../../../10_Resources/os/os_timers.c  .generated_files/flags/default/2e345c2bc2532e18c4fe5af7226df942a5c47df6 .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/_ext/826229663" 
	@${RM} ${OBJECTDIR}/_ext/826229663/os_timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/826229663/os_timers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../10_Resources/os/os_timers.c  -o ${OBJECTDIR}/_ext/826229663/os_timers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/826229663/os_timers.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"fwk/app" -I"fwk/os" -I"../../../10_Resources/os" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/default/26558034317d98d6f371853e29d344d8d7f6b8e0 .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/clock.c  -o ${OBJECTDIR}/mcc_generated_files/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"fwk/app" -I"fwk/os" -I"../../../10_Resources/os" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/tmr2.o: mcc_generated_files/tmr2.c  .generated_files/flags/default/ea33159e6c3c7c5a142b4210976ed92f9f09c8b5 .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/tmr2.c  -o ${OBJECTDIR}/mcc_generated_files/tmr2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr2.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"fwk/app" -I"fwk/os" -I"../../../10_Resources/os" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/default/f7db345fd509add834159bbdfadb8c572fd4a1d6 .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"fwk/app" -I"fwk/os" -I"../../../10_Resources/os" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/default/923ed5bc34d6c5daeadd958f6c0af861773d24ed .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system.c  -o ${OBJECTDIR}/mcc_generated_files/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"fwk/app" -I"fwk/os" -I"../../../10_Resources/os" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/default/285e36713dfe0a6242db585260535fb001b80221 .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"fwk/app" -I"fwk/os" -I"../../../10_Resources/os" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/traps.o: mcc_generated_files/traps.c  .generated_files/flags/default/bc8125ac7a2c8f004b3d1e172b3667bd5b6489aa .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/traps.c  -o ${OBJECTDIR}/mcc_generated_files/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/traps.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"fwk/app" -I"fwk/os" -I"../../../10_Resources/os" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/f89a24f9fd39339267fdc4860e85f0563b402662 .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"fwk/app" -I"fwk/os" -I"../../../10_Resources/os" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/1f1805c03927836084097ff69c50485dd680604c .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"fwk/app" -I"fwk/os" -I"../../../10_Resources/os" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/fwk/app/app.o: fwk/app/app.c  .generated_files/flags/default/78cb3fe850bac44237277948bb023d66e8c2e83c .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/fwk/app" 
	@${RM} ${OBJECTDIR}/fwk/app/app.o.d 
	@${RM} ${OBJECTDIR}/fwk/app/app.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  fwk/app/app.c  -o ${OBJECTDIR}/fwk/app/app.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/fwk/app/app.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"fwk/app" -I"fwk/os" -I"../../../10_Resources/os" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/826229663/os.o: ../../../10_Resources/os/os.c  .generated_files/flags/default/a6451c110d1c0141a5ed2c11e941945e7fd35633 .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/_ext/826229663" 
	@${RM} ${OBJECTDIR}/_ext/826229663/os.o.d 
	@${RM} ${OBJECTDIR}/_ext/826229663/os.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../10_Resources/os/os.c  -o ${OBJECTDIR}/_ext/826229663/os.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/826229663/os.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"fwk/app" -I"fwk/os" -I"../../../10_Resources/os" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/826229663/os_alarms.o: ../../../10_Resources/os/os_alarms.c  .generated_files/flags/default/a04b08485aab654e33ae18b1beb19904aa85195e .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/_ext/826229663" 
	@${RM} ${OBJECTDIR}/_ext/826229663/os_alarms.o.d 
	@${RM} ${OBJECTDIR}/_ext/826229663/os_alarms.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../10_Resources/os/os_alarms.c  -o ${OBJECTDIR}/_ext/826229663/os_alarms.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/826229663/os_alarms.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"fwk/app" -I"fwk/os" -I"../../../10_Resources/os" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/826229663/os_ipc.o: ../../../10_Resources/os/os_ipc.c  .generated_files/flags/default/f34bd6a6465e9b7d88bff37ea29acd845a7f2c38 .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/_ext/826229663" 
	@${RM} ${OBJECTDIR}/_ext/826229663/os_ipc.o.d 
	@${RM} ${OBJECTDIR}/_ext/826229663/os_ipc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../10_Resources/os/os_ipc.c  -o ${OBJECTDIR}/_ext/826229663/os_ipc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/826229663/os_ipc.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"fwk/app" -I"fwk/os" -I"../../../10_Resources/os" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/826229663/os_sched_tbl.o: ../../../10_Resources/os/os_sched_tbl.c  .generated_files/flags/default/fa134bf5f3242558e630dc60c8f596dce86f144c .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/_ext/826229663" 
	@${RM} ${OBJECTDIR}/_ext/826229663/os_sched_tbl.o.d 
	@${RM} ${OBJECTDIR}/_ext/826229663/os_sched_tbl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../10_Resources/os/os_sched_tbl.c  -o ${OBJECTDIR}/_ext/826229663/os_sched_tbl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/826229663/os_sched_tbl.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"fwk/app" -I"fwk/os" -I"../../../10_Resources/os" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/826229663/os_timers.o: ../../../10_Resources/os/os_timers.c  .generated_files/flags/default/e25d24177e7e3e5943a9d380f79481bcccc913bd .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/_ext/826229663" 
	@${RM} ${OBJECTDIR}/_ext/826229663/os_timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/826229663/os_timers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../10_Resources/os/os_timers.c  -o ${OBJECTDIR}/_ext/826229663/os_timers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/826229663/os_timers.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"fwk/app" -I"fwk/os" -I"../../../10_Resources/os" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
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
${DISTDIR}/LWSF_Pic24fj256gb210.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/LWSF_Pic24fj256gb210.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -mreserve=data@0x800:0x81B -mreserve=data@0x81C:0x81D -mreserve=data@0x81E:0x81F -mreserve=data@0x820:0x821 -mreserve=data@0x822:0x823 -mreserve=data@0x824:0x827 -mreserve=data@0x82A:0x84F   -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,--defsym=__MPLAB_DEBUGGER_ICD4=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
${DISTDIR}/LWSF_Pic24fj256gb210.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/LWSF_Pic24fj256gb210.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	${MP_CC_DIR}\\xc16-bin2hex ${DISTDIR}/LWSF_Pic24fj256gb210.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   -mdfp="${DFP_DIR}/xc16" 
	
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
