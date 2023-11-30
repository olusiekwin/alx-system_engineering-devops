# Web Server Project - 0x0C

## Project Overview

- **Author:** Graham Olusiekwin
- **Weight:** 1
- **Project Duration:** Nov 27, 2023, 6:00 AM to Nov 29, 2023, 6:00 AM
- **Auto Review:** Will be launched at the deadline

## Project Summary

- **Auto QA Review:** 0.0/13 mandatory & 0.0/4 optional
- **Altogether:** 0.0%
  - **Mandatory:** 0.0%
  - **Optional:** 0.0%
- **Calculation:** 0.0% + (0.0% * 0.0%) == 0.0%

## Concepts

### What is a Child Process?

In this project, understanding the concept of a child process is crucial. It plays a role in how tasks will be graded, focusing on the configuration of the web-01 server and the use of Bash scripts for automation.

## Background Context

This project assesses tasks on two key aspects:

1. **Web-01 Server Configuration:** Ensure the server is configured as per requirements.
2. **Automation with Bash Scripts:** Include a Bash script in your answer file that automates commands for configuring an Ubuntu machine without human intervention.

For example, if a task involves creating a file `/tmp/test` with the string "hello world" and modifying Nginx's configuration to listen on port 8080 instead of 80, the answer file should contain a Bash script like:

```bash
#!/usr/bin/env bash
# Configuring a server with specification XYZ
echo hello world > /tmp/test
sed -i 's/80/8080/g' /etc/nginx/sites-enabled/default
```

This emphasizes the importance of automation in handling tasks efficiently.

## Tips

- **Testing Bash Script:** Reproduce the checker environment using a Ubuntu 16.04 sandbox to test your Bash script's behavior.

## Resources

Read or watch the following to enhance your understanding:

- How the web works
- Nginx and how to configure it
- Child process concept page
- Root and subdomain
- HTTP requests and redirection
- HTTP response codes, including "Not found"
- Linux log files

For reference, consult RFC 7231 (HTTP/1.1) and RFC 7540 (HTTP/2). Additionally, familiarize yourself with commands like `scp` and `curl`.

## Learning Objectives

Upon completion of this project, you should be able to explain the following without relying on external sources:

- **General:**
  - The main role of a web server
  - What a child process is
  - Why web servers typically have parent and child processes
  - The main HTTP requests
- **DNS:**
  - What DNS stands for
  - The main role of DNS
  - DNS record types: A, CNAME, TXT, MX

## Copyright - Plagiarism

- Solutions for tasks must be original to meet learning objectives.
- No content from this project should be published.
- Strict prohibition of any form of plagiarism, leading to removal from the program.

## Requirements

- **General:**
  - Editors: vi, vim, emacs
  - Interpretation on Ubuntu 16.04 LTS
  - Files end with a newline
  - Mandatory README.md file at the root
  - Bash script files must be executable
  - Scripts must pass Shellcheck (version 0.3.7) without errors
  - First line of Bash scripts: `#!/usr/bin/env bash`
  - Second line: Comment explaining the script's purpose
  - Avoid using `systemctl` for process restarts

## Quiz Questions

Congratulations on completing the quiz successfully! Keep up the good work!

## Your Servers

| Name           | Username | IP             | State   |
| -------------- | -------- | -------------- | ------- |
| 127109-web-01  | ubuntu   | 54.160.83.246  | running |

