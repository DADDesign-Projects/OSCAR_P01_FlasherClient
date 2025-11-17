//==================================================================================
//==================================================================================
// File: FlasherClient.cpp
// Description: Utility for flashing QSPI Flash memory from a PC
//
// Copyright (c) 2024-2025 Dad Design.
//==================================================================================
//==================================================================================

//**********************************************************************************
// Includes and namespace
//**********************************************************************************
#include "FlasherClient.h"
#include "sections.h"

//**********************************************************************************
// Static constants
//**********************************************************************************
constexpr uint32_t NbPagesFlasher = FLASHER_MEM_SIZE / QFLAH_SECTOR_SIZE;

#define TAILLE_PAGES_QSPI    QFLAH_SECTOR_SIZE
#define NB_PAGES_QSPI        NbPagesFlasher
#define TAILLE_BLOC_TRANS    1024                            // Size of a single transmission block in bytes
#define NB_BLOC_TRANS        8                               // Number of transmission blocks per QSPI page

//**********************************************************************************
// QSPI memory layout structures
//**********************************************************************************

// ---------------------------------------------------------------------------------
// QSPI memory layout used by the flasher
typedef uint8_t Page[TAILLE_PAGES_QSPI];

struct stQSPI {
    Page Data[NB_PAGES_QSPI];                                // Pages used for storing file data
};

// ---------------------------------------------------------------------------------
// Transmission block structure (server side)
struct Bloc {
    char        StartMarker[4];                              // Block start marker (e.g. "BLOC")
    uint16_t    NumBloc;                                     // Block number
    uint8_t     _CRC;                                        // Checksum for data integrity
    uint8_t     _EndTrans;                                   // End-of-transmission flag
    uint8_t     Data[TAILLE_BLOC_TRANS];                     // Block payload data
    char        EndMarker[3];                                // Block end marker (e.g. "END")
};

// ---------------------------------------------------------------------------------
// Transmission block request structure (client side)
struct MsgClient {
    char        StartMarker[4];                              // Block start marker (e.g. "BLOC" or "STOP")
    uint16_t    NumBloc;                                     // Number of the expected block
};

//**********************************************************************************
// Global variables
//**********************************************************************************
stQSPI QFLASH_SECTION        __FlasherData;                  // QSPI flash memory structure
Dad::cBuff                   ___DataBuff(sizeof(Bloc)*2);    // Data buffer for transmission blocks
uint8_t                      __PageBuff[NB_BLOC_TRANS][TAILLE_BLOC_TRANS]; // Page buffer for block assembly

//**********************************************************************************
// Public methods
//**********************************************************************************

// ---------------------------------------------------------------------------------
// UsbCallbackFlasher - Reception of data read from USB serial link (COMxx)
// ---------------------------------------------------------------------------------
void UsbCallbackFlasher(uint8_t* buf, uint32_t* len) {
    uint8_t* pBuff = buf;                                    // Pointer to input buffer
    for(uint32_t Index = *len; Index != 0; Index--) {        // Process all received bytes
        ___DataBuff.addData(*pBuff++);                       // Add each byte to data buffer
    }
}

