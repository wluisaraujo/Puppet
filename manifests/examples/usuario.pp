user {'admin':
  ensure	    => 'present',
  gid		    => 'sudo',
  home		    => '/home/admin'
  password	    => '$1$hnBYwCs6$rEWjskBl0aS6VdkFxR7Tv0',
  password_max_age  => '99999',
  password_min_age  => '0',
  shell		    => '/bin/bash',
  uid		    => '1020',
}
