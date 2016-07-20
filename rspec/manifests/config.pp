# == Class my_apache::config
#
# This class is called from my_apache for service config.
#
class my_apache::config {
  $config_path = $my_apache::config_path
  $config_file = $my_apache::config_file

  file { 'apache_config':
    ensure => file,
    path   => "${config_path}/${config_file}",
    source => "puppet:///modules/${module_name}/apache.conf.${::osfamily}",
  }
}
