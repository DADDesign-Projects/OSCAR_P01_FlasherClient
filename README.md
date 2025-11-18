# 🔌 Flasher Client for OSCAR_P01

**Flasher** is a utility that allows you to upload files (samples, images, fonts, etc.) into the processor board’s Flash memory through a USB connection.

The flasher is composed of two parts:

- 🖥️ **Windows Server** — Reads files and transfers them to the processor board via USB.  
- 🔧 **Client on the processor board** — Receives the files and writes them into Flash memory.

This repository contains the **client-side implementation**, dedicated to the **OSCAR_P01** hardware platform.

---

## ⚙️ Setup & Usage

1. 🛠️ **Compile, flash, and run** the client code on the OSCAR processor board.  
2. 🔗 **Connect** the processor board to your PC via USB.  
3. ▶️ On the PC, **launch `FlasherServer.exe`**, located in the `/@Flasher Server` directory of this repository.  
4. In **FlasherServer**:  
   - ➕ Add the files you want to transfer.  
   - 🔌 Select the correct **COM port** associated with OSCAR.  
   - 🚀 Start the transfer by clicking the **Flash** button.
     
![OSCAR](https://github.com/DADDesign-Projects/Daisy_QSPI_Flasher/blob/main/Illustrations/Flash.png)
---

## 🖼️ Image Conversion

Image files (`.jpg`, `.png`, `.gif`) are **automatically converted to RAW format**, directly usable by the **STM_GFX2** graphics library included in **FORGE**.

To access transferred files in your application, use the **`cFlasherStorage`** class from the FORGE framework.

---

## 🔗 Useful Links

- 🖥️ **Flasher Server Source Code**  
  https://github.com/DADDesign-Projects/Daisy_QSPI_Flasher  

- 🧩 **FORGE Framework Repository**  
  https://github.com/DADDesign-Projects/DAD_FORGE  

---
