#include "ctask.h"

#define STACK_SIZE 128

TaskHandle_t GreenTaskHandler;
TaskHandle_t BlueTaskHandler;
TaskHandle_t RedTaskHandler;

void GreenTask()
{
    while(1)
    {

    }
}

void BlueTask()
{
    while(1)
    {

    }
}

void RedTask()
{
    while(1)
    {

    }
}

void TaskCreation()
{
    BaseType_t val;
    val = xTaskCreate(GreenTask, "GreenTask", STACK_SIZE, NULL,tskIDLE_PRIORITY + 1, &GreenTaskHandler);
    assert_param(val == pdPASS);
    
    val = xTaskCreate(BlueTask, "BlueTask", STACK_SIZE, NULL,tskIDLE_PRIORITY + 1, &BlueTaskHandler);
    assert_param(val == pdPASS);
    
    val = xTaskCreate(RedTask, "RedTask", STACK_SIZE, NULL,tskIDLE_PRIORITY + 1, &BlueTaskHandler);
    assert_param(val == pdPASS);
}

void TasKDelete(uint8_t taskname)
{
    switch (taskname)
    {
        case Green:
            vTaskDelete(GreenTaskHandler);
            break;

        case Blue:
            vTaskDelete(BlueTaskHandler);
            break;
        
        case Red:
            vTaskDelete(RedTaskHandler);
            break;

        default:
            break;
    }
}

void RtosStart()
{
    vTaskStartScheduler();
}