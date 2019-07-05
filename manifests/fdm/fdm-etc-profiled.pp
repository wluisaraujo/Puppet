# === Authors
#
# Author Name: 	<w.luis.araujo@gmail.com>
# Date Release: 21/Dezembro/2016
# Update:	27/Dezembro/2016

class profiled {

file { '/etc/profile.d/person-alias.sh':
  ensure  => file,
  mode    => '0440',
  owner   => 'root',
  group   => 'root',
  source  => '/etc/puppet/modules/fdm/files/profile.d/person-alias.sh',
}

# end class
}

class {'profiled': }
