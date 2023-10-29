**Raw Markdown File:**

```markdown
# Scaling Up Web Infrastructure

## Introduction
This document outlines the design of a scalable web infrastructure for handling higher traffic levels. The infrastructure separates components, uses multiple servers, and configures a load balancer for improved performance and redundancy.

### Why Each Component?
- **Web Server:** Responsible for serving static content.
- **Application Server:** Handles dynamic content and application logic.
- **Database Server:** Manages data storage and retrieval.
- **Load Balancer (HAproxy):** Distributes incoming traffic across multiple servers for scalability and fault tolerance.

### Web Server
The web server serves static content efficiently.

### Application Server
The application server executes application logic and interacts with databases.

### Database Server
The database server manages data storage, security, and retrieval.

### Load Balancer (HAproxy)
HAproxy evenly distributes incoming traffic and ensures high availability through clustering.

### URLs
- **GitHub Repository:** [alx-system_engineering-devops](https://github.com/your-username/alx-system_engineering-devops)
- **Directory:** [0x09-web_infrastructure_design](https://github.com/your-username/alx-system_engineering-devops/0x09-web_infrastructure_design)
- **File:** [3-scale_up](https://github.com/your-username/alx-system_engineering-devops/0x09-web_infrastructure_design/3-scale_up)

## Infrastructure Diagram

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

```
