################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../DAD_FORGE/Drivers/Src/AudioManager.cpp \
../DAD_FORGE/Drivers/Src/IS42S16320.cpp \
../DAD_FORGE/Drivers/Src/W25Q128.cpp \
../DAD_FORGE/Drivers/Src/cDryWet.cpp \
../DAD_FORGE/Drivers/Src/cEncoder.cpp \
../DAD_FORGE/Drivers/Src/cSoftSPI.cpp \
../DAD_FORGE/Drivers/Src/cSwitch.cpp 

OBJS += \
./DAD_FORGE/Drivers/Src/AudioManager.o \
./DAD_FORGE/Drivers/Src/IS42S16320.o \
./DAD_FORGE/Drivers/Src/W25Q128.o \
./DAD_FORGE/Drivers/Src/cDryWet.o \
./DAD_FORGE/Drivers/Src/cEncoder.o \
./DAD_FORGE/Drivers/Src/cSoftSPI.o \
./DAD_FORGE/Drivers/Src/cSwitch.o 

CPP_DEPS += \
./DAD_FORGE/Drivers/Src/AudioManager.d \
./DAD_FORGE/Drivers/Src/IS42S16320.d \
./DAD_FORGE/Drivers/Src/W25Q128.d \
./DAD_FORGE/Drivers/Src/cDryWet.d \
./DAD_FORGE/Drivers/Src/cEncoder.d \
./DAD_FORGE/Drivers/Src/cSoftSPI.d \
./DAD_FORGE/Drivers/Src/cSwitch.d 


# Each subdirectory must supply rules for building sources it contributes
DAD_FORGE/Drivers/Src/%.o DAD_FORGE/Drivers/Src/%.su DAD_FORGE/Drivers/Src/%.cyclo: ../DAD_FORGE/Drivers/Src/%.cpp DAD_FORGE/Drivers/Src/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -DUSE_PWR_LDO_SUPPLY -DDEBUG_RELEASE_EFFECT -DUSE_HAL_DRIVER -DSTM32H743xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/Drivers/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/PersistentStorage/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/Utilities/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/HardwareAndCo/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/DSP/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/Effects/Template/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/STM_GFX2/Inc" -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/GUI/Components/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/GUI/Core/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/Effects/Delay/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/Effects/TemplateMultiModeEffect/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/Drivers/_MIDI/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/Effects/@Config" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/Effects/Modulations/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/FlasherClient/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/Effects/_EffectBase/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/Drivers/CMSIS/DSP/Include" -Ofast -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-DAD_FORGE-2f-Drivers-2f-Src

clean-DAD_FORGE-2f-Drivers-2f-Src:
	-$(RM) ./DAD_FORGE/Drivers/Src/AudioManager.cyclo ./DAD_FORGE/Drivers/Src/AudioManager.d ./DAD_FORGE/Drivers/Src/AudioManager.o ./DAD_FORGE/Drivers/Src/AudioManager.su ./DAD_FORGE/Drivers/Src/IS42S16320.cyclo ./DAD_FORGE/Drivers/Src/IS42S16320.d ./DAD_FORGE/Drivers/Src/IS42S16320.o ./DAD_FORGE/Drivers/Src/IS42S16320.su ./DAD_FORGE/Drivers/Src/W25Q128.cyclo ./DAD_FORGE/Drivers/Src/W25Q128.d ./DAD_FORGE/Drivers/Src/W25Q128.o ./DAD_FORGE/Drivers/Src/W25Q128.su ./DAD_FORGE/Drivers/Src/cDryWet.cyclo ./DAD_FORGE/Drivers/Src/cDryWet.d ./DAD_FORGE/Drivers/Src/cDryWet.o ./DAD_FORGE/Drivers/Src/cDryWet.su ./DAD_FORGE/Drivers/Src/cEncoder.cyclo ./DAD_FORGE/Drivers/Src/cEncoder.d ./DAD_FORGE/Drivers/Src/cEncoder.o ./DAD_FORGE/Drivers/Src/cEncoder.su ./DAD_FORGE/Drivers/Src/cSoftSPI.cyclo ./DAD_FORGE/Drivers/Src/cSoftSPI.d ./DAD_FORGE/Drivers/Src/cSoftSPI.o ./DAD_FORGE/Drivers/Src/cSoftSPI.su ./DAD_FORGE/Drivers/Src/cSwitch.cyclo ./DAD_FORGE/Drivers/Src/cSwitch.d ./DAD_FORGE/Drivers/Src/cSwitch.o ./DAD_FORGE/Drivers/Src/cSwitch.su

.PHONY: clean-DAD_FORGE-2f-Drivers-2f-Src

