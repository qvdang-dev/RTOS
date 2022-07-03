#include "ctask.h"
#include "cled.h"
#include "SEGGER_SYSVIEW.h"

TaskHandle_t IdleHandler;
TaskHandle_t GreenTaskHandler;
TaskHandle_t BlueTaskHandler;
TaskHandle_t RedTaskHandler;
TaskHandle_t OrangeTaskHandler;

TimerHandle_t Timer_Orange;

xSemaphoreHandle eSemaList[SEMA_NUM];


void GreenTask()
{
    while(1)
    {
        if (xSemaphoreTake(eSemaList[SEMA_GREEN_LED_EVENT], portMAX_DELAY) == pdPASS)
        {
            LedOff(LED_RED);
            LedOff(LED_BLUE);
            LedOn(LED_GREEN);
            vTaskDelay(2000/portTICK_PERIOD_MS);
            xTimerStart(Timer_Orange , ms(5000));
            xSemaphoreGive(eSemaList[SEMA_RED_LED_EVENT]);
        }

   }
}

void BlueTask()
{
    while(1)
    {
        if (xSemaphoreTake(eSemaList[SEMA_BLUE_LED_EVENT],portMAX_DELAY) == pdPASS)
        {
            LedOff(LED_RED);
            LedOff(LED_GREEN);
            LedOn(LED_BLUE);
            vTaskDelay(2000/portTICK_PERIOD_MS);
            xSemaphoreGive(eSemaList[SEMA_GREEN_LED_EVENT]);
        }  
    }
}

void RedTask()
{
    int count = 0;
    while(1)
    {
        if (xSemaphoreTake(eSemaList[SEMA_RED_LED_EVENT], portMAX_DELAY) == pdPASS)
        {
            LedOff(LED_BLUE);
            LedOff(LED_GREEN);
            LedOn(LED_RED);
            vTaskDelay(2000/portTICK_PERIOD_MS);
            xSemaphoreGive(eSemaList[SEMA_BLUE_LED_EVENT]);
        }

    }
}

void OrangeTask()
{
    static unsigned char count = 0;
    while (1)
    {
        if (xSemaphoreTake(eSemaList[SEMA_ORANGE_LED_EVENT], portMAX_DELAY) == pdPASS)
        {
            if (count == 0)
            {
                LedOn(LED_ORANGE);
                count++;
            }
            else
            {
                LedOff(LED_ORANGE);
                count = 0;
            }
        }
    }
}

void Idle()
{
    int val = 0;
    while (1)
    {
        if (val == 0)
        {
            LedOff(LED_RED);
            LedOff(LED_GREEN);
            LedOff(LED_BLUE);
            xSemaphoreGive(eSemaList[SEMA_RED_LED_EVENT]);
            val = 1;
        }
    }

}

void TaskCreation()
{
    BaseType_t val;
    val = xTaskCreate(Idle, "IdleTask", STACK_SIZE, NULL,tskIDLE_PRIORITY, &IdleHandler);
    assert_param(val == pdPASS);

    val = xTaskCreate(GreenTask, "GreenTask", STACK_SIZE, NULL,tskIDLE_PRIORITY + 1, &GreenTaskHandler);
    assert_param(val == pdPASS);
    
    val = xTaskCreate(BlueTask, "BlueTask", STACK_SIZE, NULL,tskIDLE_PRIORITY + 2, &BlueTaskHandler);
    assert_param(val == pdPASS);
    
    val = xTaskCreate(RedTask, "RedTask", STACK_SIZE, NULL,tskIDLE_PRIORITY + 3, &RedTaskHandler);
    assert_param(val == pdPASS);

    val = xTaskCreate(OrangeTask, "OrangeTask", STACK_SIZE, NULL,tskIDLE_PRIORITY + 4, &OrangeTaskHandler);
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

        case Orange:
            vTaskDelete(OrangeTaskHandler);
            break;

        default:
            break;
    }
}

void RtosStart()
{
    // SEGGER_UART_init(115200);
    // SEGGER_SYSVIEW_Conf();
    // SEGGER_SYSVIEW_Start();

    RtosCreateSema();

    Timer_Orange = xTimerCreate("TimerOrange", ms(100), pdFAIL, NULL, TimerCallback_Orange);
    assert_param(Timer_Orange != NULL);

    vTaskStartScheduler();

}

void RtosCreateSema()
{
    for (int i = 0; i < SEMA_NUM; i++)
    {
        eSemaList[i] = xSemaphoreCreateBinary();
    }
}

void TimerCallback_Orange(TimerHandle_t Timer)
{
    xSemaphoreGive(eSemaList[SEMA_ORANGE_LED_EVENT]);
}