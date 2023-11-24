# 0x0A. Configuration Management

## Project Details

- **Author:** Graham Olusiekwin
- **Weight:** 1
- **Project Duration:** Nov 24, 2023, 6:00 AM - Nov 25, 2023, 6:00 AM
- **Checker Release:** Nov 24, 2023, 12:00 PM
- **Auto Review Deadline:** Project end deadline

## Background Context

While working for SlideShare, I developed an auto-remediation tool named Skynet, dedicated to monitoring, scaling, and fixing Cloud infrastructure. Skynet utilized MCollective, a parallel job-execution system, enabling the execution of commands on one or multiple servers simultaneously. The tool facilitated the application of actions to selected servers based on filters such as hostname or other metadata (e.g., server type, environment).

Unfortunately, a bug emerged in my code that passed nil to the filter method, leading to two significant issues:

1. MCollective interpreted nil as 'all servers.'
2. The action I sent was to terminate the selected servers.

This resulted in an unintended consequence: 75% of SlideShare's conversion infrastructure servers were shut down, impacting users' ability to convert PDFs, PowerPoint presentations, and videos.

Puppet played a crucial role in the recovery process, allowing us to restore the infrastructure to normal operation within one hour. Imagine the manual effort required to launch servers, configure and link them, import application code, start processes, and fix bugs in such a scenario. Writing Puppet code for infrastructure is an investment, but in the long term, it proves to be a must-have.

For a glimpse of the experience, check out my tweet: [here](https://twitter.com/devopsreact/status/836971570136375296).

## Resources

Read or watch:

- [Intro to Configuration Management](#)
- Puppet resource type: file (check "Resource types" for all manifest types in the left menu)
- [Puppet’s Declarative Language: Modeling Instead of Scripting](#)
- [Puppet lint](#)
- [Puppet emacs mode](#)

## Requirements

### General

- All files will be interpreted on Ubuntu 20.04 LTS.
- All files should end with a new line.
- A `README.md` file at the root of the folder of the project is mandatory.
- Your Puppet manifests must pass `puppet-lint` version 2.1.1 without any errors.
- Your Puppet manifests must run without error.
- Your Puppet manifests' first line must be a comment explaining what the Puppet manifest is about.
- Your Puppet manifests files must end with the extension `.pp`.

### Note on Versioning

- Your Ubuntu 20.04 VM should have Puppet 5.5 preinstalled.

### Installation Instructions

- Install Puppet:
  ```bash
  $ apt-get install -y ruby=1:2.7+1 --allow-downgrades
  $ apt-get install -y ruby-augeas
  $ apt-get install -y ruby-shadow
  $ apt-get install -y puppet
  ```

- Install `puppet-lint`:
  ```bash
  $ gem install puppet-lint
  ```

### Puppet 5 Docs

Refer to the [Puppet 5 Docs](#) for additional guidance.

## How to Run

1. Ensure you have met all the installation requirements.
2. Clone this repository.
3. Write your Puppet manifests following the specified guidelines.
4. Run `puppet-lint` on your manifests to ensure compliance.
5. Apply your Puppet manifests using the `puppet apply` command.
6. Check the result by inspecting the created file in `/tmp/school`.

**Note:** Adapt the paths and commands as needed for your specific environment.

## Additional Information

For any issues or questions, feel free to reach out. Happy configuring!
