# == Class my_apache::service
#
# This class is meant to be called from my_apache.
# It ensure the service is running.
#
class my_apache::service {

  $service_name = $my_apache::service_name

  service { 'my_apache':
    ensure     => running,
    name       => $service_name,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}
