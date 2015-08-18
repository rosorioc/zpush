class zpush (
  $config           = $zpush::params::config,
  $config_template  = $zpush::params::config_template,
) inherits zpush::params {

  validate_absolute_path($config)
  validate_string($config_template)

  # Anchor this as per #8040 - this ensures that classes won't float off and
  # mess everything up.  You can read about this at:
  # http://docs.puppetlabs.com/puppet/2.7/reference/lang_containment.html#known-issues
  anchor { 'zpush::begin': } ->
  class { '::zpush::config': } ~>
  anchor { 'zpush::end': }
}
