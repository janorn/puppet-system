#
# Redhat specific code
#
class system::network::redhat () {
  $hostname     = $::fqdn
  $gateway      = $system::network::gateway
  $zeroconf     = $system::network::zeroconf
  $ipv6         = $system::network::ipv6
  $ipv6init     = $system::network::ipv6init
  $ipv6autoconf = $system::network::ipv6autoconf

  file { '/etc/sysconfig/network':
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('system/network/network.erb'),
  }
}
