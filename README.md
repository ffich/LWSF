# Description
LWSF (Light-Weight Software Framework) is, as the name suggests, a lightweight SW Framework for Microchip devices. It's based on a simple non-preemptive OS implementation, copuled with MCHP code generators: MCC Classic, Melody and Harmony.

# Motivation
The main motivation behind the realization of LWSF is the needs to have a simple framework to be used for the developmnent of projects with MCHP parts. This includes PIC16, PIC18, PIC24, dsPIC and PIC32, but also AVR and SAM devices. Due its simple implemetation, LWSF is derivative-indipendent, with the HW dependency give essentially by MCC. Neverthelesse the FWK is powerfull, as MCC provides the capability of generates drivers for the peripherals, while the os core provides a simple mean for better structuring the SW architecture and provides some basic services not implemented by MCC (virtual timing, alarms, schedule tables and a bit of IPCs). There is not dependencies from the FWK core on the MCC version used, so MCC Classic, Melody and Harmony are all supported. 

# Modules List
Currently the FWK only provides the OS core, but other functionalites may be added in the future

# OS
The OS implementation is a simple yet powerfull non-preemptive RTOS. 

# Integration between the FWK core and MCC
The integration between the OS core and MCC is really simple. Essentially the OS needs a timer interrupt (os tick) to run, so MCC has to be configured to provide such a timer interrupt. You ca choose any timer you want, but the timer interrupt period has to match the OS configuration, that can be found on os_cfg.h file. 

You have to set the following two macros:

/* Frequency of scheduler timer */
#define SCHED_TIMER_FREQ_HZ                              ((uint16_t)(1000))
/* Desired scheduler period */
#define DESIRED_SCHED_PERIOD_MS                          ((uint16_t)(1))

The first one indicates the frequency of the timer interrupt that will drive the OS tick in Hertz, and the second one the desired main scheduler period in ms. Once the timer interrupt is configured and the os configration has been properly aligned, in the timer callback you have to call the following API:

void OS_Tick_Callback (void)
{
    Os_SchmIntService();
}

Additionally, you have to call in your main function (after the system initialization done by MCC) the Os_MainScheduler() API, as in the example below:

int main(void)
{
    // initialize the device
    SYSTEM_Initialize();
    
    // Start OS
    Os_MainScheduler();

    return 1;
}

That's it! The scheduler will then run the confgured schedule table and you can use the other OS services in conjuntion with the drivers generated with MCC.
