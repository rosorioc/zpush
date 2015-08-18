class zpush::config {

  file { '/usr/share/z-push':
    ensure => directory,
    owner  => 0,
    group  => 0,
    mode   => '0664',
  }

  file { $zpush::config:
    ensure => file,
    owner  => 0,
    group  => 0,
    mode   => '0664',
    content => "<?php phpinfo() ?>\n",
  }

}

