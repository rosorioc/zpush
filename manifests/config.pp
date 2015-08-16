#
class zpush::config inherits zpush {

  file { $zpush::config:
    ensure => file,
    owner  => 0,
    group  => 0,
    mode   => '0664',
    content => template($zpush::config_template),
  }

}
