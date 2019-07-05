# === Authors
#
# Author Name: 	<w.luis.araujo@gmail.com>
# Date Release: 21/Dezembro/2016
# Update:	27/Dezembro/2016

class sudo {

package { 'sudo':
  ensure => 'latest',
}

file { '/etc/sudoers.d/virt-sudoers':
  ensure  => file,
  mode    => '0440',
  owner   => 'root',
  group   => 'root',
  source  => '/etc/puppet/modules/fdm/files/virt-sudoers',
  require => Package['sudo'],
}

# end class
}

class { 'sudo': }
