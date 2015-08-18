class zpush (

  $config           = $zpush::params::config,
  $config_template  = $zpush::params::config_template,
) inherits zpush::params {

  include zpush::config

  validate_absolute_path($config)
  validate_string($config_template)
}
