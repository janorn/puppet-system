class system::selbooleans (
  $config   = undef,
) {
  if $::selinux == true {
    if $config {
      create_resources(selboolean, $config)
    }
    else {
      $hiera_config = hiera_hash('system::selbooleans', undef)
      if $hiera_config {
        create_resources(selboolean, $hiera_config)
      }
    }
  }
}
