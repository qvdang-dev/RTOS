################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../rtos/FreeRTOS/portable/MemMang/heap_4.c 

OBJS += \
./rtos/FreeRTOS/portable/MemMang/heap_4.o 

C_DEPS += \
./rtos/FreeRTOS/portable/MemMang/heap_4.d 


# Each subdirectory must supply rules for building sources it contributes
rtos/FreeRTOS/portable/MemMang/%.o rtos/FreeRTOS/portable/MemMang/%.su: ../rtos/FreeRTOS/portable/MemMang/%.c rtos/FreeRTOS/portable/MemMang/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I"D:/Tech/workspace/freertos/Core/Src/cled" -I"D:/Tech/workspace/freertos/rtos/FreeRTOS/portable/GCC/ARM_CM4F" -I"D:/Tech/workspace/freertos/rtos/FreeRTOS" -I"D:/Tech/workspace/freertos/rtos/SEGGER/config" -I"D:/Tech/workspace/freertos/rtos/SEGGER/OS" -I"D:/Tech/workspace/freertos/rtos/SEGGER/Patch" -I"D:/Tech/workspace/freertos/rtos/SEGGER/SEGGER" -I"D:/Tech/workspace/freertos/rtos/SEGGER" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"D:/Tech/workspace/freertos/rtos/FreeRTOS/include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-rtos-2f-FreeRTOS-2f-portable-2f-MemMang

clean-rtos-2f-FreeRTOS-2f-portable-2f-MemMang:
	-$(RM) ./rtos/FreeRTOS/portable/MemMang/heap_4.d ./rtos/FreeRTOS/portable/MemMang/heap_4.o ./rtos/FreeRTOS/portable/MemMang/heap_4.su

.PHONY: clean-rtos-2f-FreeRTOS-2f-portable-2f-MemMang

