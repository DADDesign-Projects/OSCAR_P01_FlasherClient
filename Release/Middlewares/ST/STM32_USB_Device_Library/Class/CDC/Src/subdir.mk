################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Src/usbd_cdc.c 

C_DEPS += \
./Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Src/usbd_cdc.d 

OBJS += \
./Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Src/usbd_cdc.o 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Src/%.o Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Src/%.su Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Src/%.cyclo: ../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Src/%.c Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -DUSE_PWR_LDO_SUPPLY -DDEBUG_RELEASE_EFFECT -DUSE_HAL_DRIVER -DSTM32H743xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/Drivers/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/PersistentStorage/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/Utilities/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/HardwareAndCo/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/DSP/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/Effects/Template/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/STM_GFX2/Inc" -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/GUI/Components/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/GUI/Core/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/Effects/Delay/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/Effects/TemplateMultiModeEffect/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/Drivers/_MIDI/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/Effects/@Config" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/Effects/Modulations/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/FlasherClient/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/Effects/_EffectBase/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/Drivers/CMSIS/DSP/Include" -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-ST-2f-STM32_USB_Device_Library-2f-Class-2f-CDC-2f-Src

clean-Middlewares-2f-ST-2f-STM32_USB_Device_Library-2f-Class-2f-CDC-2f-Src:
	-$(RM) ./Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Src/usbd_cdc.cyclo ./Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Src/usbd_cdc.d ./Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Src/usbd_cdc.o ./Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Src/usbd_cdc.su

.PHONY: clean-Middlewares-2f-ST-2f-STM32_USB_Device_Library-2f-Class-2f-CDC-2f-Src

