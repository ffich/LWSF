/************************************************************************
*                              OS CFG                        
*************************************************************************
* FileName:         os_cfg.h                                                                             
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

#ifndef OS_CFG_H
#define OS_CFG_H

/************************************************************************
* Includes
************************************************************************/


/************************************************************************
* EXPORTED Defines
************************************************************************/

/************************************************************************
* Scheduler timing configuration
* ------------------------------
* Set: 
* - SCHED_TIMER_FREQ_HZ          --> In Hertz!!!
* - DESIRED_SCHED_PERIOD_MS      --> In ms!!!
* To obtain the desired scheduler period with the desired timer freq.
************************************************************************/
/* Frequency of scheduler timer */
#define SCHED_TIMER_FREQ_HZ                              ((uint16_t)(1000))
/* Desired scheduler period */
#define DESIRED_SCHED_PERIOD_MS                          ((uint16_t)(1))

/************************************************************************
* OS Alarms configuration
************************************************************************/
/* Number of Os alarms */
#define OS_ALARM_NUMBER                                  ((uint8_t)(2))

/* Os Alarm indexes */
#define ALARM_1                                          ((uint8_t)(1))
#define ALARM_2                                          ((uint8_t)(2))

#endif /* OS_CFG_H */