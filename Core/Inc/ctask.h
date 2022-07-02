#pragma once

#include "FreeRTOS.h"
#include "task.h"
#include "stm32f4xx_hal.h"

enum TASK_NAME
{
    Green = 0,
    Blue,
    Red,
    NumOfTasks
};

void GreenTask();
void BlueTask();
void RedTask();

void TaskCreation();
void TaskDelete(uint8_t taskname);
void RtosStart();