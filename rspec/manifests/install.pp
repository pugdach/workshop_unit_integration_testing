# == Class my_apache::install
#
# This class is called from my_apache for install.
#
class my_apache::install {


  package { $::package_name:
    ensure => present,
  }
}
