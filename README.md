# Description
LWSF (Light-Weight Software Framework) is, as the name suggests, a lightweight SW Framework for Microchip devices. It's based on a simple non-preemptive OS implementation, copuled with MCHP code generators: MCC Classic, Melody and Harmony.

# Motivation
The main motivation behind the realization of LWSF is the needs to have a simple framework to be used for the developmnent of projects with MCHP parts. This includes PIC16, PIC18, PIC24, dsPIC and PIC32, but also AVR and SAM devices. Due its simple implemetation, LWSF is derivative-indipendent, with the HW dependency give essentially by MCC. Nevertheless the FWK is powerfull, as MCC provides the capability of generates drivers for the peripherals, while the os core provides a simple mean for better structuring the SW architecture and provides some basic services not implemented by MCC (virtual timing, alarms, schedule tables and a bit of IPCs). There are no dependencies on the MCC version used, so MCC Classic, Melody and Harmony are all supported. 

# Modules List
Currently the FWK only provides the OS core, but other functionalites may be added in the future

# OS
The OS implementation is a simple yet powerfull non-preemptive RTOS. 

# Integration between the FWK core and MCC
The integration between the OS core and MCC is really simple. Essentially the OS needs a timer interrupt (os tick) to run, so MCC has to be configured to provide such a timer interrupt. You can choose any timer you want, but the timer interrupt period has to match the OS configuration on os_cfg.h file. 

You have to set the following two macros:

```
/* Frequency of scheduler timer */
#define SCHED_TIMER_FREQ_HZ                              ((uint16_t)(1000))
/* Desired scheduler period */
#define DESIRED_SCHED_PERIOD_MS                          ((uint16_t)(1))
```

The first one indicates the frequency of the timer interrupt that will drive the OS tick in Hertz, and the second one the desired main scheduler period in ms. This files contains also other OS configuration parameters (like the number of OS alarms available in the specific configuration). Refer to specific examples for more information.

Once the timer interrupt is configured and the os configration has been properly aligned, in the timer callback you have to call the following API:

```
void OS_Tick_Callback (void)
{
    Os_SchmIntService();
}
```

# OS Configuration
Once the OS tick is correctly configured you can go on with the rest of OS configuration. One of the crucial paramter to configure is the task table. This table define all the periodic behavior of LWSF applications. To configure this table you simply need to fill it with your tasks, the corresponding init function and the timout period. Here is the detail of the Task properties to be confgured:

**Task**: is the name of the function that implements the task itself. LWSF expects that you then define an appropriate user function using the TASK() macro in one of your application files (e.g. Task(MyTask). This task will be then run periodcally at the Timout rate.
**InitFnc**: this it the Task initialization function. It will be called once before the scheduler starts. LWSF expects that you then define an appropriate user function using the SETUP() macro in one of your application files (e.g. SETUP(MyTask_Init). 
**State**: the initial state of the task. Use the macro TASK_IDLE.
**Counter**: the initial value of the counter for the task. Use the macro COUNTER_INIT.
**Timeout**: the period of the task in ms. You can put the integer value that you want, like 1, 5, 1000...etc. Some pre-defined timing macros are provided in the templates.

So a simple task definition would be look like in the snippets below:

```
/* Schedule Table structure initialization */
SchedTblType TaskTable[] =
{
  /* ------------------------------------ Tasks ------------------------------ */ 
  /* ------------------------------------------------------------------------- */
  /* Task           InitFnc           State          Counter          Timeout  */
  /* ------------------------------------------------------------------------- */   
  /* --------------------------------- Tasks --------------------------------- */   
  {MyTask,          MyTask_Init,     TASK_IDLE,     COUNTER_INIT,    PERIOD_250_MS}, 
  /* ------------------------------------------------------------------------- */
};
```
# OS Lifecycle
In order to start the OS, you have to call in your main function (after the system initialization done by MCC) the Os_MainScheduler() API, like in the example below:

```
int main(void)
{
    /* initialize the device */
    SYSTEM_Initialize();
    
    /* Start OS */
    Os_MainScheduler();

    return 1;
}
```

That's it! The scheduler will then run the confgured schedule table and you can use the other OS services in conjuntion with the drivers generated with MCC.

# Samples
Some samples are provides with a simple task running at 1s and bliking an LED. All the examples have been developed for the Explorer16/32 development board, using MPLAB X 6.0.0 and MCC.

Current samples list:
- LWSF_PIC24FJ256GB210: simple LED blinking demo
