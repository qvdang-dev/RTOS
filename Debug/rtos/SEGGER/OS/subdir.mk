################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../rtos/SEGGER/OS/SEGGER_SYSVIEW_FreeRTOS.c 

OBJS += \
./rtos/SEGGER/OS/SEGGER_SYSVIEW_FreeRTOS.o 

C_DEPS += \
./rtos/SEGGER/OS/SEGGER_SYSVIEW_FreeRTOS.d 


# Each subdirectory must supply rules for building sources it contributes
rtos/SEGGER/OS/%.o rtos/SEGGER/OS/%.su: ../rtos/SEGGER/OS/%.c rtos/SEGGER/OS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I"D:/Tech/workspace/freertos/rtos/FreeRTOS/portable/GCC/ARM_CM4F" -I"D:/Tech/workspace/freertos/rtos/FreeRTOS" -I"D:/Tech/workspace/freertos/rtos/SEGGER/config" -I"D:/Tech/workspace/freertos/rtos/SEGGER/OS" -I"D:/Tech/workspace/freertos/rtos/SEGGER/Patch" -I"D:/Tech/workspace/freertos/rtos/SEGGER/SEGGER" -I"D:/Tech/workspace/freertos/rtos/SEGGER" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"D:/Tech/workspace/freertos/rtos/FreeRTOS/include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-rtos-2f-SEGGER-2f-OS

clean-rtos-2f-SEGGER-2f-OS:
	-$(RM) ./rtos/SEGGER/OS/SEGGER_SYSVIEW_FreeRTOS.d ./rtos/SEGGER/OS/SEGGER_SYSVIEW_FreeRTOS.o ./rtos/SEGGER/OS/SEGGER_SYSVIEW_FreeRTOS.su

.PHONY: clean-rtos-2f-SEGGER-2f-OS

