##
class tcpwrapper::hostsallow inherits tcpwrapper {

file { '/etc/hosts.allow':
  ensure  => present,
  path    => '/etc/hosts.allow',
  content => "ALL: ALL: spawn /bin/echo \"Tentativa de acesso em [$(/bin/date)] - Origem [ %u@%h (%n) ]\" &>> /var/log/tcpwrappers.log\n",
  mode    => '0644',
  owner   => 'root',
  group   => 'root',
  }

# end class
}
