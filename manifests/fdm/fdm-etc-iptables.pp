# === Authors
#
# Author Name: 	<w.luis.araujo@gmail.com>
# Date Release: 21/Dezembro/2016
# Update:	27/Dezembro/2016

class iptables {

file {'/etc/iptables':
  ensure => directory,
  mode   => '0550'
}

file {'/etc/init.d/firewall':
  ensure  => file,
  mode    => '0551',
  source  => '/etc/puppet/modules/fdm/files/iptables/firewall',
  require => File['/etc/iptables'],
}

file {'/etc/iptables/ports.txt':
  ensure  => file,
  mode    => '0440',
  source  => '/etc/puppet/modules/fdm/files/iptables/ports.txt',
  require => File['/etc/iptables'],
}

file {'/etc/iptables/vars':
  ensure  => file,
  mode    => '0550',
  source  => '/etc/puppet/modules/fdm/files/iptables/vars',
  require => File['/etc/iptables'],
}

file {'/etc/iptables/rules':
  ensure  => file,
  mode    => '0550',
  source  => '/etc/puppet/modules/fdm/files/iptables/rules',
  require => File['/etc/iptables/vars'],
}

# end class
}

class {'iptables': }
