//==================================================================================
//==================================================================================
// File: HardwareAndCoFlasher.h
// Description: Centralized initialization and management of OSCAR_P01_FlasherClient
//              hardware resources and software components
//
// Copyright (c) 2025 Dad Design.
//==================================================================================
//==================================================================================

#pragma once

//**********************************************************************************
// Includes
//**********************************************************************************
#include "main.h"
#include "Sections.h"

//**********************************************************************************
// External functions
//**********************************************************************************
extern void Error_Handler(void);              		// System error handler
extern void MPU_Config(void);                 		// Memory Protection Unit configuration
extern void HardwareAndCoFlasherInitialize(void);   // Hardware initialization function
extern void MainLoopFlasher(void);                  // Main application loop

//**********************************************************************************
// SDRAM configuration
//**********************************************************************************
#include "IS42S16320.h"
#define SDRAM_ADDRESS  0xC0000000  // SDRAM base address

//**********************************************************************************
// FLASH - W25Q128 in double mode
//**********************************************************************************
#include "W25Q128.h"
extern DadDrivers::cW25Q128 __Flash;  // External flash memory instance

//***End of file**************************************************************
