##

class etchosts::config inherits etchosts {

host { 'audit.dexter.com.br': 	
  ensure 	=> 'present', 
  ip 		=> '192.168.200.30',	
  host_aliases 	=> ['audit'],	
  comment 	=> 'user:suporte' 
}

host { 'datacenter.dexter.com.br': 	
  ensure 	=> 'present', 
  ip 		=> '192.168.200.131',	
  host_aliases 	=> ['datacenter'],	
  comment 	=> 'user:suporte' 
}

host { 'fileserver.dexter.com.br': 	
  ensure 	=> 'present', 
  ip 		=> '192.168.200.40',	
  host_aliases 	=> ['fileserver'],	
  comment 	=> 'user:suporte' 
}

host { 'audit.dexter.com.br': 	
  ensure 	=> 'present', 
  ip 		=> '192.168.200.30',	
  host_aliases 	=> ['audit'],	
  comment 	=> 'user:suporte' 
}

host { 'security.dexter.com.br': 	
  ensure 	=> 'present', 
  ip 		=> '192.168.200.1',	
  host_aliases 	=> ['security'],	
  comment 	=> 'user:suporte' 
}

host { 'storage.dexter.com.br': 	
  ensure 	=> 'present', 
  ip 		=> '192.168.200.30',	
  host_aliases 	=> ['storage'],	
  comment 	=> 'user:suporte' 
}

host { 'webserverinterno.dexter.com.br': 	
  ensure 	=> 'present', 
  ip 		=> '192.168.200.30',	
  host_aliases 	=> ['webserverinterno'],	
  comment 	=> 'user:suporte' 
}

# end class
}