// ---------------------------------------------------------------------------------
// BlocProcess - Process a received block
// ---------------------------------------------------------------------------------
bool BlocProcess(uint16_t NumBloc) {
    Bloc* pBloc = (Bloc*)___DataBuff.getBuffPtr();           // Cast buffer to block structure

    // Validate block structure and markers
    if((pBloc->StartMarker[0] != 'B') ||
       (pBloc->StartMarker[1] != 'L') ||
       (pBloc->StartMarker[2] != 'O') ||
       (pBloc->StartMarker[3] != 'C') ||
       (pBloc->EndMarker[0] != 'E') ||
       (pBloc->EndMarker[1] != 'N') ||
       (pBloc->EndMarker[2] != 'D') ||
       (NumBloc != pBloc->NumBloc))
    {
        return false;                                        // Invalid block structure
    }

    // Copy block data to page buffer and calculate CRC
    uint8_t* pPageBuff = __PageBuff[NumBloc % NB_BLOC_TRANS]; // Target page buffer
    uint8_t* pBlocData = pBloc->Data;                        // Source block data
    uint8_t  CalcCRC = 0;                                    // CRC calculation variable

    for(uint16_t Index = 0; Index < TAILLE_BLOC_TRANS; Index++) {
        CalcCRC += *pBlocData;                               // Accumulate CRC
        *pPageBuff++ = *pBlocData++;                         // Copy data to page buffer
    }

    // Verify CRC checksum
    if(CalcCRC != pBloc->_CRC) {
        return false;                                        // CRC mismatch
    }

    // Check if page is complete and needs to be flashed
    if(((NumBloc % NB_BLOC_TRANS) == (NB_BLOC_TRANS - 1)) || (pBloc->_EndTrans != 0)) {
        uint16_t NumPage = NumBloc / NB_BLOC_TRANS;          // Calculate page number
        uint32_t adresseData = (uint32_t) &__FlasherData.Data[NumPage]; // Target QSPI address

        // Erase and write page to flash
        __Flash.EraseBlock4K(adresseData);
        __Flash.Write((uint8_t*)__PageBuff, adresseData, TAILLE_PAGES_QSPI);

        // Verify written data
        uint8_t* pQSPI = (uint8_t*) __FlasherData.Data[NumPage];     // QSPI data pointer
        uint8_t* pPageBuff = (uint8_t*) __PageBuff;                  // Source buffer pointer
        for(uint16_t Index = 0; Index < TAILLE_PAGES_QSPI; Index++) {
            if(*pPageBuff++ != *pQSPI++) {                   // Compare byte by byte
                return false;                                // Verification failed
            }
        }
    }

    // Return continuation status
    if(pBloc->_EndTrans != 0) {
        return false;                                        // End of transmission
    } else {
        return true;                                         // Continue processing
    }
}

// ---------------------------------------------------------------------------------
// FlasherClient - Main flasher client function
// ---------------------------------------------------------------------------------
void FlasherClient(void) {
    uint16_t  NumBloc = 0;                                   // Current block number
    MsgClient Msg;                                           // Client message structure
    bool      ResultProcess = false;                         // Block processing result

    // Initialize message start marker
    Msg.StartMarker[0] = 'B';
    Msg.StartMarker[1] = 'L';
    Msg.StartMarker[2] = 'O';
    Msg.StartMarker[3] = 'C';

    while(1) {
        // Reset to first block on error, otherwise move to next block
        if(ResultProcess == false) {
            NumBloc = 0;                                    // Reset block counter on error
        } else {
            HAL_GPIO_WritePin(LED_GPIO_Port, LED_Pin, GPIO_PinState::GPIO_PIN_SET); // Indicate success
            NumBloc++;                                       // Increment block counter
        }

        // Send request message to server
        ___DataBuff.Clear();                                // Clear reception buffer
        Msg.NumBloc = NumBloc;                              // Set requested block number
        CDC_Transmit_FS((uint8_t *)&Msg, sizeof(Msg));      // Transmit request via USB

        // Wait for block transmission with timeout
        uint16_t TimeOut = 0;                               // Timeout counter
        while(___DataBuff.getNbData() < sizeof(Bloc) && (TimeOut < VAL_TIMEOUT)) {
            TimeOut++;                                      // Increment timeout
            HAL_Delay(10);                                  // Wait 10ms
        }

        // Process received block or handle timeout
        if(TimeOut < VAL_TIMEOUT) {
            HAL_GPIO_WritePin(LED_GPIO_Port, LED_Pin, GPIO_PinState::GPIO_PIN_RESET); // Turn off LED
            ResultProcess = BlocProcess(NumBloc);           // Process the received block
        } else {
            HAL_GPIO_TogglePin(LED_GPIO_Port, LED_Pin);    // Toggle LED on timeout
            ResultProcess = false;                          // Mark as failed
        }
    }
}

//***End of file**************************************************************
