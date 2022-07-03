#pragma once
#ifndef CTASK_FILE
#define CTASK_FILE

#include "FreeRTOS.h"
#include "task.h"
#include "stm32f4xx_hal.h"
#include "semphr.h"
#include "timers.h"



#define STACK_SIZE 128
#define HAS_SEGGER_SYSVIEW

#define ms(x)   (x/portTICK_PERIOD_MS)

enum TASK_NAME
{
    Green = 0,
    Blue,
    Red,
    Orange,
    NumOfTasks
};

enum SEMA
{
    SEMA_GREEN_LED_EVENT = 0,
    SEMA_BLUE_LED_EVENT,
    SEMA_RED_LED_EVENT,
    SEMA_ORANGE_LED_EVENT,
    SEMA_NUM
};

void GreenTask();
void BlueTask();
void RedTask();
void OrangeTask();


void TaskCreation();
void TaskDelete(uint8_t taskname);
void RtosStart();
void RtosCreateSema();
void Idle();

void TimerCallback_Orange(TimerHandle_t timer);

#endif // end CTASK_FILE