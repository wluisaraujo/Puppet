# === Authors
#
# Author Name: 	<w.luis.araujo@gmail.com>
# Date Release: 21/Dezembro/2016
# Update:	27/Dezembro/2016

class services { 

service { 'bluetooth.service':	ensure => 'stopped', enable => 'false', }
service { 'chronyd.service':	ensure => 'running', enable => 'true',  }
service { 'cups.service':	ensure => 'stopped', enable => 'false', }
service { 'iked.service':	ensure => 'stopped', enable => 'false', }

case $::operatingsystem {
centos, redhat, fedora: {$apache = "httpd"}
debian, ubuntu: 	{$apache = "apache2"}
}

service { $apache :		ensure => 'stopped', enable => 'false',	}

case $::operatingsystem {
centos, redhat, fedora: {$ssh = "sshd"}
debian, ubuntu: {$ssh = "ssh"}
}

service { $ssh :		ensure => 'stopped', enable => 'false', }

service { 'vboxdrv.service':	ensure => 'running', enable => 'true',  }
service { 'dkms.service':	ensure => 'running', enable => 'true',  }

#end class
}

class {'services': }
