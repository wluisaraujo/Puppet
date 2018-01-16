file { 'linkteste':
  path	  => '/tmp/linkteste',
  ensure  => 'link',
  target  => '/tmp/arquivo-teste.txt',
}
