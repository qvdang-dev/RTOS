#include <stdio.h>
#include "cled.h"
#include "stm32f407xx.h"

// green led = ld4 = pd12
// red led = ld5 = pd 14
// blue led = ld6 = pd 15

#define PIN_GREEN_LED   GPIO_PIN_12
#define PIN_ORANGE_LED  GPIO_PIN_13
#define PIN_RED_LED     GPIO_PIN_14
#define PIN_BLUE_LED    GPIO_PIN_15

void LedOn(char cled)
{
    switch (cled)
    {
        case LED_GREEN:
            HAL_GPIO_WritePin(GPIOD, PIN_GREEN_LED, GPIO_PIN_SET);
            break;

        case LED_BLUE:
            HAL_GPIO_WritePin(GPIOD, PIN_BLUE_LED, GPIO_PIN_SET);
            break;

        case LED_RED:
            HAL_GPIO_WritePin(GPIOD, PIN_RED_LED, GPIO_PIN_SET);
            break;

        case LED_ORANGE:
            HAL_GPIO_WritePin(GPIOD, PIN_ORANGE_LED, GPIO_PIN_SET);
            break;

        default:
            break;
    }
}

void LedOff(char cled)
{
    switch (cled)
    {
        case LED_GREEN:
            HAL_GPIO_WritePin(GPIOD, PIN_GREEN_LED, GPIO_PIN_RESET);
            break;

        case LED_BLUE:
            HAL_GPIO_WritePin(GPIOD, PIN_BLUE_LED, GPIO_PIN_RESET);
            break;

        case LED_RED:
            HAL_GPIO_WritePin(GPIOD, PIN_RED_LED, GPIO_PIN_RESET);
            break;

        case LED_ORANGE:
            HAL_GPIO_WritePin(GPIOD, PIN_ORANGE_LED, GPIO_PIN_RESET);
            break;

        default:
            break;
    }
}