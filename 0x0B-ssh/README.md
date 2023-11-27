# 0x0B. SSH Configuration Management

## Overview

This project focuses on SSH configuration and management, covering topics related to DevOps, Networking, SysAdmin, and Security. The project is assigned a weight of 1 and is an ongoing second chance project that began on Nov 24, 2023, at 6:00 AM, with a deadline of Nov 30, 2023, at 6:00 AM. An auto review will be conducted at the deadline.

### Project Progress
- Auto QA review: 0.0/8 mandatory & 0.0/2 optional
- Altogether: 0.0%
- Mandatory: 0.0%
- Optional: 0.0%
- Calculation: 0.0% + (0.0% * 0.0%) == 0.0%

## Background Context

In this project, you have been provided with an Ubuntu server located in a distant data center. Unlike level 2 of the application process, the connection to this server is done using SSH with an RSA key instead of a password. The server is configured with the public key created in the first task of a previous project, which is shared in your intranet profile.

You can find the server information in the "My Servers" section of the intranet, including the IP and username for connecting via SSH. The server environment is Ubuntu 20.04 LTS.

### Resources

Read or watch:
- [What is a (physical) server - text](#)
- [What is a (physical) server - video](#)
- [SSH essentials](#)
- [SSH Config File](#)
- [Public Key Authentication for SSH](#)
- [How Secure Shell Works](#)
- [SSH Crash Course](#) (Long but highly informative. Watch at x1.25 speed or above.)

For reference:
- [Understanding the SSH Encryption and Connection Process](#)
- [Secure Shell Wiki](#)
- [IETF RFC 4251](#) (Description of the SSH Protocol)

Man or help:
- `ssh`
- `ssh-keygen`
- `env`

## Learning Objectives

By the end of this project, you should be able to explain the following without the help of Google:

**General:**
- What is a server?
- Where servers usually live.
- What is SSH?
- How to create an SSH RSA key pair.
- How to connect to a remote host using an SSH RSA key pair.
- The advantage of using `#!/usr/bin/env bash` instead of `/bin/bash`.

## Copyright - Plagiarism

You are expected to come up with solutions for the tasks on your own to meet the learning objectives. Copying and pasting someone else's work or publishing the content of this project is strictly forbidden and will result in removal from the program.

## Requirements

**General:**
- Allowed editors: vi, vim, emacs.
- All your files will be interpreted on Ubuntu 20.04 LTS.
- All your files should end with a new line.
- A `README.md` file at the root of the folder is mandatory.
- All your Bash script files must be executable.
- The first line of all your Bash scripts should be exactly `#!/usr/bin/env bash`.
- The second line of all your Bash scripts should be a comment explaining what the script is doing.

**Your Servers:**
| Name          | Username  | IP         | State |
| ------------- | --------- | ---------- | ----- |
| 127109-web-01 | [username] | [IP]       |       |

## Project Structure

Include a folder structure or details about how your project files are organized.

## Usage

Provide instructions on how to use or run the scripts in your project.

## Author

Sylvain Kalache

## Project Details

- Start Date: Nov 24, 2023, 6:00 AM
- End Date: Nov 30, 2023, 6:00 AM
- Auto Review Deadline: Nov 30, 2023, 6:00 AM

---

*Note: Replace [username] and [IP] in the table with the actual username and IP information.*