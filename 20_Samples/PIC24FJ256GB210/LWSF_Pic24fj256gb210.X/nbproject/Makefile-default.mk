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
SOURCEFILES_QUOTED_IF_SPACED=fwk/app/app.c mcc_generated_files/clock.c mcc_generated_files/tmr2.c mcc_generated_files/pin_manager.c mcc_generated_files/system.c mcc_generated_files/interrupt_manager.c mcc_generated_files/traps.c mcc_generated_files/mcc.c mcc_generated_files/uart2.c ../../../10_Resources/os/os.c ../../../10_Resources/os/os_alarms.c ../../../10_Resources/os/os_ipc.c ../../../10_Resources/os/os_sched_tbl.c ../../../10_Resources/os/os_timers.c main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/fwk/app/app.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/tmr2.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/traps.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/uart2.o ${OBJECTDIR}/_ext/826229663/os.o ${OBJECTDIR}/_ext/826229663/os_alarms.o ${OBJECTDIR}/_ext/826229663/os_ipc.o ${OBJECTDIR}/_ext/826229663/os_sched_tbl.o ${OBJECTDIR}/_ext/826229663/os_timers.o ${OBJECTDIR}/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/fwk/app/app.o.d ${OBJECTDIR}/mcc_generated_files/clock.o.d ${OBJECTDIR}/mcc_generated_files/tmr2.o.d ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d ${OBJECTDIR}/mcc_generated_files/system.o.d ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d ${OBJECTDIR}/mcc_generated_files/traps.o.d ${OBJECTDIR}/mcc_generated_files/mcc.o.d ${OBJECTDIR}/mcc_generated_files/uart2.o.d ${OBJECTDIR}/_ext/826229663/os.o.d ${OBJECTDIR}/_ext/826229663/os_alarms.o.d ${OBJECTDIR}/_ext/826229663/os_ipc.o.d ${OBJECTDIR}/_ext/826229663/os_sched_tbl.o.d ${OBJECTDIR}/_ext/826229663/os_timers.o.d ${OBJECTDIR}/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/fwk/app/app.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/tmr2.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/traps.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/uart2.o ${OBJECTDIR}/_ext/826229663/os.o ${OBJECTDIR}/_ext/826229663/os_alarms.o ${OBJECTDIR}/_ext/826229663/os_ipc.o ${OBJECTDIR}/_ext/826229663/os_sched_tbl.o ${OBJECTDIR}/_ext/826229663/os_timers.o ${OBJECTDIR}/main.o

