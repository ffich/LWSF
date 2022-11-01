/************************************************************************
*                               OS Scheduler                         
*************************************************************************
* FileName:         os_sched.c                                                                                
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
#include "common.h"
#include "os.h"
#include "os_sched_tbl.h"
#include "os_timers.h"
#include "os_alarms.h"
#include "os_cfg.h"

/************************************************************************
* Defines
************************************************************************/
/* Forever define for main while loop */
#define FOREVER                                          ((uint8_t)(1))
/* Scheduler counter threshold define */
#define SCHED_COUNTER_TH                                 ((SCHED_TIMER_FREQ_HZ*DESIRED_SCHED_PERIOD_MS)/1000)

/************************************************************************
* Typedefs
************************************************************************/


/************************************************************************
* LOCAL Variables
************************************************************************/


/************************************************************************
* GLOBAL Variables
************************************************************************/
/* Main system timebase */
MainSystemTimebaseType MainSystemTimebaseFlag = WAIT_TRIGGER_PHASE;

/************************************************************************
* LOCAL Function Prototypes
************************************************************************/
/* Service function for task initialization */
void InitializeTasks (void);
/* Service function for task scheduling */
void ScheduleTasks (void);
/* Manage the schedule flags with the right timing */
void UpdateSchFlag (void);

/************************************************************************
* LOCAL Function Implementations
************************************************************************/
/************************************************************************   
* Function:     InitializeTasks
* Input:        None
* Output:       None
* Author:       F.Ficili
* Description:  Function used to initialize all tasks.
************************************************************************/
void InitializeTasks (void)
{
   /* Index of active task */
   uint8_t ActiveTaskIndex = 0u;
    
   /* Initialize all the tasks */ 
   for (ActiveTaskIndex = 0u; ActiveTaskIndex < TaskNumber; ActiveTaskIndex++)
   {      
      /* But check if an initialization function actually exists */
      if (TaskTable[ActiveTaskIndex].InitFnc != NULL)
      {      
         TaskTable[ActiveTaskIndex].InitFnc();
      }
   }    
}

/************************************************************************
* Function:     ScheduleTasks
* Input:        None
* Output:       None
* Author:       F.Ficili	
* Description:  Scheduling algorithm.       
************************************************************************/
void ScheduleTasks (void)
{
   /* Index of active task */
   uint8_t ActiveTaskIndex = 0u;

   /* Schedule Task Execution */  
   for (ActiveTaskIndex = 0u; ActiveTaskIndex < TaskNumber; ActiveTaskIndex++)
   {
      TaskTable[ActiveTaskIndex].Counter++;
      if (TaskTable[ActiveTaskIndex].Counter >= (TaskTable[ActiveTaskIndex].TimeoutMs/SCHED_COUNTER_TH))
      {
         TaskTable[ActiveTaskIndex].Counter = COUNTER_INIT;
         TaskTable[ActiveTaskIndex].State = TASK_RUNNING;
         TaskTable[ActiveTaskIndex].Task();
      }
      else
      {           
         TaskTable[ActiveTaskIndex].State = TASK_IDLE;
      }
   }    
}

/************************************************************************   
* Function:     UpdateSchFlag
* Input:        None
* Output:       None
* Author:       F.Ficili
* Description:  Manage the schedule flags with the right timing.
************************************************************************/
void UpdateSchFlag (void)
{
   /* Local counter */
   static uint16_t InterruptCounter = 0;
   
   /* Increment local counter */
   InterruptCounter++;
   /* If the scheduler period is elapsed */
   if (InterruptCounter >= SCHED_COUNTER_TH)
   {
      /* Reset counter */
      InterruptCounter = 0;
      /* Main scheduler timebase flag */
      MainSystemTimebaseFlag = CALL_TASK_PHASE;
   }   
}

/************************************************************************   
* Function:     UpdateOsCounters
* Input:        None
* Output:       None
* Author:       F.Ficili
* Description:  Function used to increment Os-related counters.
************************************************************************/
void UpdateOsCounters (void)
{
   /* Increment Os tick counter, this counter wraps after 4.294.967.296 counts */
   OsTmr_OsTickCounter++;
}

/************************************************************************
* GLOBAL Function Implementations
************************************************************************/

/************************************************************************
* Function:     Os_MainScheduler
* Input:        None
* Output:       None
* Author:       F.Ficili	
* Description:  Main system scheduler.	       
************************************************************************/
void Os_MainScheduler (void)
{
   /* Initialize all Tasks */
   InitializeTasks();
   
   /* Infinite loop */
   while(FOREVER)
   {
      /* If the scheduler timer has expired */
      if (MainSystemTimebaseFlag == CALL_TASK_PHASE)
      {   
         /* Start scheduling cycle */
         ScheduleTasks();
         /* Reset flag */
         MainSystemTimebaseFlag = WAIT_TRIGGER_PHASE;
      }
   }
}

/************************************************************************   
* Function:     Os_SchmIntService
* Input:        None
* Output:       None
* Author:       F.Ficili
* Description:  Manage the various Scheduler interrupt services.
************************************************************************/
void Os_SchmIntService (void)
{
   /* Update scheduler flag */
   UpdateSchFlag();
   /* Update Os-related counters */
   UpdateOsCounters();
   /* Process Os alarms */
   Os_ProcessOsAlarms();
}