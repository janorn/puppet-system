class system::sysctl (
  $config   = undef,
) {
  if $config {
    include augeasproviders
    create_resources(sysctl, $config)
  }
  else {
    $hiera_config = hiera_hash('system::sysctl', undef)
    if $hiera_config {
      include augeasproviders
      create_resources(sysctl, $hiera_config)
    }
  }
}
