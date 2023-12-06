# Project 0x0D. Web stack debugging #0

## Description
This project is part of the Webstack debugging series, which aims to train you in the art of debugging. As a Full-Stack Software Engineer, debugging is an essential skill, and this series provides broken/bugged webstacks for you to fix. The final goal is to create a Bash script that, when executed, will bring the webstack to a working state. Before writing the script, you should manually identify and fix the issues.

## Concepts
For this project, you are expected to be familiar with the following concepts:
- Network basics
- Docker
- Web stack debugging

## Background Context
Computers and software rarely work the way we want, and debugging is an essential part of the job. Being able to debug a webstack is crucial for a Full-Stack Software Engineer, and mastery requires practice.

In this debugging series, you'll receive broken/bugged webstacks, and your task is to fix them. The ultimate goal is to create a Bash script that automates the fixing process.

## Example
Consider the following example:

```bash
vagrant@vagrant:~$ docker run -d -ti ubuntu:14.04
# (output truncated for brevity)

vagrant@vagrant:~$ docker ps
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
76f44c0da25e        ubuntu:14.04        "/bin/bash"         13 seconds ago      Up 12 seconds        infallible_bhabha

vagrant@vagrant:~$ docker exec -ti 76f44c0da25e /bin/bash
root@76f44c0da25e:/# ls /tmp/
root@76f44c0da25e:/# cp /etc/passwd /tmp/
root@76f44c0da25e:/# echo OK > /tmp/isworking
root@76f44c0da25e:/# ls /tmp/
isworking  passwd
root@76f44c0da25e:/#

vagrant@vagrant:~$
```

In this example, the server must have a copy of the `/etc/passwd` file in `/tmp` and a file named `/tmp/isworking` containing the string "OK." The Bash script to fix this would be:

```bash
#!/usr/bin/env bash
# Fix my server with these magic 2 lines
cp /etc/passwd /tmp/
echo OK > /tmp/isworking
```

Note that interactive software such as emacs or vi cannot be used in the Bash script, and everything needs to be done from the command line.

## Installing Docker
For this project, you will be given a container to use. If you want to experiment locally, you can install Docker on your machine, Ubuntu 14.04 VM, or Ubuntu 16.04 VM.

- [Mac OS](https://docs.docker.com/desktop/install/mac/)
- [Windows](https://docs.docker.com/desktop/install/windows/)
- [Ubuntu 14.04](https://docs.docker.com/install/linux/docker-ce/ubuntu14.04/) (Note: Docker for Ubuntu 14 is deprecated, adjustments needed)
- [Ubuntu 16.04](https://docs.docker.com/install/linux/docker-ce/ubuntu/)

## Resources
- [curl](https://curl.se/docs/manual.html)

## Requirements
- Allowed editors: vi, vim, emacs
- Files interpreted on Ubuntu 14.04 LTS
- Files end with a new line
- README.md file at the root is mandatory
- All Bash script files must be executable
- Bash scripts must pass Shellcheck without errors
- Bash scripts must run without errors
- The first line of all Bash scripts should be `#!/usr/bin/env bash`
- The second line of all Bash scripts should be a comment explaining the script's purpose

## Author
Graham [olusiekwin](https://github.com/olusiekwin)

---

*This project is part of the curriculum at [Holberton School](https://www.holbertonschool.com/).*
