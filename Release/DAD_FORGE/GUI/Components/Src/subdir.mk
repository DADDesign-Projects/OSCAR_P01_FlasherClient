################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../DAD_FORGE/GUI/Components/Src/ParameterViews.cpp \
../DAD_FORGE/GUI/Components/Src/SwitchManager.cpp \
../DAD_FORGE/GUI/Components/Src/cBypassOnOffManager.cpp \
../DAD_FORGE/GUI/Components/Src/cInfoView.cpp \
../DAD_FORGE/GUI/Components/Src/cMemoryManager.cpp \
../DAD_FORGE/GUI/Components/Src/cPaletteBuilder.cpp \
../DAD_FORGE/GUI/Components/Src/cPanelOfEffectChoice.cpp \
../DAD_FORGE/GUI/Components/Src/cPanelOfParameters.cpp \
../DAD_FORGE/GUI/Components/Src/cPanelOfSystemView.cpp \
../DAD_FORGE/GUI/Components/Src/cPanelOfTone.cpp \
../DAD_FORGE/GUI/Components/Src/cParameterInfoView.cpp \
../DAD_FORGE/GUI/Components/Src/cUIMemory.cpp \
../DAD_FORGE/GUI/Components/Src/cUIMenu.cpp \
../DAD_FORGE/GUI/Components/Src/cUIParameter.cpp \
../DAD_FORGE/GUI/Components/Src/cUIVuMeter.cpp 

OBJS += \
./DAD_FORGE/GUI/Components/Src/ParameterViews.o \
./DAD_FORGE/GUI/Components/Src/SwitchManager.o \
./DAD_FORGE/GUI/Components/Src/cBypassOnOffManager.o \
./DAD_FORGE/GUI/Components/Src/cInfoView.o \
./DAD_FORGE/GUI/Components/Src/cMemoryManager.o \
./DAD_FORGE/GUI/Components/Src/cPaletteBuilder.o \
./DAD_FORGE/GUI/Components/Src/cPanelOfEffectChoice.o \
./DAD_FORGE/GUI/Components/Src/cPanelOfParameters.o \
./DAD_FORGE/GUI/Components/Src/cPanelOfSystemView.o \
./DAD_FORGE/GUI/Components/Src/cPanelOfTone.o \
./DAD_FORGE/GUI/Components/Src/cParameterInfoView.o \
./DAD_FORGE/GUI/Components/Src/cUIMemory.o \
./DAD_FORGE/GUI/Components/Src/cUIMenu.o \
./DAD_FORGE/GUI/Components/Src/cUIParameter.o \
./DAD_FORGE/GUI/Components/Src/cUIVuMeter.o 

CPP_DEPS += \
./DAD_FORGE/GUI/Components/Src/ParameterViews.d \
./DAD_FORGE/GUI/Components/Src/SwitchManager.d \
./DAD_FORGE/GUI/Components/Src/cBypassOnOffManager.d \
./DAD_FORGE/GUI/Components/Src/cInfoView.d \
./DAD_FORGE/GUI/Components/Src/cMemoryManager.d \
./DAD_FORGE/GUI/Components/Src/cPaletteBuilder.d \
./DAD_FORGE/GUI/Components/Src/cPanelOfEffectChoice.d \
./DAD_FORGE/GUI/Components/Src/cPanelOfParameters.d \
./DAD_FORGE/GUI/Components/Src/cPanelOfSystemView.d \
./DAD_FORGE/GUI/Components/Src/cPanelOfTone.d \
./DAD_FORGE/GUI/Components/Src/cParameterInfoView.d \
./DAD_FORGE/GUI/Components/Src/cUIMemory.d \
./DAD_FORGE/GUI/Components/Src/cUIMenu.d \
./DAD_FORGE/GUI/Components/Src/cUIParameter.d \
./DAD_FORGE/GUI/Components/Src/cUIVuMeter.d 


# Each subdirectory must supply rules for building sources it contributes
DAD_FORGE/GUI/Components/Src/%.o DAD_FORGE/GUI/Components/Src/%.su DAD_FORGE/GUI/Components/Src/%.cyclo: ../DAD_FORGE/GUI/Components/Src/%.cpp DAD_FORGE/GUI/Components/Src/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -DUSE_PWR_LDO_SUPPLY -DDEBUG_RELEASE_EFFECT -DUSE_HAL_DRIVER -DSTM32H743xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/Drivers/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/PersistentStorage/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/Utilities/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/HardwareAndCo/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/DSP/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/Effects/Template/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/STM_GFX2/Inc" -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/GUI/Components/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/GUI/Core/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/Effects/Delay/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/Effects/TemplateMultiModeEffect/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/Drivers/_MIDI/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/Effects/@Config" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/Effects/Modulations/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/FlasherClient/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/DAD_FORGE/Effects/_EffectBase/Inc" -I"D:/Dev/Cube/OSCAR_P01_FlasherClient/Drivers/CMSIS/DSP/Include" -Ofast -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-DAD_FORGE-2f-GUI-2f-Components-2f-Src

