class system::augeas (
  $config   = undef,
) {
  if $config {
    create_resources(augeas, $config)
  }
  else {
    $hiera_config = hiera_hash('system::augeas', undef)
    if $hiera_config {
      create_resources(augeas, $hiera_config)
    }
  }
}
