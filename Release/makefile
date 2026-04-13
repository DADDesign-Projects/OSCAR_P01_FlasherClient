################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include USB_DEVICE/Target/subdir.mk
-include USB_DEVICE/App/subdir.mk
-include Middlewares/ST/STM32_USB_Device_Library/Core/Src/subdir.mk
-include Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Src/subdir.mk
-include HardwareAndCo/Src/subdir.mk
-include FlasherClient/Src/subdir.mk
-include Drivers/STM32H7xx_HAL_Driver/Src/subdir.mk
-include DAD_FORGE/Utilities/Src/subdir.mk
-include DAD_FORGE/STM_GFX2/Src/subdir.mk
-include DAD_FORGE/PersistentStorage/Src/subdir.mk
-include DAD_FORGE/GUI/Core/Src/subdir.mk
-include DAD_FORGE/GUI/Components/Src/subdir.mk
-include DAD_FORGE/Effects/_EffectBase/Src/subdir.mk
-include DAD_FORGE/Effects/TemplateMultiModeEffect/Src/subdir.mk
-include DAD_FORGE/Effects/Template/Src/subdir.mk
-include DAD_FORGE/Effects/Reverb/Src/subdir.mk
-include DAD_FORGE/Effects/Modulations/Src/subdir.mk
-include DAD_FORGE/Effects/Delay/Src/subdir.mk
-include DAD_FORGE/Drivers/_MIDI/Src/subdir.mk
-include DAD_FORGE/Drivers/Src/subdir.mk
-include DAD_FORGE/DSP/Src/subdir.mk
-include Core/Startup/subdir.mk
-include Core/Src/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(CCM_DEPS)),)
-include $(CCM_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(CXXM_DEPS)),)
-include $(CXXM_DEPS)
endif
ifneq ($(strip $(C++M_DEPS)),)
-include $(C++M_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := OSCAR_P01_FlasherClient
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
OSCAR_P01_FlasherClient.elf \

MAP_FILES += \
OSCAR_P01_FlasherClient.map \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
OSCAR_P01_FlasherClient.list \


# All Target
all: main-build

# Main-build Target
main-build: OSCAR_P01_FlasherClient.elf secondary-outputs

# Tool invocations
OSCAR_P01_FlasherClient.elf OSCAR_P01_FlasherClient.map: $(OBJS) $(USER_OBJS) D:\Dev\Cube\OSCAR_P01_FlasherClient\STM32H743IITX_FLASH.ld makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-g++ -o "OSCAR_P01_FlasherClient.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m7 -T"D:\Dev\Cube\OSCAR_P01_FlasherClient\STM32H743IITX_FLASH.ld" --specs=nosys.specs -Wl,-Map="OSCAR_P01_FlasherClient.map" -Wl,--gc-sections -static --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -lstdc++ -lsupc++ -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

OSCAR_P01_FlasherClient.list: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "OSCAR_P01_FlasherClient.list"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) OSCAR_P01_FlasherClient.elf OSCAR_P01_FlasherClient.list OSCAR_P01_FlasherClient.map default.size.stdout
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST)

fail-specified-linker-script-missing:
	@echo 'Error: Cannot find the specified linker script. Check the linker settings in the build configuration.'
	@exit 2

warn-no-linker-script-specified:
	@echo 'Warning: No linker script specified. Check the linker settings in the build configuration.'

.PHONY: all clean dependents main-build fail-specified-linker-script-missing warn-no-linker-script-specified

-include ../makefile.targets
