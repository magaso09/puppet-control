class profile::base {
  package { 'vim': ensure => installed }

  file { '/etc/motd':
    ensure  => file,
    content => "Managed by Puppet on ${facts['networking']['fqdn']}\n",
  }

  file { '/tmp/hiera-test':
    ensure  => file,
    content => lookup('message'),
  }
}

