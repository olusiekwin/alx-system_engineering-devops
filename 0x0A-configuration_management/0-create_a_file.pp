# 0-create_a_file.pp
# Puppet manifest to create a file in /tmp

# Ensure the /tmp directory exists
file { '/tmp':
  ensure => directory,
}

# Create the file /tmp/school
file { '/tmp/school':
  ensure  => file,
  mode    => '0744',
  owner   => 'www-data',
  group   => 'gray', # Adjusted group ownership
  content => 'I love Puppet',
}
