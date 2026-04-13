################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../DAD_FORGE/Drivers/_MIDI/Src/cMidi.cpp 

C_SRCS += \
../DAD_FORGE/Drivers/_MIDI/Src/usb_midi_device.c \
../DAD_FORGE/Drivers/_MIDI/Src/usbd_midi.c \
../DAD_FORGE/Drivers/_MIDI/Src/usbd_midi_desc.c \
../DAD_FORGE/Drivers/_MIDI/Src/usbd_midi_if.c 

C_DEPS += \
./DAD_FORGE/Drivers/_MIDI/Src/usb_midi_device.d \
./DAD_FORGE/Drivers/_MIDI/Src/usbd_midi.d \
./DAD_FORGE/Drivers/_MIDI/Src/usbd_midi_desc.d \
./DAD_FORGE/Drivers/_MIDI/Src/usbd_midi_if.d 

OBJS += \
./DAD_FORGE/Drivers/_MIDI/Src/cMidi.o \
./DAD_FORGE/Drivers/_MIDI/Src/usb_midi_device.o \
./DAD_FORGE/Drivers/_MIDI/Src/usbd_midi.o \
./DAD_FORGE/Drivers/_MIDI/Src/usbd_midi_desc.o \
./DAD_FORGE/Drivers/_MIDI/Src/usbd_midi_if.o 

CPP_DEPS += \
./DAD_FORGE/Drivers/_MIDI/Src/cMidi.d 


# Each subdirectory must supply rules for building sources it contributes
DAD_FORGE/Drivers/_MIDI/Src/%.o DAD_FORGE/Drivers/_MIDI/Src/%.su DAD_FORGE/Drivers/_MIDI/Src/%.cyclo: ../DAD_FORGE/Drivers/_MIDI/Src/%.cpp DAD_FORGE/Drivers/_MIDI/Src/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -DUSE_PWR_LDO_SUPPLY -DDEBUG_RELEASE_EFFECT -DUSE_HAL_DRIVER -DSTM32H743xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/Drivers/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/PersistentStorage/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/Utilities/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/HardwareAndCo/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/DSP/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/Effects/Template/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/STM_GFX2/Inc" -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/GUI/Components/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/GUI/Core/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/Effects/Delay/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/Effects/TemplateMultiModeEffect/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/Drivers/_MIDI/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/Effects/@Config" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/Effects/Modulations/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/FlasherClient/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/Effects/_EffectBase/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/Drivers/CMSIS/DSP/Include" -Ofast -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
DAD_FORGE/Drivers/_MIDI/Src/%.o DAD_FORGE/Drivers/_MIDI/Src/%.su DAD_FORGE/Drivers/_MIDI/Src/%.cyclo: ../DAD_FORGE/Drivers/_MIDI/Src/%.c DAD_FORGE/Drivers/_MIDI/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -DUSE_PWR_LDO_SUPPLY -DDEBUG_RELEASE_EFFECT -DUSE_HAL_DRIVER -DSTM32H743xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/Drivers/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/PersistentStorage/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/Utilities/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/HardwareAndCo/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/DSP/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/Effects/Template/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/STM_GFX2/Inc" -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/GUI/Components/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/GUI/Core/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/Effects/Delay/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/Effects/TemplateMultiModeEffect/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/Drivers/_MIDI/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/Effects/@Config" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/Effects/Modulations/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/FlasherClient/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/Effects/_EffectBase/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/Drivers/CMSIS/DSP/Include" -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-DAD_FORGE-2f-Drivers-2f-_MIDI-2f-Src

clean-DAD_FORGE-2f-Drivers-2f-_MIDI-2f-Src:
	-$(RM) ./DAD_FORGE/Drivers/_MIDI/Src/cMidi.cyclo ./DAD_FORGE/Drivers/_MIDI/Src/cMidi.d ./DAD_FORGE/Drivers/_MIDI/Src/cMidi.o ./DAD_FORGE/Drivers/_MIDI/Src/cMidi.su ./DAD_FORGE/Drivers/_MIDI/Src/usb_midi_device.cyclo ./DAD_FORGE/Drivers/_MIDI/Src/usb_midi_device.d ./DAD_FORGE/Drivers/_MIDI/Src/usb_midi_device.o ./DAD_FORGE/Drivers/_MIDI/Src/usb_midi_device.su ./DAD_FORGE/Drivers/_MIDI/Src/usbd_midi.cyclo ./DAD_FORGE/Drivers/_MIDI/Src/usbd_midi.d ./DAD_FORGE/Drivers/_MIDI/Src/usbd_midi.o ./DAD_FORGE/Drivers/_MIDI/Src/usbd_midi.su ./DAD_FORGE/Drivers/_MIDI/Src/usbd_midi_desc.cyclo ./DAD_FORGE/Drivers/_MIDI/Src/usbd_midi_desc.d ./DAD_FORGE/Drivers/_MIDI/Src/usbd_midi_desc.o ./DAD_FORGE/Drivers/_MIDI/Src/usbd_midi_desc.su ./DAD_FORGE/Drivers/_MIDI/Src/usbd_midi_if.cyclo ./DAD_FORGE/Drivers/_MIDI/Src/usbd_midi_if.d ./DAD_FORGE/Drivers/_MIDI/Src/usbd_midi_if.o ./DAD_FORGE/Drivers/_MIDI/Src/usbd_midi_if.su

.PHONY: clean-DAD_FORGE-2f-Drivers-2f-_MIDI-2f-Src

