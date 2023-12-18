# 0x13. Firewall

## Description
This project focuses on implementing and understanding firewall configurations on servers. The goal is to secure your servers by setting up a firewall to control incoming and outgoing network traffic.

## Author
Sylvain Kalache, co-founder at Holberton School

## Project Schedule
- Start: Dec 18, 2023, 6:00 AM
- End: Dec 19, 2023, 6:00 AM
- Checker release: Dec 18, 2023, 12:00 PM
- Auto review will be launched at the deadline

## Weight
1

## Concepts
For this project, it is expected that you are familiar with the concept of web stack debugging.

## Background Context
Your servers without a firewall can be vulnerable to various security threats. The project emphasizes the importance of implementing a firewall to control the incoming and outgoing traffic on your servers.

## Resources
Read or watch:
- [What is a firewall](#)
- More Info

## Debugging with Telnet
As part of the debugging process, the use of telnet is encouraged. Telnet can be used to check if sockets are open between servers. For example, to check if port 22 is open on `web-02`:

```bash
sylvain@ubuntu$ telnet web-02.holberton.online 22
Trying 54.89.38.100...
Connected to web-02.holberton.online.
Escape character is '^]'.
SSH-2.0-OpenSSH_6.6.1p1 Ubuntu-2ubuntu2.8

Protocol mismatch.
Connection closed by foreign host.
sylvain@ubuntu$
```

In this example, the connection is successful. Now, attempting to connect to port 2222:

```bash
sylvain@ubuntu$ telnet web-02.holberton.online 2222
Trying 54.89.38.100...
^C
sylvain@ubuntu$
```

The connection never succeeds, and `ctrl+c` is used to terminate the process.

**Note:** The school network filters outgoing connections via a network-based firewall, so testing your work on `web-01` should be done from outside the school network, such as from your `web-02` server. If you SSH into your `web-02` server, the traffic will originate from `web-02`, bypassing the school's network firewall.

## Warning
- Containers on demand cannot be used for this project (Docker container limitation).
- Exercise caution when configuring firewall rules. For instance, if you deny port 22/TCP and log out of your server, you won't be able to reconnect via SSH, and recovery may not be possible. When installing UFW, note that port 22 is blocked by default, so unblock it immediately before logging out of your server.
