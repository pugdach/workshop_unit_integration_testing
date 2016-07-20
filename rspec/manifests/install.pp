# == Class my_apache::install
#
# This class is called from my_apache for install.
#
class my_apache::install {

  $package_name = $my_apache::package_name

  package { 'my_apache':
    ensure => present,
    name   => $package_name,
  }

}
