# == Class my_apache::service
#
# This class is meant to be called from my_apache.
# It ensure the service is running.
#
class my_apache::service {

  $service_name = $my_apache::service_name

  service { $service_name:
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}