# Source Files
SOURCEFILES=fwk/app/app.c mcc_generated_files/clock.c mcc_generated_files/tmr2.c mcc_generated_files/pin_manager.c mcc_generated_files/system.c mcc_generated_files/interrupt_manager.c mcc_generated_files/traps.c mcc_generated_files/mcc.c mcc_generated_files/uart2.c ../../../10_Resources/os/os.c ../../../10_Resources/os/os_alarms.c ../../../10_Resources/os/os_ipc.c ../../../10_Resources/os/os_sched_tbl.c ../../../10_Resources/os/os_timers.c main.c



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
${OBJECTDIR}/fwk/app/app.o: fwk/app/app.c  .generated_files/flags/default/53dee6251ea224ee62ffed3df32b3db88d3bde65 .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/fwk/app" 
	@${RM} ${OBJECTDIR}/fwk/app/app.o.d 
	@${RM} ${OBJECTDIR}/fwk/app/app.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  fwk/app/app.c  -o ${OBJECTDIR}/fwk/app/app.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/fwk/app/app.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"fwk/app" -I"fwk/os_cfg" -I"mcc_generated_files" -I"../../../10_Resources/os" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/default/1f9e158d9af15dafc9038023f5d45d4affc8e42b .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/clock.c  -o ${OBJECTDIR}/mcc_generated_files/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"fwk/app" -I"fwk/os_cfg" -I"mcc_generated_files" -I"../../../10_Resources/os" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/tmr2.o: mcc_generated_files/tmr2.c  .generated_files/flags/default/b4e2514dc4900aa4496ecb7e71ec2c7a0de321ce .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/tmr2.c  -o ${OBJECTDIR}/mcc_generated_files/tmr2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr2.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"fwk/app" -I"fwk/os_cfg" -I"mcc_generated_files" -I"../../../10_Resources/os" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/default/abeafda38a8372946ded5af0465215b75f8ccbe1 .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"fwk/app" -I"fwk/os_cfg" -I"mcc_generated_files" -I"../../../10_Resources/os" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/default/dbc0e4433330fe7792c5d888bca5db2c09666a9f .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system.c  -o ${OBJECTDIR}/mcc_generated_files/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"fwk/app" -I"fwk/os_cfg" -I"mcc_generated_files" -I"../../../10_Resources/os" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/default/5d88c41c5953e13fa6861b36a328c42e6e2f8ee9 .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"fwk/app" -I"fwk/os_cfg" -I"mcc_generated_files" -I"../../../10_Resources/os" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/traps.o: mcc_generated_files/traps.c  .generated_files/flags/default/a884c45999e80ea54666b3e28ced91b9ee04ff10 .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/traps.c  -o ${OBJECTDIR}/mcc_generated_files/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/traps.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"fwk/app" -I"fwk/os_cfg" -I"mcc_generated_files" -I"../../../10_Resources/os" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/3560009c7cc287e4de038a771cd4dc01157939c1 .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"fwk/app" -I"fwk/os_cfg" -I"mcc_generated_files" -I"../../../10_Resources/os" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/uart2.o: mcc_generated_files/uart2.c  .generated_files/flags/default/31eb97d26ad4fd8592f39235f000556de17ac06d .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart2.c  -o ${OBJECTDIR}/mcc_generated_files/uart2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart2.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"fwk/app" -I"fwk/os_cfg" -I"mcc_generated_files" -I"../../../10_Resources/os" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/826229663/os.o: ../../../10_Resources/os/os.c  .generated_files/flags/default/4a8f645f50b40b7e8c148a15cc89ff2474ec1fc .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/_ext/826229663" 
	@${RM} ${OBJECTDIR}/_ext/826229663/os.o.d 
	@${RM} ${OBJECTDIR}/_ext/826229663/os.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../10_Resources/os/os.c  -o ${OBJECTDIR}/_ext/826229663/os.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/826229663/os.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"fwk/app" -I"fwk/os_cfg" -I"mcc_generated_files" -I"../../../10_Resources/os" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/826229663/os_alarms.o: ../../../10_Resources/os/os_alarms.c  .generated_files/flags/default/de96d11b98268bdf27fc23dbb40ed7e0eba1276e .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/_ext/826229663" 
	@${RM} ${OBJECTDIR}/_ext/826229663/os_alarms.o.d 
	@${RM} ${OBJECTDIR}/_ext/826229663/os_alarms.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../10_Resources/os/os_alarms.c  -o ${OBJECTDIR}/_ext/826229663/os_alarms.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/826229663/os_alarms.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"fwk/app" -I"fwk/os_cfg" -I"mcc_generated_files" -I"../../../10_Resources/os" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/826229663/os_ipc.o: ../../../10_Resources/os/os_ipc.c  .generated_files/flags/default/1add47273b1d72be296080fe39499d24b04b0415 .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/_ext/826229663" 
	@${RM} ${OBJECTDIR}/_ext/826229663/os_ipc.o.d 
	@${RM} ${OBJECTDIR}/_ext/826229663/os_ipc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../10_Resources/os/os_ipc.c  -o ${OBJECTDIR}/_ext/826229663/os_ipc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/826229663/os_ipc.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"fwk/app" -I"fwk/os_cfg" -I"mcc_generated_files" -I"../../../10_Resources/os" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/826229663/os_sched_tbl.o: ../../../10_Resources/os/os_sched_tbl.c  .generated_files/flags/default/b4a3e3e21547360008fe85d5e7865eb79f7d06d6 .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/_ext/826229663" 
	@${RM} ${OBJECTDIR}/_ext/826229663/os_sched_tbl.o.d 
	@${RM} ${OBJECTDIR}/_ext/826229663/os_sched_tbl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../10_Resources/os/os_sched_tbl.c  -o ${OBJECTDIR}/_ext/826229663/os_sched_tbl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/826229663/os_sched_tbl.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"fwk/app" -I"fwk/os_cfg" -I"mcc_generated_files" -I"../../../10_Resources/os" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/826229663/os_timers.o: ../../../10_Resources/os/os_timers.c  .generated_files/flags/default/e6050a0e38795020eb0426978d09132267d41d29 .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/_ext/826229663" 
	@${RM} ${OBJECTDIR}/_ext/826229663/os_timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/826229663/os_timers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../10_Resources/os/os_timers.c  -o ${OBJECTDIR}/_ext/826229663/os_timers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/826229663/os_timers.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"fwk/app" -I"fwk/os_cfg" -I"mcc_generated_files" -I"../../../10_Resources/os" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/351bb2d609c55063dcfcce253ee5c9e0a0e13270 .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"fwk/app" -I"fwk/os_cfg" -I"mcc_generated_files" -I"../../../10_Resources/os" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/fwk/app/app.o: fwk/app/app.c  .generated_files/flags/default/1d421b6eae2124a8da06a049426f47f385c39aff .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/fwk/app" 
	@${RM} ${OBJECTDIR}/fwk/app/app.o.d 
	@${RM} ${OBJECTDIR}/fwk/app/app.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  fwk/app/app.c  -o ${OBJECTDIR}/fwk/app/app.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/fwk/app/app.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"fwk/app" -I"fwk/os_cfg" -I"mcc_generated_files" -I"../../../10_Resources/os" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/default/c602dc08400824216519ac481dfe620e02c54e05 .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/clock.c  -o ${OBJECTDIR}/mcc_generated_files/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"fwk/app" -I"fwk/os_cfg" -I"mcc_generated_files" -I"../../../10_Resources/os" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/tmr2.o: mcc_generated_files/tmr2.c  .generated_files/flags/default/e53e3fdd58a255841533d1228ed016386d320f85 .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/tmr2.c  -o ${OBJECTDIR}/mcc_generated_files/tmr2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr2.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"fwk/app" -I"fwk/os_cfg" -I"mcc_generated_files" -I"../../../10_Resources/os" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/default/c90ddb8fafd390c1361b518160bdb84112bb9774 .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"fwk/app" -I"fwk/os_cfg" -I"mcc_generated_files" -I"../../../10_Resources/os" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/default/769faf47ef925e5ef6b26faaf976df0b18d9b87b .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system.c  -o ${OBJECTDIR}/mcc_generated_files/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"fwk/app" -I"fwk/os_cfg" -I"mcc_generated_files" -I"../../../10_Resources/os" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/default/82b036a4c993008a35fe79fed48160b2f0389cef .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"fwk/app" -I"fwk/os_cfg" -I"mcc_generated_files" -I"../../../10_Resources/os" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/traps.o: mcc_generated_files/traps.c  .generated_files/flags/default/923620dc9a331eac68de96b1bc372f4c6351a98 .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/traps.c  -o ${OBJECTDIR}/mcc_generated_files/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/traps.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"fwk/app" -I"fwk/os_cfg" -I"mcc_generated_files" -I"../../../10_Resources/os" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/3b67ce2cb4b7099df4351b48e1c02744a07a5e32 .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"fwk/app" -I"fwk/os_cfg" -I"mcc_generated_files" -I"../../../10_Resources/os" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/uart2.o: mcc_generated_files/uart2.c  .generated_files/flags/default/530a47887b0506501cd85fea9007bfe8f4f69ca1 .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart2.c  -o ${OBJECTDIR}/mcc_generated_files/uart2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart2.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"fwk/app" -I"fwk/os_cfg" -I"mcc_generated_files" -I"../../../10_Resources/os" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/826229663/os.o: ../../../10_Resources/os/os.c  .generated_files/flags/default/e8f5546867b51f8b4cf2aabc2fa3626e035e05 .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/_ext/826229663" 
	@${RM} ${OBJECTDIR}/_ext/826229663/os.o.d 
	@${RM} ${OBJECTDIR}/_ext/826229663/os.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../10_Resources/os/os.c  -o ${OBJECTDIR}/_ext/826229663/os.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/826229663/os.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"fwk/app" -I"fwk/os_cfg" -I"mcc_generated_files" -I"../../../10_Resources/os" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/826229663/os_alarms.o: ../../../10_Resources/os/os_alarms.c  .generated_files/flags/default/1c8b1af31987acd7ec805599db1087c6194887cb .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/_ext/826229663" 
	@${RM} ${OBJECTDIR}/_ext/826229663/os_alarms.o.d 
	@${RM} ${OBJECTDIR}/_ext/826229663/os_alarms.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../10_Resources/os/os_alarms.c  -o ${OBJECTDIR}/_ext/826229663/os_alarms.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/826229663/os_alarms.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"fwk/app" -I"fwk/os_cfg" -I"mcc_generated_files" -I"../../../10_Resources/os" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/826229663/os_ipc.o: ../../../10_Resources/os/os_ipc.c  .generated_files/flags/default/5b07a5d0fd7a184b568ccc05b5588fa9523032c4 .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/_ext/826229663" 
	@${RM} ${OBJECTDIR}/_ext/826229663/os_ipc.o.d 
	@${RM} ${OBJECTDIR}/_ext/826229663/os_ipc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../10_Resources/os/os_ipc.c  -o ${OBJECTDIR}/_ext/826229663/os_ipc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/826229663/os_ipc.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"fwk/app" -I"fwk/os_cfg" -I"mcc_generated_files" -I"../../../10_Resources/os" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/826229663/os_sched_tbl.o: ../../../10_Resources/os/os_sched_tbl.c  .generated_files/flags/default/d8aae9d0003ddc92f944d62191d2668548520c23 .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/_ext/826229663" 
	@${RM} ${OBJECTDIR}/_ext/826229663/os_sched_tbl.o.d 
	@${RM} ${OBJECTDIR}/_ext/826229663/os_sched_tbl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../10_Resources/os/os_sched_tbl.c  -o ${OBJECTDIR}/_ext/826229663/os_sched_tbl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/826229663/os_sched_tbl.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"fwk/app" -I"fwk/os_cfg" -I"mcc_generated_files" -I"../../../10_Resources/os" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/826229663/os_timers.o: ../../../10_Resources/os/os_timers.c  .generated_files/flags/default/c2797c969fcd4d8bd628827bacffa64c887e3209 .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}/_ext/826229663" 
	@${RM} ${OBJECTDIR}/_ext/826229663/os_timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/826229663/os_timers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../10_Resources/os/os_timers.c  -o ${OBJECTDIR}/_ext/826229663/os_timers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/826229663/os_timers.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"fwk/app" -I"fwk/os_cfg" -I"mcc_generated_files" -I"../../../10_Resources/os" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/e16e3938b9ef1793cf65c2059e81cc5b16d305e1 .generated_files/flags/default/ab8ebeae8ac99e7474cce51345fb35f25df71eb3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"fwk/app" -I"fwk/os_cfg" -I"mcc_generated_files" -I"../../../10_Resources/os" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
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
