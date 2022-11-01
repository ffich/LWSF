/************************************************************************
*                                OS                         
*************************************************************************
* FileName:         os.h                                                                              
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

#ifndef OS_H
#define OS_H

/************************************************************************
* Includes
************************************************************************/

/************************************************************************
* EXPORTED Defines
************************************************************************/

/************************************************************************
* EXPORTED Macros
************************************************************************/
/* Setup Function macro definition */
#define SETUP(x)                                         void x (void)
/* Task macro definition */
#define TASK(x)                                          void x (void)

/************************************************************************
* EXPORTED Typedef
************************************************************************/
/* Main system timebase flag type */
typedef enum MainSystemTimebaseEnum
{
   CALL_TASK_PHASE      = 0,
   WAIT_TRIGGER_PHASE   = 1,
} MainSystemTimebaseType;

/************************************************************************
* EXPORTED Variables
************************************************************************/
/* Main system timebase flag */
extern MainSystemTimebaseType MainSystemTimebaseFlag;

/************************************************************************
* EXPORTED Functions
************************************************************************/
/* System main scheduler */
void Os_MainScheduler (void);
/* Manage the various Scheduler interrupt services */
void Os_SchmIntService (void);

#endif /* OS_H */