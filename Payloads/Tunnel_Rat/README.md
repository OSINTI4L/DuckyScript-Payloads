<div align="center">
  
# Tunnel Rat

<img width="300" height="301" alt="rat" src="https://github.com/user-attachments/assets/cc05e1f5-54aa-4628-98bc-e9fae5d830ea" />

[github.com/OSINTI4L](https://github.com/OSINTI4L)

Built on Pineapple Pager firmware `v1.0.6`

</div>

## What is Tunnel Rat?
Tunnel Rat is a [Hak5 Pineapple Pager](https://shop.hak5.org/products/pager) payload designed to allow an attacker remote access to a target `wpa2-psk` network via SSH reverse tunneling to a virtual private server (VPS) being used as a Command and Control (C2) server. The payload assumes that the target network credentials are *not* known and manages techniques to allow network handshake packet capture (PCAP) files to be grabbed for the attacker to crack; allowing the Pager on the target network. The idea behind development of the payload is to allow a Pager to be implanted in a target environment and left to be accessed remotely.

## Payload Workflow:
1. User is prompted for the target `wpa2-psk` network SSID.
2. The pager then performs a 60 second scan of the wireless airspace to find the target network.
3. If found, the pager channel locks to the target network access point (AP) to optomize the radio for handshake capture.
5. The pager then checks to see if a handshake has already been captured, else performs a deauthentication attack against the target network, waits 60 sconds, and re-checks. If handshake is not present, the pager deauths and re-checks. The attack loops until a handshake is found.
6. Once a handshake has been captured the radio channel lock is lifted returning the radio to its default scanning environment.
7. When the pager captures a handshake it spawns the "management access point" (the AP used to connect to the pager wirelessly). This is done for two reasons.
  - To allow the attacker to retrieve the target network PCAP file (which has been re-named to be easily identifiable) so that they may crack it to get on the network.
  - When the attacker has successfully cracked the PCAP, the portal prompts the attacker to entire the cracked password to be used to get on the target network.
This means once planted the attacker never requires physical access to the pager again to interact with it.
8. Once the attacker has entered the target network password the management portal is shutdown to obfuscate its presence.
9. The pager then attempts to get on the target network.
10. Once connected to the target network the pager sends a `ping` to `discord.com` to check for internet availability.
11. If `ping` is successful the pager will grab the public IP address of the network and send it to an attacker defined `Discord Webhook`. This allows the attacker to be notified when the pager is online and also provides the IP address of the target network.
12. The pager then sends a `ping` request to the VPS C2 server to ensure it's online.
13. If online, the pager attempts to establish a reverse SSH tunnel to the VPS C2 server.
14. If successful, the pager notifies the attacker via aforementioned `Discord Webhook` that the tunnel is online.

The attacker now has full remote access to the pager via a reverse shell SSH tunnel, allowing further exploitation of the target network.
