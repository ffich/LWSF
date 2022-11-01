/************************************************************************
*                              OS SCH TBL CFG                        
*************************************************************************
* FileName:         os_sch_tbl_cfg.h                                                                             
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
* F.Ficili     11/01/22    1.0          First release.                  
************************************************************************/

#ifndef OS_SCH_TBL_CFG_H
#define OS_SCH_TBL_CFG_H

/************************************************************************
* Includes
************************************************************************/
#include "os_sched_tbl.h"
#include "app.h"

/************************************************************************
* Timing Defines
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
* OS Schedule Table
************************************************************************/

/* Schedule Table structure initialization */
SchedTblType TaskTable[] =
{
  /* ------------------------------------ Tasks ------------------------------ */ 
  /* ------------------------------------------------------------------------- */
  /* Task           InitFnc           State          Counter          Timeout  */
  /* ------------------------------------------------------------------------- */   
  /* --------------------------------- Tasks --------------------------------- */   
  {MyTask,          MyTask_Init,     TASK_IDLE,     COUNTER_INIT,    PERIOD_500_MS}, 
  /* ------------------------------------------------------------------------- */
};

#endif /* OS_SCH_TBL_CFG_H */

