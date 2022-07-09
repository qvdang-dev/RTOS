################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../rtos/SEGGER/SEGGER/SEGGER_RTT.c \
../rtos/SEGGER/SEGGER/SEGGER_RTT_printf.c \
../rtos/SEGGER/SEGGER/SEGGER_SYSVIEW.c 

S_UPPER_SRCS += \
../rtos/SEGGER/SEGGER/SEGGER_RTT_ASM_ARMv7M.S 

OBJS += \
./rtos/SEGGER/SEGGER/SEGGER_RTT.o \
./rtos/SEGGER/SEGGER/SEGGER_RTT_ASM_ARMv7M.o \
./rtos/SEGGER/SEGGER/SEGGER_RTT_printf.o \
./rtos/SEGGER/SEGGER/SEGGER_SYSVIEW.o 

S_UPPER_DEPS += \
./rtos/SEGGER/SEGGER/SEGGER_RTT_ASM_ARMv7M.d 

C_DEPS += \
./rtos/SEGGER/SEGGER/SEGGER_RTT.d \
./rtos/SEGGER/SEGGER/SEGGER_RTT_printf.d \
./rtos/SEGGER/SEGGER/SEGGER_SYSVIEW.d 


# Each subdirectory must supply rules for building sources it contributes
rtos/SEGGER/SEGGER/%.o rtos/SEGGER/SEGGER/%.su: ../rtos/SEGGER/SEGGER/%.c rtos/SEGGER/SEGGER/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I"D:/Tech/workspace/freertos/Core/Src/uart" -I"D:/Tech/workspace/freertos/Core/Src/cled" -I"D:/Tech/workspace/freertos/rtos/FreeRTOS/portable/GCC/ARM_CM4F" -I"D:/Tech/workspace/freertos/rtos/FreeRTOS" -I"D:/Tech/workspace/freertos/rtos/SEGGER/config" -I"D:/Tech/workspace/freertos/rtos/SEGGER/OS" -I"D:/Tech/workspace/freertos/rtos/SEGGER/Patch" -I"D:/Tech/workspace/freertos/rtos/SEGGER/SEGGER" -I"D:/Tech/workspace/freertos/rtos/SEGGER" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"D:/Tech/workspace/freertos/rtos/FreeRTOS/include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
rtos/SEGGER/SEGGER/%.o: ../rtos/SEGGER/SEGGER/%.S rtos/SEGGER/SEGGER/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-rtos-2f-SEGGER-2f-SEGGER

clean-rtos-2f-SEGGER-2f-SEGGER:
	-$(RM) ./rtos/SEGGER/SEGGER/SEGGER_RTT.d ./rtos/SEGGER/SEGGER/SEGGER_RTT.o ./rtos/SEGGER/SEGGER/SEGGER_RTT.su ./rtos/SEGGER/SEGGER/SEGGER_RTT_ASM_ARMv7M.d ./rtos/SEGGER/SEGGER/SEGGER_RTT_ASM_ARMv7M.o ./rtos/SEGGER/SEGGER/SEGGER_RTT_printf.d ./rtos/SEGGER/SEGGER/SEGGER_RTT_printf.o ./rtos/SEGGER/SEGGER/SEGGER_RTT_printf.su ./rtos/SEGGER/SEGGER/SEGGER_SYSVIEW.d ./rtos/SEGGER/SEGGER/SEGGER_SYSVIEW.o ./rtos/SEGGER/SEGGER/SEGGER_SYSVIEW.su

.PHONY: clean-rtos-2f-SEGGER-2f-SEGGER

