#pragma once
#ifndef CTASK_FILE
#define CTASK_FILE

#include "FreeRTOS.h"
#include "task.h"
#include "stm32f4xx_hal.h"
#include "semphr.h"
#include "timers.h"
#include "queue.h"



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

typedef enum LED_CMD
{
    LED_GREEN_ON = 0,
    LED_GREEN_OFF,
    LED_BLUE_ON,
    LED_BLUE_OFF,
    LED_RED_ON,
    LED_RED_OFF,
    LED_ORANGE_ON,
    LED_ORANGE_OFF,
    LED_CMD_NUM
}LED_CMD;

typedef struct led_msg
{
    unsigned char len;
    unsigned int time;
    LED_CMD cmd;

}led_msg;

void GreenTask();
void BlueTask();
void RedTask();
void OrangeTask();


void TaskCreation();
void TaskDelete(uint8_t taskname);
void RtosStart();
void RtosCreateSema();
void Idle();
void TaskUartReveive();

void TimerCallback_Orange(TimerHandle_t timer);
void USART2_IRQ_msg(char buff);

void task_switching(int task_id);

#endif // end CTASK_FILE