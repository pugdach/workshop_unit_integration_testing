# Class: my_apache
# ===========================
#
# Full description of class my_apache here.
#
# Parameters
# ----------
#
# * `sample parameter`
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
class my_apache (
  $package_name = $::my_apache::params::package_name,
  $service_name = $::my_apache::params::service_name,
  $config_path  = $::my_apache::params::config_path,
  $config_file  = $::my_apache::params::config_file,
) inherits ::my_apache::params {

  # validate parameters here

  class { '::my_apache::install': } ->
  class { '::my_apache::config': } ~>
  class { '::my_apache::service': } ->
  Class['::my_apache']
}
