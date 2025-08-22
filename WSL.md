# Flashing Miao from WSL
I have not confirmed which steps that are needed, so some might be skipped.

## Install Zadig and WinUSB drivers
The [wchisp](https://github.com/ch32-rs/wchisp?tab=readme-ov-file) documentation mentions installing
Zadig. Once done, put the Miao in bootloader mode and locate it in Zadig (VID=4348, PID=55E0).
Install the WinUSB drivers.

## Udev rules
The [wchisp](https://github.com/ch32-rs/wchisp?tab=readme-ov-file) documentation specifies that we
need to set udev rules (inside WSL):
```
# /etc/udev/rules.d/50-wchisp.rules
SUBSYSTEM=="usb", ATTRS{idVendor}=="4348", ATTRS{idProduct}=="55e0", MODE="0666"
# or replace MODE="0666" with GROUP="plugdev" or something else
```

## Install usbipd
Follow [the instructions](https://learn.microsoft.com/en-us/windows/wsl/connect-usb) to attach USB
devices to WSL.

1. In an administator PowerShell, make sure to bind the device.
2. Attach it in a regular PowerShell, before running the flash command in WSL.
3. Flash from WSL. The timing is tight, as the Miao only stays in bootloader mode for a short time.

