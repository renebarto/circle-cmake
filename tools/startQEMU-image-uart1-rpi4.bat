@echo off
set thisdir=%~dp0

call %thisdir%\build-target-rpi4 %1
"c:\Program Files\qemu\qemu-system-aarch64.exe" -M raspi4b -kernel %thisdir%\..\deploy\Debug\%1-image\kernel8-rpi4.img -serial null -serial stdio -s -S
