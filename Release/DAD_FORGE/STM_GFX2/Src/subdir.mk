################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../DAD_FORGE/STM_GFX2/Src/GFX.cpp \
../DAD_FORGE/STM_GFX2/Src/TFT_SPI.cpp \
../DAD_FORGE/STM_GFX2/Src/cDisplay.cpp 

OBJS += \
./DAD_FORGE/STM_GFX2/Src/GFX.o \
./DAD_FORGE/STM_GFX2/Src/TFT_SPI.o \
./DAD_FORGE/STM_GFX2/Src/cDisplay.o 

CPP_DEPS += \
./DAD_FORGE/STM_GFX2/Src/GFX.d \
./DAD_FORGE/STM_GFX2/Src/TFT_SPI.d \
./DAD_FORGE/STM_GFX2/Src/cDisplay.d 


# Each subdirectory must supply rules for building sources it contributes
DAD_FORGE/STM_GFX2/Src/%.o DAD_FORGE/STM_GFX2/Src/%.su DAD_FORGE/STM_GFX2/Src/%.cyclo: ../DAD_FORGE/STM_GFX2/Src/%.cpp DAD_FORGE/STM_GFX2/Src/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -DUSE_PWR_LDO_SUPPLY -DDEBUG_RELEASE_EFFECT -DUSE_HAL_DRIVER -DSTM32H743xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/Drivers/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/PersistentStorage/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/Utilities/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/HardwareAndCo/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/DSP/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/Effects/Template/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/STM_GFX2/Inc" -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/GUI/Components/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/GUI/Core/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/Effects/Delay/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/Effects/TemplateMultiModeEffect/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/Drivers/_MIDI/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/Effects/@Config" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/Effects/Modulations/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/FlasherClient/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/Effects/_EffectBase/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/Drivers/CMSIS/DSP/Include" -Ofast -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-DAD_FORGE-2f-STM_GFX2-2f-Src

clean-DAD_FORGE-2f-STM_GFX2-2f-Src:
	-$(RM) ./DAD_FORGE/STM_GFX2/Src/GFX.cyclo ./DAD_FORGE/STM_GFX2/Src/GFX.d ./DAD_FORGE/STM_GFX2/Src/GFX.o ./DAD_FORGE/STM_GFX2/Src/GFX.su ./DAD_FORGE/STM_GFX2/Src/TFT_SPI.cyclo ./DAD_FORGE/STM_GFX2/Src/TFT_SPI.d ./DAD_FORGE/STM_GFX2/Src/TFT_SPI.o ./DAD_FORGE/STM_GFX2/Src/TFT_SPI.su ./DAD_FORGE/STM_GFX2/Src/cDisplay.cyclo ./DAD_FORGE/STM_GFX2/Src/cDisplay.d ./DAD_FORGE/STM_GFX2/Src/cDisplay.o ./DAD_FORGE/STM_GFX2/Src/cDisplay.su

.PHONY: clean-DAD_FORGE-2f-STM_GFX2-2f-Src

