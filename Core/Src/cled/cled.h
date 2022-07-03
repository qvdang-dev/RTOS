#pragma once

#include <stdio.h>
#include "stm32f4xx_hal.h"

enum LED
{
    LED_GREEN = 0,
    LED_BLUE,
    LED_RED,
    LED_ORANGE,

    LED_NUM
};

void LedOn(char eled);
void LedOff(char eled);