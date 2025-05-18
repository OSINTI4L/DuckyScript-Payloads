REM TITLE: Screen_Peeker

REM AUTHOR: OSINTI4L (https://github.com/OSINTI4L)

REM TARGET OS: Linux (tested on Kali Linux)

REM DESCRIPTION: Screen_Peeker will unset the terminal history, download a Bash script (`.sp.sh`) that will embed itself as a cronjob, take a screenshot of target system, exfiltrate the screenshot via Discord webhook, and then shred the file to obfuscate. Place Discord webhook in line 6.

The frequency of when the script is ran can be changed in line 19 via the `* * * * *` field. By default it will take a screenshot and exfiltrate it every minute.

The payload contains two parts:
1. [.sp.sh](https://github.com/OSINTI4L/DuckyScript-Payloads/blob/main/Payloads/Screen_Peeker/.sp.sh) - Bash script that will perform the screenshot and exfiltration.
2. [DuckyScript Payload](https://github.com/OSINTI4L/DuckyScript-Payloads/blob/main/Payloads/Screen_Peeker/payload.txt) - Used to download and setup .sp.sh onto the target system.
