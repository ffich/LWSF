/************************************************************************
*                               OS Alarms                         
*************************************************************************
* FileName:         os_alarms.h                                   
* Platform:         Pic32                                               
* Author:           F.Ficili                                            
*                                                                       
* Software License Agreement:                                           
*                                                                       
* THIS SOFTWARE IS PROVIDED IN AN "AS IS" CONDITION. NO WARRANTIES,     
* WHETHER EXPRESS, IMPLIED OR STATUTORY, INCLUDING, BUT NOT LIMITED     
* TO, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A           
* PARTICULAR PURPOSE APPLY TO THIS SOFTWARE. THE AUTHOR SHALL NOT,      
* IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL OR            
* CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.                     
*                                                                       
* --------------------------------------------------------------------- 
* File History:                                                                                         
* --------------------------------------------------------------------- 
* Author       Date        Version      Comment                         
* ---------------------------------------------------------------------	
* F.Ficili     03/11/19    1.0          First release.                  
************************************************************************/

#ifndef OS_ALARMS_H
#define OS_ALARMS_H

/************************************************************************
* Includes
************************************************************************/
#include "common.h"

/************************************************************************
* EXPORTED Defines
************************************************************************/
/* Number of Os alarms */
#define OS_ALARM_NUMBER                                     ((uint8_t)(50))

/************************************************************************
* EXPORTED Typedef
************************************************************************/
/* Alarm callback */
typedef void (*OsAlarmCallbackType) (void);

/* OsAlarm type */
typedef struct 
{
   uint8_t Enabled;
   uint32_t Counter;
   uint32_t AlarmTime;
   OsAlarmCallbackType AlrmCbk; 
} OsAlarmType;

/************************************************************************
* EXPORTED Variables
************************************************************************/


/************************************************************************
* EXPORTED Functions
************************************************************************/
/* Set an OS alarm */
void Os_SetOsAlarm (uint16_t OsAlarmId, uint32_t OsAlarmTimeout, OsAlarmCallbackType AlarmCallback);
/* Clear an OS alarm */
void Os_ClearOsAlarm (uint8_t OsAlarmId);
/* Process alarms main function */
void Os_ProcessOsAlarms (void);

#endif	/* OS_ALARMS_H */

