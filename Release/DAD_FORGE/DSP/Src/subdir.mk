################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../DAD_FORGE/DSP/Src/BiquadFilter.cpp \
../DAD_FORGE/DSP/Src/cAudioFader.cpp \
../DAD_FORGE/DSP/Src/cDelayLine.cpp \
../DAD_FORGE/DSP/Src/cModulator.cpp \
../DAD_FORGE/DSP/Src/cParameter.cpp \
../DAD_FORGE/DSP/Src/cVuMeter.cpp 

OBJS += \
./DAD_FORGE/DSP/Src/BiquadFilter.o \
./DAD_FORGE/DSP/Src/cAudioFader.o \
./DAD_FORGE/DSP/Src/cDelayLine.o \
./DAD_FORGE/DSP/Src/cModulator.o \
./DAD_FORGE/DSP/Src/cParameter.o \
./DAD_FORGE/DSP/Src/cVuMeter.o 

CPP_DEPS += \
./DAD_FORGE/DSP/Src/BiquadFilter.d \
./DAD_FORGE/DSP/Src/cAudioFader.d \
./DAD_FORGE/DSP/Src/cDelayLine.d \
./DAD_FORGE/DSP/Src/cModulator.d \
./DAD_FORGE/DSP/Src/cParameter.d \
./DAD_FORGE/DSP/Src/cVuMeter.d 


# Each subdirectory must supply rules for building sources it contributes
DAD_FORGE/DSP/Src/%.o DAD_FORGE/DSP/Src/%.su DAD_FORGE/DSP/Src/%.cyclo: ../DAD_FORGE/DSP/Src/%.cpp DAD_FORGE/DSP/Src/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -DUSE_PWR_LDO_SUPPLY -DDEBUG_RELEASE_EFFECT -DUSE_HAL_DRIVER -DSTM32H743xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/Drivers/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/PersistentStorage/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/Utilities/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/HardwareAndCo/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/DSP/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/Effects/Template/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/STM_GFX2/Inc" -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/GUI/Components/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/GUI/Core/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/Effects/Delay/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/Effects/TemplateMultiModeEffect/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/Drivers/_MIDI/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/Effects/@Config" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/Effects/Modulations/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/FlasherClient/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/Effects/_EffectBase/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/Drivers/CMSIS/DSP/Include" -Ofast -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-DAD_FORGE-2f-DSP-2f-Src

clean-DAD_FORGE-2f-DSP-2f-Src:
	-$(RM) ./DAD_FORGE/DSP/Src/BiquadFilter.cyclo ./DAD_FORGE/DSP/Src/BiquadFilter.d ./DAD_FORGE/DSP/Src/BiquadFilter.o ./DAD_FORGE/DSP/Src/BiquadFilter.su ./DAD_FORGE/DSP/Src/cAudioFader.cyclo ./DAD_FORGE/DSP/Src/cAudioFader.d ./DAD_FORGE/DSP/Src/cAudioFader.o ./DAD_FORGE/DSP/Src/cAudioFader.su ./DAD_FORGE/DSP/Src/cDelayLine.cyclo ./DAD_FORGE/DSP/Src/cDelayLine.d ./DAD_FORGE/DSP/Src/cDelayLine.o ./DAD_FORGE/DSP/Src/cDelayLine.su ./DAD_FORGE/DSP/Src/cModulator.cyclo ./DAD_FORGE/DSP/Src/cModulator.d ./DAD_FORGE/DSP/Src/cModulator.o ./DAD_FORGE/DSP/Src/cModulator.su ./DAD_FORGE/DSP/Src/cParameter.cyclo ./DAD_FORGE/DSP/Src/cParameter.d ./DAD_FORGE/DSP/Src/cParameter.o ./DAD_FORGE/DSP/Src/cParameter.su ./DAD_FORGE/DSP/Src/cVuMeter.cyclo ./DAD_FORGE/DSP/Src/cVuMeter.d ./DAD_FORGE/DSP/Src/cVuMeter.o ./DAD_FORGE/DSP/Src/cVuMeter.su

.PHONY: clean-DAD_FORGE-2f-DSP-2f-Src

