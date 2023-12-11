# Project 0x0F. Load Balancer

## Description
This project aims to enhance our web stack by introducing redundancy for web servers using a load balancer. By doubling the number of web servers, we can handle more traffic and improve the overall reliability of our infrastructure. The project involves configuring two additional servers: `gc-[STUDENT_ID]-web-02-XXXXXXXXXX` and `gc-[STUDENT_ID]-lb-01-XXXXXXXXXX`.

## Concepts
For this project, focus on the following concepts:
- Load balancer
- Web stack debugging

## Background Context
To achieve redundancy and handle more traffic, two additional servers have been provided: `gc-[STUDENT_ID]-web-02-XXXXXXXXXX` and `gc-[STUDENT_ID]-lb-01-XXXXXXXXXX`. The goal is to automate the configuration of a new Ubuntu server to meet the project requirements.

## Resources
Read or watch the following resources for a better understanding:
- [Introduction to load-balancing and HAproxy](https://www.digitalocean.com/community/tutorials/an-introduction-to-haproxy-and-load-balancing-concepts)
- [HTTP header](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers)
- [Debian/Ubuntu HAProxy packages](https://haproxy.debian.net/)

## Requirements
### General
- Allowed editors: vi, vim, emacs
- All files interpreted on Ubuntu 16.04 LTS
- All files should end with a new line
- A README.md file at the root of the project folder is mandatory
- All Bash script files must be executable
- Bash scripts must pass Shellcheck (version 0.3.7) without any errors
- The first line of all Bash scripts should be exactly `#!/usr/bin/env bash`
- The second line of all Bash scripts should be a comment explaining the script's purpose

## Scripts
1. **install_load_balancer.sh**: Install and configure HAProxy on the load balancer server.
    ```bash
    #!/usr/bin/env bash
    # Install and configure HAProxy on the load balancer server
    ```

2. **web-02_config.sh**: Configure additional web server (`gc-[STUDENT_ID]-web-02-XXXXXXXXXX`).
    ```bash
    #!/usr/bin/env bash
    # Configure additional web server gc-[STUDENT_ID]-web-02-XXXXXXXXXX
    ```

3. **haproxy**: HAProxy configuration file.
    ```
    # HAProxy configuration file
    ```

## Author
Sylvain Kalache, co-founder at Holberton School

---

*This project is part of the curriculum at [Holberton School](https://www.holbertonschool.com/).*
