class zpush::params {

  $default_config  = '/usr/share/z-push/config.php'
  
  case $::osfamily {
    'RedHat': {
       $config     = $default_config
     }
  }
  
}
