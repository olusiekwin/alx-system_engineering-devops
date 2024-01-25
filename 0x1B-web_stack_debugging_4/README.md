# Web Stack Debugging #4

## Description
This project aims to debug a web stack on an Ubuntu 14.04 LTS server. The goal is to identify and fix issues causing unexpected behavior or errors in the web server setup.

## Requirements
- All files will be interpreted on Ubuntu 14.04 LTS.
- All files should end with a new line.
- A README.md file at the root of the folder of the project is mandatory.
- Puppet manifests must pass puppet-lint version 2.1.1 without any errors.
- Puppet manifests must run without error.
- Puppet manifests' first line must be a comment explaining what the Puppet manifest is about.
- Puppet manifests files must end with the extension .pp.
- Files will be checked with Puppet v3.4.

## Installation
To install puppet-lint, follow these steps:
```
$ apt-get install -y ruby
$ gem install puppet-lint -v 2.1.1
```

## Author
Sylvain Kalache, co-founder at Holberton School
