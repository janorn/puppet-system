class system::sysconfig::clock (
  $config   = undef,
) {
  if $config {
    $clock = $config
  }
  else {
    $clock = hiera_hash('system::sysconfig::clock', undef)
  }
  if $clock {
    $timezone = $clock['timezone']
    system::sysconfig::header { 'clock': }
    system::sysconfig::entry { 'clock-zone':
      file     => 'clock',
      var      => 'ZONE',
      val      => $timezone,
      nudge    => Exec['/etc/localtime'],
    }
    exec { '/etc/localtime':
      command     => "/bin/rm -f /etc/localtime && /bin/cp /usr/share/zoneinfo/${timezone} /etc/localtime",
      refreshonly => true,
    }
  }
}
