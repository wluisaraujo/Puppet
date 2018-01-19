##
class sysctlconfs::vmdropcaches inherits sysctlconfs {

file { '99-vmdropcaches.conf':
  ensure  => present,
  path    => '/etc/sysctl.d/98-vmdropcaches.conf',
  content => "vm.drop_caches = 3",
  mode    => '0640',
  owner   => 'root',
  group   => 'root',
  }

# end class
}
