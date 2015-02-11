#
# system::network class
#
class system::network (
  $gateway      = undef,
  $ipv6         = false,
  $ipv6init     = false,
  $ipv6autoconf = true,
  $zeroconf     = false,
) {
  if ! is_ip_address($gateway) {
    fail('system::network::gateway must be an IP address')
  }
  validate_bool($ipv6)
  validate_bool($zeroconf)
  case $::osfamily {
    'RedHat': {
      include system::network::redhat
    }
    'Solaris': {
      include system::network::solaris
    }
    default: {
      fail('This network module only supports RedHat & Solaris based systems.')
    }
  }
  include system::network::dns
  include system::network::interfaces
  include system::network::service
}
