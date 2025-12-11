<div align="center">
  
# PlunderPIN

</div>

**Title:** PlunderPIN

**Author:** OSINTI4L

**Target Os:** Android mobile device/Google Chrome (tested on Samsung S24 FE | One UI V8.0 | Android 16 | Google Chrome Browser 143.0.7499.53).

## What is PlunderPIN?

PlunderPIN is DuckyScript phishing payload designed to trick a user into entering their mobile lockscreen PIN which is then logged in the `access.log` file of an Apache webserver. This is done so that an attacker can use the phished PIN for futher attacks against the mobile device, as they can now defeat the lockscreen and have total access as well as utilize the PIN for other authentication required applications and services. For testing pruposes the webserver will be hosted over LAN (both the attacker machine and target device must be on the same LAN), but can easily be hosted over the internet.

### How it works

An attacker will host a malicious "Google homepage" clone on an Apache webserver. The malicious homepage (homepage.html) will be injected by the USB RubberDucky or O.mg cable to the target mobile device. Once injected, it will configure the homepage in the Google Chrome Browser user settings so that the homepage is now "swapped"

**The homepage.html**
  - Features:
    - Dark and Light mode variations that will render according to device settings.
    - A useable search bar and buttons that will forward the user input as a Google search request.
    - Cookie mechanism to ensure that PIN is entered.
![DM](https://github.com/user-attachments/assets/3a776008-0b27-475b-b9ca-809eaa5928b2)
![LM](https://github.com/user-attachments/assets/dfbc4161-f62e-45b8-922b-9d4ab73282f2)


<img width="889" height="254" alt="alog" src="https://github.com/user-attachments/assets/fc90870a-b106-4324-80e3-0463b69603e3" />


### Setting up the Apache webserver using a [Kali Linux](https://www.kali.org) box
1. Once you have spun-up an instance of Kali (our attacker machine), you must first find the IP address of the machine. This can be found via `ifconfig`, store the IP address as it will be needed in multiple places momentarily.
     
2. Download the homepage.html file from the PlunderPIN repository (described next). This will be the homepage that our malicious URL will point to.

3. Move the homepage.html file (downloaded to your current working directory to the Apache webserver:
    - `sudo mv homepage.html /var/www/html`

4. Start the Apache webserver:
    - `sudo systemctl start apache2`

### payload.txt
The payload.txt file is the delivery system for configuration of the Google Chrome browser.

**The URL pointing to the Apache webserver must be defined in line 7 of the payload.txt.** The URL to the webserver is the following: `http://x.x.x.x:/homepage.html` (replacing the IP parameter with the IP address of the attacker machine). E.g., `http://192.168.8.100/homepage.html`. This will point to the homepage.html file that has been previously configured during the webserver setup stage.

An additional layer of obfuscation can be had by utilizing a URL shortening service (e.g., [Tinyurl](https://tinyurl.com/)). After placing the `http://x.x.x.x/homepage.html` URL into the shortener, you will then use the shortened URL as the constant defined in line 7.

The payload workflow is as follows:
  - Chrome browser is opened.
  - A new tab is opened to ensure the proper browser environment is present for the script to run without issues.
  - The browser is then navigated to the settings menu where the malicious Apache webserver URL is placed.
  - All tabs are then closed.
  - All applications are then closed and the phone returns to the home screen. This is necessary for obfuscation purposes and to allow the browser to automatically navigate to the malicious homepage when opened.
