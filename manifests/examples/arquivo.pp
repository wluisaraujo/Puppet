file {'arquivoteste':
  path	=> '/tmp/arquivo-teste.txt',
  ensure	=> 'present',
  mode	=> '0640',
  content => "Eu sou um  arquivo de teste \n",
}
