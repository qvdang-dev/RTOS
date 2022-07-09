################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../rtos/FreeRTOS/portable/GCC/ARM_CM4F/port.c 

OBJS += \
./rtos/FreeRTOS/portable/GCC/ARM_CM4F/port.o 

C_DEPS += \
./rtos/FreeRTOS/portable/GCC/ARM_CM4F/port.d 


# Each subdirectory must supply rules for building sources it contributes
rtos/FreeRTOS/portable/GCC/ARM_CM4F/%.o rtos/FreeRTOS/portable/GCC/ARM_CM4F/%.su: ../rtos/FreeRTOS/portable/GCC/ARM_CM4F/%.c rtos/FreeRTOS/portable/GCC/ARM_CM4F/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I"D:/Tech/workspace/freertos/Core/Src/uart" -I"D:/Tech/workspace/freertos/Core/Src/cled" -I"D:/Tech/workspace/freertos/rtos/FreeRTOS/portable/GCC/ARM_CM4F" -I"D:/Tech/workspace/freertos/rtos/FreeRTOS" -I"D:/Tech/workspace/freertos/rtos/SEGGER/config" -I"D:/Tech/workspace/freertos/rtos/SEGGER/OS" -I"D:/Tech/workspace/freertos/rtos/SEGGER/Patch" -I"D:/Tech/workspace/freertos/rtos/SEGGER/SEGGER" -I"D:/Tech/workspace/freertos/rtos/SEGGER" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"D:/Tech/workspace/freertos/rtos/FreeRTOS/include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-rtos-2f-FreeRTOS-2f-portable-2f-GCC-2f-ARM_CM4F

clean-rtos-2f-FreeRTOS-2f-portable-2f-GCC-2f-ARM_CM4F:
	-$(RM) ./rtos/FreeRTOS/portable/GCC/ARM_CM4F/port.d ./rtos/FreeRTOS/portable/GCC/ARM_CM4F/port.o ./rtos/FreeRTOS/portable/GCC/ARM_CM4F/port.su

.PHONY: clean-rtos-2f-FreeRTOS-2f-portable-2f-GCC-2f-ARM_CM4F

