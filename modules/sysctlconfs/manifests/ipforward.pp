##
class sysctlconfs::ipforward inherits sysctlconfs {

file { '99-ipforward.conf':
  ensure  => present,
  path    => '/etc/sysctl.d/99-ipforward.conf',
  content => "net.ipv4.ip_forward = 1",
  mode    => '0640',
  owner   => 'root',
  group   => 'root',
  }

# end class
}
