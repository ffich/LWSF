/************************************************************************
*                               OS Schedule Table                         
*************************************************************************
* FileName:         os_sched_tbl.h                                   
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

#ifndef OS_SCHED_TBL_H
#define OS_SCHED_TBL_H

/************************************************************************
* Includes
************************************************************************/
#include "common.h"

/************************************************************************
* Defines
************************************************************************/
/* Counter init value */
#define COUNTER_INIT                                     ((uint8_t)(0))

/************************************************************************
* Typedef
************************************************************************/
/* Task State Type */
typedef enum _TaskStateType
{
   TASK_IDLE         = 0,
   TASK_RUNNING      = 1,
} TaskStateType;

/* Schedule Table Type */
typedef struct _SchedTblType
{
   void (*Task) (void);
   void (*InitFnc) (void);
   TaskStateType State;
   uint16_t Counter;
   const uint16_t TimeoutMs;
} SchedTblType;

/************************************************************************
* Global Variables
************************************************************************/
/* Task Table */
extern SchedTblType TaskTable[];
/* Task Number Constant */
extern const uint16_t TaskNumber;

#endif /* OS_SCHED_TBL_H */