# Secured and Monitored Three-Server Web Infrastructure for www.foobar.com

## Introduction
This document outlines the design of a three-server web infrastructure for www.foobar.com with an emphasis on security, encrypted traffic (HTTPS), and monitoring. We'll discuss the requirements, the purpose of each element, specific configurations, and potential issues with this setup.

### Why Each Element?
- **3 Firewalls:** To protect the infrastructure from unauthorized access, threats, and malicious traffic.
- **SSL Certificate:** To enable encrypted communication over HTTPS, ensuring data security during transmission.
- **Monitoring Clients:** To collect and analyze data on the performance and security of the infrastructure.

### What Are Firewalls For?
Firewalls are used to filter and control incoming and outgoing network traffic, acting as a barrier between the internet and the infrastructure. They help prevent unauthorized access, block malicious traffic, and enhance security.

### Why Serve Traffic Over HTTPS?
Traffic is served over HTTPS to encrypt the data transmitted between the server and the user's browser. This encryption ensures data confidentiality, integrity, and authenticity, making it more secure against eavesdropping and data manipulation.

### What Monitoring Is Used For?
Monitoring is used to track and analyze the performance, availability, and security of the infrastructure. It helps identify and address issues proactively, ensuring the system operates smoothly.

### How the Monitoring Tool Collects Data
The monitoring tool collects data through monitoring clients (e.g., data collectors for Sumo Logic). These clients collect data from various sources, including server logs, system metrics, and network activity, and send it to the monitoring tool for analysis and visualization.

### Monitoring Web Server QPS
To monitor the web server's Query Per Second (QPS), the monitoring tool can collect data on the number of incoming requests and responses, measuring the server's performance under varying loads. Alerts can be set up to trigger notifications if QPS exceeds acceptable limits.

## Issues with the Infrastructure
1. **Terminating SSL at the Load Balancer Level:** Terminating SSL at the load balancer level can be an issue as it means that SSL decryption happens before reaching the web servers. While this improves performance, it exposes the internal network to potential security risks.

2. **Single MySQL Server Accepting Writes:** Having only one MySQL server capable of accepting writes poses a single point of failure. In the event of a database failure, write operations would be disrupted. Implementing a high-availability database cluster with multiple nodes is a more robust solution.

3. **Uniform Components Across Servers:** Having servers with identical components (database, web server, and application server) can be problematic because if a vulnerability or issue affects one server, it can potentially impact all others. Diversifying server configurations can help minimize this risk.

```
                       +-----------+
                       |   User    |
                       |  Browser  |
                       +-----|-----+
                             |
                       +-----|-----+
                       | Internet  |
                       +-----|-----+
                             |
                       +-----|-----+
                       |  Domain   |
                       |  foobar.com|
                       | Configured |
                       |   to LB   |
                       +-----|-----+
                             |
                +---------+|+--------+
                |                    |
         +------|-----+          +---|------+
         | Server 1  |          | Server 2 |
         |           |          |           |
         |  +-----+  |          |  +-----+  |
         |  |Nginx|  |          |  |Nginx|  |
         |  +-----+  |          |  +-----+  |
         |  +-----+  |          |  +-----+  |
         |  | App |  |          |  | App |  |
         |  |Server| |          |  |Server|  |
         |  +-----+  |          |  +-----+  |
         |           |          |           |
         +------|-----+          +---|------+
                |                    |
         +------|-----+          +---|------+
         | HAproxy  |          | MySQL DB |
         | Load     |          | Primary  |
         | Balancer |          | Node     |
         +------|-----+          +---|------+
                |                    |
         +------|-----+          +---|------+
         | Firewall |          | Firewall |
         | 1        |          | 2        |
         |          |          |          |
         |          |          |          |
         +------|-----+          +---|------+
                |                    |
         +------|-----+          +---|------+
         | Firewall |          | Monitoring|
         | 3        |          | Clients  |
         |          |          | (SumoLogic|
         |          |          |  or others)|
         +-----------+          +-----------+


```