class zpush (
  include zpush::config

  $config           = $zpush::params::config,
  $config_template  = $zpush::params::config_template,
) inherits zpush::params {

  validate_absolute_path($config)
  validate_string($config_template)
}