clean-DAD_FORGE-2f-GUI-2f-Components-2f-Src:
	-$(RM) ./DAD_FORGE/GUI/Components/Src/ParameterViews.cyclo ./DAD_FORGE/GUI/Components/Src/ParameterViews.d ./DAD_FORGE/GUI/Components/Src/ParameterViews.o ./DAD_FORGE/GUI/Components/Src/ParameterViews.su ./DAD_FORGE/GUI/Components/Src/SwitchManager.cyclo ./DAD_FORGE/GUI/Components/Src/SwitchManager.d ./DAD_FORGE/GUI/Components/Src/SwitchManager.o ./DAD_FORGE/GUI/Components/Src/SwitchManager.su ./DAD_FORGE/GUI/Components/Src/cBypassOnOffManager.cyclo ./DAD_FORGE/GUI/Components/Src/cBypassOnOffManager.d ./DAD_FORGE/GUI/Components/Src/cBypassOnOffManager.o ./DAD_FORGE/GUI/Components/Src/cBypassOnOffManager.su ./DAD_FORGE/GUI/Components/Src/cInfoView.cyclo ./DAD_FORGE/GUI/Components/Src/cInfoView.d ./DAD_FORGE/GUI/Components/Src/cInfoView.o ./DAD_FORGE/GUI/Components/Src/cInfoView.su ./DAD_FORGE/GUI/Components/Src/cMemoryManager.cyclo ./DAD_FORGE/GUI/Components/Src/cMemoryManager.d ./DAD_FORGE/GUI/Components/Src/cMemoryManager.o ./DAD_FORGE/GUI/Components/Src/cMemoryManager.su ./DAD_FORGE/GUI/Components/Src/cPaletteBuilder.cyclo ./DAD_FORGE/GUI/Components/Src/cPaletteBuilder.d ./DAD_FORGE/GUI/Components/Src/cPaletteBuilder.o ./DAD_FORGE/GUI/Components/Src/cPaletteBuilder.su ./DAD_FORGE/GUI/Components/Src/cPanelOfEffectChoice.cyclo ./DAD_FORGE/GUI/Components/Src/cPanelOfEffectChoice.d ./DAD_FORGE/GUI/Components/Src/cPanelOfEffectChoice.o ./DAD_FORGE/GUI/Components/Src/cPanelOfEffectChoice.su ./DAD_FORGE/GUI/Components/Src/cPanelOfParameters.cyclo ./DAD_FORGE/GUI/Components/Src/cPanelOfParameters.d ./DAD_FORGE/GUI/Components/Src/cPanelOfParameters.o ./DAD_FORGE/GUI/Components/Src/cPanelOfParameters.su ./DAD_FORGE/GUI/Components/Src/cPanelOfSystemView.cyclo ./DAD_FORGE/GUI/Components/Src/cPanelOfSystemView.d ./DAD_FORGE/GUI/Components/Src/cPanelOfSystemView.o ./DAD_FORGE/GUI/Components/Src/cPanelOfSystemView.su ./DAD_FORGE/GUI/Components/Src/cPanelOfTone.cyclo ./DAD_FORGE/GUI/Components/Src/cPanelOfTone.d ./DAD_FORGE/GUI/Components/Src/cPanelOfTone.o ./DAD_FORGE/GUI/Components/Src/cPanelOfTone.su ./DAD_FORGE/GUI/Components/Src/cParameterInfoView.cyclo ./DAD_FORGE/GUI/Components/Src/cParameterInfoView.d ./DAD_FORGE/GUI/Components/Src/cParameterInfoView.o ./DAD_FORGE/GUI/Components/Src/cParameterInfoView.su ./DAD_FORGE/GUI/Components/Src/cUIMemory.cyclo ./DAD_FORGE/GUI/Components/Src/cUIMemory.d ./DAD_FORGE/GUI/Components/Src/cUIMemory.o ./DAD_FORGE/GUI/Components/Src/cUIMemory.su ./DAD_FORGE/GUI/Components/Src/cUIMenu.cyclo ./DAD_FORGE/GUI/Components/Src/cUIMenu.d ./DAD_FORGE/GUI/Components/Src/cUIMenu.o ./DAD_FORGE/GUI/Components/Src/cUIMenu.su ./DAD_FORGE/GUI/Components/Src/cUIParameter.cyclo ./DAD_FORGE/GUI/Components/Src/cUIParameter.d ./DAD_FORGE/GUI/Components/Src/cUIParameter.o ./DAD_FORGE/GUI/Components/Src/cUIParameter.su ./DAD_FORGE/GUI/Components/Src/cUIVuMeter.cyclo ./DAD_FORGE/GUI/Components/Src/cUIVuMeter.d ./DAD_FORGE/GUI/Components/Src/cUIVuMeter.o ./DAD_FORGE/GUI/Components/Src/cUIVuMeter.su

.PHONY: clean-DAD_FORGE-2f-GUI-2f-Components-2f-Src

