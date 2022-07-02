################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../rtos/FreeRTOS/croutine.c \
../rtos/FreeRTOS/event_groups.c \
../rtos/FreeRTOS/list.c \
../rtos/FreeRTOS/queue.c \
../rtos/FreeRTOS/stream_buffer.c \
../rtos/FreeRTOS/tasks.c \
../rtos/FreeRTOS/timers.c 

OBJS += \
./rtos/FreeRTOS/croutine.o \
./rtos/FreeRTOS/event_groups.o \
./rtos/FreeRTOS/list.o \
./rtos/FreeRTOS/queue.o \
./rtos/FreeRTOS/stream_buffer.o \
./rtos/FreeRTOS/tasks.o \
./rtos/FreeRTOS/timers.o 

C_DEPS += \
./rtos/FreeRTOS/croutine.d \
./rtos/FreeRTOS/event_groups.d \
./rtos/FreeRTOS/list.d \
./rtos/FreeRTOS/queue.d \
./rtos/FreeRTOS/stream_buffer.d \
./rtos/FreeRTOS/tasks.d \
./rtos/FreeRTOS/timers.d 


# Each subdirectory must supply rules for building sources it contributes
rtos/FreeRTOS/%.o rtos/FreeRTOS/%.su: ../rtos/FreeRTOS/%.c rtos/FreeRTOS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I"D:/Tech/workspace/freertos/rtos/SEGGER/config" -I"D:/Tech/workspace/freertos/rtos/SEGGER/OS" -I"D:/Tech/workspace/freertos/rtos/SEGGER/Patch" -I"D:/Tech/workspace/freertos/rtos/SEGGER/SEGGER" -I"D:/Tech/workspace/freertos/rtos/SEGGER/SEGGER" -I"D:/Tech/workspace/freertos/rtos/SEGGER" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"D:/Tech/workspace/freertos/rtos/FreeRTOS/include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-rtos-2f-FreeRTOS

clean-rtos-2f-FreeRTOS:
	-$(RM) ./rtos/FreeRTOS/croutine.d ./rtos/FreeRTOS/croutine.o ./rtos/FreeRTOS/croutine.su ./rtos/FreeRTOS/event_groups.d ./rtos/FreeRTOS/event_groups.o ./rtos/FreeRTOS/event_groups.su ./rtos/FreeRTOS/list.d ./rtos/FreeRTOS/list.o ./rtos/FreeRTOS/list.su ./rtos/FreeRTOS/queue.d ./rtos/FreeRTOS/queue.o ./rtos/FreeRTOS/queue.su ./rtos/FreeRTOS/stream_buffer.d ./rtos/FreeRTOS/stream_buffer.o ./rtos/FreeRTOS/stream_buffer.su ./rtos/FreeRTOS/tasks.d ./rtos/FreeRTOS/tasks.o ./rtos/FreeRTOS/tasks.su ./rtos/FreeRTOS/timers.d ./rtos/FreeRTOS/timers.o ./rtos/FreeRTOS/timers.su

.PHONY: clean-rtos-2f-FreeRTOS

