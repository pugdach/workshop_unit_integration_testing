# == Class my_apache::params
#
# This class is meant to be called from my_apache.
# It sets variables according to platform.
#
class my_apache::params {
  case $osfamily {
    'Debian': {
      $package_name = 'apache2'
      $service_name = 'apache2'
      $config_path  = '/etc/apache2'
      $config_file  = 'apache2'
    }
    'RedHat', 'Amazon': {
      $package_name = 'httpd'
      $service_name = 'httpd'
      $config_path  = '/etc/httpd/conf'
      $config_file  = 'httpd.conf'
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}
