REM TITLE: Annoying Linux
REM AUTHOR: OSINTI4L
REM TARGET OS: Linux (tested on Pop!_OS)
REM DESCRIPTION: An annoying payload that utilizes ducky/bash scripts to randomly turn on and off: wifi, capslock, numlock, press arrow keys, and teleport the mouse pointer around the screen.

The payload contains two parts:

1. [Annoying_Linux.sh](https://github.com/OSINTI4L/DuckyScript-Payloads/blob/main/Payloads/Annoying_Linux/Annoying_Linux.sh) Bash script.
2. [DuckyScript Payload](https://github.com/OSINTI4L/DuckyScript-Payloads/blob/main/Payloads/Annoying_Linux/payload.txt).

The DusckyScript payload will `wget` the `Annoying_Linux.sh` script hosted in the [Annoying_Linux](https://github.com/OSINTI4L/DuckyScript-Payloads/tree/main/Payloads/Annoying_Linux) directory and execute it. The script is responsible for toggling WiFi and mouse point movement. The other functionality is performed by the DuckyScript itself (toggling of capslock, numlock, press arrow keys, etc).
