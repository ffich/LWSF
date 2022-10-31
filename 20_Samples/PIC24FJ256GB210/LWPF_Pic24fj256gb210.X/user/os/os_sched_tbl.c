/************************************************************************
*                               OS Schedule Table                         
*************************************************************************
* FileName:         os_sched_tbl.c                                   
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
#include "os_sched_tbl.h"
#include "os.h"
#include "common.h"
#include "os_cfg.h"

/************************************************************************
* Defines
************************************************************************/
/* Constants period in ms */
#define PERIOD_1_MS                                      ((uint16_t)(1))
#define PERIOD_5_MS                                      ((uint16_t)(5))
#define PERIOD_10_MS                                     ((uint16_t)(10))
#define PERIOD_50_MS                                     ((uint16_t)(50))
#define PERIOD_100_MS                                    ((uint16_t)(100))
#define PERIOD_200_MS                                    ((uint16_t)(200))
#define PERIOD_500_MS                                    ((uint16_t)(500))
#define PERIOD_1000_MS                                   ((uint16_t)(1000))

/************************************************************************
* Global Variables
************************************************************************/

/* Schedule Table structure initialization */
SchedTblType TaskTable[] =
{
  /* ------------------------------------ Tasks ------------------------------ */ 
  /* ------------------------------------------------------------------------- */
  /* Task           InitFnc           State          Counter          Timeout  */
  /* ------------------------------------------------------------------------- */   
  /* --------------------------------- Tasks --------------------------------- */   
  {MyTask,          MyTask_Init,     TASK_IDLE,     COUNTER_INIT,    PERIOD_200_MS}, 
  /* ------------------------------------------------------------------------- */
};

/* Task number constant */
const uint16_t TaskNumber = (uint16_t)(sizeof(TaskTable)/sizeof(SchedTblType));

