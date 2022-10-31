/************************************************************************
*                               OS Alarms                         
*************************************************************************
* FileName:         os_alarms.c                                   
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

/************************************************************************
* Includes
************************************************************************/
#include "os_alarms.h"
#include "common.h"

/************************************************************************
* Defines
************************************************************************/


/************************************************************************
* Typedefs
************************************************************************/


/************************************************************************
* LOCAL Variables
************************************************************************/
/* Os alarm array */
OsAlarmType OsAlarms[OS_ALARM_NUMBER];

/************************************************************************
* GLOBAL Variables
************************************************************************/


/************************************************************************
* LOCAL Function Prototypes
************************************************************************/


/************************************************************************
* LOCAL Function Implementations
************************************************************************/


/************************************************************************
* GLOBAL Function Implementations
************************************************************************/

/************************************************************************   
* Function:     Os_SetOsAlarm
* Input:        uint8_t OsAlarmId
*               uint32_t OsAlarmTimeout
*               OsAlarmCallbackType AlarmCallback 
* Output:       None
* Author:       F.Ficili
* Description:  Set an OS alarm.
************************************************************************/
void Os_SetOsAlarm (uint16_t OsAlarmId, uint32_t OsAlarmTimeout, OsAlarmCallbackType AlarmCallback)
{
   /* Enable alarm */
   OsAlarms[OsAlarmId].Enabled = STD_TRUE;
   /* Reset counter */
   OsAlarms[OsAlarmId].Counter = 0;
   /* Set alarm time */
   OsAlarms[OsAlarmId].AlarmTime = OsAlarmTimeout;
   /* Register callback */
   OsAlarms[OsAlarmId].AlrmCbk = AlarmCallback;
}

/************************************************************************   
* Function:     Os_ClearOsAlarm
* Input:        uint8_t OsAlarmId
* Output:       None
* Author:       F.Ficili
* Description:  Clear an OS alarm.
************************************************************************/
void Os_ClearOsAlarm (uint8_t OsAlarmId)
{
   /* Enable alarm */
   OsAlarms[OsAlarmId].Enabled = STD_FALSE;
   /* Reset counter */
   OsAlarms[OsAlarmId].Counter = 0;
   /* Reset alarm time */
   OsAlarms[OsAlarmId].AlarmTime = 0;
}

/************************************************************************   
* Function:     Os_ProcessOsAlarms
* Input:        None
* Output:       None
* Author:       F.Ficili
* Description:  Process alarms main function.
************************************************************************/
void Os_ProcessOsAlarms (void)
{
   uint16_t AlarmIndex;
   
   /* Scroll alarm list */
   for (AlarmIndex = 0; AlarmIndex < OS_ALARM_NUMBER; AlarmIndex++)
   {
      /* If the alarm is enabled */
      if (OsAlarms[AlarmIndex].Enabled == STD_TRUE)
      {
         /* Increment counter */
         OsAlarms[AlarmIndex].Counter++;
         /* Check if the alarm is expired */
         if (OsAlarms[AlarmIndex].Counter >= OsAlarms[AlarmIndex].AlarmTime)
         { 
            /* Clear alarm... */
            Os_ClearOsAlarm(AlarmIndex);  
            /* ... check if the callback is valid... */
            if (OsAlarms[AlarmIndex].AlrmCbk != NULL)
            {
               /* ... and trigger callback */
               OsAlarms[AlarmIndex].AlrmCbk();            
            }
         }  
      }
   }
}