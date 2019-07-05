# === Authors
#
# Author Name: 	<w.luis.araujo@gmail.com>
# Date Release: 21/Dezembro/2016
# Update:	15/Julho/2017

class programinstalled {

#case $::operatingsystem {
#centos: {$name = "value"}
#fedora: {$name = "value"}
#redhat: {$name = "value"}
#debian: {$name = "value"}
#ubuntu: {$name = "value"}
#default: { 
#  fail("sistema operacional desconhecido")
#  }
#}

$packages = [ 'ansible',
'autofs', 
'bash-completion', 
'bind-utils', 
'binutils', 
'bwm-ng',
'cabextract', 
'ccze', 
'cifs-utils', 
'curl', 
'dialog',
'dkms', 
'ftp', 
'gcc', 
#'geany', 
'glibc-devel', 
'glibc-headers', 
'gnome-gmail',
'gnome-icon-theme-legacy', 
'gnome-shell-extension-alternate-tab',
'gnome-shell-extension-drive-menu', 
#'gnome-shell-extension-pidgin',
'gnome-shell-extension-places-menu', 
'gnome-shell-extension-window-list', 
'gnome-tweak-tool', 
'htop', 
'icedtea-web',
#'ike', 
'java-openjdk',
#'keepass', 
'kernel-headers', 
'libcurl', 
'libgomp', 
'libgudev1', 
'lzip', 
'make', 
'nemo-fileroller',
'nfs-utils', 
'nmap', 
'ntfs-3g', 
'openssh-server', 
'p7zip', 
'p7zip-plugins',  
#'patch',  
#'pidgin', 
#'pidgin-otr', 
#'pidgin-sipe', 
'pinta', 
'remmina', 
'remmina-plugins-rdp', 
'rsync', 
'screen', 
'soundconverter', 
'sysstat',
'tcpdump', 
'terminator', 
#'uget', 
'unrar', 
'unzip', 
'vim', 
'vlc', 
'wget', 
'siege','autofs','bind-utils','docker','easytag','fedy','finger','git','gnome-tweak-tool','ike','keepass'
]

package { $packages:
  ensure => 'latest',
}

# end class
}

class {'programinstalled': }
