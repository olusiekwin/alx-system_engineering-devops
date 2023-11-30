#!/usr/bin/env puppet

# SSH client configuration
file { '/etc/ssh/ssh_config':
  ensure  => present,
  content => "
    # SSH client configuration
    Host *
      IdentityFile ~/.ssh/school
      PasswordAuthentication no
  ",
}

