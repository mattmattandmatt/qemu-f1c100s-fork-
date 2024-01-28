@echo off
rem swap input argument \ for / and remove first 2 chars (C:)
set pathy=%1
set pathy=%pathy:\=/%
echo on

C:\Windows\Sysnative\wsl.exe /home/user/qemu-f1c100s/build/qemu-system-arm -S -gdb tcp::1234,ipv4 -kernel "/mnt/c%pathy:~2%" -M allwinner-f1c100s -m 32 -nographic -drive if=mtd,file=./FW-8meg-for-qemu.BIN,format=raw
