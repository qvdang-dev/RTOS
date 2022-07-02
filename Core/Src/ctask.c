#include "ctask.h"
#include "cled.h"
#include "SEGGER_SYSVIEW.h"

#include "semphr.h"

#define STACK_SIZE 128

#define HAS_SEGGER_SYSVIEW

TaskHandle_t GreenTaskHandler;
TaskHandle_t BlueTaskHandler;
TaskHandle_t RedTaskHandler;

bool flag = false;

enum SEMA
{
    SEMA_GREEN_LED_EVENT = 0,
    SEMA_BLUE_LED_EVENT,
    SEMA_RED_LED_EVENT,
    SEMA_NUM
};

xSemaphoreHandle eSemaList[SEMA_NUM];

void GreenTask()
{
    while(1)
    {
        if (xSemaphoreTake(eSemaList[SEMA_GREEN_LED_EVENT], 500/portTICK_PERIOD_MS) == pdPASS);
        {
            LedOff(LED_RED);
            LedOn(LED_GREEN);
        }
   }
}

void BlueTask()
{
    while(1)
    {
        LedOn(LED_BLUE);
        vTaskDelay(50/ portTICK_RATE_MS);
        LedOff(LED_BLUE);
        vTaskDelay(50/ portTICK_RATE_MS);
    }
}

void RedTask()
{
    int count = 0;
    while(1)
    {
        LedOn(LED_RED);
        if(count == 100)
        {
            xSemaphoreGive(eSemaList[SEMA_GREEN_LED_EVENT]);
            count = 0;
        }
        else
        {
            count++;
            vTaskDelay(100/portTICK_PERIOD_MS);
        }
    }
}

void TaskCreation()
{
    BaseType_t val;
    val = xTaskCreate(GreenTask, "GreenTask", STACK_SIZE, NULL,tskIDLE_PRIORITY + 1, &GreenTaskHandler);
    assert_param(val == pdPASS);
    
    val = xTaskCreate(BlueTask, "BlueTask", STACK_SIZE, NULL,tskIDLE_PRIORITY + 2, &BlueTaskHandler);
    assert_param(val == pdPASS);
    
    val = xTaskCreate(RedTask, "RedTask", STACK_SIZE, NULL,tskIDLE_PRIORITY + 3, &RedTaskHandler);
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
    SEGGER_UART_init(115200);

    SEGGER_SYSVIEW_Conf();
    // SEGGER_SYSVIEW_Start();
    vTaskStartScheduler();
}

void RtosCreateSema()
{
    for (int i = 0; i < SEMA_NUM; i++)
    {
        eSemaList[i] = xSemaphoreCreateBinary();
    }
}