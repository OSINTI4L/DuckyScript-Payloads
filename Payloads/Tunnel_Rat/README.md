<div align="center">
  
# Tunnel Rat

<img width="300" height="301" alt="rat" src="https://github.com/user-attachments/assets/cc05e1f5-54aa-4628-98bc-e9fae5d830ea" />

[github.com/OSINTI4L](https://github.com/OSINTI4L)

Built on Pineapple Pager firmware `v1.0.6`

</div>

## What is Tunnel Rat?
Tunnel Rat is a [Hak5 Pineapple Pager](https://shop.hak5.org/products/pager) payload designed to allow an attacker remote access to a target network via SSH reverse tunneling to a virtual private server (VPS) being used as a Command and Control (C2) server. The payload assumes that the target network credentials are *not* known and manages techniques to allow network handshake packet capture (PCAP) files to be grabbed for the attacker to crack to then allow the Pager on the target network.

## Payload Workflow:
