class profile::base {
  package { 'vim': ensure => installed }

  file { '/etc/motd':
    ensure  => file,
    content => "Managed by Puppet on ${facts['networking']['fqdn']}\n",
    mode    => '0644',
  }

  file { '/tmp/hiera-test':
    ensure  => file,
    content => lookup('message', String, 'first', 'NO MESSAGE FROM HIERA'),
    mode    => '0644',
  }
}
