# === Authors
#
# Author Name: 	<w.luis.araujo@gmail.com>
# Date Release: 21/Dezembro/2016
# Update:	27/Dezembro/2016

class hosts {

host { 'blackbox': 	ensure => 'present', ip => '10.1.1.99',   host_aliases => ['nas'],		comment => 'u: wluisaraujo p:' }
host { 'gateway':  	ensure => 'present', ip => '192.168.1.254',  host_aliases => ['router'],	comment => 'u: root p:' }

#end class
}

{class 'hosts': }
