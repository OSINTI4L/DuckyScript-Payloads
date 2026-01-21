<div align="center">
  
# 📟 Tunnel Rat 🐀

<img width="300" height="301" alt="rat" src="https://github.com/user-attachments/assets/cc05e1f5-54aa-4628-98bc-e9fae5d830ea" />

[github.com/OSINTI4L](https://github.com/OSINTI4L)

Built on Pineapple Pager firmware `v1.0.6`

</div>

## 🐁 What is Tunnel Rat?
Tunnel Rat is a [Hak5 Pineapple Pager](https://shop.hak5.org/products/pager) payload designed to allow an attacker remote access to a target `wpa2-psk` network via `SSH` reverse tunneling to a virtual private server (VPS) being used as a Command and Control (C2) server. The payload assumes that the target network credentials are *not* known and manages techniques to allow network handshake packet capture (PCAP) files to be grabbed for the attacker to crack; allowing the pager on the target network. The idea behind development of the payload is to allow a pager to be implanted in a target environment and left to be accessed remotely for network exploitation.

## 🔄 Payload Workflow
**1.** User is prompted for the target `wpa2-psk` network SSID.

**2.** The pager then performs a 60 second scan of the wireless airspace to find the target network.

**3.** If found, the pager channel locks to the target network access point (AP) to optomize the radio for handshake capture.

**4.** The pager then checks to see if a handshake has already been captured, else performs a deauthentication attack against the target network, waits 60 sconds, and re-checks. If handshake is not present, the pager deauths and re-checks. The attack loops until a handshake is found.

**5.** Once a handshake has been captured the radio channel lock is lifted returning the radio to its default scanning environment.

**6.** When the pager captures a handshake it spawns the "management access point" (the AP used to connect to the pager wirelessly). This is done for two reasons:

  - To allow the attacker to retrieve the target network PCAP file (which has been re-named to be easily identifiable) so that they may crack it.
      
  - When the attacker has successfully cracked the PCAP, the portal prompts the attacker to entire the cracked password to be used to get on the target network.

<img width="400" height="282" alt="pager" src="https://github.com/user-attachments/assets/acdf5ed8-40e4-43f6-9169-9c78b5f07bf3" />
  
**This means once the pager is implanted the attacker never requires physical access to the pager to interact with it, it is accessed covertly via the management AP.**

**7.** Once the attacker has entered the target network password the management portal is shutdown to obfuscate its presence.

**8.** The pager then attempts to get on the target network.

**9.** Once connected to the target network the pager sends a `ping` to discord.com to check for internet availability.

**10.** If `ping` is successful the pager will grab the public IP address of the network and send it to an attacker defined Discord webhook. This allows the attacker to be notified when the pager is online and also provides the IP address of the target network.
  
<img width="685" height="70" alt="hook1" src="https://github.com/user-attachments/assets/4af6455b-5f81-4b29-a0f5-07eb0d67df2d" />

**11.** The pager then sends a `ping` request to the VPS C2 server to ensure it's online.

**12.** If online, the pager attempts to establish a reverse `SSH` tunnel to the VPS C2 server.

**13.** If successful, the pager notifies the attacker via aforementioned Discord webhook that the tunnel is online.
  
<img width="772" height="50" alt="hook2" src="https://github.com/user-attachments/assets/fefd4c95-fccf-45d4-be3c-0011599dd34a" />
  
**The attacker now has full remote access to the pager via a reverse shell `SSH` tunnel, allowing further exploitation of the target network.**

<img width="450" height="465" alt="kali" src="https://github.com/user-attachments/assets/00a2e1da-fb47-471e-b4e3-04e447bb9a93" />

## Dependencies
**1. Virtual Private Server (VPS) Command and Control (C2)**
  
  - A VPS is required to host as the attacker C2 platform. During payload development a [Linode Kali Linux VPS](https://www.linode.com/docs/marketplace-docs/guides/kali-linux/) was used as a C2 platform.

**2. Discord webhook**
  - A [Discord webhook](https://support.discord.com/hc/en-us/articles/228383668-Intro-to-Webhooks) is required to send payload status updates to the attacker.

**3. `sshpass`**
  - Due to streamlining the `SSH` connection (as it's ran in the background on the pager) a password is used for `SSH` authentication to the VPS C2. `sshpass` must be installed on the pager via:
      `opkg update && opkg install -d mmc sshpass`
