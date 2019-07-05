# === Authors
#
# Author Name: 	<w.luis.araujo@gmail.com>
# Date Release: 21/Dezembro/2016
# Update:	27/Dezembro/2016

class hostsallow {

file { '/etc/hosts.allow':
  ensure  => present,
  path    => '/etc/hosts.allow',
  content => "ALL: ALL: spawn /bin/echo \"Tentativa de acesso em [$(/bin/date)] - Origem [ %u@%h (%n) ]\" &>> /var/log/tcp-wrappers.log\n",
  mode    => '0644',
  owner   => 'root',
  group   => 'root',
}

#end class
}

class { 'hostsallow': }
