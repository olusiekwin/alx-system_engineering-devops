# Three-Server Web Infrastructure for www.foobar.com

## Introduction
This document outlines the design of a three-server web infrastructure to host the website www.foobar.com. We'll cover the requirements, the purpose of each element, specific configurations, and potential issues with this setup.

### Why Each Element?
- **2 Servers:** To distribute the load and add redundancy for reliability.
- **Nginx Web Server:** To handle HTTP requests and serve static content.
- **Application Server:** To process dynamic content and application logic.
- **HAproxy Load Balancer:** To evenly distribute incoming requests between servers.
- **Application Files:** Your codebase for the website.
- **MySQL Database:** To store structured data.

### Load Balancer Distribution Algorithm
The HAproxy load balancer will be configured with a round-robin distribution algorithm. This algorithm evenly distributes incoming requests in a cyclic manner, ensuring that each server receives an approximately equal share of the traffic.

### Active-Active vs. Active-Passive Setup
This infrastructure employs an Active-Active setup. In an Active-Active configuration, both servers are actively serving traffic simultaneously. Active-Passive, on the other hand, has one server actively serving while the other is on standby, ready to take over in case of failure.

### Database Primary-Replica (Master-Slave) Cluster
The MySQL database operates as a Primary-Replica (Master-Slave) cluster. The Primary node is the master, handling write operations and maintaining data consistency. The Replica node replicates data from the Primary node and handles read operations, thus offloading the Primary node.

### Difference Between Primary and Replica Nodes
- **Primary Node:** Handles write operations, such as inserting or updating data. It is responsible for maintaining data consistency and integrity.
- **Replica Node:** Handles read operations, such as retrieving data. It replicates data from the Primary node to ensure high availability and improved read performance.

## Issues with the Infrastructure
1. **Single Points of Failure (SPOF):** Each server (Nginx, Application Server) and the load balancer individually represent SPOFs. A failure in any of these components can lead to downtime.
2. **Security Issues:** The infrastructure lacks a firewall, leaving it vulnerable to unauthorized access and attacks. Additionally, there is no HTTPS, which poses a security risk for data in transit.
3. **No Monitoring:** There's no monitoring system in place to detect and address issues promptly. Monitoring is crucial for identifying performance problems and potential security breaches.

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
                  |                    |
           +------|-----+          +---|------+
           | HAproxy  |          | MySQL DB |
           | Load     |          | Primary  |
           | Balancer |          | Node     |
           +------|-----+          +---|------+
                  |                    |
           +------|-----+          +---|------+
           |           |          | Replica  |
           |           |          | Node     |
           |           |          +---|------+
           |           |              |
           |           |          +---|------+
           |           |          | Replica  |
           |           |          | Node     |
           |           |          +---|------+
           +-----------+              |


```