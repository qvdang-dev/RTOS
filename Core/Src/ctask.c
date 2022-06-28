#include "ctask.h"
#include "cled.h"
#include "SEGGER_SYSVIEW.h"

#define STACK_SIZE 128

#define HAS_SEGGER_SYSVIEW

TaskHandle_t GreenTaskHandler;
TaskHandle_t BlueTaskHandler;
TaskHandle_t RedTaskHandler;

void GreenTask()
{
    while(1)
    {
        LedOn(LED_GREEN);
        vTaskDelay(2000/ portTICK_RATE_MS);
        LedOff(LED_GREEN);
        vTaskDelay(2000/ portTICK_RATE_MS);
    }
}

void BlueTask()
{
    while(1)
    {
        LedOn(LED_BLUE);
        vTaskDelay(1000/ portTICK_RATE_MS);
        LedOff(LED_BLUE);
        vTaskDelay(1000/ portTICK_RATE_MS);
    }
}

void RedTask()
{
    while(1)
    {
        LedOn(LED_RED);
        vTaskDelay(200/ portTICK_RATE_MS);
        LedOff(LED_RED);
        vTaskDelay(200/ portTICK_RATE_MS);
    }
}

void TaskCreation()
{
    BaseType_t val;
    val = xTaskCreate(GreenTask, "GreenTask", STACK_SIZE, NULL,tskIDLE_PRIORITY + 1, &GreenTaskHandler);
    assert_param(val == pdPASS);
    
    val = xTaskCreate(BlueTask, "BlueTask", STACK_SIZE, NULL,tskIDLE_PRIORITY + 2, &BlueTaskHandler);
    assert_param(val == pdPASS);
    
    val = xTaskCreate(RedTask, "RedTask", STACK_SIZE, NULL,tskIDLE_PRIORITY + 3, &BlueTaskHandler);
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
#if defined(HAS_SEGGER_SYSVIEW)
    SEGGER_SYSVIEW_Conf();
    SEGGER_SYSVIEW_Start();
#endif
    vTaskStartScheduler();
}